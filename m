Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 637885862B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ip5jgedQbdi42JZ4SsGuPTp03JkQD7UxWoUasO9H998=; b=CEpiT/DTk91n6B
	JFOu9jkTQEChvS1T3md1kZCZHiVCc2XVBJAlvXZFne6LdXNFWiEJVqgoset8oPiF5l4aNfd0YugrZ
	d5Bsj0q2uK2HpdD51HvWU+jpmolYJRQpNRweS304o8m2MtKRFq/6KN0kN0iH9Y/KQFcZytajqbXWQ
	YNicj5XIui69WuSzRgYPVHheXJjjSe4pOWyw6bN0O8I/Q7OFgZscbgMbZQndy/b4DM85xt114JOLQ
	bkVQfFcUBBfCcPxjakAggg5zfzfCxm8z4DbO30qXSgA9n3Zm2HluDWReRevs5FTAAucvjHGTQnpk0
	zf0tqvTr3m55fG/fiSqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWXg-0007t8-Dh; Thu, 27 Jun 2019 15:42:32 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWTJ-0002b2-E6
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:38:04 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id D9B4720007;
 Thu, 27 Jun 2019 15:37:47 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Joshua Scott <joshua.scott@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH v3] ARM: dts: armada-xp-98dx3236: Switch to
 armada-38x-uart serial node
In-Reply-To: <20190625221108.21455-1-joshua.scott@alliedtelesis.co.nz>
References: <20190625221108.21455-1-joshua.scott@alliedtelesis.co.nz>
Date: Thu, 27 Jun 2019 17:37:47 +0200
Message-ID: <87sgrvghtg.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_083801_678349_74ED43A9 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Joshua Scott <joshua.scott@alliedtelesis.co.nz>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Joshua Scott <joshua.scott@alliedtelesis.co.nz> writes:

> Switch to the "marvell,armada-38x-uart" driver variant to empty
> the UART buffer before writing to the UART_LCR register.
>
> Signed-off-by: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
> Tested-by: Andrew Lunn <andrew@lunn.ch>
> Acked-by: Gregory CLEMENT <gregory.clement@bootlin.com>.
> Cc: stable@vger.kernel.org
> Fixes: 43e28ba87708 ("ARM: dts: Use armada-370-xp as a base for
> armada-xp-98dx3236")

Applied on mvebu/fixes

Thanks,

Gregory


>
> ---
> Changes in v3:
>
> Updated title, added tested-by, and Fixes tag
>
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
> v1 message:
>
> We have found that like the armada 38x, other Marvell SOCs can lose
> characters when the UART_LCR register is written to without first
> waiting for the buffer to empty.
>
> We have observed this behaviour on the following Marvell switch SOCs:
>
>  * 98DX323x
>  * 98DX3333
>  * 98DX4251
>
> However, we do not currently have access to non-switch SOCs which share
> the same parent device-tree.
>
> The question we have is, should the fix be applied to the common
> armada-370-xp device-tree, or should it be restricted to only affect the
> SOCs listed above.
>
> If anybody is able to check, we would like to find out if the issue
> affects other armada-xp / armada-370 based SOCs.
>
> The issue can be reproduced, if logging in using the serial port, with:
>     resize && echo "hello world"
>
> On affected devices, the first couple letters of "hello world" are
> lost. On some SOCs this can be seen at 115200 baud, and on others
> we have had to slow down to 9600 to see the issue.
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

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
