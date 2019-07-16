Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7306B6AD80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 19:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=a4F4ppZvNxkRR7tpIv9yTcYRFT0ou370WEC+yFY5lZQ=; b=ssU
	aIm5NxDmnKLt+QRoK5qnTdZLQAg/4HI7LAZHNwLiFcX3IkyOx1iTUEfg4CYbV76zG4s4TjWnhMexK
	6bmgwTsu7Z0nvTChxInwu0XeNRpLfF/cNaEZ4JDAIS0bGNU+4wzsemXW1U8dohzY9xaKpqVLY4OJf
	Pir5bbg3xOzjbU67AfyDCA0Pyvv7eYXDnNQKbXjugr0xGjCldyMbusI2PQy8woD4vGAdmqLtWNFcI
	+Zcq6BvyouBAoEpp0iyxTB0Nt1EVGGxF32uECIjfgIOX061wmzsJxdDXaEgwFdClkaUvVO3OhLT1I
	18csiI7kYB/Y6OA5i7VaA0Zdf/CoM8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnR3U-0005NC-8f; Tue, 16 Jul 2019 17:15:56 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnR3E-0005Mb-Sp; Tue, 16 Jul 2019 17:15:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563297326;
 bh=xNnIsDbgppK8wwBxMiTHNVXBTk1p7qOB7xrYiRrkhh8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=KNCcMt0aSPEnh4pHQd2d/g8bY1FjoStxyLmGXY4SvcHPr+hNjHJCtcLzXJdiLS8cF
 XOaJZi94FLTj1UemEQpbVMZ+pi4mNg9Gb1AufLZT6wTX2zE6MxqOc5bD55uaBu9NbU
 tQlBkzckz6VfCMfaSa9OqwijFCW0QNHwglsF13JQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LjeWC-1iKa0M2SHA-00beDU; Tue, 16 Jul 2019 19:15:26 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Dan Williams <dan.j.williams@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH] dmaengine: bcm2835: Print error in case setting DMA mask fails
Date: Tue, 16 Jul 2019 19:15:18 +0200
Message-Id: <1563297318-4900-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:fL6HCOJkHLSo99rnhKGJNd1g6cKxvMfFqhtxr/p3c3HgN4FbiMX
 Wd+iGmFRA82C/GbBmGYre5PwcjOUmaKjXDc8ZWNsF/A7W1PH+FnsKoOmKXaRdjvdaMVmKI8
 QI4dygNsLqkUfJpAkNJxp1VGu2xA7D8cbsEUT606ucvC1itqkIXxUB35N4dXKNr769undih
 HhwgLvqsdizhvrzvUIkFw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RYe9OtUzWrs=:bzoH7sjXqBy9ZGQ84yGcuZ
 rlvNEi25ozg7Cdp5Pl1LNI8c3BPeSyTRpx3sIbVHlQfHp3FCFoBecxlIW9ERUA0uzTC3AaRjj
 4Dh2A1zxvQEtEK8snBnMZZLdMU5f8fWG+8Iptm4dxUG+P0uClP1dTjEop47R0AZ8ebvBJ7BWw
 l73NGF4qXJ1sgl/1CEzgnzMIxn4l1l3GXTveFRSqJoiHTdSKqAaXfWrKiqYV03505vK2yyBC1
 yb7gFVxCOSY+fT9CCTZ7frKBwwalCZ8a5X/RISJGOmkemObiewAF9aRpbwqbIeRUV/p7maJrh
 7DXdI59dtL793Wlo1JbDcXiZGKgF02rdrc1nInJqaeb0zIWPclYyqMN9Hjnyncl6aDFHltMO1
 XjrULSwyzCd3y0SeqmuSk5rwYzWB3G17ginu0kxkc1oWIJUqwcPX/LR+XIYOSah6j4ZHeObdd
 hOrHG80gIjrPKyfFX2BwI69/rof0fbIuhHaclSG28rTtZ6WXDUfVmE7z5tZh/Pzrn16LfuY+M
 AMoKNg5/xQcYW8UCyUTdHpCWdSq0yoI1grQNCBXfcVF9iMs3TjC7F4LathXC7SKsWaWlpqksn
 fxmsQlu5OEStq0DoZnkyxCCdIS+URsKKlCtNRGGR/bQ3s2bMJFn9vgflHXzQ9RkciAk3Ucpcf
 Tds7TRdTodL6e/xp+EE4WzypnsKK5tqxj4XmWRcRVJsVJAxSnICeWtDEOzFAzVdrEicu51B+B
 /NDwQmlkW10icr7FsI5OlYC4H39QRUCgOcxzcgi8K9xtAAUKLGxGoxi8s9St5e5btECxM5e//
 ErVOwTiU0crHrFbxqqjK63IsXcrOS03nz9KiMs9jqxrYICiIKrqUOPUw0PH5DdjdUVpR+poMd
 LfCvGqNLhmkWUokEJ8PVLU/AKGy5wEL8CJ/FPXKcxZBSpA+rGwa3MtoZX51tU8r6kLbg4FTTJ
 QEmEfbbTFo+QTEBQmJ8dUP2U61QpoL/q7R09/9E0Ps3uvHlCdfWcYRlGb68JDF/ydyCbxepJP
 q+e2QIwBd6AUBhYJW75HTur0GuMR46lt3vApoJXoNlqn4LM4zITzHE53p/EESa/C0z3p9lzE7
 KrfHJusRvBwRWM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_101541_267039_4B1E8FB6 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During enabling of the RPi 4, we found out that the driver doesn't provide
a helpful error message in case setting DMA mask fails. So add one.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/dma/bcm2835-dma.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/bcm2835-dma.c b/drivers/dma/bcm2835-dma.c
index 8101ff2f..970f654 100644
--- a/drivers/dma/bcm2835-dma.c
+++ b/drivers/dma/bcm2835-dma.c
@@ -871,8 +871,10 @@ static int bcm2835_dma_probe(struct platform_device *pdev)
 		pdev->dev.dma_mask = &pdev->dev.coherent_dma_mask;

 	rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
-	if (rc)
+	if (rc) {
+		dev_err(&pdev->dev, "Unable to set DMA mask\n");
 		return rc;
+	}

 	od = devm_kzalloc(&pdev->dev, sizeof(*od), GFP_KERNEL);
 	if (!od)
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
