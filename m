Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEBE198887
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9VoRovgTiqYwPMEv5dr38/O5HiuA0cMcrCvx19sacw=; b=rjrTucLzc4xY6L
	D7NHq5L7QlZATLLqX/1HIFg9yqRmtC4dcTlpBhRHFFjCok5f8Fo+HStiGf+gooBNsLnph1329XAyI
	bo2sswXwGcnoIRnUcJrUZEamWKKINxINWbI83hwp8Im8oJygvGyi33fHGHklkflTY+yjP4Rw82Sfk
	GXBZRqyM6LIxBVwf/BI9dm1woLimcqTBSjFK31CmCCuodj3xDfop0mFnBXX7LPCw9aFbUhWk8d+Un
	JDDM99eed9ubyLthrHADUA08zXkCOxFToJTlfVy97U9wa2eZlpHcIJ6UF2TOGkSXZKG5Uy51iGnXy
	nD6rhZEh5A5JLJnc4VVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ479-00054U-M2; Mon, 30 Mar 2020 23:46:43 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ46M-0004Qp-8H; Mon, 30 Mar 2020 23:45:55 +0000
Received: by mail-wm1-x343.google.com with SMTP id c187so647786wme.1;
 Mon, 30 Mar 2020 16:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5uzSi9/VYcTraEBB9HY7h/rXS2xZdLMR03bizri5gj4=;
 b=U4dAz5JvC5Fm0PIcTcWwiVNghqf0QdYuFyDYQm3OPsDtjHrCfMpE46Qo7orMdSK05Y
 P5DXJy38lM1lC7YIgMPBGH16GG5xBtNDRcaO6VhqWdmxtggajwky/+qcHKKF6NYHg00G
 W9dFPn3vX5HJ5BC7X8j9SbXwS6bz5LpzRR4vsM7CdR1Yyyr61PXhKsAsfJFGgRFavQaF
 EZ9CIwME/Ja3sdR3Y3OZLi5gA0KPfwcKI1DMz0CqjqajGHI5/TQsHPOpEJQX0P7FH1xD
 51fdQHUq+OFjP3ufeY+q8KJZYGaed/SA62fyiiORqKhq8vCQbVrEpKBxkAZ4+oEyOazH
 ZXnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5uzSi9/VYcTraEBB9HY7h/rXS2xZdLMR03bizri5gj4=;
 b=KVGSgoKH7IQ7aP6qBsNRyWcWcoa/C44/398a60hUDiTwSjPCbzSQpnhFUYvQP/vFJD
 k7jgu0MTbe1XqEeAi6D+DEUjXWX8+RCwFiTkmJxYO0Di3WH1KK6bz+ZsdVckZqWib6W1
 otL7ASBxsv6VI0yR7URwEqqImPhYr4ZjQ7VHqfXgSNqh47H7OOEeFMHOeBzTrTR+mOx0
 bMXoIZ9YZniDTTICYf71aeWKxamoQioRG53a/NHqZpoRN2ajL/F8RWdJZqvEy6Nts/yC
 WjrGIDcg1kTBWL8nd1ppV/KTCj5MOsfzlsDYwyUm1UvM/InqCAiteiAiv9aHo6Lwbypn
 t00A==
X-Gm-Message-State: ANhLgQ3YMp5TXqf60nOV76thWj89HZblXWSV3yqXM8cjMzz3wAg6uVcA
 8NMmyIHyiTJNTsiXj2Gly0G7z/Sa
X-Google-Smtp-Source: ADFU+vvtXm6WQtlMFz5iqFRMXzrlv57Bxn7PrxUOdXCnqT1tXpKTo5A1T4R+dQC9PFDeLc8AG/pT8Q==
X-Received: by 2002:a1c:2484:: with SMTP id k126mr575356wmk.52.1585611949773; 
 Mon, 30 Mar 2020 16:45:49 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id v186sm1392953wme.24.2020.03.30.16.45.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:45:49 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, jbrunet@baylibre.com,
 narmstrong@baylibre.com
Subject: [PATCH 2/2] clk: meson: meson8b: make the hdmi_sys clock tree mutable
Date: Tue, 31 Mar 2020 01:45:35 +0200
Message-Id: <20200330234535.3327513-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330234535.3327513-1-martin.blumenstingl@googlemail.com>
References: <20200330234535.3327513-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_164554_322518_9DE9F7DA 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HDMI TX controller requires the hdmi_sys clock to be enabled. Allow
changing the whole clock tree now that we know that one of our drivers
requires this.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 34a70c4b4899..7c55c695cbae 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -1725,7 +1725,7 @@ static struct clk_regmap meson8b_hdmi_sys_sel = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_sys_sel",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		/* FIXME: all other parents are unknown */
 		.parent_data = &(const struct clk_parent_data) {
 			.fw_name = "xtal",
@@ -1745,7 +1745,7 @@ static struct clk_regmap meson8b_hdmi_sys_div = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_sys_div",
-		.ops = &clk_regmap_divider_ro_ops,
+		.ops = &clk_regmap_divider_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&meson8b_hdmi_sys_sel.hw
 		},
@@ -1761,7 +1761,7 @@ static struct clk_regmap meson8b_hdmi_sys = {
 	},
 	.hw.init = &(struct clk_init_data) {
 		.name = "hdmi_sys",
-		.ops = &clk_regmap_gate_ro_ops,
+		.ops = &clk_regmap_gate_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&meson8b_hdmi_sys_div.hw
 		},
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
