Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E224612C24D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 12:29:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7nAI1HprotxOkDuvxE8CJsJ9ePcyKnGeyKbmF6TThLs=; b=unMaBLMdpa6DR3g/g9fvkE2BF
	WwmIvso0ZbcljZw7oO5UiN+g+6sBquHMpzPaJ2O2j3/yrvL/+fWz6ByioYShg/IUf4x/VDs221YVc
	lbuAPk44e/YwTyYicB1aclm6BohsXba1WAqdPyqPd+H7qukbNaIs1rVpNgrJrAys0n5v+LIcBafcT
	stNmuR0MRB7otSdlmTOyu5FM1PI8qPEprj4S/Yy11LXspXfs3GtazRtvmI39k9lmu4BNfHPKRoQVX
	pIKs1M8Ft58nB8yfDJEIrLll/VxIBxN4oqf+RzObxydVeRmqLHFcKM0zAtOivZVZDZD/Rnx0Ea3u+
	HiCRjDWNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilWlP-00088c-Ny; Sun, 29 Dec 2019 11:29:39 +0000
Received: from disco-boy.misterjones.org ([51.254.78.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilWlD-00086x-Vw; Sun, 29 Dec 2019 11:29:29 +0000
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ilWl2-00061M-EV; Sun, 29 Dec 2019 11:29:16 +0000
MIME-Version: 1.0
Date: Sun, 29 Dec 2019 11:29:16 +0000
From: Marc Zyngier <maz@kernel.org>
To: James Tai <james.tai@realtek.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: realtek: Add RTD1319 SoC and Realtek
 PymParticle EVB
In-Reply-To: <68b6541e1f4b447cb6845d16fdab28d9@realtek.com>
References: <20191228150553.6210-1-james.tai@realtek.com>
 <20191228150553.6210-3-james.tai@realtek.com>
 <6750faa33ee059ec22cf1981e7483186@kernel.org>
 <68b6541e1f4b447cb6845d16fdab28d9@realtek.com>
Message-ID: <718082aebcc3ab4d9169a4abbe968ec1@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.tai@realtek.com, linux-realtek-soc@lists.infradead.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_032928_030904_71A57DF8 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.8 DOS_RCVD_IP_TWICE_B    Received from the same IP twice in a row
 (only one external relay)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-29 07:46, James Tai wrote:
> Hi Marc,
> 
> Thanks for review.
> 
>> > +	timer {
>> > +		compatible = "arm,armv8-timer";
>> > +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
>> > +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
>> > +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
>> > +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
>> 
>> Nit: At some point, it'd be good to be able to describe the EL2 
>> virtual timer
>> interrupt too. Not specially important, but since these ARMv8.2 CPUs 
>> have it...
> 
> I will add the EL2 virtual timer interrupt to timer node.

If you do this, please update the binding first, as this interrupt
is not described there yet.

> 
>> > +		gic: interrupt-controller@ff100000 {
>> > +			compatible = "arm,gic-v3";
>> > +			reg = <0xff100000 0x10000>,
>> > +			      <0xff140000 0xc0000>;
>> 
>> Are you sure about the size of the GICR region? For 4 CPUs, it should 
>> be
>> 0x80000. Here, you have a range for 6 CPUs.
> 
> The GICR region should be 0x80000 because the RTD1319 SoC have only 4 
> CPUs.

OK. Please verify that this is actually the case, and that the last
redistributor (at offset 0x60000) has GICR_TYPER.Last set. I have
recently seen GICs configured for a larger number of CPUs where
some of them were disabled in HW, and the DT was wrongly describing
some of the redistributors only, leading to SW crashes.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
