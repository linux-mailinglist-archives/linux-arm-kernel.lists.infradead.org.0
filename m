Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C06131E1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 04:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoy/qzaT/PiRO23iWighp3/zD34jvPKH2CcRpdn2c9o=; b=SYpO/1nVUtsCrc
	WIiwqk8id/RKosldFkhfZEkQ2D5vzzoVgkv5GhyJwOtM67//Mo4sv3gTcxLfcYCnnzT9irZ4xW4iH
	LTBT7OcY8l/FUsz6aCFzAM8qLyff73iOTiHHthxd/B828HuU6PCz7VpIdGbSNiOK3Y8PT+b6TCqEf
	53hYmVo0ScNnUdpR/2zf+3K02ufSqkowM/CWG3VowGjmbI5cdRzQ3PycGUGcLLIm0o/zJDP7BIFgb
	iBvJymoOI3FTYL7c0TLgDdfRE91xwqEgfQtIcmnbf9jZSlSzY+xk3m1XE4aL3/eHflJkQtRNiYjTz
	gS4mRKo1R98zf13Hw6Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iofmt-0001Vn-LT; Tue, 07 Jan 2020 03:44:11 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iofmT-0001OP-5p
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 03:43:46 +0000
Received: by mail-pg1-x542.google.com with SMTP id 6so27832097pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 19:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VltYEuA+2PApmtgRMm5FF8qb9zrgm0zOyAmewmF0puQ=;
 b=l47vIneSa/hFEkETx/SuB1kevgPx1rLNRqSo/Ms503wbbhPZFWpn6Y0VH+ml5EHGwX
 Z8MjxcYNwT4QKu/bgCwxC94ge6v6noxf6kblwdoLuKYJzUnNf6ep3t2LcQ7Czo44V3na
 ND6a6HAxw5KsTlN1SUyixzT0GcTyWZKfJtJDBuSDRhgGJ+/PMyNmgxh6yj2JvgHYnwNU
 oLPyCwpEGojBiLYLM7HzVbfQsrg7Yr/r+Cu1ckFmHqt4XMyCSs2rEBSPc65TTyqGE7hq
 LAHD+t0sNtfO1GjTa3XVo+ZHcsyfByJaSi7PcK321b5zbAh0huZvRVJ2noP54Xdgyz2B
 sjCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=VltYEuA+2PApmtgRMm5FF8qb9zrgm0zOyAmewmF0puQ=;
 b=UUVCcQs7X5PyTZyT9pJu80kgs+BZziBfrU689iI7WOnXFVI5SUdBPsH4Z/N8ZFKQ/f
 SxrcBEsaxcjfLwzSuMFkO5QYPAVGtLz5Usxnt9c5gNydc9i0mXU1R5ltvijH/pwYjP7s
 CYmuk8idKSuk/cO3YM2tBzjKXrY0FmttDFtQgaCC4HHj4TY0K3hmCgOPmlWs6Q7ADygy
 l3MxEXZiqJ3Fj40Nod4vjJhJTW3KVucRKqugBC2tZZ2bJv4FzKzqXO3uG+hXPZZ8xlBG
 sS+3mxR7J98poTC4aXCUeXwVnHh5syCGX0TxR2/kgyRMEi77CmOabH6dzAvfybn2xkW3
 rPdg==
X-Gm-Message-State: APjAAAWtIKYt+ePosz9ztX48wWDQU4LsuJvO8gefTk/IiZInKVRIRraT
 bgw+zP2lLu/eSevAeSVMDFk=
X-Google-Smtp-Source: APXvYqzZw/5ojo17tCaUt9PV7komeSIywJmrYJhVJN67fb/Rxn2Dvbo59Qfw2xEZ5of4zJw5FPOBDA==
X-Received: by 2002:a62:1d52:: with SMTP id
 d79mr112174863pfd.144.1578368624291; 
 Mon, 06 Jan 2020 19:43:44 -0800 (PST)
Received: from voyager.lan ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id g10sm73455929pgh.35.2020.01.06.19.43.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 19:43:43 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 Eddie James <eajames@linux.ibm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 1/3] media: aspeed: Rework memory mapping in probe
Date: Tue,  7 Jan 2020 14:13:22 +1030
Message-Id: <20200107034324.38073-2-joel@jms.id.au>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200107034324.38073-1-joel@jms.id.au>
References: <20200107034324.38073-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_194345_229887_F5665901 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the recently introduced function devm_platform_ioremap_resource to
save a few lines of code. This makes the driver match common platform
device probe patterns.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/media/platform/aspeed-video.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
index d8593cb2ae84..8f849d9866af 100644
--- a/drivers/media/platform/aspeed-video.c
+++ b/drivers/media/platform/aspeed-video.c
@@ -1655,14 +1655,17 @@ static int aspeed_video_init(struct aspeed_video *video)
 
 static int aspeed_video_probe(struct platform_device *pdev)
 {
+	struct aspeed_video *video;
 	int rc;
-	struct resource *res;
-	struct aspeed_video *video =
-		devm_kzalloc(&pdev->dev, sizeof(*video), GFP_KERNEL);
 
+	video = devm_kzalloc(&pdev->dev, sizeof(*video), GFP_KERNEL);
 	if (!video)
 		return -ENOMEM;
 
+	video->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(video->base))
+		return PTR_ERR(video->base);
+
 	video->frame_rate = 30;
 	video->dev = &pdev->dev;
 	spin_lock_init(&video->lock);
@@ -1671,13 +1674,6 @@ static int aspeed_video_probe(struct platform_device *pdev)
 	INIT_DELAYED_WORK(&video->res_work, aspeed_video_resolution_work);
 	INIT_LIST_HEAD(&video->buffers);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-
-	video->base = devm_ioremap_resource(video->dev, res);
-
-	if (IS_ERR(video->base))
-		return PTR_ERR(video->base);
-
 	rc = aspeed_video_init(video);
 	if (rc)
 		return rc;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
