Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D46FBF5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 06:20:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4OTTywJ4AeLCohAnK/vhds/fv2WaV6HvlgdP8hIyTCI=; b=NJ65XOg8qaUzNY
	WT1rCozezX/vFOsFhJWp32YLwnX9ilT2XpvMdBOzfxAYES7avrzdBGqZaCB4y35zARP/gzUc0Tbdb
	3bejQ2M8v4WGl3sMUE7TaCHLN7rYF2Az15DKV9db8s8IXv6QNcdNag82BTNXxf2M39pSzi9ZD4a1y
	eJnO+s6632Ji3C2OqdKM6qy+0VwbHI2lSV61n0/tKyO5d9/mfzf5fvvACyubVhdLfSHdwiysDQG6Y
	n3Jf+np4Boh4BURTJrNcMtlCJPOIpv3OpKlFTq6YVac8E6wgPtysRgfpMtOZFQc0pEcvFBHKxPaBC
	aShIDYO+ofQn1PbkHh+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7Y6-0005PA-3t; Thu, 14 Nov 2019 05:20:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7VV-0002lS-AH; Thu, 14 Nov 2019 05:17:29 +0000
Received: from localhost (unknown [124.219.31.93])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18A2120659;
 Thu, 14 Nov 2019 05:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573708644;
 bh=8BYMV7CANtRhOA58MtOK3hZb2vP43Rz9zeEellPyIgM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jpvjjKuhqx4v0eaZHif+d5Jmx97YOQlTjee2CXgnI6+s77VIaqFChCCP5Q+XK7Q+d
 6Vq3rqQ19ApidkSJFwq00cbj33niuEcuD2iltZCV8LEe7+Sn1b9YVdxMxaDbO1ed33
 el9gf9aAaMwN5zbxY4gZGOrRQciXkXGOHf61LdE8=
Date: Thu, 14 Nov 2019 13:17:22 +0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v11 00/11] Rockchip ISP Driver
Message-ID: <20191114051722.GA316916@kroah.com>
References: <20191114051242.14651-1-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114051242.14651-1-helen.koike@collabora.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_211725_527879_854A7680 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, jacob-chen@iotwrt.com,
 zhengsq@rock-chips.com, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 02:12:31AM -0300, Helen Koike wrote:
> Hello,
> 
> This series adds the Rockchip Image Signal Processing Unit v1 driver to
> staging.
> 
> The main reason to be in staging is that people are already using it from the
> mailing list (including libcamera), and having it in mainline makes the workflow
> easier. Also, it is easier for other people to contribute back (with code
> or testing the driver).
> 
> We plan to actively work on this driver to get it our of staging.
> 
> This patchset is also available at:
> https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v11
> 
> Libcamera patched to work with this version:
> https://gitlab.collabora.com/koike/libcamera
> (also sent to the mailing list)
> 
> The major difference in v11 are:
> - Fixed compiling warnings found with W=1
> - Fixed checkpatch errors
> - Add clock-names values in dt-bindings
> 
> This series only touches MAINTAINERS file and drivers/staging/

Looks sane, but as this is drivers/staging/media I am guessing this will
go through the media kernel tree, not my staging tree, right?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
