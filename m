Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E82DC44EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 02:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BUMJKLFPgpqN33FKeEP+l4JwKluwKnDxkCXszncGp2s=; b=S5H
	DrV14yE9wkIN6bFrpWe1KyFog1EPf7xxzBs78x2iWEIhRKJ8SQpotsVSzyfeGLG+NPhFGIqXM+IyX
	sTp7VsvfepaZhQr2PE/DdFhVaAOeOupNOtgeV9eJfiKv/eSSf3bjRLIbzgEIEQqGeEjXYGuxTEzlm
	0duEXmE1JqzYj2MLAZ4lmna/aeWIniTUUWIns/4LLCbjV5cTW++zFYxU6fEZREZW2X255RmF4Vhgn
	CgvSSZVPBvl90gEKmT5VKwKqvcf3AFQa5rGLeZCB0pvMQ6L+YciMEL5nPR8FXjF5AieXuQXwAF78Z
	UbBFTSsZkuKZlW63sNa/kLLzh0YQGtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFSNo-0003Ae-7W; Wed, 02 Oct 2019 00:20:44 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFSNh-0003AE-5s
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 00:20:38 +0000
Received: by mail-io1-xd41.google.com with SMTP id z19so52932715ior.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 17:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=E7akn3KWbgNnmMpTo3GpAawa2GrmFKU67ai1nYZy4h8=;
 b=F3c6aFkkT9udTeRsQq65f8rfAAgP1ivklKvMzWsaHAEsYa4XU61XzysDKiiFs1GIce
 y9tDnJZi07BVq3ak1k/ck57w5vdGWOdnRrY0imEpxxoMZJNvu/kIQ3IsIScOidtYiFu2
 Zw/V8Aw36OocuVQt1ulbuDbZh8OhWPkhsNMNa3b8BBkOzLKt0wTcs1hW/LD3+CTxTtdx
 9YDTkHPkNQs+wBc3tJo0O5T8hvFqYmxv5kpQeX/dZ1ZsT43q3hms+WCgPnB/UBVuSaHo
 2+jnUGndHbJ22tlzhxNM373PBIY5Njg8J5Dju2OL0+iH/pyBxiHbWkPioOEULvHu6xFx
 HIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=E7akn3KWbgNnmMpTo3GpAawa2GrmFKU67ai1nYZy4h8=;
 b=mjJ69mm3p2Irqfogl9qOfwVH34WL4tohwn8SGOvLLtR/9VjonuWK9GG7qnCFuK/2ef
 7WGQ4jkZS0aiPg3XCQw1eNDTIFYcBwS/TWW5jMybd+GxPJYMNASvIOhucGs0xxWNHAJJ
 d6zUnc606tK240xVQmIzJJbtsZdbbLu5Czqcwyi1X30Fkk31jP9u7Veqbsihjjyo8seW
 yYglCEKc3SBB7j31pE3lUEbmoZiaN6v6p8Jxe38sMhZFAjmJtwgiARSR65cAMbaojjcc
 FI3uvVedbyIuFpLmdyvVxXVbHQ2M6tFNUbGsLqONJ2k/lr+ZC4twjcdHYAnTNdA8rJar
 B8Pw==
X-Gm-Message-State: APjAAAVUhuBU+ltmNy7yfUt1znVzogXOtQX/R9nuRdHKRQ/xuKhjK75+
 SDfHAgD7VjHt7hM2UUXYo9ihyXgFXh0=
X-Google-Smtp-Source: APXvYqz4A/KOLM0TIzmmQxVPsPwNSr7qx9lzpyTV4UAEwH9hZCGAdGpdtb2S4AEc3Ugu8biyi6Gcbg==
X-Received: by 2002:a6b:1646:: with SMTP id 67mr879880iow.11.1569975635262;
 Tue, 01 Oct 2019 17:20:35 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id i13sm6703646ils.16.2019.10.01.17.20.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 17:20:34 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6q-logicpd: Re-Enable SNVS power key
Date: Tue,  1 Oct 2019 19:20:28 -0500
Message-Id: <20191002002029.19189-1-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_172037_243515_6A6C3044 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Fabio Estevam <festevam@gmail.com>, adam.ford@logicpd.com,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Adam Ford <aford173@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A previous patch disabled the SNVS power key by default which
breaks the ability for the imx6q-logicpd board to wake from sleep.
This patch re-enables this feature for this board.

Fixes: 770856f0da5d ("ARM: dts: imx6qdl: Enable SNVS power key according to board design")

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/boot/dts/imx6-logicpd-som.dtsi b/arch/arm/boot/dts/imx6-logicpd-som.dtsi
index 7ceae3573248..547fb141ec0c 100644
--- a/arch/arm/boot/dts/imx6-logicpd-som.dtsi
+++ b/arch/arm/boot/dts/imx6-logicpd-som.dtsi
@@ -207,6 +207,10 @@
 	vin-supply = <&sw1c_reg>;
 };
 
+&snvs_poweroff {
+	status = "okay";
+};
+
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
