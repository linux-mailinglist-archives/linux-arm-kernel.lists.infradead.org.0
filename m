Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E68B9F6E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 20:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dFMhYvQB8meajRSyuhiSib5PMz/DaQU/FUylv4/SVEk=; b=InphtHx9b7cqIx
	C7WwPBfp2+jLg1QX4cbRtC9KdBQGS8799uioBhxJ0/x050kApv0KktVZJ2U4Zgd3GZDMyQZaAr8fI
	Lgsm/l6320Wicer8HwoKmQswhEymaj4n7ZIu/3z7xAKJfGgiL+Mos0cTpc/PfqQ7gz/yLsxtTjpbJ
	U0SX7k1qKIEG7Y5wj6FtMiaeXxN5NZieA92xsfD4tRay6tJ3HBgg0ROhbSYisXacFy9+JUDevqSDc
	2Os3jD+0MW8nt/viSa0w/d0gU8WWYwbTtQzDkG32jfLX0buaSammFDchjaFCi7pCKUk01HpJpyJ5G
	UjtIGl6/Y32vTfyt4Kxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBkJe-0001k6-Nw; Sat, 21 Sep 2019 18:41:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBkJT-0001jN-D4
 for linux-arm-kernel@bombadil.infradead.org; Sat, 21 Sep 2019 18:40:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Cc:Subject:From:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SNYzLXT+N0jmxs145QikzDBdcS5yzXwtnSvJSpfdqow=; b=oO/zF+ibGizy85qTqjjBwzDJwc
 NXwHqwuMlGS+LtvnPx3LCva3hL903SqEFp6H/wTBDsjQWV9auhRjhuBvV2lYMWOvQgq+J3o2ozhLx
 8CGrmWMSF4l/DYV1EAnGPs1xcb2ms6z+veX6uc/Aa2amAS7Az65zmdtIErVx/gG2ya/Q8lsQaHsD3
 xF4XImxX/H3fPp3TAz8Rq69p1XuSTX6SpryuaKcHLwDnCWKAgGmsYIv+bTYhxdBIqza7UGMuvT+Tr
 TmrgscnTfLleZs5AV8i/TPMSn5Q+Lxwh7+gKW45ZeyQvfO+iD6ATQuT7r8zc2MeXKjmiofqmSWvJ2
 1wIF5W9g==;
Received: from mout.web.de ([212.227.17.11])
 by casper.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBkJj-0000Pz-N0
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 18:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1569091219;
 bh=Twq1fj2lQc3nmfC187jBrB33/1QwxY+fy4X0HS5AHhE=;
 h=X-UI-Sender-Class:To:From:Subject:Cc:Date;
 b=KJw7POip/zrplKUQwCoIyGHOd6wUfMqr5wf0nR9Oh9gfI6S5CaOuzaW6BuiMm/FSK
 aZEUenAMLauMrLPjOIGDSLWjIuwRC76aETAuFCiqtY3HfhUZcegJlDpqZL4lSIYiix
 DM9kEdaI8yoQy6iQVmvYcYcymNxcU885GyoRe/lY=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.64.44]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LkPnr-1hebHM20Al-00cQL7; Sat, 21
 Sep 2019 20:40:19 +0200
To: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Zheng Yang <zhengyang@rock-chips.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] drm/rockchip/rk3066: Use devm_platform_ioremap_resource() in
 rk3066_hdmi_bind()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <0666bc0b-6624-21a0-47c4-b78e2a3b3ad5@web.de>
