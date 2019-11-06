Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5F8F14D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 12:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTptl7H6HtM+7eLrfbZ7c2H9/nXHSiB88vQYhSVPOnc=; b=BHn/gMykvDZFdo
	BS8rUG7rwqMKYDEzmj8Gsgqpr9mwQ0ZYywIVKqCIv4HdBvZ2du4leZns1I4PQ2t8QeunkPEYwf+rG
	UEEu7njy+1ii//aLfqqLcnRv2cBS6hgNc1plhydvqv9nhXjCI87Re1t391WRe+/l8uM1zDE8KmBiV
	gbJSd6C421zkmPd59HNKP8Nl16bGIrPKhVRyizhxM3GgyA68jMUCl9VoYbCRC01QPzqq23o4QqImp
	SSvftcmsOvTj29csKcnDV73m3K7+KMea+wjibaV20ecciNZle9B77IuC5vZmekwdFXuZOV/DVd96l
	SGtcu2yLlmHbo0jWR9UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJK4-0007jf-Cm; Wed, 06 Nov 2019 11:18:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJJu-0007jH-Gl
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 11:17:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9152A7A7;
 Wed,  6 Nov 2019 03:17:48 -0800 (PST)
Received: from arrakis.emea.arm.com (unknown [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C55D43F6C4;
 Wed,  6 Nov 2019 03:17:46 -0800 (PST)
Date: Wed, 6 Nov 2019 11:17:44 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] arm64: mm: simplify the page end calculation in
 __create_pgd_mapping()
Message-ID: <20191106111743.GF21133@arrakis.emea.arm.com>
References: <20191103123559.8866-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191103123559.8866-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_031750_599789_F75A7F72 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Yu Zhao <yuzhao@google.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 David Hildenbrand <david@redhat.com>, Robin Murphy <robin.murphy@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 03, 2019 at 09:35:58PM +0900, Masahiro Yamada wrote:
> Calculate the page-aligned end address more simply.
> 
> The local variable, "length" is unneeded.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Queued for 5.5. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
