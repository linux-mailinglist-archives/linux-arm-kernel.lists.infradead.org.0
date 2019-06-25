Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DE05269E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKWt44Uk2ncSssl2bumsUCvqPIChMCaiCVXV8H7WojE=; b=Whbj+LJmMUB0sE
	j/vcixJCjof+M71T+iRAFY2oWUm5x/BbL7+yWhnkT+sU/VMQnYUeT68RIoIoVIdHNjawxlpVN9na9
	/3KGZu8T+9jaUE6i5uvHkVXa1hodhwypY8gtnOeJvLo1hzwo2XlPIkQ+3U+EEh2HhIGJkob68zH7a
	KbiFxyjB+yly2fDfwLXhK8Da13kKOP6vW4bBNCaa9ALGmg9JMZN51ZEnZDpP+Mf84+ZauiNxoRY3/
	5Cjfzl+9vKE/T3U01qBglyICvq5jUi8iSX84aB50GstSIo0SeVxzgsNx3Ue4TidEwXGHS1ZU6o6cA
	SMaZhThCP0MQstCqf1aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgof-0003yK-SY; Tue, 25 Jun 2019 08:28:37 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgnz-0003XZ-8W
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:27:57 +0000
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id D44ED100010;
 Tue, 25 Jun 2019 08:27:39 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Joshua Scott <joshua.scott@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH v2] serial: prevent armada-xp-98DX SOC uart buffer loss
In-Reply-To: <20190624234900.7315-1-joshua.scott@alliedtelesis.co.nz>
References: <20190624234900.7315-1-joshua.scott@alliedtelesis.co.nz>
Date: Tue, 25 Jun 2019 10:27:39 +0200
Message-ID: <87ef3ikr2c.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_012755_494299_723F5C0D 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joshua,

> Switch to the "marvell,armada-38x-uart" driver variant to empty
> the UART buffer before writing to the UART_LCR register.
>
> Signed-off-by: Joshua Scott <joshua.scott@alliedtelesis.co.nz>

I agree with the content of this patch, so you can add my
Acked-by: Gregory CLEMENT <gregory.clement@bootlin.com>.

However, could you change the title to something like: "ARM: dts:
armada-xp-98dx3236: Switch to armada-38x-uart for serial node"

Indeed for thearm device tree patch we expect that the title start by
"ARM: dts: ". Also could you add back some part of the explanation you
providee in comment with your first patch. I find it very usefull to se
waht happen and who to reproduce the bug.

Finally, as it is a fix, could you add a "Fixes: " tag as well as the
"Cc: stable@kernel.org" tag.

Thanks,

Gregory

> ---
> Changes in v2:
>
> Andrew Lunn was able to test on a Marvell 370RD reference design, and
> the character loss issue did not occur.
>
> The fix has now been changed to only affect the following SOCs:
>  * 98DX323x
>  * 98DX3333
>  * 98DX4251
>
> Cheers,
> Joshua Scott
> ---
>  arch/arm/boot/dts/armada-xp-98dx3236.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm/boot/dts/armada-xp-98dx3236.dtsi b/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
> index 59753470cd34..267d0c178e55 100644
> --- a/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
> +++ b/arch/arm/boot/dts/armada-xp-98dx3236.dtsi
> @@ -336,3 +336,11 @@
>  	status = "disabled";
>  };
>  
> +&uart0 {
> +	compatible = "marvell,armada-38x-uart";
> +};
> +
> +&uart1 {
> +	compatible = "marvell,armada-38x-uart";
> +};
> +
> -- 
> 2.21.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
