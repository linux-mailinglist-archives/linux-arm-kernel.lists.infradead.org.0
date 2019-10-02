Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48695C8FFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 19:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wF0e+jxptk2gV/pwRFXSwnrpg9KQIdlOHl2K8kAWzH4=; b=eAZUczp02bc0An
	tihfdKohuYTaXeZ/+BO0pMwpgUIBOV6D8w4RoHvhhjMb1W83fVbPKDHCv8I0ao+CD6hEUClCUyLAP
	0dnBem+GvJcgEJRdbf75lHAuHS/I03iy/AyzCobtUFxuZh6T5NXqgLeRG5XZtgulaWuhkiBcFankL
	qBBbRt1Q3I1+AtUf3vEZBXCZEVpV/UKTUWAorHBW0MAiAHT2gGp0vMJslQHkho1fpi6gAwUWmZhxq
	gUmvq9IAxccR0ft5SVeMa4nvKn23goeL1uy3jg/7O2/1C01AuAwwqWrIEkB7SWJp6A8ok17Avw3xu
	t16rZlyOeJxSyYP1eKKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFiUE-0007bW-EG; Wed, 02 Oct 2019 17:32:26 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFiU8-0007aT-Aa
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 17:32:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mQqIhWQifybwkhXFJbITg6B075lNi1C6ZO3XIQgSSq4=; b=zgTnof+ptMi/+RkZlGYDebb2H
 2W5q/lEjU73zjxRbkd282fuRX21gXxqlC7/VZYH4/pH8DSrE8wzw3Vx7Dhpr0/DXBhXDVXRdCvIH7
 Nc6ZbQo56fAVCWhU0DIXHlbNVuOZBEL1FFx0bvmZTTjUYBS1UbZEPcUBRuXjGKyqPImPVNSkCBLVX
 f1JbJxlbnx4EQ0yFpUsoK0PbgM65n+XA3s7MTJ+y3NTU3skzF73EaG7R1ErXKgokrj46cnifQVekw
 M0nGMVHiGNcUpYCCtU3o3o5fuLvgaz25o5ExQJ+dLv61qvsEArDz+N0cR+OkRU58KGHHSwgprXuWW
 6gLv3K3QQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:39248)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iFiU0-0001XK-QP; Wed, 02 Oct 2019 18:32:12 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iFiTy-0000uk-07; Wed, 02 Oct 2019 18:32:10 +0100
Date: Wed, 2 Oct 2019 18:32:09 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [PATCHv3] ARM: drivers/amba: release and cleanup the resource to
 allow for deferred probe
Message-ID: <20191002173209.GT25745@shell.armlinux.org.uk>
References: <20191002143551.32288-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002143551.32288-1-dinguyen@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_103220_364846_2E9DCC3D 
X-CRM114-Status: GOOD (  26.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: p.zabel@pengutronix.de, linus.walleij@linaro.org,
 thor.thayer@linux.intel.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 09:35:51AM -0500, Dinh Nguyen wrote:
> With commit "79bdcb202a35 ARM: 8906/1: drivers/amba: add reset control to
> amba bus probe", the amba bus driver needs to be deferred probe because the
> reset driver is probed later. However with a deferred probe, the call to
> request_resource() in the driver returns -EBUSY. The reason is the driver
> has not released the resource from the previous probe attempt.
> 
> This patch fixes how we handle the condition of EPROBE_DEFER that is returned
> from getting the reset controls. For this condition, the patch will jump
> to defer_probe, which will iounmap, dev_pm_domain_detach, and release the
> resource.
> 
> Fixes: 79bdcb202a35 ("ARM: 8906/1: drivers/amba: add reset control to
> amba bus probe")
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
> v3: jump to defer_probe where the driver will unmap and pm_detach the
>     driver resource for the next probe attempt
> v2: release the resource when of_reset_control_array_get_optional_shared()
>     returns EPROBE_DEFER
> ---
>  drivers/amba/bus.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
> index f39f075abff9..4a021b1dab3d 100644
> --- a/drivers/amba/bus.c
> +++ b/drivers/amba/bus.c
> @@ -409,9 +409,12 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
>  		 */
>  		rstc = of_reset_control_array_get_optional_shared(dev->dev.of_node);
>  		if (IS_ERR(rstc)) {
> -			if (PTR_ERR(rstc) != -EPROBE_DEFER)
> +			ret = PTR_ERR(rstc);
> +			if (ret == -EPROBE_DEFER)
> +				goto defer_probe;
> +			else
>  				dev_err(&dev->dev, "Can't get amba reset!\n");
> -			return PTR_ERR(rstc);
> +			return ret;

So, if of_reset_control_array_get_optional_shared() returns an error,
we end up leaking the ioremap(), the resource claim, the pclk enable
and pm domain?  If it returns -EPROBE_DEFER, we end up leaking the
pclk enable?

I think this is going to be quicker if I write the patch - I haven't
build-tested this yet though.  Please check whether this works for
you.

Thanks.

8<=====
From: Russell King <rmk+kernel@armlinux.org.uk>
Subject: [PATCH] drivers/amba: fix reset control error handling

With commit 79bdcb202a35 ("ARM: 8906/1: drivers/amba: add reset control
to amba bus probe") it is possible for the the amba bus driver to defer
probing the device for its IDs because the reset driver may be probed
later.

However when a subsequent probe occurs, the call to request_resource()
in the driver returns -EBUSY as the driver has not released the resource
from the initial probe attempt - or cleaned up any of the preceding
actions.

Fix this both for the deferred probe case as well as a failure to get
the reset.

Fixes: 79bdcb202a35 ("ARM: 8906/1: drivers/amba: add reset control to amba bus probe")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/amba/bus.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index f39f075abff9..fe1523664816 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -409,9 +409,11 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
 		 */
 		rstc = of_reset_control_array_get_optional_shared(dev->dev.of_node);
 		if (IS_ERR(rstc)) {
-			if (PTR_ERR(rstc) != -EPROBE_DEFER)
-				dev_err(&dev->dev, "Can't get amba reset!\n");
-			return PTR_ERR(rstc);
+			ret = PTR_ERR(rstc);
+			if (ret != -EPROBE_DEFER)
+				dev_err(&dev->dev, "can't get reset: %d\n",
+					ret);
+			goto err_reset;
 		}
 		reset_control_deassert(rstc);
 		reset_control_put(rstc);
@@ -472,6 +474,12 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
 	release_resource(&dev->res);
  err_out:
 	return ret;
+
+ err_reset:
+	amba_put_disable_pclk(dev);
+	iounmap(tmp);
+	dev_pm_domain_detach(&dev->dev, true);
+	goto err_release;
 }
 
 /*
-- 
2.7.4


-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
