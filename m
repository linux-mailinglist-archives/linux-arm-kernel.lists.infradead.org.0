Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF677E438C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 08:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAo8YSR/hHoCPcjbgT5dGTR5nK23PhiWjV7Y44igYZ4=; b=At1JlmVTWnPwJO
	cAeAdizhocjRxHf15AFbmHMHuL9BZCbOzLz082JxRKbfXS1Z5U5ORGakIHilE3wfD5y8jU1UdHMa1
	C34ULtWPOFnp7lYA2sACSNOdocy/r4xHf9HGC0XRzi3Ao1adt2ze+EL1gxYfsVePKFauQYBpc0xhP
	m8VVoVoUTFHE+/1TQ2H7BB2OPwLjegnBd6qwOjE/wDWTYp+74LbWPKTSG7P1NL19O7mlhl31CE3Re
	6vhMzF4bTDjchhiWIAr1lqGi/Su+RnosQCVYA3B2m0COkigOqJbFbykxHcN9CkfPkgewi3USLUs0A
	3AwGVK5cH91aUL0YlR4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNt4E-0005ac-Lk; Fri, 25 Oct 2019 06:27:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNt44-0005ZQ-VT
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 06:27:14 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iNt3s-0006d2-8f; Fri, 25 Oct 2019 08:27:00 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iNt3r-0007BN-Bg; Fri, 25 Oct 2019 08:26:59 +0200
Date: Fri, 25 Oct 2019 08:26:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/3] dt-bindings: arm: Add devicetree binding for Thor96
 Board
Message-ID: <20191025062659.fyze6zt4jg6uzqxz@pengutronix.de>
References: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
 <20191024144235.3182-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024144235.3182-2-manivannan.sadhasivam@linaro.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:26:32 up 160 days, 12:44, 101 users,  load average: 0.21, 0.08,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_232713_012326_4AD70463 
X-CRM114-Status: GOOD (  13.72  )
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
Cc: devicetree@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On 19-10-24 20:12, Manivannan Sadhasivam wrote:
> Add devicetree binding for Thor96 Board from Einfochips. This board is
> one of the 96Boards Consumer Edition platform powered by NXP i.MX8MQ SoC.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 1b4b4e6573b5..8016174d5e49 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -239,6 +239,7 @@ properties:
>          items:
>            - enum:
>                - boundary,imx8mq-nitrogen8m # i.MX8MQ NITROGEN Board
> +              - einfochips,imx8mq-thor96  # i.MX8MQ Thor96 Board

Do we need to add a vendor patch too?

Regards,
  Marco

>                - fsl,imx8mq-evk            # i.MX8MQ EVK Board
>                - purism,librem5-devkit     # Purism Librem5 devkit
>                - solidrun,hummingboard-pulse # SolidRun Hummingboard Pulse
> -- 
> 2.17.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
