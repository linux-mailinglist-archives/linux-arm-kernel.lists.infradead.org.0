Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAC62311D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:13:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M5sCbeu1JD9CSLboYKHL8DitJKLeEyy+QW4nJs8nJZs=; b=EYlmCiWzuAMr9qU98LXU8QXBVD
	gdAHxZXnS6imABmpzPg92/jxS4HEBYz/lXsUz2iE8MX1VcgNV/pR2ZkBSrEFpSsV3D/hoGk9gBcRW
	sF08Zp/9/HNgXEjYGd0ittvCfObIpJudTJ2/02A2v1sUkWDRzv1yXW0djX3XwCuEl4pb4h7oSvjcf
	qIuy1IiDiKNopGe2Ah9DyGwgd+EX5azFh99D843kcrcVxroyQv04+2woeOcteTt2N3dYAlmdHVraO
	AE9FsCDcqXX61GYKda8TAyEzw307Vl37hkcteZnU0132oV7vU9eDP0d7HZdrKx1q8QiwA2zM+PsAX
	3givKTZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfIo-0005Tb-9z; Mon, 20 May 2019 10:13:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfHr-0004KH-2q
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:13:04 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so25074pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 03:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=psGipp4xyvA6ITMw9MQePCESgWaNPblRsxWV83tCX+4=;
 b=DDe6R5++Fzja9VoGMt+SiLItI4KCRzkHl1b612rdgS5J8T5Qo1eIV3EEf38bAPOSdX
 TBv+I1VgFq1YeFO/fFRQRdPJ6yP5ucgrpKCWk5BCNuPPINN0PWn5aD6QgPmuzNveadlu
 z5b/l/Apk0KMKQQSP15dUy5V2i24M/9JCfl6AGpouxMxxq6jpBGZeJEGhmp0DVEJ9Mgc
 rViySazF3M83zMmXn0ze7FWpzMkzuWVcq1y77Ry53gK5IVKl7fWbhNWrcXAeaEaEwgZo
 IL+bDsrmOJ7riSZ/XjjTj9qBDLdOzEOWfW39uNyHzXJfoylddvQhKcTfId6Sn3+7lWo+
 k4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=psGipp4xyvA6ITMw9MQePCESgWaNPblRsxWV83tCX+4=;
 b=f5hZKA0UIGDCARk164/bys8/Mr2ypNJRUZzdQ9jT6+EnXnfLV89sq53H3zRfmh69gI
 2Zi9XnC58S8ctIEOdP7JX3oktgzVAwwA15jrljlgnHAftYDb7xBg+zj62jCjt+V//ZhZ
 BTJwpLY/eZhXnKdhmgb79PjCBTAUSsqN/3hHnaHzTppy8rx9Jq7msLi5oNNVbIcJUpfQ
 IMiUhaAV0y4iJl64SQQyJCC1TTdNqZiGSXNQ4TNqw5/AShp+LlGu5WnqKtC9zZcoUnpk
 01umTwvkkZxn0UQro8LqVNqZ5SMIuTd0A0IWKv4diOetiT+zmu73BjTYk0R2roTQ52GR
 +Tww==
X-Gm-Message-State: APjAAAU0yAuwqHuhaDzxQ687aM1Tbz2PROmZwYBD9wACkFeVDGJpeeZb
 ZaaN3J+fFzjoqJobJpFiimpWrA==
X-Google-Smtp-Source: APXvYqyJUQl1Mf5fAZLcOV0IUUXJWaBCvUX3etV6Sos7Hp/LITH/u60ghjIXaOUVvU/apfO53ZFuRA==
X-Received: by 2002:a63:d54f:: with SMTP id v15mr33040134pgi.107.1558347174204; 
 Mon, 20 May 2019 03:12:54 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id b3sm30098127pfr.146.2019.05.20.03.12.49
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 03:12:53 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH 7/9] dt-bindings: mmc: sprd: Add PHY DLL delay documentation
Date: Mon, 20 May 2019 18:12:00 +0800
Message-Id: <96f4304c001c0cf81ecc6bec69665d239203b9b7.1558346019.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_031255_967426_0EEE6391 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, vincent.guittot@linaro.org,
 baolin.wang@linaro.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce some PHY DLL delays properties to help to sample the PHY clock.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 .../devicetree/bindings/mmc/sdhci-sprd.txt         |   18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
index a285c77..e675397 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
+++ b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
@@ -20,6 +20,23 @@ Optional properties:
 - assigned-clocks: the same with "sdio" clock
 - assigned-clock-parents: the default parent of "sdio" clock
 
+PHY DLL delays are used to delay the data valid window, and align the window
+to sampling clock. PHY DLL delays can be configured by following properties,
+and each property contains 4 cells which are used to configure the clock data
+write line delay value, clock read command line delay value, clock read data
+positive edge delay value and clock read data negative edge delay value.
+Each cell's delay value unit is cycle of the PHY clock.
+
+- sprd,phy-delay-legacy: Delay value for legacy timing.
+- sprd,phy-delay-sd-highspeed: Delay value for SD high-speed timing.
+- sprd,phy-delay-sd-uhs-sdr50: Delay value for SD UHS SDR50 timing.
+- sprd,phy-delay-sd-uhs-sdr104: Delay value for SD UHS SDR50 timing.
+- sprd,phy-delay-mmc-highspeed: Delay value for MMC high-speed timing.
+- sprd,phy-delay-mmc-ddr52: Delay value for MMC DDR52 timing.
+- sprd,phy-delay-mmc-hs200: Delay value for MMC HS200 timing.
+- sprd,phy-delay-mmc-hs400: Delay value for MMC HS400 timing.
+- sprd,phy-delay-mmc-hs400es: Delay value for MMC HS400 enhanced strobe timing.
+
 Examples:
 
 sdio0: sdio@20600000 {
@@ -33,6 +50,7 @@ sdio0: sdio@20600000 {
 	assigned-clocks = <&ap_clk CLK_EMMC_2X>;
 	assigned-clock-parents = <&rpll CLK_RPLL_390M>;
 
+	sprd,phy-delay-sd-uhs-sdr104 = <0x3f 0x7f 0x2e 0x2e>;
 	bus-width = <8>;
 	non-removable;
 	no-sdio;
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
