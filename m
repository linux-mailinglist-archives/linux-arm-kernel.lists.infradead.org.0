Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CF01318D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 20:37:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QA52uV1PZ6/jFVErNCqKXAS6FYwntkpBD/tMoZLpyo=; b=LRO03A4N8EAa0I
	YrnEBTmHnJMvjlrG9571+qnsiJ1/9l9/9bT0twfAiXc3aLFREvEDYKXrmFT7ucgdZB0JpNp8MadPR
	sr8J+4hnzfHXfYV2HUnaTwtgiwxNlt3KIWs8hNKc7h5GH4He56dxt7aA10EZ1YYNf0/7VlIvwGUS2
	XxhzL2p1lVrDRbZmZYkAsz+kVktsrveOJT/THUjVU+PjanfNE9YWwPqecDHqxDyKvsk7YRHXkNzzD
	dBQ2uXn93dlf+MI273mcKp8IpeNimqVGwWG/tttHCsj2bq0nX4IlsxqmxZcgEAqhJb/0VLOWbV0wp
	ZH3YvOFULZydJFOmSnBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioYBu-00032V-0I; Mon, 06 Jan 2020 19:37:30 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioYBo-00031i-1k
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 19:37:25 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id C41042002F;
 Mon,  6 Jan 2020 20:37:17 +0100 (CET)
Date: Mon, 6 Jan 2020 20:37:16 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v3 0/6] fixes for atmel-hlcdc
Message-ID: <20200106193716.GA8135@ravnborg.org>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=zSDjDZFB_YjiolsHgg8A:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_113724_273072_71778C06 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 boris.brezillon@bootlin.com, lee.jones@linaro.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> 
> Claudiu Beznea (5):
>   drm: atmel-hlcdc: use double rate for pixel clock only if supported
>   drm: atmel-hlcdc: enable clock before configuring timing engine
>   mfd: atmel-hlcdc: add struct device member to struct
>     atmel_hlcdc_regmap
>   mfd: atmel-hlcdc: return in case of error
>   Revert "drm: atmel-hlcdc: enable sys_clk during initalization."
> 
> Peter Rosin (1):
>   drm: atmel-hlcdc: prefer a lower pixel-clock than requested

I have applied the drm patches to drm-misc-next now.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
