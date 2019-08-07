Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC68849EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYtNgdNr0ZfxCvRaB1cpE5Y0TJiTfs2gSodzYJjU860=; b=Iy6cjLkK+hl8PJ
	XXDzkzIb8WihkHMHItYjfUQEmcJikFffV4YBtwEK/m3w3ZelDOp9qjfUjHmPbA8ICoWQu2SXNQgMI
	FgWtpph6pSCAv1bH58hP6TkdHECaNi+HTDeEswDnRt7Zpg2SQwNiYy45eTVkqNRmchmyozdmw+4p0
	NwUvsrGz0EUy41yJUEuou9NvcviOmG+r5C2sC9fOa38S07Gw5+gXgoQfGCtpCic4yU+QWjfwqhSN1
	GSFcUeMiPK7s5kPwlXNqM8/tln6RYhJRLJgBsuNbECTFlZpNoOUAyZIQwTgYT+5GJObG0hCq4chbL
	BRDq60NoLhlOVL5m0bIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJR0-0007jW-4l; Wed, 07 Aug 2019 10:44:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJQM-0007Kc-8F
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:44:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id c2so40179096plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 03:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8UKAy6S1naJKDHFydJnle1NOIttO0y62QrD76EDTElc=;
 b=PcCtOcrOOOIlgqB7DvubWk+bHYWSgdCCn6bUdX+Lq+zYAMCrGOcZ38QGx9EfMVrbWK
 fxf2R1MmjUn3eKg/l4wAme3nw8NiTVMyfVxZZ1t9q2PwVvQWEgEKuGI1uuZcnYxzb5WU
 Z4VOCLIheayHOqTDGGBR+GoXkwLrRIdbpR+mQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8UKAy6S1naJKDHFydJnle1NOIttO0y62QrD76EDTElc=;
 b=p0OhyQ1Pz3LJ3OKF4j8tn7c3rntyz8MevvKZvk+cbxUFoFF/89GliQuSPUzIiulSmO
 2brf1xxDTbfv9p2n52Wv3sSsKaiuhFlnDlNfQqGAD6bL5gXxfWCaM8pKvE5wFhIrUnPT
 mwulXq8vCOIco9aL+T+O0dLcTJa9y79OqedIH/wWiVEx0ArvuBYHsKgZpKW8YXx11Jht
 JDUOfardtL349zvkKcvB6MlkQsNg6gz3JX7+bcV+2LzMAbsP7Otvdj7zUWXGPc8mbA8J
 KrB2ahRps4WRC8Tk+62vIJLMPHLWfFpaaG31pX7taRmTxeBDYeetDfMFxfclX1HAAxJw
 /+yQ==
X-Gm-Message-State: APjAAAVqtHmCPU9+ekLZWYkh33AqbiUnP1Mad21wZ8Lxq33RR4uL8GEN
 DjMqM0eDT5DgfVJe8PV7Q6aI6g==
X-Google-Smtp-Source: APXvYqypS8QVDmcj9BcwKQlUztgz/Vk4dwM/bU2dyo3Df4j+UHQv0mXBXRuMoJRN/tR0HoYxj7hxWw==
X-Received: by 2002:a17:90a:2247:: with SMTP id
 c65mr7523071pje.24.1565174645535; 
 Wed, 07 Aug 2019 03:44:05 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id a3sm24747697pje.3.2019.08.07.03.44.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 03:44:04 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v15 1/5] dt-bindings: Add a binding for Mediatek SCP
Date: Wed,  7 Aug 2019 18:43:42 +0800
Message-Id: <20190807104352.259767-2-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
In-Reply-To: <20190807104352.259767-1-pihsun@chromium.org>
References: <20190807104352.259767-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_034406_687337_0836D84F 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Erin Lo <erin.lo@mediatek.com>,
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Erin Lo <erin.lo@mediatek.com>

Add a DT binding documentation of SCP for the
MT8183 SoC from Mediatek.

Signed-off-by: Erin Lo <erin.lo@mediatek.com>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes from v14, v13, v12, v11, v10, v9, v8, v7, v6:
 - No change.

Changes from v5:
 - Remove dependency on CONFIG_RPMSG_MTK_SCP.

Changes from v4:
 - Add detail of more properties.
 - Document the usage of mtk,rpmsg-name in subnode from the new design.

Changes from v3:
 - No change.

Changes from v2:
 - No change. I realized that for this patch series, there's no need to
   add anything under the mt8183-scp node (neither the mt8183-rpmsg or
   the cros-ec-rpmsg) for them to work, since mt8183-rpmsg is added
   directly as a rproc_subdev by code, and cros-ec-rpmsg is dynamically
   created by SCP name service.

Changes from v1:
 - No change.
---
 .../bindings/remoteproc/mtk,scp.txt           | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/mtk,scp.txt

diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt b/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
new file mode 100644
index 000000000000..3ba668bab14b
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
@@ -0,0 +1,36 @@
+Mediatek SCP Bindings
+----------------------------------------
+
+This binding provides support for ARM Cortex M4 Co-processor found on some
+Mediatek SoCs.
+
+Required properties:
+- compatible		Should be "mediatek,mt8183-scp"
+- reg			Should contain the address ranges for the two memory
+			regions, SRAM and CFG.
+- reg-names		Contains the corresponding names for the two memory
+			regions. These should be named "sram" & "cfg".
+- clocks		Clock for co-processor (See: ../clock/clock-bindings.txt)
+- clock-names		Contains the corresponding name for the clock. This
+			should be named "main".
+
+Subnodes
+--------
+
+Subnodes of the SCP represent rpmsg devices. The names of the devices are not
+important. The properties of these nodes are defined by the individual bindings
+for the rpmsg devices - but must contain the following property:
+
+- mtk,rpmsg-name	Contains the name for the rpmsg device. Used to match
+			the subnode to rpmsg device announced by SCP.
+
+Example:
+
+	scp: scp@10500000 {
+		compatible = "mediatek,mt8183-scp";
+		reg = <0 0x10500000 0 0x80000>,
+		      <0 0x105c0000 0 0x5000>;
+		reg-names = "sram", "cfg";
+		clocks = <&infracfg CLK_INFRA_SCPSYS>;
+		clock-names = "main";
+	};
-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
