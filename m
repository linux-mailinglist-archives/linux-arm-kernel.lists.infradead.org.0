Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0389A27F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kP4ugWUq2f05ZjjxatKTIlIT8VX8A3zkxSIPAcyPvEk=; b=pNXM7eaH60gkDb3KfsNy5wUaG0
	k30ah272BPnSna+/lIvWOfMwpyxEJafy6ZhfRlWfoMhxSL3IlBUW8J39vmGdhTBS0o/yOAdomj3+q
	ukOqE0ZMN2w73XoHgfqUEUAAYSG3lCQWGK4mv0L9pQMk4orJ+wQKbMxOMoDQrNBQKleJadC50ktpD
	BPG1ORI2C4gXlD12CLvit27rDXpwTYHfwiR19SerBL6Dv62E+0U4QRrdFkgItf25sgfCfiYs8iRX9
	LilnC2dvc6C+AjVprmShm7Kl6U0ADweU0LEhxZqkPUzZ3OLkGSW6ak/QAEnSvyNKm+Q596fc4eSaa
	7uZXE3rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R2x-00047u-9C; Thu, 29 Aug 2019 20:29:31 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2D-0003f0-Tu
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id m3so2172463pgv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dd1S70qC4Knnjc76mO421DIbTiN8oBwUIOYstjye2mk=;
 b=Pc++9X36Fn6GsIKNwfs8pIxgKhCIJGcSkZYc9b7eXYU5EumnFAg9sgQA+rwPissMum
 uAhtU4uweGmCL2Q7tCAczWelyne48d6cOpNi2CSfZTDFMqNOmpuvxKWxl8cwbqKCItDs
 BnJ5eoRMMmJMuylP+LhjnMww2qcV7qvdct9zRwjszRlQoKWsPrR/oyH5YKvUYFlcjCOL
 Tn9fOFN+d7SnBECaM0WvNiyFUEdII9ydJuKcqrwEzlPbMCEVT12GPikucNIT2lbtS3YG
 ifccZxptzYYtUppkwsvzaIepfa+6wLcMbhUF7WbqeM54T1zjYJQIfsQNN/K05SJSvmoz
 cGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dd1S70qC4Knnjc76mO421DIbTiN8oBwUIOYstjye2mk=;
 b=TVS8k2PRxu7Uh+tjrT6hxGg+A7TZIDQYoUlIVDn+IY3XqHNUMLOtTP/miG8bGIaoeT
 IQkXKBwYdZmv0Vyrhz08CXf9exAiAT0TvU1IVQcKTsvJpLHOu398NjjoKO1QjTMM3UM/
 TRA64UqAgF6joTO7F1ilUapN3wBAPVnskayvwc1Hj0vmf1iRb9qOm0OdsJ7FuvbDpA4B
 JPr3eOodiZUU87XmzXt94r/juqCH6JobQv0MXiZebkZfHqZwRGjPFx0j7xgW2DrnhBjP
 +iR6XjmBTR+ooB2nRO+8F9FBPzT0fPETAh6c4FUxCNtyiUZ76AH5uO5TDJKQkt3cI6lT
 xiHQ==
X-Gm-Message-State: APjAAAV4zIUK46YJs+zeMKp94wlpCJVNDg82Vfy25hNhDwV6u60bdToX
 uOYoL8paOf87tgQ4loniy7AZwQ==
X-Google-Smtp-Source: APXvYqxiVRGeki3ncOVglHSsTvSGUld2+NK9vKmQImBX2vw0VqPHK18BtZT8Bce0NVtpQ7Mg+enYFA==
X-Received: by 2002:a65:5cca:: with SMTP id b10mr10223773pgt.365.1567110525003; 
 Thu, 29 Aug 2019 13:28:45 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:44 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/17] coresight: etm4x: Add ETM PIDs for SDM845 and MSM8996
Date: Thu, 29 Aug 2019 14:28:27 -0600
Message-Id: <20190829202842.580-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132845_963498_3D19B8AE 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Instead of overriding the peripheral id(PID) check in AMBA
by hardcoding them in DT, add the PIDs to the ETM4x driver.
Here we use Unique Component Identifier(UCI) for MSM8996
since the ETM and CPU debug module shares the same PIDs.
SDM845 does not support CPU debug module.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 7bcac8896fc1..28bcc0e58d7a 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1192,11 +1192,15 @@ static struct amba_cs_uci_id uci_id_etm4[] = {
 };
 
 static const struct amba_id etm4_ids[] = {
-	CS_AMBA_ID(0x000bb95d),		/* Cortex-A53 */
-	CS_AMBA_ID(0x000bb95e),		/* Cortex-A57 */
-	CS_AMBA_ID(0x000bb95a),		/* Cortex-A72 */
-	CS_AMBA_ID(0x000bb959),		/* Cortex-A73 */
-	CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),	/* Cortex-A35 */
+	CS_AMBA_ID(0x000bb95d),			/* Cortex-A53 */
+	CS_AMBA_ID(0x000bb95e),			/* Cortex-A57 */
+	CS_AMBA_ID(0x000bb95a),			/* Cortex-A72 */
+	CS_AMBA_ID(0x000bb959),			/* Cortex-A73 */
+	CS_AMBA_UCI_ID(0x000bb9da, uci_id_etm4),/* Cortex-A35 */
+	CS_AMBA_UCI_ID(0x000f0205, uci_id_etm4),/* Qualcomm Kryo */
+	CS_AMBA_UCI_ID(0x000f0211, uci_id_etm4),/* Qualcomm Kryo */
+	CS_AMBA_ID(0x000bb802),			/* Qualcomm Kryo 385 Cortex-A55 */
+	CS_AMBA_ID(0x000bb803),			/* Qualcomm Kryo 385 Cortex-A75 */
 	{},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
