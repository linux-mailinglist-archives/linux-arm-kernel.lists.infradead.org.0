Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EFDFB196
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ovGQdTSWBjSdH47lo+q3sSFyD512Wn8oC9y+oZtIwQM=; b=qQly1CQX5YU9IjBKoYw3Ham7Wa
	h8sCNbyIJ7oQTeUOjRtA7ztt1T72+cMUhGAXXlrv2wEUDmfkKY+j15s+7nhIQyKy1UTXRDM73iLYb
	sbUq04LAuzUz9YEWg79PSTnzRunfIjF7iBAcb0dMHKL8nQfJZdWdhdruXoWY4/7ac0BM6lvPRRR3E
	f0Lv9v70pFizU9JJsErnpUNTlFyVQuOXFSPSeuvZPEteu1eEjlR7PEQncIMuspCKEQ6100jKvE10/
	Bs4A3tC3W8GILry16sNrhkOj+hOxqXdnBjgXtJodJlE5AMD7nXdpaduY7jV/kA3k1fNxNu8Hg/1h2
	xy5FsAmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsu7-00029x-Rl; Wed, 13 Nov 2019 13:41:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUstO-0001kf-6P
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:41:07 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so2405902wrs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=z396xoABmCvtIfoOGcHfju2S8iT7p9lme+ZFMQUZfmU=;
 b=JSZUvjnvfTYW2BqyR8frEbpl8m3LYdSvC4nMhWsl7+PbJ0sJe3ZjR+JgXsKsXxevcj
 TYAVmlGZcTuzkd6Fdd76ZbZY7OKLMcJ6xLK1D3iZiWpjylOBKmbhxlF8c4OvB3CkFzVY
 xqKJpJ8EfSZsVYaA0Mb2LC4mM8lIJ4r3UL208Ee1yiwyYKVUrw/qJD/DMVWgi02zAuel
 gFxazBCiVPbeDcCQ3B7v7VxlAEWqiGLu7ZiQbbXt22AdGporJXObdHgtJnq95pj6Fk6l
 3jo+K0+RVrQugX9SWAQBV9/MsSSBACl+CFs/OeM9vqDFsUr7RoyYPsjyVH4uC17TMtlL
 nS7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=z396xoABmCvtIfoOGcHfju2S8iT7p9lme+ZFMQUZfmU=;
 b=M2FfilXjnlCNFe/VuV5aMtpwevF4B2Xe2UWivRbWgPGh51cPM/N/YDWDDsOZvWpyRZ
 09QaAOTISEZxDSbl/NT8tciy7hls8fGMbvVydkT1wAZCPHp1yKxxtjpjXkqqymLVA4pt
 CVgKLWr6bz/h38C1mgYBIPipfPNnSyZmQ4porHZEkANgE2cH1eyxIO5LslXMKtT2slyB
 78pg+Dsi0wvwCMaQU2QieYOJKtgmaOLQ1ZzKA2Lf+t3vacqUqa7WeGB1NoS1q/76q4P0
 OrukY/DcSecwphJAv6h1gWIWFnkW1nSl4WpfW3eKVE1a4haOcg9KL9ydsVwO0S68FpTr
 FwuQ==
X-Gm-Message-State: APjAAAV1u9pC+bqea4ZV+mCesFXx52e4Sr9jPhNWe3r2w+pbzVqTD5Dd
 0tEmbCPfkD6yAAEubaGgDcA=
X-Google-Smtp-Source: APXvYqyNgmOe/bUP9uPtIIzi51yTDGJBVprgB7WW9ikZ+2AW1qATLCTa/Ucd4U5GSp13VyxbmcJVYA==
X-Received: by 2002:a5d:4f06:: with SMTP id c6mr2947765wru.211.1573652464794; 
 Wed, 13 Nov 2019 05:41:04 -0800 (PST)
Received: from mars.home
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.googlemail.com with ESMTPSA id r15sm4195831wrc.5.2019.11.13.05.41.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 13 Nov 2019 05:41:04 -0800 (PST)
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Mark Brown <broonie@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 2/4] regulator: da9062: add of_map_mode support for bucks
Date: Wed, 13 Nov 2019 14:40:14 +0100
Message-Id: <1573652416-9848-3-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_054106_231825_8A2AC1E7 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
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
index 601002e..29f4a60 100644
--- a/drivers/regulator/da9062-regulator.c
+++ b/drivers/regulator/da9062-regulator.c
@@ -98,6 +98,20 @@ static const unsigned int da9062_buck_b_limits[] = {
 	2300000, 2400000, 2500000, 2600000, 2700000, 2800000, 2900000, 3000000
 };
 
+static unsigned int da9062_map_buck_mode(unsigned int mode)
+{
+	switch (mode) {
+	case DA9063_BUCK_MODE_SLEEP:
+		return REGULATOR_MODE_STANDBY;
+	case DA9063_BUCK_MODE_SYNC:
+		return REGULATOR_MODE_FAST;
+	case DA9063_BUCK_MODE_AUTO:
+		return REGULATOR_MODE_NORMAL;
+	default:
+		return -EINVAL;
+	}
+}
+
 static int da9062_buck_set_mode(struct regulator_dev *rdev, unsigned mode)
 {
 	struct da9062_regulator *regl = rdev_get_drvdata(rdev);
@@ -360,6 +374,7 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK1_A,
 		.desc.vsel_mask = DA9062AA_VBUCK1_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da9062_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK1_A,
 			__builtin_ffs((int)DA9062AA_BUCK1_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -396,6 +411,7 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK3_A,
 		.desc.vsel_mask = DA9062AA_VBUCK3_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da9062_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK3_A,
 			__builtin_ffs((int)DA9062AA_BUCK3_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -432,6 +448,7 @@ static const struct da9062_regulator_info local_da9061_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK4_A,
 		.desc.vsel_mask = DA9062AA_VBUCK4_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da9062_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK4_A,
 			__builtin_ffs((int)DA9062AA_BUCK4_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -604,6 +621,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK1_A,
 		.desc.vsel_mask = DA9062AA_VBUCK1_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da9062_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK1_A,
 			__builtin_ffs((int)DA9062AA_BUCK1_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -640,6 +658,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK2_A,
 		.desc.vsel_mask = DA9062AA_VBUCK2_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da9062_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK2_A,
 			__builtin_ffs((int)DA9062AA_BUCK2_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -676,6 +695,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK3_A,
 		.desc.vsel_mask = DA9062AA_VBUCK3_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da9062_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK3_A,
 			__builtin_ffs((int)DA9062AA_BUCK3_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
@@ -712,6 +732,7 @@ static const struct da9062_regulator_info local_da9062_regulator_info[] = {
 		.desc.vsel_reg = DA9062AA_VBUCK4_A,
 		.desc.vsel_mask = DA9062AA_VBUCK4_A_MASK,
 		.desc.linear_min_sel = 0,
+		.desc.of_map_mode = da9062_map_buck_mode,
 		.sleep = REG_FIELD(DA9062AA_VBUCK4_A,
 			__builtin_ffs((int)DA9062AA_BUCK4_SL_A_MASK) - 1,
 			sizeof(unsigned int) * 8 -
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
