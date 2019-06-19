Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7C04C1F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:00:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wleYmFdcHrd41WOGLSVfpca3NCayJt4gz22k1/OjGFo=; b=OoRHGK/asH+cWNOz/7+oa8nJjF
	cRqnZ6yGhWU5EvB/OV7TAQiSHQYK6b7d2R9lKcnnYl6A5sTxbH20wO/NIoVoC1wSPxsgMAvIndHW0
	im03amAD4O/UgwPAwS9y6o3a6ZNkc16XZXw2pcYkDnX8T8JFw3ouQEBJQQXSmg4g8r4P2FxDEJHX0
	S3cay/ojYc6B9Ixh58YlHn9afmYdfW7NVxD6RCwnMfVg8e7d9bjhJO6YTHmksVSkmK7gZt9bKsTPg
	41tjEa6HbFQNRsQ0GG1MqJNE31EDm0CJD7invbCi9obh7A0zv7MZ+twMIQ1Y9WX1+TR6cTc2VLHqE
	EmSf2YkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgkX-0004Sv-QN; Wed, 19 Jun 2019 20:00:05 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeK-0006ah-5G
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so234234pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XhEC8YM9URAom24Z8CuHErk7aYgxQCn+3C30lnGzOD0=;
 b=xeRXT8iihPNL28u6521qWqVfzFbPjy4YAg3wRoNfH+DPmQ95ITu1sSZRIbtr6cLqgN
 cDqss0QSve3ClrcVGMTBzFXrLK8DlmeR9+GRrRFUIuddy6LVssffPyVfuSfrtmIdZs1K
 ZEqLvkFY9qGOoDhMBeXilijzDBjUQINREFZLbBpM0nDtW0lr2cHzKCW1slUDlnqN+EMh
 y905L23ITdYmWSXy+NdOt/+lmgAPbTo+ZrWs3hqzi8FTZ1R6E4bgzv9r7E9iffhlzCa0
 HTPwqXy693Mqsk3OejOPNkjdhptxz/Yu81jWtNuwTAkM1cCOnObIBMsrwp5biSMu/q4S
 qIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XhEC8YM9URAom24Z8CuHErk7aYgxQCn+3C30lnGzOD0=;
 b=NL2f2RfwTKy/UATELCoDbBpN4enfSwMtNkEPPnDWXvU2uknEq4gQ5Lw6nELLpIi/i+
 YnqoeebDVV7d6mB/xbK4CwcFOVW9baI44YTPToBXumxSln4Vy8HQsqoTsnF1e7/0x0qN
 W8Hzd53CrUgeMkuOTD+G4W/5qJos7NRnCOLgUOaEjecPW2D3PLPHNOQZj+WJoJ79FbSd
 5/lruFoDgwH27EdQMQzX8MCo2rrKmaGZ0+N2Xb1h2PO7DE9X8kZGshP136e06z78wdWa
 0vtbadYR5VH0wK6mYEgjHgvYc/FH0aiMHpiyc6AlkulZYwbete9yW+rKisn1igRJixIV
 6miA==
X-Gm-Message-State: APjAAAXuIv/OBkDd5LrKy8FLVO71zMl5Aswya/AXgnppKMRE13EuiMY7
 fquyICImL0V56EwkMX/TvaEfjw==
X-Google-Smtp-Source: APXvYqycwZZCzo4Btx7RNugD1M5hdtPNL8cuu6ifBeTtmlEz3lNM5i3+IuGi/XrjAfcNWyq/ECKQVg==
X-Received: by 2002:a63:31c7:: with SMTP id x190mr9221945pgx.376.1560974017417; 
 Wed, 19 Jun 2019 12:53:37 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:36 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 17/28] coresight: acpi: Support for AMBA components
Date: Wed, 19 Jun 2019 13:53:07 -0600
Message-Id: <20190619195318.19254-18-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125340_446228_A9680BF6 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

From: Suzuki K Poulose <suzuki.poulose@arm.com>

All AMBA devices are handled via ACPI AMBA scan notifier
infrastructure. The platform devices get the ACPI id
added to their driver.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/acpi/acpi_amba.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/acpi/acpi_amba.c b/drivers/acpi/acpi_amba.c
index 7f77c071709a..e2142e3e0ceb 100644
--- a/drivers/acpi/acpi_amba.c
+++ b/drivers/acpi/acpi_amba.c
@@ -24,6 +24,15 @@
 
 static const struct acpi_device_id amba_id_list[] = {
 	{"ARMH0061", 0}, /* PL061 GPIO Device */
+	{"ARMHC500", 0}, /* ARM CoreSight ETM4x */
+	{"ARMHC501", 0}, /* ARM CoreSight ETR */
+	{"ARMHC502", 0}, /* ARM CoreSight STM */
+	{"ARMHC503", 0}, /* ARM CoreSight Debug */
+	{"ARMHC979", 0}, /* ARM CoreSight TPIU */
+	{"ARMHC97C", 0}, /* ARM CoreSight SoC-400 TMC, SoC-600 ETF/ETB */
+	{"ARMHC98D", 0}, /* ARM CoreSight Dynamic Replicator */
+	{"ARMHC9CA", 0}, /* ARM CoreSight CATU */
+	{"ARMHC9FF", 0}, /* ARM CoreSight Dynamic Funnel */
 	{"", 0},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
