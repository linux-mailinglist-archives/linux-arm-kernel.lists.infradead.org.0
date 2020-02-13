Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF6F15BAAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 09:19:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5HUBsklm5b36jnZSfca9+Pv/r41z8Hk9edh46P5X8A=; b=GLzZhZlanS80D6
	6gm3kEPoS/avYnUL09fs1zYXP64iC8y4LNWjVk1lEOdt2nXSsTO87AEORrvOdH3MxQNwIjDokuA3e
	iZh5oW7qoxNvL0W4slgOrIlE6BHWgkyyQvkf52fapwuBj7QlznVzxyoR4LqthPAB0Z/7EkGOzDypd
	TgTuzMsr3HsmHId+DiPm/LJmzqF5v8WS3oqGG1VCC2tdZBr2z3MHACIrUEiqqG3IKi0ztuHGn6Dl9
	PkZI7J1OuG9kfTu5fTWFZ3608eMaoy7ufhPEfskJqjz8l9HvVZWJ9rEAg3cXfbxTtovo33gqwQyIt
	nR6CNGwhLriRSCUALCaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29iD-0008B1-MS; Thu, 13 Feb 2020 08:19:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29i5-0008Ae-4c
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 08:18:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j29hh-0001zY-Gy; Thu, 13 Feb 2020 09:18:33 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j29hZ-0005R6-5H; Thu, 13 Feb 2020 09:18:25 +0100
Date: Thu, 13 Feb 2020 09:18:25 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] ARM: imx: Add missing of_node_put()
Message-ID: <20200213081825.mox35tzizscdk7km@pengutronix.de>
References: <1581574854-9366-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581574854-9366-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_001857_180623_DC3436FC 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: kstewart@linuxfoundation.org, peng.fan@nxp.com,
 sakari.ailus@linux.intel.com, andrew.smirnov@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 rfontana@redhat.com, dsterba@suse.com, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, gregkh@linuxfoundation.org, bhelgaas@google.com,
 okuno.kohji@jp.panasonic.com, tglx@linutronix.de, festevam@gmail.com,
 allison@lohutok.net, Linux-imx@nxp.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 02:20:54PM +0800, Anson Huang wrote:
> After finishing using device node got from of_find_compatible_node(),
> of_node_put() needs to be called.
> =

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- correct some of_node_put() place to make sure it is safe to be put.
> ---
>  arch/arm/mach-imx/anatop.c     | 3 +++
>  arch/arm/mach-imx/gpc.c        | 1 +
>  arch/arm/mach-imx/platsmp.c    | 1 +
>  arch/arm/mach-imx/pm-imx6.c    | 2 ++
>  arch/arm/mach-imx/pm-imx7ulp.c | 1 +
>  5 files changed, 8 insertions(+)
> =

> diff --git a/arch/arm/mach-imx/anatop.c b/arch/arm/mach-imx/anatop.c
> index 8fb68c0..5985731 100644
> --- a/arch/arm/mach-imx/anatop.c
> +++ b/arch/arm/mach-imx/anatop.c
> @@ -135,6 +135,7 @@ void __init imx_init_revision_from_anatop(void)
>  			void __iomem *src_base;
>  			u32 sbmr2;
>  =

> +			of_node_put(np);
>  			np =3D of_find_compatible_node(NULL, NULL,
>  						     "fsl,imx6ul-src");
>  			src_base =3D of_iomap(np, 0);
> @@ -152,6 +153,8 @@ void __init imx_init_revision_from_anatop(void)
>  =

>  	mxc_set_cpu_type(digprog >> 16 & 0xff);
>  	imx_set_soc_revision(revision);
> +
> +	of_node_put(np);
>  }

It would be a bit more natural here IMHO to introduce a second struct
device_node * variable for the fsl,imx6ul-src device. Then each
of_node_put would belong to exactly one of_find_compatible_node().
(Now the of_node_put() in line 157 frees the fsl,imx6ul-src on i.MX6ULL
and fsl,imx6q-anatop on the others.)

The other hunks look fine.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
