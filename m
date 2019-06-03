Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5E4330D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 15:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5E82MCC0/D4402NJ3GBVAofld8sA39CznnhGR+6ZrQ=; b=ZcEQiMJhk4GRGw
	Fbsv4OqRH8DwNRg4WF028iblSXhfeHvSuW/+uDYbsX9dd8KAK65sYeo283jGiP55aSiciGdhCv3t4
	B06kzY+vn873Aq4HoM/yLAmzq1ix5bxpas8AeOd4rwRSORzchXqndr5Bh2Hq/4HtqMAK5535CKHYI
	FPWvyz50ghSstkUXW/xCIp4nxmakMYqojF5i7wK0uMmkMncRn2uhTUPRom1EXqictR+nNkO1Ei+iH
	nAyL8slFU6oSLYa7OO1kaz9SQunFOZcXrVa64wBvUIwg7Is8R3dq5yonFhXY8ZwJ1tEDcGbtoM5sy
	6gz4nIIUc4LAPoiw3tXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmrm-00037D-JY; Mon, 03 Jun 2019 13:19:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmrg-00036l-Sm; Mon, 03 Jun 2019 13:19:06 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 948FB25162;
 Mon,  3 Jun 2019 13:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559567944;
 bh=aXYplNsQyPIIU3iosXdops52mTbvO5TWj1ZH0e2m5y8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yKyo6M2XLijHBSpowPCGIa52e50oIDHg5UeXTQK8/A5zpiDZgdgHr6O9spi+oGfM6
 UzDmJzm4PH+evWpGO0R/juuUCACjkHgWRvdVP8RvqHrpsTN2m18HmT9OzLT3TXidJ0
 JPVbT1eNdKxVsUTu5846R4uUF014XBU7gbiTMlww=
Date: Mon, 3 Jun 2019 15:19:01 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v6 07/10] usb: roles: Add fwnode_usb_role_switch_get()
 function
Message-ID: <20190603131901.GB10397@kroah.com>
References: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
 <1559115828-19146-8-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559115828-19146-8-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_061904_941526_5968DA07 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-usb@vger.kernel.org, Yu Chen <chenyu56@huawei.com>,
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

On Wed, May 29, 2019 at 03:43:45PM +0800, Chunfeng Yun wrote:
> From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> 
> The fwnode_usb_role_switch_get() function is exactly the
> same as usb_role_switch_get(), except that it takes struct
> fwnode_handle as parameter instead of struct device.
> 
> Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> ---
> v6:
>   new patch

If you are forwarding on a patch from someone else, like this, you need
to put your signed-off-by line on it as well.

Please fix that up, and add the tested-by one, when you resend this
series.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
