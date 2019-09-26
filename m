Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAC5BF5D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 17:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8eOWy1ECS9+lylNIHws4hhYFk2ZjcY3566kdxVhzdY=; b=IhFicCxUMYo44X
	E1MgEWNg9ru0IOXDPCiby7GRFZpleMHuDxfnEvsa7p/wrJ6/8SunwGZepDea7f4Fr/LxxnCmnSNs2
	4dCLQkSaBldoVUijyP1zvecs0WDXj6+g26EwVWPmkpFxHUJ9Gjh6JDQftr+sGe2xOI2sMAL4G5jtu
	LGVu4XvNIVqZYqcevGZnSgZ5FKnqVbavdeK4iYC6lhMzLfHsQzX9HQEq+X+VnevyD6WLXmbv2SRdt
	IWKY2TIxqqE99BThnAQb7GqG6mUY8S3Qn0Z0jDxdKHmKiDZrpY9jZnFugDvY0Ev9t4U83qOaheBN1
	2ByRVXqZa4EiNdUF+PAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDVce-0003vB-DC; Thu, 26 Sep 2019 15:24:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDVcR-0003up-BA
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 15:23:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D82E28;
 Thu, 26 Sep 2019 08:23:46 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 07D773F534; Thu, 26 Sep 2019 08:23:44 -0700 (PDT)
Date: Thu, 26 Sep 2019 16:23:42 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 1/4] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20190926152342.GJ9689@arrakis.emea.arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926060353.54894-1-vincenzo.frascino@arm.com>
 <20190926060353.54894-2-vincenzo.frascino@arm.com>
 <20190926080616.GB26802@iMac.local>
 <0ff3d5f4-11c9-4207-c6ab-2f8e9ee7de5e@arm.com>
 <0c5816ba-4393-07f7-23ec-38ebde0e447f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c5816ba-4393-07f7-23ec-38ebde0e447f@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_082347_428901_F9CA61F2 
X-CRM114-Status: GOOD (  10.59  )
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

On Thu, Sep 26, 2019 at 12:02:38PM +0100, Vincenzo Frascino wrote:
> On 9/26/19 11:56 AM, Vincenzo Frascino wrote:
> > On 9/26/19 9:06 AM, Catalin Marinas wrote:
> >> Has CONFIG_CROSS_COMPILE_COMPAT_VDSO actually been removed from
> >> lib/vdso/Kconfig? (I haven't checked the subsequent patches).
> 
> Missed this, I have the patch ready for that. When this series will be merged,
> no more architectures will use the macro hence I will send a separate patch to
> remove it from the common code.

Since arm64 was the only user, can you send it together with this
series? I find it strange that Kbuild prompts me to enter this option
when it wouldn't have any effect.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
