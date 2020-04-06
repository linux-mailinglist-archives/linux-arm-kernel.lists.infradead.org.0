Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D270019FACA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 18:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/FBRuDMVFVPpoks/k7F39dwBjt5/bRxhh5GRH4G0BU=; b=bgQYfqFXYgObvF
	keOtqlxPHM1VLVuWrWkPnVWdjRydYJ5NSRJFoucr0pv4aSpuBmHzii+Q8TjVpddHvEj3KlP/rwacs
	cfN05KgC/PVe8GOvKj2zY26U51wYKwS7lYmzFd7gi/Nuqk3ZwIPw7OAo5qUW6RaReoEPXG7lmq1dm
	ZQHmfs2zY6rwIv5Nvp0OZjuc7p6qTAQpRwWtYmAILsGY8YLokeApVRACd+Hb/7Zrw2JA3Ctc9QQej
	vTBpmyEO2MvOEO1bP7qzH/Y6jWEyimQGrmXsiP1K4vzvXMeOh/l0McCWrk9i/8qWpwGe/SkNkaPgI
	30qpAvnXMh12fXOchlVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUy6-0006UE-HT; Mon, 06 Apr 2020 16:51:26 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUxx-0006TD-MY
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 16:51:18 +0000
IronPort-SDR: 9CY/poOOv9kYm8BC704bbAg+VNlESlyolhcQm3887LQHo6/Ri3qLux33gQYFgooQoPfCelH7W4
 yZsUQhhxS+lw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 09:51:16 -0700
IronPort-SDR: kjCiRUBms6Oudl08kIgmjRJ8yJFiqdbX9CskZ1NCkQPkJ5tiWYY/FBE+/gJesUjKh8ZqsLOOJZ
 Hi9KN4lWORPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="452131333"
Received: from unknown (HELO kekkonen.fi.intel.com) ([10.252.48.155])
 by fmsmga006.fm.intel.com with ESMTP; 06 Apr 2020 09:51:11 -0700
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
 id B273921D18; Mon,  6 Apr 2020 19:51:08 +0300 (EEST)
Date: Mon, 6 Apr 2020 19:51:08 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v5 2/5] media: i2c: ov5645: Drop reading clock-frequency
 dt-property
Message-ID: <20200406165108.GA7646@kekkonen.localdomain>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_095117_751569_96E5A1A6 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Mon, Apr 06, 2020 at 05:42:38PM +0100, Lad Prabhakar wrote:
> Modes in the driver are based on xvclk frequency fixed to 24MHz, but where
> as the OV5645 sensor can support the xvclk frequency ranging from 6MHz to
> 24MHz. So instead making clock-frequency as dt-property just let the
> driver enforce the required clock frequency.

Even if some current systems where the driver is used are using 24 MHz
clock, that doesn't mean there wouldn't be systems using another frequency
that the driver does not support right now.

The driver really should not set the frequency unless it gets it from DT,
but I think the preferred means is to use assigned-clock-rates instead, and
not to involve the driver with setting the frequency.

Otherwise we'll make it impossible to support other frequencies, at least
without more or less random defaults.

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
