Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A43AD6A21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 21:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DiavVusuSb1FKSMHbdk8OLlY+cgItw2RvS51fviQvpQ=; b=rc0e7T733h761V
	OZXcEg61F/6qwcr9hoo2VTiCN8NltNcv1G6qrvxfhwydRpB1XSxKOe9JIeaZ8ZmAoQLFcArDmQ30+
	fOj54H6upo0MdWm9qR3Y8X0hgIGcs6IPM6uzPrmaFimPybZgUs8bXFblo+36ToSCZFM5p/vlOOnq7
	6951ATuuv77PD84FfPvHymG+LuvhDBh10HlnUeS99DeKW4u4/fKnY8DD6F12NyXPCpZRCw1nHczmN
	KxAwGMI395HqhcDAC5zDYhwAhAa3QSq+jJkirKnkO9gWS0QGc0n2PtJmyEpyB9x277eAe7VkqF/Ks
	H6vW0mqzSEUdmTvlZPQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK62m-0004Mh-No; Mon, 14 Oct 2019 19:30:13 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK62X-0004LT-6h
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 19:29:58 +0000
X-Originating-IP: 90.76.216.45
Received: from windsurf.home (lfbn-1-2159-45.w90-76.abo.wanadoo.fr
 [90.76.216.45]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id CA804FF808;
 Mon, 14 Oct 2019 19:29:39 +0000 (UTC)
Date: Mon, 14 Oct 2019 21:29:38 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH v2] PCI: aardvark: Wait for endpoint to be ready before
 training link
Message-ID: <20191014212938.14516102@windsurf.home>
In-Reply-To: <20190522213351.21366-2-repk@triplefau.lt>
References: <20190522213351.21366-2-repk@triplefau.lt>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4git47 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_122957_381317_D8CAAD35 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ellie Reeves <ellierevves@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Remi,

On Wed, 22 May 2019 23:33:50 +0200
Remi Pommarel <repk@triplefau.lt> wrote:

> When configuring pcie reset pin from gpio (e.g. initially set by
> u-boot) to pcie function this pin goes low for a brief moment
> asserting the PERST# signal. Thus connected device enters fundamental
> reset process and link configuration can only begin after a minimal
> 100ms delay (see [1]).
> 
> Because the pin configuration comes from the "default" pinctrl it is
> implicitly configured before the probe callback is called:
> 
> driver_probe_device()
>   really_probe()
>     ...
>     pinctrl_bind_pins() /* Here pin goes from gpio to PCIE reset
>                            function and PERST# is asserted */
>     ...
>     drv->probe()
> 
> [1] "PCI Express Base Specification", REV. 4.0
>     PCI Express, February 19 2014, 6.6.1 Conventional Reset
> 
> Signed-off-by: Remi Pommarel <repk@triplefau.lt>

It is always a bit annoying to add another 100ms in the boot path, but
I don't see an easy alternative solution, so:

Acked-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
