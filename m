Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E399F2BCD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U+Wr50NKo/cMgvMGsIISwCU41+KhHAUZGGA+J8q7olk=; b=oZ9Wb45ueVcNNXKoF32NtujYIE
	Hbf0UV7Q5r8gScvnSpVH8MzDLpgGSthj915KryDPdl+FgSMsEqUM/YcKyA96RPpK24K+0xhjxJxu0
	rxHbTyRwfGyi576LHUXmGHS8HPRx9MeHOYn6ElDacXtog8xM47s7XCnM7eX25coSdYr7mFq5eMuAo
	bWkZw9ZkHTzukKCvUpXx9NNaspRS2KycGIOXi1wGBaeJbwMakxeZPVLW2nLRlD0m3faYmGa492PJj
	+MqptI83oE5ysLQ9AC29z2CEf7VMVOtsQcA4hcs+1hzaT1/lCDaKIRIZFQ1RpkIkSq+WQjsKXm2yd
	3VDSSFcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSefl-00022E-5v; Thu, 07 Nov 2019 10:05:49 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSef9-0000Zv-FY
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:05:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id r10so2318781wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 02:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kEhXMhXFOLLSIYkEe6y+Ps/9m3AxUyss8WITOvfYk3w=;
 b=LUugsRguvP4FPzIeQ8XTevKWhLPJFbtPz/2fcT7p66fIRtsK1IeZJlxpAl8TcdYpzw
 FZqOdmsNwF8/bIWHx/t7Rz4fzmliXqfaqycNruMxlPv1JLVy/ZzfxGPmJTr6O+g69u57
 LwIzmX6VI6HfG8x1/cdjH9jS3U1R1oCdoOipPsLuxZzU4qdQyK62+h1OSfwgmJJkdJa8
 +3PpPc5UZdFa/ojGNZwPYqIkP+A2rVMsUO+UbDvWEafLFBnvxD0YMYJimqAZItVaN52r
 lLLC6o2Gt4J0KlTOx8aVnnGMqhA4QDFzMkR3o/IoL9MNyWAA0aCthoKuKsD7JCy1ZqKx
 kFsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kEhXMhXFOLLSIYkEe6y+Ps/9m3AxUyss8WITOvfYk3w=;
 b=hZ4c6aLjURGvAGeXrtqnRG58FSU0WzEOUSeFuG/YAynpD9/Hen7ZCyh9QtahBO/4Mw
 awYidK9kXEogQLwnQPI4kjQUj8V+fObgbCeqRzZPwvJEYqrqqqQNxtf4+cSA9gisESae
 BhXW8F+bCGf6Z2gFIR3hqw94ylGpXLepdv/Jq2q4xEQWpdysILtiXEPqtOlYowMjFb3e
 ChM8O3yWfCpAUS2Wk7gjFt/jFwDHuKv4zN9D9TZy8vDMQbmW8n6I678+4SI0aTNyj5gS
 4QAC/T6dwJN392QzAnjz6ASfx+Q9iOH4zpL8yCk/7CnBjPFWYPfUCZYFxoHW+hoS/2sL
 5a9g==
X-Gm-Message-State: APjAAAW3b6qZ9urLFCY3clSDykOIMHm7YloglcRFSWbrNUiAxlyrXvoD
 iMN0FH090FvhMVayp/hmLCc=
X-Google-Smtp-Source: APXvYqy6v8CkZSM6HMXERGqlNin63tr1BgVsHiXp+80nR/V9jbbeocpl7GMXE8bBN6NCIERmTL/LGQ==
X-Received: by 2002:adf:ef10:: with SMTP id e16mr1189636wro.58.1573121108302; 
 Thu, 07 Nov 2019 02:05:08 -0800 (PST)
Received: from mars.home
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.googlemail.com with ESMTPSA id v184sm2225860wme.31.2019.11.07.02.05.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 07 Nov 2019 02:05:07 -0800 (PST)
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Fabio Estevam <festevam@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 2/4] regulator: da9062: add of_map_mode support for bucks
Date: Thu,  7 Nov 2019 11:04:08 +0100
Message-Id: <1573121050-4728-3-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
References: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_020511_565033_6022C2E8 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
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
Cc: devicetree@vger.kernel.org,
 Support Opensource <support.opensource@diasemi.com>,
 Stefan Riedmueller <s.riedmueller@phytec.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Christian Hemp <c.hemp@phytec.de>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds of_map_mode support for bucks to set regulator modes
from within regulator framework.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 drivers/regulator/da9062-regulator.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/regulator/da9062-regulator.c b/drivers/regulator/da9062-regulator.c
index 1a95982..f5f2ead 100644
--- a/drivers/regulator/da9062-regulator.c
+++ b/drivers/regulator/da9062-regulator.c
@@ -98,6 +98,20 @@ static const unsigned int da9062_buck_b_limits[] = {
 	2300000, 2400000, 2500000, 2600000, 2700000, 2800000, 2900000, 3000000
 };
 
+static unsigned int da906x_map_buck_mode(unsigned int mode)
+{
+	switch (mode) {
+	case DA906X_BUCK_MODE_SLEEP:
+		return REGULATOR_MODE_STANDBY;
+	case DA906X_BUCK_MODE_SYNC:
+		return REGULATOR_MODE_FAST;
+	case DA906X_BUCK_MODE_AUTO:
+		return REGULATOR_MODE_NORMAL;
+	default:
+		return -EINVAL;
+	}
+}
+
 static int da9062_buck_set_mode(struct regulator_dev *rdev, unsigned mode)
 {
 	struct da9062_regulator *regl = rdev_get_drvdata(rdev);
@@ -363,6 +377,7 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK1_A,
 		.desc.vsel_mask = DA9062AA_VBUCK1_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da906x_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK1_A,
 			__builtin_ffs((int)DA9062AA_BUCK1_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -399,6 +414,7 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK3_A,
 		.desc.vsel_mask = DA9062AA_VBUCK3_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da906x_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK3_A,
 			__builtin_ffs((int)DA9062AA_BUCK3_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -435,6 +451,7 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK4_A,
 		.desc.vsel_mask = DA9062AA_VBUCK4_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da906x_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK4_A,
 			__builtin_ffs((int)DA9062AA_BUCK4_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -607,6 +624,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK1_A,
 		.desc.vsel_mask = DA9062AA_VBUCK1_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da906x_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK1_A,
 			__builtin_ffs((int)DA9062AA_BUCK1_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -643,6 +661,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK2_A,
 		.desc.vsel_mask = DA9062AA_VBUCK2_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da906x_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK2_A,
 			__builtin_ffs((int)DA9062AA_BUCK2_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -679,6 +698,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK3_A,
 		.desc.vsel_mask = DA9062AA_VBUCK3_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da906x_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK3_A,
 			__builtin_ffs((int)DA9062AA_BUCK3_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -715,6 +735,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK4_A,
 		.desc.vsel_mask = DA9062AA_VBUCK4_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da906x_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK4_A,
 			__builtin_ffs((int)DA9062AA_BUCK4_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
