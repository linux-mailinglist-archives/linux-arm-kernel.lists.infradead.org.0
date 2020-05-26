Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFCE1E27FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 19:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PRowYO9P+6jgoLYKDswElRYjveBpoIkH1iwhf9JP+2c=; b=MHq3E4ARme9IrW
	eiiO2JQtn9yWgAj5LGWQy0Pj88Uf3DvUqwjiDumRChlZglKtd2KXW8GqZytAEdDQwUU02G7ovP9Y2
	PnaJIkuATA9n3I1B1tgFYrjmBvpXsMOZuyZ9QaOWNaXEyXJZWRd2wynarWxL+R7TScjlIqYtlAFeC
	JL+rS31LPuUexm5RLBFQ0dDwYXy6pK9Jpnf/74zxBHyVBlB9WqA45FJ71ownO5L905XqNARKTUlGM
	vzTBywUmjSh3smyUNruyp00q3k7O59co56Wu/C4Zdscpy/lEUwBoCU5VRgnFmeJNR9V4worGYRjIG
	4mU96W4y6C4R5gzqQ7JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdd5R-0006hx-ME; Tue, 26 May 2020 17:09:57 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdd5H-0006hD-OA
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 17:09:49 +0000
Received: by mail-il1-x144.google.com with SMTP id 18so21253705iln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 10:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qDMtsfOhm3VjziHJE2E1cNppZGDhVrk8ubukeyWGRX4=;
 b=g3wcKRmbalgUtm11bVdHv8qL3LYhdL0QrZ0Tw1Vt7ECNYVsx3ibiBCGgGZjBTZ10Ut
 lseDTXK5zhZ0LR7F+V13fcBLCQjJX0R/054ayq1e0/Ao2kuTUi46uynzW69NKJJ8VbMj
 G/OMrFZnIm1yvnBYotaJfZ6fa/nyXwn1oR+DoexzlWBsBLjNrCSL2Z02AVObFJWWmOcX
 AFKwxV6TggtmLne1nHIzFnFzDVNGbWuvI2sla/LQidclclbb8k/v2wCfcpYwLcbpCG9I
 JVB+4GPEhuHmtKOW3ZpCS7XK6Zag9f5TgIogyl/NKcn60z+oRWid+995AOdeFDtAK3wz
 5OFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qDMtsfOhm3VjziHJE2E1cNppZGDhVrk8ubukeyWGRX4=;
 b=j8C7WZRvaKsCGqXHTMon2sDh42ZEav4wtTL0/ncMqfprCOrkMchsZ0MIj4jQdheVYo
 h/UxD91pjkYBXdKzXGDFsZQX4m/j/LkxkzuhqeFlHvpzWfYKy2Iy1bKK+4/QwIu7ziW2
 IpCjFGcN+gFOKIWeNc+tEORzd5RrOY+JdsxIaozXTBRYmqsNODTWkedbludOZ3gb0bGU
 mrtJ1dy6J2avMoDIBewPrjAwUzgThTZol4itZVG/63Kn2035RcFWikzdcNOvYr9Vocab
 TZbd+Mi7QjQSAjqqBek2xmRmT5s1Xf9E8anWnAWH1JQUD3DvQmkGDiKOzcUTr5dqeaox
 pUzA==
X-Gm-Message-State: AOAM53183022yiHfWpfrecm+v7jWgyvf+yzQMBmRu1K+sZwlAQcw+Xyi
 ACumnXYZwo/IqMU6RTnmY5/QIRV1K8g=
X-Google-Smtp-Source: ABdhPJyiCTc5LxB7MGg1Mg2Z3LpRLDDmxxNgMXldniIQX8H7iq3tA9+sDdWDd7TrmiAT4bYBQZlC3A==
X-Received: by 2002:a92:c704:: with SMTP id a4mr2119077ilp.163.1590512985746; 
 Tue, 26 May 2020 10:09:45 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id j17sm244116ilq.79.2020.05.26.10.09.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 10:09:45 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: imx8mm-beacon: Fix voltages on LDO1 and LDO2
Date: Tue, 26 May 2020 12:09:39 -0500
Message-Id: <20200526170939.104111-1-aford173@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_100948_024032_D8E0E6D5 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LDO1 and LDO2 settings are wrong and case the voltage to go above the
maximum level of 2.15V permitted by the SoC to 3.0V.

This patch is based on work done on the i.MX8M Mini-EVK which utilizes
the same fix.

Fixes: 593816fa2f35 ("arm64: dts: imx: Add Beacon i.MX8m-Mini development kit")

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
index fb0137a8611c..94911b1707ef 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
@@ -136,7 +136,7 @@
 
 			ldo1_reg: LDO1 {
 				regulator-name = "LDO1";
-				regulator-min-microvolt = <3000000>;
+				regulator-min-microvolt = <1600000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
 				regulator-always-on;
@@ -144,7 +144,7 @@
 
 			ldo2_reg: LDO2 {
 				regulator-name = "LDO2";
-				regulator-min-microvolt = <900000>;
+				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <900000>;
 				regulator-boot-on;
 				regulator-always-on;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