Date: Sat, 21 Sep 2019 20:40:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:5I3KuHcCJx+Ogtmv8TkE+aOUJZQhTM3hWEdytOtIg94XcoRHXwC
 8yQ5Vmf68D9oCgcXp+HmU9gj4qeO98DxGjMCbZ1ppeQ4x+B6HID151IVmVk8W4TmWKbCdbJ
 ojRXBpR86dRNY/b4Ab+bVKTjNSlv50SVKc+l+ueTnsraKxfntPYIY+v9ww63xXEJC7LMP8v
 1hgw5woFymUdqEDVnx62w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:K5heBjx4d+Y=:fXuxZ2pnoPj0CdmC3JlDEZ
 CbsPctl5Dv4ymI1Gq83euUzsXwR8fnbxQlDP+6mp6yPoStGj6ZuQn2d9sDHkhc2nkJhrMo/x/
 j/F/gYf3osfiSYY0Qm1cLdUagAMSjpBRlRMPKmB6vifQpKrTHdJc3clRgmNqNmITDmXHKcyHB
 myvzRAA5hXz9sCMrBkcUkoSb15f4ynbNReKzQpZrAiMat/jijqK+FOHr525rgDLz6A2lOHCry
 P6nNmaMcqsm60nw8AnV2waLeuvuv8J1CK4fb3QciefjMhL+K/vRdaY0AkK8r8itIjERyIDk3U
 bT4Qtvab5BCWoCgVOEmRq/StQmri5DEjY1rDd68CfU+qQozdoomT/NbgYmPYPV5xjAZny30C8
 /cPD4C+PwCRRQ/4CJh+KkvlSKbB3aWHRdGAvfKteDQ17R0C/N/RY64Jzd97huCMkv696rkT6p
 uLVthZ9xtrlu1fuMqGHRUaa+UD/58GfMlcngQkO7FtxXuzKcSf2/Rh7LpcgS/w/47RdyX0MrL
 BfqCYskBrYJgeF+iHtVxYLXE0jfUI36FvluE0JTH53pQNUGwN9ZDitRNQrSRMNtJYWs3FoR5A
 Y8O9bRtyPcp8qYRfkSPsxReFGB5SOlfa85Zxl9ASaOLulY5VEDRNXtbCZkceWAfFw0CDGM3W0
 s/xyrLPADuy6v2KFwo+TImvJBNs/TXQz4DrT2MV9TeQsXkda4RcZfBLRT0z5/lJ2wC2BV1Gwi
 W6t2IjKPFW5bYFFdRF7sTgJjWD2+jcsEYQKSZx/kGbXTr+6DeF+BlaFMiRAggHfwcP7k6hJ0l
 a+oB6oU+W/cUT/cZC+ACBybyCQFsi1iYF2/GEQJEabc/sjUJSgMFtfjdlNWyWHas5cmZt++C7
 2MjM6UiVheaR5Msu6ssQBX3eYehRvGwV84dzZel36ID+qEwgo2Ff96z+9BNKrKRA0t3QED4BH
 HFJvJ31PAshjBK/Uj4TCyDjNkwLVcGegGqTaSPAg4dQHJeOXK1U/YHPxLBsrCkB3YJSc7yt8G
 KdPMkfR2B1ff4HeIuANRjyo/ubt1u0yD7rLa4t3rFKZMlRq10mx/DsPBDF83JjNzRBUG6cXMz
 O1YctSmIXp8W2SO8bVJVblEitOoA5b5Z0vwVX/zRofYmnITrjI6TqsJPTwoI0u2AAgA8ZqFg/
 4c64q5b0u+ShwgIHuCo9fjrjX6wlEnSaJHI00WU7gHd63CwLpl/UGFr/UjKvC2AIe5CT50tDo
 3oEk4kmbOkHN6ms4R2t9KecIokfQPjnO1XXf69e45uQuar0rzR9RHeAXoMqQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_194111_878994_7619BE96 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Johan Jonker <jbx6244@gmail.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Sat, 21 Sep 2019 20:32:25 +0200

Simplify this function implementation by using a known wrapper function.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index 85fc5f01f761..cdb401f4283d 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -743,7 +743,6 @@ static int rk3066_hdmi_bind(struct device *dev, struct device *master,
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = data;
 	struct rk3066_hdmi *hdmi;
-	struct resource *iores;
 	int irq;
 	int ret;

@@ -753,12 +752,7 @@ static int rk3066_hdmi_bind(struct device *dev, struct device *master,

 	hdmi->dev = dev;
 	hdmi->drm_dev = drm;
-
-	iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!iores)
-		return -ENXIO;
-
-	hdmi->regs = devm_ioremap_resource(dev, iores);
+	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hdmi->regs))
 		return PTR_ERR(hdmi->regs);

--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
