Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C561AE589E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 06:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=osnWc9An7V4/DzV19StO9MwfHeuKS95b2JPi8il9jZ0=; b=LkE
	Z2GNFLBcrc86e90pfoaWhlxFZjM0sZK2CDTG3+42Bx6PQci9XGeDD+qGO0vITOL1aHRoVON6/hrCB
	/dVISZCsctidCfACiJkRADcO19KeFih5jR53B9lBe1TfL4AUebg1+kfHci0PQRudtohwXY94cgBdl
	g/tTXot1OQnDaM3OYUbVGjzDh3nIKBN+iSj+aXtQFUfRqESWAPtAxveEC860nf5KD4mDp1u9v93OZ
	CoJ0y1024jD2lfAA16tuNQIGv0atT00/x2zNrgWhsFBl5f7GzfILFGmodP53D7TxcEjibKuzkKvaQ
	8FJ5MT5gjcmxXNLjBc0k8fjbFhAtfmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iODe2-0007iL-37; Sat, 26 Oct 2019 04:25:42 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iODdu-0007hs-BZ
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 04:25:35 +0000
Received: by mail-io1-xd41.google.com with SMTP id p6so4718589iod.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 21:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rHeRkxrHD5GX5EWDlQ98vXy+a783uwWXtM2tQKGXdug=;
 b=gZRJSPMGxM1UPw1FdEvVFtbG4SqDkm9JN/GP92+GDY/bQVm73xFX5T2lkdkRAXJ9uw
 4K927+DEPOjX0v2NhbOsDZjCOyTgg/PgzXqgwivEM6QeBnGHV0CLxMfG1XeHJninS6Jn
 d3HUaWWFRPVWG+u/urTqRNtrGbQyLiZdTXq6MhvYlWjtoC7vQBAz3Rn6Mb3cxkdt1/Po
 nUZHC0Eiw1kMMsF1PkX5MSMnY53N8J0Q3vB8vM9pSuefryXU7vr8bduXoiI452R8NKud
 SwAzjj4yI/LFANHdC8I/m+7ITtp+iUIKP8EtGIgHjMBdZ+gFerdXZYr/VS+jNVHKs/wb
 4H6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rHeRkxrHD5GX5EWDlQ98vXy+a783uwWXtM2tQKGXdug=;
 b=GUfmK+jX2DWxmAeTooCK0gQjO1hAMuaLJsueF5X6BDF6eGcGXEKbSV9OBmUnlyfT34
 2EJQ+vfeizl/V+0OhIpcihYOcVnn+pa+7s0QZI5kgKHCwvOrS/rappfxFTbNCZYyOJNT
 gDiZ/qiJ+RRDMflUoVQNYs0COqnLuK8dfmuGvBAgk/jQ6RCsIj0n0DfhBAeG7EW4DG/C
 7toUy81EoUcqqa7lOCsB/wG34t9+hrXI8GsF+qRdlcnHi+Zxv61SkpUsivytOEZiLl7/
 pjbvLvPFxsX8ycViuFrsa+7Ccie6c/rwFBkfMzEOpq8YceLTreI8+Lxm0Ct/YxFbPkWF
 W7LA==
X-Gm-Message-State: APjAAAVFGUtbwmwCDd7NozPWJ1o03lxQpPX1nOdE/E8HZqTJ++mDI+Aj
 xsqNJH/zKhnekjn3zxdEKQk=
X-Google-Smtp-Source: APXvYqwyjakLVT85RTryWMHfy6AKHouMUXRj6cegqSHqrg9AmKKAZBYTX2iEX2LdU+HgQdpe1I/m7g==
X-Received: by 2002:a5d:980a:: with SMTP id a10mr7426699iol.225.1572063932870; 
 Fri, 25 Oct 2019 21:25:32 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id n123sm452068iod.62.2019.10.25.21.25.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 21:25:32 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] media: aspeed-video: Fix memory leaks in aspeed_video_probe
Date: Fri, 25 Oct 2019 23:25:18 -0500
Message-Id: <20191026042519.29446-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_212534_420855_6BF9AB64 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 kjlu@umn.edu, openbmc@lists.ozlabs.org, Eddie James <eajames@linux.ibm.com>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, emamd001@umn.edu,
 Joel Stanley <joel@jms.id.au>, smccaman@umn.edu,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the implementation of aspeed_video_probe() the allocated memory for
video should be released in case of failure. Release video if either
devm_ioremap_resource() or aspeed_video_init() or
aspeed_video_setup_video() fails.

Fixes: d2b4387f3bdf ("media: platform: Add Aspeed Video Engine driver")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/media/platform/aspeed-video.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
index eb12f3793062..8c473356132d 100644
--- a/drivers/media/platform/aspeed-video.c
+++ b/drivers/media/platform/aspeed-video.c
@@ -1663,18 +1663,24 @@ static int aspeed_video_probe(struct platform_device *pdev)
 
 	video->base = devm_ioremap_resource(video->dev, res);
 
-	if (IS_ERR(video->base))
-		return PTR_ERR(video->base);
+	if (IS_ERR(video->base)) {
+		rc = PTR_ERR(video->base);
+		goto free_video;
+	}
 
 	rc = aspeed_video_init(video);
 	if (rc)
-		return rc;
+		goto free_video;
 
 	rc = aspeed_video_setup_video(video);
 	if (rc)
-		return rc;
+		goto free_video;
 
 	return 0;
+
+free_video:
+	kfree(video);
+	return rc;
 }
 
 static int aspeed_video_remove(struct platform_device *pdev)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
