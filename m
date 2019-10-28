Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF52BE771D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:59:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dQecx+7fH0nQmmmyEbv2PJ2PY8S1ezcI477aGztBS2g=; b=bHpYDcke7cEw5iZW7rQpST+tmZ
	Lfb+lDDHLdc1/paW3cEjRpzPrshpdHVDnUtIfn6YhRacuF1+pO2KZ5W6nzVCRvI8q9Pta2xj2FNu2
	wbSjZAmoHoXsxRs5+29lJZQBzcBnvxMq5W8GOqKs+iD6/lKPbIeYri/DgBdfsio/PXO+iJpBCoAPc
	ymxuWRLvWkFCj+k9Ds6nCcuKoa9+TvB/621rcE7hjZTzchE7QpaacEt0eyKep3sLORCeZB4ElF94y
	FYf7yCJN4+XajeAo8L/wHA7nA9TiqT17B52M+5fINVqgX41kp9uznTuog9kUh+uNoYYFSxbgtZZHe
	uEHXSN5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8Lz-0000IG-GF; Mon, 28 Oct 2019 16:58:51 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8Lp-0000Hv-Mg
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 16:58:42 +0000
Received: by mail-il1-x142.google.com with SMTP id b12so6895340ilf.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 09:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VsYOYw/63XAVKPUsYisyXnfblClorjAawHJi/it0oEA=;
 b=OIvX0idWV6esLVnTUjwsh8UX0Y3MegoKcCrUD36IazFKX/z4o4uXg0RgARV00n2l9A
 IsJFqlj41Kkp+0TO1kGJBeTa93xlWKkBk2sUsCbSx9I0xYqM23tRWBEsXzZbI9B1KdIm
 gJK5ScQ+N5hznm3+xbFwlmmllQeuPSzoTwLC2MBXy9aVrEduAt+jm+bZdVrIkQYQdipw
 eh4+A+1UszCvXqa5t2qNh0QPHipSR5BsWKa/AVAeWpl7mKf3On3n8D2TjXOvoQWqukRD
 E99/TWyhTaurLqz0QfX0oAbXkzqkEDrmroVb2688sx/hKI4ycpfahn2P7K/IBPjUdnSH
 A+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VsYOYw/63XAVKPUsYisyXnfblClorjAawHJi/it0oEA=;
 b=DbA450zisnviUDntnDVmbkmycvaaMx6GPnqtCr/i16O+F5eTfcdD16Isa2dmkxnqN5
 uOAOJpdmVGlHGB/lFm+vYwQWGbsPQKrnxnX55FQFgxJrsuzbn56pJz1OiTKsEnqL5Sy7
 u7KqlPEtWEdi+siahFU1cId8r/+i6m2OdporJ8UXp38C3qPL5fnKlB8dgC8vQ71etFYj
 15lWWw1lbj8xOC01835cXLh0pyDuDa3v1Ec+qfJ7V22PaFAYO1Lcgv1Nh/HlbdTUOJ0p
 QLivhIr21fLeCTsvEOWVcgjkmXxOY6xoPg1HG032lbV9yMfCUejnpctoln96AKcL5s2y
 2dbQ==
X-Gm-Message-State: APjAAAUP3+myX3vAfJK6iQdMeC7RtMXnW3u0MS820zvosskf9d13R1Io
 RjUSY3aiv6Pe1xLGMSHUdt8=
X-Google-Smtp-Source: APXvYqx2qXlEPCIiPVhl6XhY2JTF9eYwSmAPTLsncPs7iDDy0d9kOOdavwbVbzeSJzJSR1vraAyjIw==
X-Received: by 2002:a92:9a54:: with SMTP id t81mr22517749ili.197.1572281920640; 
 Mon, 28 Oct 2019 09:58:40 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id l2sm597572ilc.34.2019.10.28.09.58.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:58:39 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: jae.hyun.yoo@linux.intel.com
Subject: [PATCH v2] media: aspeed-video: Fix memory leaks in aspeed_video_probe
Date: Mon, 28 Oct 2019 11:58:26 -0500
Message-Id: <20191028165827.24949-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <d9c04318-586a-bfc2-fce6-6218c6bab1d6@linux.intel.com>
References: <d9c04318-586a-bfc2-fce6-6218c6bab1d6@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_095841_769049_BF99ABAE 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
video should be released if either devm_ioremap_resource()
or aspeed_video_init() or aspeed_video_setup_video() fails. Replace
kzalloc() with devm_kzalloc to avoid explicit release for video.

Fixes: d2b4387f3bdf ("media: platform: Add Aspeed Video Engine driver")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
Changes in v2:
	-- replace kzalloc with devm_kzalloc based on Jae Hyun Yoo
suggestion

 drivers/media/platform/aspeed-video.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
index eb12f3793062..2aa8ea2f9824 100644
--- a/drivers/media/platform/aspeed-video.c
+++ b/drivers/media/platform/aspeed-video.c
@@ -1646,7 +1646,7 @@ static int aspeed_video_probe(struct platform_device *pdev)
 {
 	int rc;
 	struct resource *res;
-	struct aspeed_video *video = kzalloc(sizeof(*video), GFP_KERNEL);
+	struct aspeed_video *video = devm_kzalloc(sizeof(*video), GFP_KERNEL);
 
 	if (!video)
 		return -ENOMEM;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
