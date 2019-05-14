Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A87071D075
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 22:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37BdzeTcGnjNL5haCX3ZmqIKzGBhhmD8GdiLwyeSSLs=; b=NT5QupM/cbSyzD
	0afIHIdjwL/WoYQGetyfisYGKKa966DnqbimpuLQMJdjr2DhaC+uwRfNCTImfGaH7JekKBeyfn1/r
	5ZBcTUMmy6LuC0B9b1l2Z1N+Ftrwc3gwpLb5iu7yd7TdnIZL0pVGTvRM+LkJ37DiIMDHOGxNtvVF7
	XQEI3OzvnoOB55RAqLYkp26j2vLIHmzvyjc93So5asg7Att7HJiOzKljxJDJhUSMNYhKpeSldPclT
	Fz4kc793G7deBBVvOetPZvRopXaXvSUKht+w/eyrDgPzwhcbz3/ggb/Fvc/iiwHEbt6G95Ao1/Fw+
	HrGqePH0Yzczk8KvGA8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQduH-0004Tw-PJ; Tue, 14 May 2019 20:20:13 +0000
Received: from mail-it1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdu6-0003qL-0H
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 20:20:03 +0000
Received: by mail-it1-f196.google.com with SMTP id 9so907192itf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 13:19:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lK8c734xh5U5PM3ABKp/9nxVkeJ2kE5gY87Z6hnyLjY=;
 b=FT3WofKqcUXIiQtDsUk4hUyFU86VdKhIoUTQ633lmV6H1WTGrgZv2RWR2L+vqVgzni
 8yaxMP2s7qDa0Xzc1OB4S3luoaY7OxvxZFJn4Z4+iC9LHFKcwsFgjrR8P7t4A/kTkBNu
 X5o9d4uKw5fSt88TCGD+Qh23mzgO4R0Yd07mgCEgN0iWxtJLlZc86w6wcsjxpmsr/1Xa
 MgWDASVlRF8b0FdQqspRV+KA9VEZTrJWaeSVFp+jIBFzxmOKrLTpscOhh+KvnMFOIDQl
 /sqypWqOI3ZzLr9/yNalCNqBtq/FSG9ZPOvBBGp7EVIwlrpGR1HMnF482rs++wzc8jG+
 lqQQ==
X-Gm-Message-State: APjAAAWuDEIaGaDJ6SvLdTy9dRH3vzKpVFzY4Epd2iJBxU6MMHdxyier
 qpsTCDDqBo/lhMB0oOu6+NjfPQ==
X-Google-Smtp-Source: APXvYqw5Ieb4O+HXGg5FGMOQuh00DKqk4E7AnX5MHmnns5jJT4DhWDpnXg9aD82Klnzt0ms9U6gjAw==
X-Received: by 2002:a02:c4c6:: with SMTP id h6mr25419071jaj.33.1557865198005; 
 Tue, 14 May 2019 13:19:58 -0700 (PDT)
Received: from chromium.org ([2620:15c:183:0:92f:a80a:519d:f777])
 by smtp.gmail.com with ESMTPSA id m189sm25150itm.21.2019.05.14.13.19.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 13:19:57 -0700 (PDT)
Date: Tue, 14 May 2019 14:19:52 -0600
From: Drew Davenport <ddavenport@chromium.org>
To: Louis Kuo <louis.kuo@mediatek.com>
Subject: Re: [RFC PATCH V2 0/4] media: support Mediatek sensor interface driver
Message-ID: <20190514201952.GA107202@chromium.org>
References: <20190512060005.5444-1-louis.kuo@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512060005.5444-1-louis.kuo@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_132002_123796_62CD93AD 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -7.5 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, Jerry-ch.Chen@mediatek.com, tfiga@chromium.org,
 keiichiw@chromium.org, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, hans.verkuil@cisco.com, zwisler@chromium.org,
 frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Louis,

On Sun, May 12, 2019 at 02:00:01PM +0800, Louis Kuo wrote:
> Hello,
> 
> This is the RFC patch adding Sensor Inferface(seninf) driver on
> Mediatek mt8183 SoC, which will be used in camera features on CrOS application.
> It belongs to the first Mediatek's camera driver series based on V4L2 and media controller framework.
> I posted the main part of the seninf driver as RFC to discuss first and would like some review comments
> on the overall structure of the driver.
> 
> The driver is implemented with V4L2 framework.
> 1. Register as a V4L2 sub-device.
> 2. Only one entity with sink pads linked to camera sensors for choosing desired camera sensor by setup link
>    and with source pads linked to cam-io for routing different types of decoded packet datas to PASS1 driver
>    to generate sensor image frame and meta-data.
> 
> The overall file structure of the seninf driver is as following:
> 
> * mtk_seninf.c: Implement software and HW control flow of seninf driver.
> * mtk_seninf_def.h: Define data structure and enumeration.
> * mtk_seninf_reg.h: Define HW register R/W macros and HW register names.
> 
> [ v2: use recommended coding style, fix v4l2-compliance issue, add v4l2 async notifier operations, remove redundant code]

Thanks for the style fixes. I made a number of review comments on V1 of
the driver patch. Please take a look at those if you haven't already.

> 
>   media: platform: mtk-isp: Add Mediatek sensor interface driver
>   media: platform: Add Mediatek sensor interface driver KConfig
>   dt-bindings: mt8183: Add sensor interface dt-bindings
>   dts: arm64: mt8183: Add sensor interface nodes
> 
>  .../bindings/media/mediatek-seninf.txt        |   52 +
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi      |   34 +
>  drivers/media/platform/Makefile               |    2 +
>  drivers/media/platform/mtk-isp/Kconfig        |   16 +
>  drivers/media/platform/mtk-isp/Makefile       |   14 +
>  .../media/platform/mtk-isp/isp_50/Makefile    |   17 +
>  .../platform/mtk-isp/isp_50/seninf/Makefile   |    4 +
>  .../mtk-isp/isp_50/seninf/mtk_seninf.c        | 1366 +++++++++++++++++
>  .../mtk-isp/isp_50/seninf/mtk_seninf_def.h    |  170 ++
>  .../mtk-isp/isp_50/seninf/mtk_seninf_reg.h    |  992 ++++++++++++
>  10 files changed, 2667 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-seninf.txt
>  create mode 100644 drivers/media/platform/mtk-isp/Kconfig
>  create mode 100644 drivers/media/platform/mtk-isp/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf.c
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf_def.h
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf_reg.h
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
