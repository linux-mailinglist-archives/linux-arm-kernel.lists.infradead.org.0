Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C0822EEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=me4zyTzGih1VlkN6GQfPeKQ48HfpnbzCVvBl+Z3UDUA=; b=LwyqSNTvhsSgbg
	c7p5ce6M1Qi5W5kZhFk+Cucv7c0x0i96nCPVRjQirThj6aYSFfSZeQ5Gv+DOtDwT3BSfS3ekkhoX6
	zYvDbwejEWX5z+M9x70yiYdIFUwJ2URDzC47u3yfA3SFJgI8fgwcRaO0bhHh7TDpQe1cXoGyPj3eo
	jW6efWHubqn/xod7UhQP1/zdmclHg+3Fji47KAklnNVdycrU55a3TUuM7cf+9fhV8swjFbpeVyWW4
	p4b+zU/hDayu/RZXYS4KTosbYtU/dsWeuu8t+ZRvunLRCygDXtGJw6ZSnL+Ck55SrAaS1wqxOxY8V
	z68QcE/Da276bZYXexGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdiG-0002Qy-FW; Mon, 20 May 2019 08:32:04 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdi9-0002QM-Oy; Mon, 20 May 2019 08:31:59 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 01:31:56 -0700
X-ExtLoop1: 1
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 20 May 2019 01:31:51 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Mon, 20 May 2019 11:31:51 +0300
Date: Mon, 20 May 2019 11:31:51 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v5 5/6] usb: roles: add USB Type-B GPIO connector driver
Message-ID: <20190520083151.GD1887@kuha.fi.intel.com>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-6-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557823643-8616-6-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_013157_864005_87BEA52D 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, May 14, 2019 at 04:47:22PM +0800, Chunfeng Yun wrote:
> +static int usb_conn_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct device_node *node = dev->of_node;
> +	struct device_node *remote_node;
> +	struct usb_conn_info *info;
> +	int ret = 0;
> +
> +	info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
> +	if (!info)
> +		return -ENOMEM;
> +
> +	info->dev = dev;
> +	info->id_gpiod = devm_gpiod_get_optional(dev, "id", GPIOD_IN);
> +	if (IS_ERR(info->id_gpiod))
> +		return PTR_ERR(info->id_gpiod);
> +
> +	info->vbus_gpiod = devm_gpiod_get_optional(dev, "vbus", GPIOD_IN);
> +	if (IS_ERR(info->vbus_gpiod))
> +		return PTR_ERR(info->vbus_gpiod);
> +
> +	if (!info->id_gpiod && !info->vbus_gpiod) {
> +		dev_err(dev, "failed to get gpios\n");
> +		return -ENODEV;
> +	}
> +
> +	if (info->id_gpiod)
> +		ret = gpiod_set_debounce(info->id_gpiod, USB_GPIO_DEB_US);
> +	if (!ret && info->vbus_gpiod)
> +		ret = gpiod_set_debounce(info->vbus_gpiod, USB_GPIO_DEB_US);
> +	if (ret < 0)
> +		info->debounce_jiffies = msecs_to_jiffies(USB_GPIO_DEB_MS);
> +
> +	INIT_DELAYED_WORK(&info->dw_det, usb_conn_detect_cable);
> +
> +	info->vbus = devm_regulator_get(dev, "vbus");
> +	if (IS_ERR(info->vbus)) {
> +		dev_err(dev, "failed to get vbus\n");
> +		return PTR_ERR(info->vbus);
> +	}
> +
> +	remote_node = of_graph_get_remote_node(node, -1, 0);

This is really not ideal. In practice this code will only work if
there is only one endpoint described for this device, or if the first
endpoint is always the one we are looking for. There is no way to
guarantee that.

The code really has to walk through the entire graph, and identify the
remote endpoint it's looking for (and for that we have the boolean
device property).

> +	if (!remote_node) {
> +		dev_err(dev, "failed to get remote node\n");
> +		return -ENODEV;
> +	}
> +
> +	info->role_sw =
> +		fwnode_usb_role_switch_get(of_fwnode_handle(remote_node));

So fwnode_usb_role_switch_get() needs be the one that walks through
the graph, not the drivers. Otherwise every driver will do the same
exact steps (boilerplate). Here you need to be able to just pass the
node of this device, not the remote endpoint:

        info->role_sw = fwnode_usb_role_switch_get(dev_fwnode(&client->dev));

But why do you need that function at all? Why wouldn't
usb_role_switch_get() work?

        info->role_sw = usb_role_switch_get(&client->dev);

> +	of_node_put(remote_node);
> +	if (IS_ERR(info->role_sw)) {
> +		dev_err(dev, "failed to get role switch\n");
> +		return PTR_ERR(info->role_sw);
> +	}
> +
> +	if (info->id_gpiod) {
> +		info->id_irq = gpiod_to_irq(info->id_gpiod);
> +		if (info->id_irq < 0) {
> +			dev_err(dev, "failed to get ID IRQ\n");
> +			ret = info->id_irq;
> +			goto put_role_sw;
> +		}
> +
> +		ret = devm_request_threaded_irq(dev, info->id_irq, NULL,
> +						usb_conn_isr, USB_CONN_IRQF,
> +						pdev->name, info);
> +		if (ret < 0) {
> +			dev_err(dev, "failed to request ID IRQ\n");
> +			goto put_role_sw;
> +		}
> +	}
> +
> +	if (info->vbus_gpiod) {
> +		info->vbus_irq = gpiod_to_irq(info->vbus_gpiod);
> +		if (info->vbus_irq < 0) {
> +			dev_err(dev, "failed to get VBUS IRQ\n");
> +			ret = info->vbus_irq;
> +			goto put_role_sw;
> +		}
> +
> +		ret = devm_request_threaded_irq(dev, info->vbus_irq, NULL,
> +						usb_conn_isr, USB_CONN_IRQF,
> +						pdev->name, info);
> +		if (ret < 0) {
> +			dev_err(dev, "failed to request VBUS IRQ\n");
> +			goto put_role_sw;
> +		}
> +	}
> +
> +	platform_set_drvdata(pdev, info);
> +
> +	/* Perform initial detection */
> +	usb_conn_queue_dwork(info, 0);
> +
> +	return 0;
> +
> +put_role_sw:
> +	usb_role_switch_put(info->role_sw);
> +	return ret;
> +}

thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
