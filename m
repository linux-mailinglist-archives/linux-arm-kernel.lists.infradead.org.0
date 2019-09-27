Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B638C040A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 13:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ciBj0xDw2eS5WuiKr7uRwDkQNU+CRAEzf+8xdz/1hQM=; b=BRJmzR7DDYEcQrwHke0Xi3mwu
	Wq4ysecjEqdDjT51L4vesuyu/xaC/Zoe+0XJo0wYkBnHQ39hkOSchjJSIayJBBfq3z7EKXA1pIrgL
	W4luzE8vF10ygtbh5wAM4QoHWkGtVPms+DGSIeoLqegeCim6PuiVETic0S9J0pxyCUffQEIA+7x31
	dlktv4U/1sSLo7BFvEjHGdRnY/sIXPWfjd0ADAQPJWlRVJFX+jWOB66JMqJcN/HRuVm46HNWgcd84
	XnGKly9qfcsAEhRY2PqH57yYxdMd7TKWeWvt2qyDZb1poUlKQVuSTG05raM1++m5thCDHx7coll1I
	KvP9NW6fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDoKU-0005jo-Ug; Fri, 27 Sep 2019 11:22:30 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDoKM-0005if-6g
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 11:22:23 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iDoKF-00076R-Dm; Fri, 27 Sep 2019 13:22:15 +0200
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] ARM: dts: stm32: Enable high resolution timer
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 27 Sep 2019 12:22:13 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20190927084819.645-1-benjamin.gaignard@st.com>
References: <20190927084819.645-1-benjamin.gaignard@st.com>
Message-ID: <da48ce9633441cd0186518fa7ce1d528@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: benjamin.gaignard@st.com, alexandre.torgue@st.com,
 robh+dt@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_042222_395574_1C60896F 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-27 09:48, Benjamin Gaignard wrote:
> Adding always-on makes arm arch_timer claim to be an high resolution 
> timer.
> That is possible because power mode won't stop clocking the timer.

The "always-on" is not about the clock. It is about the comparator.
The clock itself is *guaranteed* to always tick. If it didn't, that'd 
be
an integration bug, and a pretty bad one.

What you're claiming here is that your CPU never enters a low-power 
mode?
Ever? I find this very hard to believe.

Furthermore, claiming that always-on is the way to force the arch-timer
to be an hrtimer is factually wrong. This is what happens *if* this is
the only timer in the system. The only case this is true is for virtual
machines. Anything else has a global timer somewhere that will allow
the arch timers to be used as an hrtimer.

I'm pretty sure you too have a global timer somewhere in your system.
Enable it, and enjoy hrtimers without having to lie about the 
properties
of your system! ;-)

         M.

>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  arch/arm/boot/dts/stm32mp157c.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi
> b/arch/arm/boot/dts/stm32mp157c.dtsi
> index 9b11654a0a39..74f64745d60d 100644
> --- a/arch/arm/boot/dts/stm32mp157c.dtsi
> +++ b/arch/arm/boot/dts/stm32mp157c.dtsi
> @@ -50,6 +50,7 @@
>  			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
>  			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
>  		interrupt-parent = <&intc>;
> +		always-on;
>  	};
>
>  	clocks {

-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
