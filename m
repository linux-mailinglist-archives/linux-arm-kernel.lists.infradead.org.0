Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18B8C88E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 14:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HykX/Y5QE8ALQtoNBsT9pezuWcdPsWS/IMa6xTwovus=; b=O09fgROplgNnnA
	PQbQ4VPf3Qrdt8FxfxISpqmBgvdEZUW2FKl6b0rhLzL9rdblZ4BT+fjCGECcbmewZ5Kyl+pAsL5m7
	CJYajyvYCx0cgAScLXKDBfwhM7+/1ZKkpzVYshw3IMfZgAX8KaG952LhCqie1vGg1XYq05a3cxQHb
	t0zOiH0qZK5rSU0mOG0M9EpPm378kiqPdYCPAMUXvCqUaYAQ5sOeG5ev1fTbw/mZUq+9Df6VN1/xO
	pZ1tOOCERqHQzgN3DUke9/XDrf8Xhj/TmaLZ5lMnrQZ7G5WJPfKdKwM536ApmlJqXPXfSBVesa2Qh
	Zivaj3TynxKAasn/B+6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFdwP-0006u5-Gb; Wed, 02 Oct 2019 12:41:13 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFdw9-0006jZ-4J
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 12:40:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FqquIHC5oxBy8CfQu3Yph9eJsUVp9ZgWjyWHgpTSvkU=; b=JPJGdfbHXvOiVSxMPvS6nxMLB
 Wm6y7QlzB1iqVkXS0nqPlswbkaPjuAcZHOVasrZff8Z9COb4i53czP8CqWb/7uzGyt83bDGymojER
 Dm7l8DOwlJ4Pu8RYOOVMUh4B2zUMAyClkZsJsK4DFUTu9EYgYFOd8VXRo0OF5ChUy4WQTItrnNNfh
 /GrijJ1hKrd3B+7CJvM67b8JAIFIZkrBT2OOwId8GWq6E3Xf2Rjy5R+2C2hetdWNkoOvM5HIxdrA/
 CMDKNmG/kWrgBrrnaxl25jGOsISEPhGkrduob+M0pfdDYvPURjy0H0CcGkylR06lXgW7q5tgirT4J
 r+vQFBsRw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46680)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iFdvx-0000FD-EC; Wed, 02 Oct 2019 13:40:45 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iFdvv-0000fy-Hs; Wed, 02 Oct 2019 13:40:43 +0100
Date: Wed, 2 Oct 2019 13:40:43 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [PATCHv2] ARM: drivers/amba: release the resource to allow for
 deferred probe
Message-ID: <20191002124043.GR25745@shell.armlinux.org.uk>
References: <20191002123349.23771-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002123349.23771-1-dinguyen@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_054057_412377_FB2DE0C4 
X-CRM114-Status: GOOD (  18.69  )
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

On Wed, Oct 02, 2019 at 07:33:49AM -0500, Dinh Nguyen wrote:
> With commit "79bdcb202a35 ARM: 8906/1: drivers/amba: add reset control to
> amba bus probe", the amba bus driver needs to be deferred probe because the
> reset driver is probed later. However with a deferred probe, the call to
> request_resource() in the driver returns -EBUSY. The reason is the driver
> has not released the resource from the previous probe attempt.
> 
> This patch fixes how we handle the condition of EPROBE_DEFER that is returned
> from getting the reset controls. For this condition, the patch will jump
> to err_release, which will release the resource.
> 
> Fixes: 79bdcb202a35 ("ARM: 8906/1: drivers/amba: add reset control to
> amba bus probe")
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
> v2: release the resource when of_reset_control_array_get_optional_shared()
>     returns EPROBE_DEFER
> ---
>  drivers/amba/bus.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
> index f39f075abff9..1109437815eb 100644
> --- a/drivers/amba/bus.c
> +++ b/drivers/amba/bus.c
> @@ -409,9 +409,12 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
>  		 */
>  		rstc = of_reset_control_array_get_optional_shared(dev->dev.of_node);
>  		if (IS_ERR(rstc)) {
> -			if (PTR_ERR(rstc) != -EPROBE_DEFER)
> +			ret = PTR_ERR(rstc);
> +			if (ret == -EPROBE_DEFER)
> +				goto err_release;
> +			else
>  				dev_err(&dev->dev, "Can't get amba reset!\n");
> -			return PTR_ERR(rstc);
> +			return ret;

Still a negative.

Remember in the comments to the previous patch I talked about ioremap().

Please read the code that you are modifying and carefully consider what
needs to happen at this site to properly clean up on failure.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
