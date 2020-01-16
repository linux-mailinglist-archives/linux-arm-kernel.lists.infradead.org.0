Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C8913D381
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 06:13:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYzIHGORlgyGRx3NYmhOat+5SbpVxKxK2Ejrj5jxoxs=; b=NSi3+hM2Is75Q/
	FWX14wDKdM5pqp/ab9UDdtGKCYBYCMBJKrF8o9N1Q2vik27K+eAjA7jRAEAMlPBN3XSuBTjxDMBUe
	GLe2GJR6VS/zNptxQBVU4kcwwXgOLipsPniFrs/4M7oklJmhYqYckV05cILHBq7x7W6izYnvWH/YA
	U+Qzupl5LpSM8JonWg4vPXqqp3D3YbLDjX+S2QdMM9GUmkJWFwWDo3rmwMsfb87WM1sVuRCmxvGzo
	S34Df7Z5D5Fke97phQUlsZ3ucwxl+vEHUB38hC8WRv3gEyWCJiCiMYgt/rzpIEa7Sb/T9zLhFR2MN
	F4JxZe0RwOWIycyd3aRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irxSw-0005pL-Di; Thu, 16 Jan 2020 05:13:10 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irxSK-0005L2-6H
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 05:12:33 +0000
Received: by mail-pj1-x1044.google.com with SMTP id u63so2690015pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 21:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MM1sOWvjZw+h8vu3/j7lHMVOWjzrQOXMF1caDGRlxsM=;
 b=UBXELpEYZaaovPgS/erHW4L62w2arbooU5yS5QXYpMZPV450e4HZL/du/YMmlC6OLO
 /XOUACrb2ABoUT2CMcudFe11l3pAT61IALWqFw3HUIklgU8z0Xd0g/41KFS0viVkqyMs
 IgNoJGvtOKJrLR1cbo75xinWsCQAaZ9JOY3Hk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MM1sOWvjZw+h8vu3/j7lHMVOWjzrQOXMF1caDGRlxsM=;
 b=FTZCwF9iS4QvE35Kz8VF06AEtMJU9Wi69nVOQCo1fUAU9I5k5vBpQOh5WhABLk88Ho
 eoPDy+rK/Ezn2/m/1KF4MJmSfUm+YHwQWdSKCKCK+Tgh7WV7O9Ry7AQ5HXhHrO4HtG8i
 LtcZIpw1wIvYk01U16w5CHcBwPCocqNifDknGtN/KDyiNgm9mzy898JxoSvDcOJsO3Gu
 LtfE9UmeqM82+cqtwn7kookos38UTut30HxuDcVH5ZZcMbcOZTMBAF5PZecYcpSwasDp
 jbL3u3vIbveT5IAZTCHbTsUSNE+XyqGPsxCYM1ujTDbmluIruJIaiIfny3YNt8+R5gij
 O4jA==
X-Gm-Message-State: APjAAAXo+lSmOQVY5YsHvZKbylgHRRnakmxoVpA5QR6tr8UHPv+rVDPn
 XD+zijHkOUUTZPLuZDk4YUHTsKzCSDs=
X-Google-Smtp-Source: APXvYqz32hz+yU4Y2H7zyCA3RkeQAxrxGXqJ6o3lX0NPhyzrcMIWxMdF0Zmy/WCAcPiOdzOAA0SxTQ==
X-Received: by 2002:a17:90a:fa88:: with SMTP id
 cu8mr4181651pjb.141.1579151548899; 
 Wed, 15 Jan 2020 21:12:28 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id l9sm21540217pgh.34.2020.01.15.21.12.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 21:12:28 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/3] arm64: dts: mt8173: add uart aliases
Date: Thu, 16 Jan 2020 13:12:08 +0800
Message-Id: <20200116051209.37970-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200116051209.37970-1-hsinyi@chromium.org>
References: <20200116051209.37970-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_211232_290934_7127AD50 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add serial as uart aliases in mt8173.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 8b4e806d5119..790cd64aa447 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -50,6 +50,10 @@ aliases {
 		mdp_wdma0 = &mdp_wdma0;
 		mdp_wrot0 = &mdp_wrot0;
 		mdp_wrot1 = &mdp_wrot1;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
 	};
 
 	cluster0_opp: opp_table0 {
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
