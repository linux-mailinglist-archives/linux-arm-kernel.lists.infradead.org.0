Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFDF100BE0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 19:53:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoojVd1PNozZZoewCdXbXA+cbPLis0k07/bnIrvG2pE=; b=InR7x3q3ImDE/Y
	Cz6qTYh7Ul0btWd9ns16wtgQLjC/HJd3HaV/0VT81Sbs3Bs4nzkhhrR6mV7oWVDK0szHG+vJuj1v0
	G421QxPwmyTZeR1mgWe6otKaaAq7H6/dm99m0LInG4CagXo5yViEDKLJzKecUFn+69bkQfrZKBsBo
	vo+OkW9nVbQLz01ihzDGAWBPXNKPZrP39YMgd6V6xoSFwHICYcdnbWW3se6J9cIpeMe8OIG3l87y1
	jhAinOTNVqdMMqtIqRv7hs1Bs92+EK6MbOylCMfLpPpW53jCcqaqTLW61fn50VIGzZXPS/fBsz02Y
	ZRl+oI2qVfB+46VlT4oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWm96-0002H5-UQ; Mon, 18 Nov 2019 18:53:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWm8Q-0001fe-Dv; Mon, 18 Nov 2019 18:52:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1042F29051B
Message-ID: <7fd4bf99fd6316da8acaf0a27b6845bedbf4b25f.camel@collabora.com>
Subject: Re: [PATCH v11 00/11] Rockchip ISP Driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Helen Koike
 <helen.koike@collabora.com>,  linux-rockchip@lists.infradead.org
Date: Mon, 18 Nov 2019 15:52:01 -0300
In-Reply-To: <996a9b6a-0e45-d627-9263-539c22e5f1c0@xs4all.nl>
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <996a9b6a-0e45-d627-9263-539c22e5f1c0@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_105226_754374_19F029C7 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 gregkh@linuxfoundation.org, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org, robh+dt@kernel.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, mchehab@kernel.org, zhengsq@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hans,

Thanks for taking care of this.

On Thu, 2019-11-14 at 09:42 +0100, Hans Verkuil wrote:
> On 11/14/19 6:12 AM, Helen Koike wrote:
> > Hello,
> > 
> > This series adds the Rockchip Image Signal Processing Unit v1 driver to
> > staging.
> > 
> > The main reason to be in staging is that people are already using it from the
> > mailing list (including libcamera), and having it in mainline makes the workflow
> > easier. Also, it is easier for other people to contribute back (with code
> > or testing the driver).
> > 
> > We plan to actively work on this driver to get it our of staging.
> > 
> > This patchset is also available at:
> > https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v11
> > 
> > Libcamera patched to work with this version:
> > https://gitlab.collabora.com/koike/libcamera
> > (also sent to the mailing list)
> > 
> > The major difference in v11 are:
> > - Fixed compiling warnings found with W=1
> > - Fixed checkpatch errors
> > - Add clock-names values in dt-bindings
> 
> Looking at checkpatch I see a few remaining issues that I believe should be
> fixed before merging this:
> 
> CHECK: spinlock_t definition without comment
> #575: FILE: drivers/staging/media/rkisp1/isp_stats.h:43:
> +       spinlock_t irq_lock;
> 
> CHECK: struct mutex definition without comment
> #581: FILE: drivers/staging/media/rkisp1/isp_stats.h:49:
> +       struct mutex wq_lock;
> 
> CHECK: spinlock_t definition without comment
> #1648: FILE: drivers/staging/media/rkisp1/isp_params.h:25:
> +       spinlock_t config_lock;
> 
> CHECK: spinlock_t definition without comment
> #2058: FILE: drivers/staging/media/rkisp1/capture.h:145:
> +       spinlock_t vbq_lock;
> 

I'd rather merge this as-is, adding a TODO entry stating
we need to revisit locking specifically, because I'd like
to take a close look at these spinlocks/mutex,
instead of just addding comments for then.

> Once this is done together with the Jacob Chen email clarification
> it is ready to be merged for v5.6.
> 

I'll find out more about this.

> It passes all the sparse/smatch tests, so that's very good.
> 

Great!

Thanks,
Ezequiel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
