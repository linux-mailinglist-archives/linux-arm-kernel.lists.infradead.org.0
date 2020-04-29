Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8963C1BD444
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 07:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lV5v0NzGbiZbLyrFCYdF0+g+OjfvuvupWWd7i0vjHSg=; b=LWbeC9apbHq339
	zD/l+0BYbm26ZWPcPaRUi+mvugWuh2kjhkq9h+IuWCULz72ZWfCTQjimqcRQ5USX8gR3Uq7/xOh7n
	7gdHHOJFCkQ8WId4td6CaYmANDBb0byooo2EDAPvWKrw1d1J9/YHrsGkc9SUJEvApWhVEYMlWsZFx
	gebPdXjrQCaQR7o0XOhK7tXWshXuTEOL9+TEvG7kMlLAoUmdo5HLNahlP9GBWhVTYpU2rgoiYeDhd
	PuGammbUpUFJMllISbZ4XsEY9nMBc0NNslI2Tj/CS1kJmcG90ObmSUuQAgb2PlY34WQ9EdAK1/Dci
	Asnx+fav842lbknXF61A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTfh9-0006VD-AO; Wed, 29 Apr 2020 05:55:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTfgy-0006Ty-UF
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 05:55:34 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jTfgq-0001EU-VB; Wed, 29 Apr 2020 07:55:24 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jTfgm-0000Th-Q1; Wed, 29 Apr 2020 07:55:20 +0200
Date: Wed, 29 Apr 2020 07:55:20 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v8 v5 1/3] media: dt-bindings: ov8856: Document YAML
 bindings
Message-ID: <20200429055520.GA31414@pengutronix.de>
References: <20200428180718.1609826-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428180718.1609826-1-robert.foss@linaro.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:53:01 up 67 days, 17:09, 133 users,  load average: 0.07, 0.07,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_225532_973937_6CDEC578 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On 20-04-28 20:07, Robert Foss wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> This patch adds documentation of device tree in YAML schema for the
> OV8856 CMOS image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
> 
> - Changes since v7:
>   * Marco: Make 'port' property optional

Sorry if my comment was not precise enough but this wasn't my intention.
The port property must be required.

>   * Maxime & Sakari: Add 'link-frequencies' property to dt binding
>   * robher: Improve description for 'port' property
> 
> - Changes since v6:
>   * Marco: remove qcom specifics from DT example

This was my intention :)

Regards,
  Marco

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
