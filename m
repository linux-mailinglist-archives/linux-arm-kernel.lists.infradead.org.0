Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9932BF5B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 17:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnf8U5yCue8X+QsI02RAsf299L0nRChJMw/hQMYAqSg=; b=OGe/PX+5nxQpGm
	jCZfWBF4qhETPB+qQsGNf66/n7v5PwlckT9poprJ8HNiALOUO6PTfK1emo+yfYZuOZbqhxUzPefrF
	zfKbE2cAryzFTm3fkI3lEmvw2uqf7mChs+5uXVutxGWOjY+g/+Sb9hPDxZL356BPEPuulvismBEkv
	0DGUDfIkQ4bIce/h1my5vWZw2Req2lI8SulFm0MZf+R/nudxuXf+5zhX0l/ouSEbsN2JZZQmo8zao
	AA2qPHF49d8ED+KLOgsQG2bZw5JY8iL3rY9ZA8Q+TsjRCH0lLYoOt8MhOVTZqaHrZn9TwY+ufFgIu
	dAzC5GF5bpI8ynLTiSyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDVWE-0001YF-K6; Thu, 26 Sep 2019 15:17:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDVW0-0001XR-DJ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 15:17:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C50B315A2;
 Thu, 26 Sep 2019 08:17:07 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C1FC53F534; Thu, 26 Sep 2019 08:17:06 -0700 (PDT)
Date: Thu, 26 Sep 2019 16:17:04 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 1/4] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20190926151704.GH9689@arrakis.emea.arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926060353.54894-1-vincenzo.frascino@arm.com>
 <20190926060353.54894-2-vincenzo.frascino@arm.com>
 <20190926080616.GB26802@iMac.local>
 <0ff3d5f4-11c9-4207-c6ab-2f8e9ee7de5e@arm.com>
 <ad90f9bb-aa39-615c-3ae5-bea394bd787c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad90f9bb-aa39-615c-3ae5-bea394bd787c@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_081708_495277_FA16DC43 
X-CRM114-Status: GOOD (  12.01  )
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 01:22:01PM +0100, Vincenzo Frascino wrote:
> On 9/26/19 11:56 AM, Vincenzo Frascino wrote:
> > On 9/26/19 9:06 AM, Catalin Marinas wrote:
> >> Now, could we not generate a COMPATCC in the Makefile and use
> >> $(COMPATCC) here instead of $(CROSS_COMPILE_COMPAT)gcc? It really
> >> doesn't make sense to check that gcc is gcc.
> >>
> > 
> > All right, COMPATCC is already in the makefile, I will use it in here.
> 
> What you are proposing seems not possible because Kconfig runs first and then
> the arch Makefile, hence compatcc does not take effect on the Kconfig. I will
> post v2 with what I proposed, please feel free to comment if you have a better idea.

I think it works as long as you export COMPATCC from the
arch/arm64/Makefile. The arch Makefile is used in the config step
AFAICT. See the diff I posted in my reply to your v2.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
