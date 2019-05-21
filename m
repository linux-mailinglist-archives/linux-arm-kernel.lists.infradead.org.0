Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFAA24D39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Date:Message-ID
	:To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ny32WjlkV3alzkw56G3Cx4ieiBGPsaVEa16gaL8Swvc=; b=fQTsJrydNEa6mN
	Oanjyz5sDwBQN/izfpNO5g7nAIvAE2D4vDe4VvgkmiTHMeNrdKeh5a4UiMBFTjqyA8Ah88XOVOfcK
	bXYtSosXpWVV5qOOrdqnIYpw+r5ifJ2HAbTywG/6XzXneEbylxIKE/g9eUg+uMWRMJh/m583Wyc4P
	bbSurmoQCq0B9yMQ0nia0hlu2Nz9b0ZQBbSftxHfV5Uan66YkVJssCKl22vhGx7iNpjZf8asZR4X4
	5QCm02+gb++xB7/7FBcn3QWV/1yP3lJOBDyqvZll/bzE1CwuhpCwNmmTWyedZK+UhP34Q9iY02fM4
	qg54cXYg4uW97YRj/KLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2Ni-0000a9-TA; Tue, 21 May 2019 10:52:30 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2NZ-0000Yy-Qs
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:52:23 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190521105219euoutp02060901dd8369705a834c4e68af45820e~grTrIjpmi1480014800euoutp02M
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 10:52:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190521105219euoutp02060901dd8369705a834c4e68af45820e~grTrIjpmi1480014800euoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558435939;
 bh=a4rhZ7HDvqEXTse02KOkCIPOpiX/GoXFahUQjVRjFLg=;
 h=From:Subject:To:Cc:Date:References:From;
 b=NcJ+cu+aKZ3+h5RKQrrpUzr0mvBakOdHXoTYYtfxF609Eqv5N1Hq3heFaFm0fh2ue
 VqxXojXBwlTfohpZlVBgeciVnvatgkSCgS+Asv/O8xtuRLa0i84KjiP2nkR6XD0DFr
 WYeMXfZGd+8uIbNGoTbsK8ze1nmOqMFXuYYbM17U=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190521105218eucas1p223bcb596e0f5151933429035226d649c~grTqvaKul3024630246eucas1p2B;
 Tue, 21 May 2019 10:52:18 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id CE.05.04298.268D3EC5; Tue, 21
 May 2019 11:52:18 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190521105217eucas1p19796d2969c1a568fecb0750818226241~grTp_qUlh0212202122eucas1p1L;
 Tue, 21 May 2019 10:52:17 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190521105217eusmtrp10af3bb8c9b7bf448b194ab3dfa026eef~grTpvH-dp1584715847eusmtrp1S;
 Tue, 21 May 2019 10:52:17 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-79-5ce3d86229b6
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DA.F4.04140.168D3EC5; Tue, 21
 May 2019 11:52:17 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190521105217eusmtip13906abf5ab5422044daf75a93ee3213b~grTpZV8cU2619726197eusmtip1F;
 Tue, 21 May 2019 10:52:17 +0000 (GMT)
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH v2] video: fbdev: atmel_lcdfb: add COMPILE_TEST support
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Message-ID: <f9d56fc1-3e02-9716-b764-82e9600e5919@samsung.com>
Date: Tue, 21 May 2019 12:52:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBKsWRmVeSWpSXmKPExsWy7djP87pJNx7HGFz7LmLR/m4Zu8WVr+/Z
 LDY9vsZqcaLvA6vF5V1z2CxerL3OarF980JmB3aPeWuqPe53H2fy2Lyk3uPOj6WMHp83yQWw
 RnHZpKTmZJalFunbJXBlbL62kqVgNlvFmy8rmBsYZ7N2MXJySAiYSJy8d5Spi5GLQ0hgBaPE
 8msTmCGcL4wSO9dNZAGpEhL4zCjRdtAPpmPh+ensEPHljBLHbopBNLxllDjw6TfYWDYBK4mJ
 7asYQWxhAXeJOY33gFZwcIgI6Ev86VIEqWcW+MQo0T5rLVgNr4CdxNRzO9hAbBYBVYnJP6aB
 zREViJC4f2wDK0SNoMTJmU/ADmIWEJe49WQ+E4QtL7H97RywqyUEprNLnF54ixniUheJL22v
 2CFsYYlXx7dA2TISpyf3sEA0rGOU+NvxAqp7OzAAJv9jg6iyljh8/CIryNnMApoS63fpQ4Qd
 JV48/MkIEpYQ4JO48VYQ4gg+iUnbpjNDhHklOtqEIKrVJDYs28AGs7Zr50qo0zwk3qz4xz6B
 UXEWktdmIXltFpLXZiHcsICRZRWjeGppcW56arFhXmq5XnFibnFpXrpecn7uJkZg+jn97/in
 HYxfLyUdYhTgYFTi4c2Y8ihGiDWxrLgy9xCjBAezkgjv6VNAId6UxMqq1KL8+KLSnNTiQ4zS
 HCxK4rzVDA+ihQTSE0tSs1NTC1KLYLJMHJxSDYzsulFGexkWLFRn4yw+x3/z5KOqUqcapTi7
 GPYDdezTA5ds7teOvLG2+NrbMP+lfz5omq6M8mubu+HUg4WbWvY8k34Yd/1vRLWNkd3TdL39
 F/09vOTy3wRZhfpM3jUnnv91xffGx++2iXxuLepr/BbHk2rSdShL6rBVmNa88BkNsqfWPuxt
 V1JiKc5INNRiLipOBAA6lT9SOwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsVy+t/xu7qJNx7HGLxskLdof7eM3eLK1/ds
 FpseX2O1ONH3gdXi8q45bBYv1l5ntdi+eSGzA7vHvDXVHve7jzN5bF5S73Hnx1JGj8+b5AJY
 o/RsivJLS1IVMvKLS2yVog0tjPQMLS30jEws9QyNzWOtjEyV9O1sUlJzMstSi/TtEvQyNl9b
 yVIwm63izZcVzA2Ms1m7GDk5JARMJBaen87excjFISSwlFHi26ajjF2MHEAJGYnj68sgaoQl
 /lzrYoOoec0osaN1AxNIgk3ASmJi+ypGEFtYwF1iTuM9JpBeEQF9iT9diiD1zAKfGCV+PW8H
 q+EVsJOYem4HG4jNIqAqMfnHNLAjRAUiJM68X8ECUSMocXLmEzCbWUBd4s+8S8wQtrjErSfz
 mSBseYntb+cwT2AUmIWkZRaSlllIWmYhaVnAyLKKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMj
 MH62Hfu5ZQdj17vgQ4wCHIxKPLwZUx7FCLEmlhVX5h5ilOBgVhLhPX0KKMSbklhZlVqUH19U
 mpNafIjRFOihicxSosn5wNjOK4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTT
 x8TBKdXA2Ljyua/uNWaHaZsOxvNvPSk/e5V3/nYjS4dyhT0Cse97nmYk6N9JOO78O9ljWm4m
 L8+a4/XcGtHrf0/ROz8pfOf9T04dS3+tVp+rtnv1br5FAvOYQhMkFkxdt44ht599/vbkoLnq
 6SY1Ly0uXPO41/pxukmOxP0J1l9VrcoNZAOLc4032ZpqKbEUZyQaajEXFScCADhftqO1AgAA
