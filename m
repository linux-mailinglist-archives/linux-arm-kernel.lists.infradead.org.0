Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD3C38731
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOlV/FfK3wW732OjpzrQyTDXSM7w4k0Q45ZLuM6tc8U=; b=cbPkVSvdXWOA2i
	tDI8aLoTiyhE93BMfeF9KBKexdfI4iVJnd23hPYuLG2S3GiTWX7hT/qM10SXyXGJ5kwotDWqi7Eib
	HoPDlEC1THrx0Z7i/Ffg+m0GIyzUPDQDrQwhJc/hexLWc3AfADomD5LTPLgZdqUfw6lr0FUtr0QEz
	QWMBytrNEHgE/sKB5k17JvSyDuWioE6W1nlsRS2czCG1xlxfNPJn0FhetF7BO7Zonz3gbYb+JAM+S
	ACfv1Ui6hO/LI1rX7VgH2ELxQ2665bTaMn40YnAxwTUXZTV8gdG0rAgJAwsGDi3hxaFdmMm9ELQVp
	BRSKGkc7icsiF9ZSroKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZBNR-0002la-CH; Fri, 07 Jun 2019 09:41:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZBNE-0002kn-Uj
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 09:41:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 200E13EF;
 Fri,  7 Jun 2019 02:41:24 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B2D6D3F96A; Fri,  7 Jun 2019 02:43:02 -0700 (PDT)
Date: Fri, 7 Jun 2019 10:41:20 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Odin Ugedal <odin@ugedal.com>
Subject: Re: [PATCH] arm64: Fix comment after #endif
Message-ID: <20190607094119.GB16801@arrakis.emea.arm.com>
References: <20190606234912.18746-1-odin@ugedal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606234912.18746-1-odin@ugedal.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_024125_083543_44BC389F 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, odin@uged.al,
 Yu Zhao <yuzhao@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Will Deacon <will.deacon@arm.com>, open list <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 James Morse <james.morse@arm.com>, Chintan Pandya <cpandya@codeaurora.org>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 01:49:10AM +0200, Odin Ugedal wrote:
> The config value used in the if was changed in
> b433dce056d3814dc4b33e5a8a533d6401ffcfb0, but the comment on the
> corresponding end was not changed.
> 
> Signed-off-by: Odin Ugedal <odin@ugedal.com>

Queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
