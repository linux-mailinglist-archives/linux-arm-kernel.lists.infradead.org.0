Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF81712E5E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 12:56:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4L/rsa1FDyuUWR2AhkDZrIJTjKJV9skD8Gsq4H3HsI=; b=bn8zrpDbnrjo8p
	DmgmB4Ee/kFa1v358Webijo03W0kYeB+o6xDMVOVr7cC/8uuhNnPy8w3ds60LzwkwzZdMdA7pU6J2
	XulHPtCvEwqsxoGw+H4muEgyI/gj6pEhJBFrrZASD7fmQh6zft1sJK80DSI2Uq5CrMs5EFOMiNbxe
	JywgYLt3uWUeg4MJuG4cdp5wwt67SkC7uHYsCWZfNouJRUnW4NfSWVFy592djOGYI5o28xsQEGu1m
	KCtqhGnV6180bwa9SH4IGO/LTzm+0Rxava9Tr9m2st5OEYrhhiB/UE2q1N8Yg2Ax2hKy03uiFV3RU
	TW09UooTSOCaO6oo8U6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imz5s-0007jb-Ap; Thu, 02 Jan 2020 11:56:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imz5k-0007iu-FV
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 11:56:43 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1imz5Z-0002We-MF; Thu, 02 Jan 2020 12:56:29 +0100
Message-ID: <f3a5ccdc211b5d94b1901e72cfc2ef57d4107054.camel@pengutronix.de>
Subject: Re: [PATCH v7 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>, yong.liang@mediatek.com, 
 wim@linux-watchdog.org, linux@roeck-us.net, matthias.bgg@gmail.com, 
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, chang-an.chen@mediatek.com,
 freddy.hsin@mediatek.com
Date: Thu, 02 Jan 2020 12:56:27 +0100
In-Reply-To: <1577437494-738-2-git-send-email-jiaxin.yu@mediatek.com>
References: <1577437494-738-1-git-send-email-jiaxin.yu@mediatek.com>
 <1577437494-738-2-git-send-email-jiaxin.yu@mediatek.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_035640_517424_D596C69E 
X-CRM114-Status: UNSURE (   5.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sboyd@kernel.org, yingjoe.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-12-27 at 17:04 +0800, Jiaxin Yu wrote:
> Add #reset-cells property and update example
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>

Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

to be merged together with patch 2.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
