Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 960EC5570B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5eZiiRlLP6cw59pQ0cMhx7L7mSl80i0dT0GpwcqlmE=; b=RwvA7TQtxXOAqW
	MtSr3Aw6EeBVLrhd1OMTYyh6Av6+sDDZQQhpzUQv6znFJgu5sNwN08waLgFoOaYeXygdsoRTsk138
	uaLJpyJEpzu8EN+nf9NBPXgU8BXZTigUC24fRgat98NR71K4N31NDTfbZyF4yzsQfNJDMHqrl2k43
	Yp0AUF3nvGy1nRWSjMfuF7SHQazzYwfmr4rOotN0bXb7we5m0LSLC2qOOKm3OQ+ck4MVa5uNIWwun
	JoDOUWn9XaKkbGa83xcVpV/xhE1mminNCAq3HJ51Ivor3hggvPfMKEvVdyTe6kVt2TCPOWWR6RrEE
	k0K5PYNvK2yAD1X/llPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfq3h-0007I3-Ue; Tue, 25 Jun 2019 18:20:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfq0s-0003wo-Hb; Tue, 25 Jun 2019 18:17:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id x15so9918800pfq.0;
 Tue, 25 Jun 2019 11:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aU2lMvLMFAmaKI8o4T7rqGlAgr2Pw6XZztA93JG4rHk=;
 b=gQR9fXq3UuoEG38nYSFjn/jYpxHF3CwwiCJnG9Xw+c+dDhrtbEN/t2RU3NPTjWlui1
 0V8KRf7ev8ab//Ln103JjWmC1bprusm+pLDC8P12cIyo2wwHMQBOfuhNROvDi4h4Icw9
 YTSODvePzhJI8J7tXbxsWpiKlPmUh2Z/Ul4cMqK3toqCHw5ZPNXImBFShsPWmeIvPQnS
 ouIBJPMyD75jwIPCRPSvNhdd2GRLKr81vogDepRgtLFyT/mYji5kVuH99dO1ZIDQNRNU
 +IZDZ33GowF3JPpe4MyedUEDaRG8qxbJql+J0gs/RFetskMCSmqWQ5usARYIP1RNQOjm
 ZHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aU2lMvLMFAmaKI8o4T7rqGlAgr2Pw6XZztA93JG4rHk=;
 b=L6BF8du6VSr2mz65kj1objj9uBhRrkGjQ3/b4qhnS9LYYwkp/TLA1dxfd9wHlB2sHY
 cUh0xXirM5JEu2mHISV6sL46gTxnzdW+UyeY+f2m8W9mocm3iNbmXTItDh8frYVYCRYe
 29tyP8zCep/epu3h+s6tNTqA0tPM/XpNgMZyvIZvNGRWoWMfbe0wxI9DYGtCTHCEMgvF
 SC4i9hqk0J92tKLWlpoL5JvgI7dUxEEge7BcSUhSwX9cigH2BrCs4quFZiY1zrwITV6y
 FBoF4XKf2ISfR/vyNR05p7M0+7Y9XtNeD4VS6IpPtcOha1FaWtOXx0HRtQQ+LcBGkREE
 ri9g==
X-Gm-Message-State: APjAAAX9lHrrlBVUFgwwFjBerdeQuphOTCIA9VKc658J6bssCtZ1hEPQ
 1LW31DH6CT4GsjsXtjQ+cNA=
X-Google-Smtp-Source: APXvYqytoKvzSIiaV2WUSp6pnmGIovjzqqXmYErctBokbL2fxUoiR9YWs2fG7CHyUZHe2v2TFWAVmg==
X-Received: by 2002:a63:fa4e:: with SMTP id g14mr40143275pgk.237.1561486668887; 
 Tue, 25 Jun 2019 11:17:48 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:48 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 8/9] staging: vc04_services: Remove function
 output_timeout_error()
Date: Tue, 25 Jun 2019 23:47:08 +0530
Message-Id: <20190625181710.2267-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190625181710.2267-1-nishkadg.linux@gmail.com>
References: <20190625181710.2267-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_111750_614303_0C9E348F 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove function output_timeout_error as it was only called by
vchiq_arm_force_suspend, which was deleted in a previous patch.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 36 -------------------
 1 file changed, 36 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index a97076c18a0f..ebf7e2a3bd3b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2705,42 +2705,6 @@ vchiq_platform_check_suspend(struct vchiq_state *state)
 	return;
 }
 
-static void
-output_timeout_error(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-	char err[50] = "";
-	int vc_use_count = arm_state->videocore_use_count;
-	int active_services = state->unused_service;
-	int i;
-
-	if (!arm_state->videocore_use_count) {
-		snprintf(err, sizeof(err), " Videocore usecount is 0");
-		goto output_msg;
-	}
-	for (i = 0; i < active_services; i++) {
-		struct vchiq_service *service_ptr = state->services[i];
-
-		if (service_ptr && service_ptr->service_use_count &&
-			(service_ptr->srvstate != VCHIQ_SRVSTATE_FREE)) {
-			snprintf(err, sizeof(err), " %c%c%c%c(%d) service has "
-				"use count %d%s", VCHIQ_FOURCC_AS_4CHARS(
-					service_ptr->base.fourcc),
-				 service_ptr->client_id,
-				 service_ptr->service_use_count,
-				 service_ptr->service_use_count ==
-					 vc_use_count ? "" : " (+ more)");
-			break;
-		}
-	}
-
-output_msg:
-	vchiq_log_error(vchiq_susp_log_level,
-		"timed out waiting for vc suspend (%d).%s",
-		 arm_state->autosuspend_override, err);
-
-}
-
 void
 vchiq_check_suspend(struct vchiq_state *state)
 {
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
