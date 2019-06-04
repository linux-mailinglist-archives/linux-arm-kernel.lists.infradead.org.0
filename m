Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA8234692
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsU8qrzV/etRvsMTcKKrM2LQ08uhEwlXVH9vKKdidck=; b=rDEKAAfohJ0oR/
	0i4ryF+XmMNl383xRBGzTdXfwapgy9RmBNf6di2DvK7bjzvCJjNTSEJubZnAvFlxS+zaxcm77EovU
	JnDN5zCzszOD1ywieOpmYxtEDizxipl0Re+9k/laqJ4pW6MxPZVL7aYR0kcMjbhQGLXl3BCLJVv03
	jmC1raUCwBbVnLcC0Co0/cZP6mrmAHRVOhoNRSAzRxaK9vL9HVy4/jQyNa7vEXcFDdY8dVUZrFOzi
	eSe/nFR3l6oA+XOiiUe6DCWQyni4bcp0VPBzVVs8slifdfDGFWfcH6WdcX6zNdUZ0lzpVh4xh/6h0
	ljKHAbcI4cf0LmzOzb4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8VK-0003FS-I2; Tue, 04 Jun 2019 12:25:26 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8VC-0003EU-HL; Tue, 04 Jun 2019 12:25:19 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 05:25:18 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga006.jf.intel.com with ESMTP; 04 Jun 2019 05:25:15 -0700
From: Felipe Balbi <felipe.balbi@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] USB: move usb debugfs directory creation to the usb
 common core
In-Reply-To: <20190604093258.GB30054@kroah.com>
References: <20190604093258.GB30054@kroah.com>
Date: Tue, 04 Jun 2019 15:25:14 +0300
Message-ID: <87tvd5illh.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_052518_581699_81D7C881 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi,

Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 7fcb9f782931..f3d6b1ab80cb 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -1185,19 +1185,17 @@ static struct notifier_block usb_bus_nb = {
>  	.notifier_call = usb_bus_notify,
>  };
>  
> -struct dentry *usb_debug_root;
> -EXPORT_SYMBOL_GPL(usb_debug_root);
> +static struct dentry *usb_devices_root;
>  
>  static void usb_debugfs_init(void)
>  {
> -	usb_debug_root = debugfs_create_dir("usb", NULL);
> -	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
> -			    &usbfs_devices_fops);
> +	usb_devices_root = debugfs_create_file("devices", 0444, usb_debug_root,

don't we have a race now? Can usbcore ever probe before usb common?

-- 
balbi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
