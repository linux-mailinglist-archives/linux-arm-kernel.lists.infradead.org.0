Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9302EA212
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 17:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+lefmrEE5+1zogygruRDIJB/QvETA8i6GHV4WQSaCw=; b=I1kFPDTHpzSigh
	B+897/B3cBOiu/ggzE02hezqK7q5R5orYJ0LOxctqF34pMafKs/G22088ItvM+tzH1ndyV8nSnYJf
	E/yi/hl4FBaI3TJbJFUcJHjIjF+t0pmZEw7jZQ/rZEH2VJivnVwNbjXUctSY9NWYUBs1QEs5G0MKZ
	yLJwlyO8Rp+43vDNdF6ygqgFyn5tXRVCIJ16brF8gVYmwtYZo3O3atTRA+EtgbbzpBLtOCKihtQM2
	9u54XwKgs//OjPoIvmWUjPu0Y5+cfR0aF198SRsM4C+Go8s8pM+wfUR6dix8+9gXonK06NMXziQ+Y
	QCrRUmPksa5TZETrR0Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPrBg-0004X5-B5; Wed, 30 Oct 2019 16:51:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrBU-0004WD-GF
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 16:51:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8372A31F;
 Wed, 30 Oct 2019 09:50:58 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1504C3F6C4; Wed, 30 Oct 2019 09:50:55 -0700 (PDT)
Date: Wed, 30 Oct 2019 16:50:54 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v14 22/22] arm64: mm: Display non-present entries in ptdump
Message-ID: <20191030165053.GE13309@arrakis.emea.arm.com>
References: <20191028135910.33253-1-steven.price@arm.com>
 <20191028135910.33253-23-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028135910.33253-23-steven.price@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_095100_582742_56C665E7 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 01:59:10PM +0000, Steven Price wrote:
> Previously the /sys/kernel/debug/kernel_page_tables file would only show
> lines for entries present in the page tables. However it is useful to
> also show non-present entries as this makes the size and level of the
> holes more visible. This aligns the behaviour with x86 which also shows
> holes.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