X-CMS-MailID: 20190521105217eucas1p19796d2969c1a568fecb0750818226241
X-Msg-Generator: CA
X-RootMTR: 20190521105217eucas1p19796d2969c1a568fecb0750818226241
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190521105217eucas1p19796d2969c1a568fecb0750818226241
References: <CGME20190521105217eucas1p19796d2969c1a568fecb0750818226241@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_035222_132104_9604F914 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-fbdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add COMPILE_TEST support to atmel_lcdfb driver for better compile
testing coverage.

Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
---
v2: add missing HAVE_CLK && HAS IOMEM dependencies

 drivers/video/fbdev/Kconfig |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

Index: b/drivers/video/fbdev/Kconfig
===================================================================
--- a/drivers/video/fbdev/Kconfig
+++ b/drivers/video/fbdev/Kconfig
@@ -856,7 +856,8 @@ config FB_S1D13XXX
 
 config FB_ATMEL
 	tristate "AT91 LCD Controller support"
-	depends on FB && OF && HAVE_FB_ATMEL
+	depends on FB && OF && HAVE_CLK && HAS_IOMEM
+	depends on HAVE_FB_ATMEL || COMPILE_TEST
 	select FB_BACKLIGHT
 	select FB_CFB_FILLRECT
 	select FB_CFB_COPYAREA

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
