Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9BE13DE2F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:58:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Date:Message-ID
	:To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=0flPH+VffKhu9jZ+FplygQP1mC8tL6jGOKQfFzFnU2A=; b=ZPdKR/qbMNgXsj
	15TcSWfkX1JzEoDwKm7ZuN2I4UIWvSw48MyB3V5O6Efwq7g0XIm+yfjbnuKdmQrPB9ymsHb5apauE
	Lp3/cwnMNbEXIcKu9Tui7k+rTRkjq0RZeFFARTcCg9t89ATgSdVu0GBo+PvuQ85vPHqjk4Gm9g1tF
	sDRgNSf3Gelyh1LH0c5KR2Psl6qA1eN3TwNFcbHccg2G/x+I5FUp9J1c8o0tlEiGQ/A52C0ezneZ3
	/CwhavOY4dIun1/55L475szrh+he1TO7oPWJlU96OaoZcm3GPh7ckncCgDxJwD/onDPQXHKfigv2l
	7yDOERzpSHfsghwMFe1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6bJ-0006oM-Q3; Thu, 16 Jan 2020 14:58:25 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6b6-0006nV-Cx
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 14:58:16 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200116145810euoutp02990580cad22cb238c3be7d10d82bad70~qZe2nX_rw0658906589euoutp02Q
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 14:58:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200116145810euoutp02990580cad22cb238c3be7d10d82bad70~qZe2nX_rw0658906589euoutp02Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1579186690;
 bh=LOKbJ5eqsGKknVC/oZwcYCd5dCgwHhDZl29qB7mWEHo=;
 h=From:Subject:To:Cc:Date:References:From;
 b=IWwWgMi5M8Qh7W39+idS6sXTLJOZt8QpB3rwsQjvOPuNmO0kK7vk1gGIHDiSIEXdK
 XDSbgbgT0WCrinkz9E5WesW9TNbdrfWHnRmFuVnxq4InZkt9MRgAWQFDZjv/F4/lbt
 /TZK9+Snz+UMZ3Y3OrVR1TF2X1LZxIEmWhJA93FE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200116145810eucas1p117b8bff7f408d99fed0e80231ade4209~qZe2RIUnI2221422214eucas1p1A;
 Thu, 16 Jan 2020 14:58:10 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 4B.F4.60698.20A702E5; Thu, 16
 Jan 2020 14:58:10 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200116145810eucas1p11937b8ef56638752cb2fe501833c63fa~qZe18cz8T1823218232eucas1p1r;
 Thu, 16 Jan 2020 14:58:10 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200116145810eusmtrp194f8ac9affbf5d9e257221380232493a~qZe17wckF1562815628eusmtrp1Y;
 Thu, 16 Jan 2020 14:58:10 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-b9-5e207a020448
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 36.C6.07950.10A702E5; Thu, 16
 Jan 2020 14:58:09 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200116145808eusmtip2c39deaa6a221fcab8d8902823715c92d~qZe0_AHgE3196531965eusmtip2I;
 Thu, 16 Jan 2020 14:58:08 +0000 (GMT)
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH 2/2] video: fbdev: wm8505fb: add COMPILE_TEST support
To: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Message-ID: <900c16b3-9306-7d17-f467-0f98bc95416a@samsung.com>
Date: Thu, 16 Jan 2020 15:58:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBKsWRmVeSWpSXmKPExsWy7djP87pMVQpxBkeWCVjcWneO1WLjjPWs
 Fle+vmez2PT4GqvFib4PrBaXd81hs2i5vILZgd3jfvdxJo/NS+o9zv9vYffo27KK0ePzJrkA
 1igum5TUnMyy1CJ9uwSujKfN59kLetgqfu44z9rAOJW1i5GDQ0LARGL2Gc0uRi4OIYEVjBI3
 FzUwQThfGCX+fDgJVMQJ5HxmlHg22wKmYdFHU4ia5YwSS2evg6p5yyjxe50BiM0mYCUxsX0V
 I4gtLOAqcebbb7ChIgJtjBJfV0FsYBZoBmrY8YINpIpXwE7iz4sPzCAbWARUJXY/TwQJiwpE
 SHx6cJgVokRQ4uTMJywgNrOAuMStJ/OZIGx5ie1v5zCDzJQQWMQu8WnNAbCEhICLxOOHT5kh
 bGGJV8e3sEPYMhKnJ/ewQDSsY5T42/ECqns7o8Tyyf/YIKqsJe6c+8UGchGzgKbE+l36EGFH
 iU+3F7NAgoJP4sZbQYgj+CQmbZvODBHmlehoE4KoVpPYsGwDG8zarp0roc7xkOi5dJdxAqPi
 LCSvzULy2iwkr81CuGEBI8sqRvHU0uLc9NRi47zUcr3ixNzi0rx0veT83E2MwPRz+t/xrzsY
 9/1JOsQowMGoxMP7IUQhTog1say4MvcQowQHs5II78kZsnFCvCmJlVWpRfnxRaU5qcWHGKU5
 WJTEeY0XvYwVEkhPLEnNTk0tSC2CyTJxcEo1MJ6ySJBYOb+EYbH83qzjJjfqBN6b3D2dX/tV
 abfx1mk+6VseeLnFXJnrf8p75do7696E3FqqFHzySni8ZEi4/R39AieTpVIOnEbsOjyP/r1Y
 nBwg3x94sFRx9vKCY3LbpOXO/N/+2syFu09vTYIP+8EP37krc9cumrBTueibaO635RKTF/qw
 H1JiKc5INNRiLipOBADdcX1gOwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsVy+t/xe7qMVQpxBjt7bSxurTvHarFxxnpW
 iytf37NZbHp8jdXiRN8HVovLu+awWbRcXsHswO5xv/s4k8fmJfUe5/+3sHv0bVnF6PF5k1wA
 a5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJextPm
 8+wFPWwVP3ecZ21gnMraxcjBISFgIrHoo2kXIxeHkMBSRoln2zewQ8RlJI6vL+ti5AQyhSX+
 XOtig6h5zSjRs62PFSTBJmAlMbF9FSOILSzgKnHm228mkCIRgTZGiflbXjCCOMwCzYwSd9at
 ZwKp4hWwk/jz4gMzyAYWAVWJ3c8TQcKiAhESh3fMYoQoEZQ4OfMJC4jNLKAu8WfeJWYIW1zi
 1pP5TBC2vMT2t3OYJzAKzELSMgtJyywkLbOQtCxgZFnFKJJaWpybnltspFecmFtcmpeul5yf
 u4kRGEHbjv3csoOx613wIUYBDkYlHt4ZQQpxQqyJZcWVuYcYJTiYlUR4T86QjRPiTUmsrEot
 yo8vKs1JLT7EaAr0z0RmKdHkfGB055XEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnNTk0t
 SC2C6WPi4JRqYNx7t3His6Jnn2O7tsm5Fr7cutdZ45LIvLOplw7lX9oWJibUrrZ396ZNyu+X
 8VuxdyUKLzYwmHj6UZuNOxurn4Bxr+SrSzlJcW8sd//W/L814N+rKr0fQj4P7T7OFtr/Q35i
 X3FYcdCar2vOhfywX3JaW+mjltAiDf/1rRHKMj9+HXY9fO/lNiclluKMREMt5qLiRAC1X1ue
 tgIAAA==
