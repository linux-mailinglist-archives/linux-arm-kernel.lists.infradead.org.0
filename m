Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06F92170A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 12:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEROZa4olkzrko2/bQPtFLqlQK4G1/r9aN6iKjmUQW8=; b=m+BpHb+emymKFv
	gi8PKlWK5JL0hwKB2AxeRvxKLagkHOE3Bw4ZpzqE2RS1KYGhq78TBvM04pB1s/Ag0RZKDpPEdhqEF
	S4KpSAWkSGP95baD8YSiJ56usCVArMGDzBdkZlvhCTuoOQVasWTPwhyqj+lhQ2YTjHsquo+cQv0NZ
	2oRjp1rIaaeXphVX/KQy8PbdtHlW8ma58TGzcrACL11M3T+SJtJ/sLNVWEeWqos0A9AglLZnzrhKS
	0CXd8hVWG+uwDI9JukpmImaA8cq4Up0dc1NnY7oKWxkWA+tc924S77YSUn2klKb79k1JXGrUjmrM0
	DG+A4g79laRFvzir6/fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRaFN-0002PD-Ca; Fri, 17 May 2019 10:37:53 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRaFD-0002OS-3Z; Fri, 17 May 2019 10:37:45 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 03:37:42 -0700
X-ExtLoop1: 1
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 17 May 2019 03:37:37 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Fri, 17 May 2019 13:37:36 +0300
Date: Fri, 17 May 2019 13:37:36 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node
Message-ID: <20190517103736.GA1490@kuha.fi.intel.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557823643-8616-5-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_033743_159357_FD7F5313 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On Tue, May 14, 2019 at 04:47:21PM +0800, Chunfeng Yun wrote:
> Add fwnode_usb_role_switch_get() to make easier to get
> usb_role_switch by fwnode which register it.
> It's useful when there is not device_connection registered
> between two drivers and only knows the fwnode which register
> usb_role_switch.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Tested-by: Biju Das <biju.das@bp.renesas.com>

Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
> v5 changes:
>  1. remove linux/of.h suggested by Biju
>  2. add tested by Biju
> 
> Note: still depends on [1]
>  [1]: [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
>       https://patchwork.kernel.org/patch/10909971/
> 
> v4 changes:
>   1. use switch_fwnode_match() to find fwnode suggested by Heikki
>   2. this patch now depends on [1]
> 
>  [1] [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
>     https://patchwork.kernel.org/patch/10909971/
> 
> v3 changes:
>   1. use fwnodes instead of node suggested by Andy
>   2. rebuild the API suggested by Heikki
> 
> v2 no changes
> ---
>  drivers/usb/roles/class.c | 24 ++++++++++++++++++++++++
>  include/linux/usb/role.h  |  8 ++++++++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
> index f45d8df5cfb8..4a1f09a41ec0 100644
> --- a/drivers/usb/roles/class.c
> +++ b/drivers/usb/roles/class.c
> @@ -135,6 +135,30 @@ struct usb_role_switch *usb_role_switch_get(struct device *dev)
>  }
>  EXPORT_SYMBOL_GPL(usb_role_switch_get);
>  
> +/**
> + * fwnode_usb_role_switch_get - Find USB role switch by it's parent fwnode
> + * @fwnode: The fwnode that register USB role switch
> + *
> + * Finds and returns role switch registered by @fwnode. The reference count
> + * for the found switch is incremented.
> + */
> +struct usb_role_switch *
> +fwnode_usb_role_switch_get(struct fwnode_handle *fwnode)
> +{
> +	struct usb_role_switch *sw;
> +	struct device *dev;
> +
> +	dev = class_find_device(role_class, NULL, fwnode, switch_fwnode_match);
> +	if (!dev)
> +		return ERR_PTR(-EPROBE_DEFER);
> +
> +	sw = to_role_switch(dev);
> +	WARN_ON(!try_module_get(sw->dev.parent->driver->owner));
> +
> +	return sw;
> +}
> +EXPORT_SYMBOL_GPL(fwnode_usb_role_switch_get);
> +
>  /**
>   * usb_role_switch_put - Release handle to a switch
>   * @sw: USB Role Switch
> diff --git a/include/linux/usb/role.h b/include/linux/usb/role.h
> index da2b9641b877..35d460f9ec40 100644
> --- a/include/linux/usb/role.h
> +++ b/include/linux/usb/role.h
> @@ -48,6 +48,8 @@ int usb_role_switch_set_role(struct usb_role_switch *sw, enum usb_role role);
>  enum usb_role usb_role_switch_get_role(struct usb_role_switch *sw);
>  struct usb_role_switch *usb_role_switch_get(struct device *dev);
>  void usb_role_switch_put(struct usb_role_switch *sw);
> +struct usb_role_switch *
> +fwnode_usb_role_switch_get(struct fwnode_handle *fwnode);
>  
>  struct usb_role_switch *
>  usb_role_switch_register(struct device *parent,
> @@ -72,6 +74,12 @@ static inline struct usb_role_switch *usb_role_switch_get(struct device *dev)
>  
>  static inline void usb_role_switch_put(struct usb_role_switch *sw) { }
>  
> +static inline struct usb_role_switch *
> +fwnode_usb_role_switch_get(struct fwnode_handle *fwnode)
> +{
> +	return ERR_PTR(-ENODEV);
> +}
> +
>  static inline struct usb_role_switch *
>  usb_role_switch_register(struct device *parent,
>  			 const struct usb_role_switch_desc *desc)
> -- 
> 2.21.0

thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
