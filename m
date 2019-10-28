Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F62E777E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 18:19:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5kYFA5SmO5IajTMpSueWst3FPBAy2hvD+UNFGP1C6Yg=; b=cZ1PEN1hiH0KIGv9q5C5E05nNy
	wUOabB0YAO+mC1COf5siMResqYjae6p+Q1z/8jrio808FmCChutPKOKXYsfdRPb9s83Te1i07MTaC
	aRXJWrPzyV+XA/w6dURAgSTF1+wbrNgSKbB1yj03VCQhLxawHomXDRg5VFS4fMv7ssShKKYZ8FtH/
	yX9Nma2YInGMaxTjfR9U39vFZg4/NetAl+bTCx4h8p6kCcdKF9pznfeRay1l5wIYHq3LUCi6Wm0pA
	b93ybV8TYufr4Fh68YruD3Xf8yjP7gG1VbZ+yEa+653oEe/WDa9uGOqS7gEoPn9HnOICz/49GIs1L
	UKutUIRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8fo-0000vd-9b; Mon, 28 Oct 2019 17:19:20 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8fM-0000l9-MQ
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 17:18:55 +0000
Received: by mail-il1-x143.google.com with SMTP id d83so8854601ilk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 10:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iuTrpxKUHZ/UCdTRpuBAw/Jl1hvuK8hDPzJ43oHoufo=;
 b=ZeldSHPeFLJ+46uOkfBauBzB4QUPRBL6FT/1IHG3H5HgV/S9oZEeCr/eYmlUMX7RQq
 IFbtyzQhlAjxV3MeEOPtjCY8Mgkf7ZOjnufKao/zkc8ODIrNdmsBxMrvOsEYgxp8plBY
 Zp0UGhtXV58wk7kTz2557fjBR2/HNO+4dc9QPt39aIk70v8soaE+VJulKOGSGN5DPj5r
 yGXE/TiVoohKDdetpgR3vFS8PLMbiOrvdEIKTalwP+ZB5NtQPEv+qqHl0Ae8gfMoYpWR
 pHfnd+NmAMEOqTOFdBKEqVr5NztbiyfO2NZAiotAE7M9JiDm1PeEbPhivg9/gcDxn0h2
 vkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iuTrpxKUHZ/UCdTRpuBAw/Jl1hvuK8hDPzJ43oHoufo=;
 b=Yd4O3h7zZbCit4CFJih49SLQK89fhL4rL4qjzDgU3pj4mduvb2Owp3RKI5ab0X97p/
 pj+3hZCRcE26M0FMCMxXegiUC0TXl1lRzslp8IqowbS3AuS4N92mxz5ovLoignOXRWCZ
 EzcNhLV56X1sT+HzQYlB8e32kMBRBWxEmGFab7mkqxrvFHz4TYuCCQsuXVP36rc9v9Am
 riAMMeLlJBkecNxL8AxsD0sWMJQXail0NWMLg80EP1zMRBJMHv8mOg/JfEXHrzfvubrG
 Evjjg3GRQq71/HdIbxMJCKSxzhphQ8MADCLRBsFGwxP6qwjolgTfLAlQUX/7gy0HHp4+
 ajAg==
X-Gm-Message-State: APjAAAWc8M9KBwnLXxL7Qff8mxJjsRQ7F8gRYI0EZdjrZn4RVYaqJTFh
 fbxBfqRxWaL8geFPT1gAYnU=
X-Google-Smtp-Source: APXvYqzQieKGGUdlk8auRT6Jo9SvrelCUC+fWWRQTTE6KT3RIsMBxP0GS64VURM0hUE8IXpPF2ghQg==
X-Received: by 2002:a92:ce4a:: with SMTP id a10mr22136925ilr.48.1572283131374; 
 Mon, 28 Oct 2019 10:18:51 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id f8sm1637563ilg.58.2019.10.28.10.18.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 10:18:50 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: jae.hyun.yoo@linux.intel.com
Subject: [PATCH v3] media: aspeed-video: Fix memory leaks in aspeed_video_probe
Date: Mon, 28 Oct 2019 12:18:37 -0500
Message-Id: <20191028171838.28533-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <da959329-aa40-b6e7-dcc9-48183a8da716@linux.intel.com>
References: <da959329-aa40-b6e7-dcc9-48183a8da716@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_101853_236792_FF16B235 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
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
Changes in v3:
	-- fix call to devm_kzalloc()
---
 drivers/media/platform/aspeed-video.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
index eb12f3793062..70797b41447c 100644
--- a/drivers/media/platform/aspeed-video.c
+++ b/drivers/media/platform/aspeed-video.c
@@ -1646,7 +1646,8 @@ static int aspeed_video_probe(struct platform_device *pdev)
 {
 	int rc;
 	struct resource *res;
-	struct aspeed_video *video = kzalloc(sizeof(*video), GFP_KERNEL);
+	struct aspeed_video *video =
+		devm_kzalloc(&pdev->dev, sizeof(*video), GFP_KERNEL);
 
 	if (!video)
 		return -ENOMEM;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