X-CMS-MailID: 20200116145810eucas1p11937b8ef56638752cb2fe501833c63fa
X-Msg-Generator: CA
X-RootMTR: 20200116145810eucas1p11937b8ef56638752cb2fe501833c63fa
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200116145810eucas1p11937b8ef56638752cb2fe501833c63fa
References: <CGME20200116145810eucas1p11937b8ef56638752cb2fe501833c63fa@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_065812_575530_53983442 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tony Prisk <linux@prisktech.co.nz>, Andrzej Hajda <a.hajda@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add COMPILE_TEST support to wm8505fb driver for better compile
testing coverage.

Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
---
 drivers/video/fbdev/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: b/drivers/video/fbdev/Kconfig
===================================================================
--- a/drivers/video/fbdev/Kconfig
+++ b/drivers/video/fbdev/Kconfig
@@ -1639,7 +1639,7 @@ config FB_VT8500
 
 config FB_WM8505
 	bool "Wondermedia WM8xxx-series frame buffer support"
-	depends on (FB = y) && ARM && ARCH_VT8500
+	depends on (FB = y) && HAS_IOMEM && (ARCH_VT8500 || COMPILE_TEST)
 	select FB_SYS_FILLRECT if (!FB_WMT_GE_ROPS)
 	select FB_SYS_COPYAREA if (!FB_WMT_GE_ROPS)
 	select FB_SYS_IMAGEBLIT

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
