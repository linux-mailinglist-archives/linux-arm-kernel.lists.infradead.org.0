Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF700C44EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 02:21:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BUMJKLFPgpqN33FKeEP+l4JwKluwKnDxkCXszncGp2s=; b=iOzhwUJ+Dvo6GZTjOwwC6pcbgf
	DLXqZXRuG14DQKz3Qv8pnhcaKR0sixW9P9x6ucBouqmjF7HssLl4/4cq+CCIrDG+9YHtsdc+9AFiz
	E5hufGM6ulKr+YdQ6ivP99UYpZZjOrm6xfeSOw48xBTYvl6lzpLj3Xh+GQ4gGRbOBqjwgDIuQN6A5
	q7AGrawwwXKWhGtNRDeeLAXsR6ovxj/7hXY8F6dn6ItOwiHSA0Nl13txE6N5gdwf+g+CN+AeJ+LBe
	VBlmrqbBHBMNtEDFMEgYChsucz1ErFqUikmVQDBhNthTls49AAwF4PYYnyblJLJzKNk+U+SauEWhm
	fSXeZ+UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFSO0-0003Hj-75; Wed, 02 Oct 2019 00:20:56 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFSNk-0003AQ-2z
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 00:20:41 +0000
Received: by mail-io1-xd43.google.com with SMTP id w12so24692759iol.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 17:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E7akn3KWbgNnmMpTo3GpAawa2GrmFKU67ai1nYZy4h8=;
 b=vVYaH6PIsoBnaTSkvwT3ZG7wmp0QKNo6rURPIizeJWFyDei1P9wMgw1pcI3+7vuHzb
 nksWAGyzFTeycPPA9/a+MzP3GWY6YaHd7Rxv9yamE4lKlRuag/8UegaaoHNI3PQkocjw
 bP1dqvPT1zQ4aRcKw7po7jMEoBMGNIiTVvyn3R8QjDYVdnmLSrmqMKmAprIqT1JoWi7c
 8NmIn7lKfA9/mcb7o/vFqdeviLlbWCAR7QU/wBvTv/4i9KQRp8Gudmn/+oTq8SW1YQ3k
 nyACI8XyRf8BdU9+7+frK/bLclPcdQQ692+wdauZgeETgfgrG+i3t2zN3JIDsgy36aiQ
 QOEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E7akn3KWbgNnmMpTo3GpAawa2GrmFKU67ai1nYZy4h8=;
 b=V/0jkeoxv6uEu27hel1IR5PMyTIyomuTgcNysUMPE7ZGs4Ifzno1OEltcPFzsIYXTO
 vWNwmennIoqsl8BmzUbDXfjdvzxfTEjUOc4TOQzImXna104361TIfYKY1Pm+htT4YjUB
 hAz5Dcp2FgS5m0PwqyQ3iEQyLjUalAA2WzcPQCRI2J6H1RfSpOUoldZwVQqDGWvWq26G
 7mnESIJQeaAzDRH1CWHer0OL0sX7/esHYa3Xss72KrCcyTdBvKvIKLPQVEY/MGMI0lx5
 EI5o/uHtPplrAowKuxW4Zdb3+q2afU0+tkMlkfv8QZd/RI2Ir3hrt1nAndnMVWB2tqBb
 yk/Q==
X-Gm-Message-State: APjAAAWNLpoaoFKnjgO966o3tFbDdoq/JOI7eJLeyg3jYXgphT1DeOVo
 4Vfpeiwyx0yZUB6abwZrWZQyvJQPmsg=
X-Google-Smtp-Source: APXvYqzwrXn2xZhvP3Fk1t/4f5vCLzNLkyNLHZOCf4L6LjiMIR08b3vcNTz9Q3aZneXGKJ6lt60hlw==
X-Received: by 2002:a02:1785:: with SMTP id 127mr1133317jah.15.1569975636729; 
 Tue, 01 Oct 2019 17:20:36 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id i13sm6703646ils.16.2019.10.01.17.20.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 17:20:36 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6q-logicpd: Re-Enable SNVS power key
Date: Tue,  1 Oct 2019 19:20:29 -0500
Message-Id: <20191002002029.19189-2-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002002029.19189-1-aford173@gmail.com>
References: <20191002002029.19189-1-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_172040_141642_F6A05A44 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
