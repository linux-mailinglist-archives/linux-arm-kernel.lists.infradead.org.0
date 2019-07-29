Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A4578DD4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5X0T18fNFsSbMI4RJ3z9YWPWXd/+9+lTvYS/PTHM8g=; b=Yeiyy5bCb4fFxG
	b/fwl9WontV2fwPPjfGDRw+1PUV9cjITpWIHR/83ozuwPfbuh9XBCauk2jCyESWWCA1etA87WGp3R
	xSJt8iVUSkaUK9fko26R8XlWE+Pmcv70edrkYceEi40s8Vd/A5vxbDTw4X2CSPaK1YV+2EOBrvd8y
	A/ftnep7HNxAHnp5BLSWORQLu/XQQq2MgYP2fXOn0lMt0A9CkeDTkMD31TggMcTFHZC7b94G0xayx
	6MCtXHrOw0noyiNCBzWwHXtEcm+PPdiEX8gr5p+3VesJGRsJIQXFTJnBYKxuOz6lksBWI/yLrNTJP
	t1j83ja+ctm5ijrMDTvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6cY-0005Av-H5; Mon, 29 Jul 2019 14:27:26 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6cG-0003ub-Pa; Mon, 29 Jul 2019 14:27:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 07:25:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="190601545"
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 29 Jul 2019 07:25:01 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Mon, 29 Jul 2019 17:25:00 +0300
Date: Mon, 29 Jul 2019 17:25:00 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v8 08/11] usb: roles: get usb-role-switch from parent
Message-ID: <20190729142500.GE28600@kuha.fi.intel.com>
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
 <1563958245-6321-9-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563958245-6321-9-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_072708_846148_814B38A8 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 04:50:42PM +0800, Chunfeng Yun wrote:
> when the USB host controller is the parent of the connector,
> usually type-B, sometimes don't need the graph, so we should
> check whether it's parent registers usb-role-switch or not
> firstly, and get it if exists.
> 
> Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

I don't think I actually wrote the patch. I may have proposed the code
for you, but I never prepared a patch out out that. Please drop the
above Signed-off-by line if that is the case. I case I really did
write the patch, then you are missing the "From: Heikki..." first
line, but I really don't remember preparing the patch.

If the idea came from me, you can use for example the suggested-by
tag: "Suggested-by: Heikki Krogerus <heikki.krogerus...".

> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v8: no changes
> v7:
>   add signed-off-by Chunfeng
> 
> v6:
>   new patch
> ---
>  drivers/usb/roles/class.c | 25 +++++++++++++++++++++----
>  1 file changed, 21 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
> index 5b637aaf311f..87439a84c983 100644
> --- a/drivers/usb/roles/class.c
> +++ b/drivers/usb/roles/class.c
> @@ -114,6 +114,19 @@ static void *usb_role_switch_match(struct device_connection *con, int ep,
>  	return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
>  }
>  
> +static struct usb_role_switch *
> +usb_role_switch_is_parent(struct fwnode_handle *fwnode)
> +{
> +	struct fwnode_handle *parent = fwnode_get_parent(fwnode);
> +	struct device *dev;
> +
> +	if (!parent || !fwnode_property_present(parent, "usb-role-switch"))
> +		return NULL;
> +
> +	dev = class_find_device(role_class, NULL, parent, switch_fwnode_match);
> +	return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
> +}
> +
>  /**
>   * usb_role_switch_get - Find USB role switch linked with the caller
>   * @dev: The caller device
> @@ -125,8 +138,10 @@ struct usb_role_switch *usb_role_switch_get(struct device *dev)
>  {
>  	struct usb_role_switch *sw;
>  
> -	sw = device_connection_find_match(dev, "usb-role-switch", NULL,
> -					  usb_role_switch_match);
> +	sw = usb_role_switch_is_parent(dev_fwnode(dev));
> +	if (!sw)
> +		sw = device_connection_find_match(dev, "usb-role-switch", NULL,
> +						  usb_role_switch_match);
>  
>  	if (!IS_ERR_OR_NULL(sw))
>  		WARN_ON(!try_module_get(sw->dev.parent->driver->owner));
> @@ -146,8 +161,10 @@ struct usb_role_switch *fwnode_usb_role_switch_get(struct fwnode_handle *fwnode)
>  {
>  	struct usb_role_switch *sw;
>  
> -	sw = fwnode_connection_find_match(fwnode, "usb-role-switch", NULL,
> -					  usb_role_switch_match);
> +	sw = usb_role_switch_is_parent(fwnode);
> +	if (!sw)
> +		sw = fwnode_connection_find_match(fwnode, "usb-role-switch",
> +						  NULL, usb_role_switch_match);
>  	if (!IS_ERR_OR_NULL(sw))
>  		WARN_ON(!try_module_get(sw->dev.parent->driver->owner));
>  
> -- 
> 2.21.0

thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
