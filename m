Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50545552C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ViVXdqP7SCTl94sEobOB2V+9KVXXcI1gn0NMuEZ8I90=; b=kK6c31vEy/vOEZ
	cIyrls+tyxOvQScscYQs4JehT9UCFmvSbdADnojf3jWoxfmypw5xWazoVJSCz2R3cvpX/z7B1E3O5
	NSmFyGz/DYwqGlbLniinl2kZq8DybSUrP6sRPy/MpxLZCRbj6JJOmnPk7nbiIhg8o1MTxtmTkY/CF
	sEQShJVoTUADn3Pcz1f7iGb3B+7829yiJrqUW6sPdz2mEf0Y74vAr1Ou6s+e4YMPITcRrJEK1veYl
	lITkPISAZGo9YU2q0yhDbrnWsKTdoBQqdHzyygP8Sw1S8jHQAJvTGxYOrDCVmizf77DZv8NIgjKSK
	dsqoGqWDe5fD6HZXWs+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfogS-00074C-MX; Tue, 25 Jun 2019 16:52:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobt-0002Lv-HQ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id a15so3542390wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tH1fOw6y0vNQF4dreNKkipKssk8MEpaF1tmIMTiOzZ0=;
 b=oyqB2avNk6MEzzgARPKSIYRj4FKnMd4idECsZjcdb/X0r284D9/CKoapvzEA/mN2wz
 f5pup6I+0ItWKxIDz6OQkRGal5pbqqBLDE4GLNXjuXa4wN4MpsGfdDK7ZElYUtEu0xg9
 IFNzR2+VkmyMWAP1x6q+hOQAJ9lmCTPw6Sy25pkN2iEtw3zvnFxWOY2wkh7zL4PVHCiY
 a/ZzJuzBzRTAkaNpFq7pL6uQFpkhgVtrpPysHjQaxf6Cs5f6JwbrtJoe/3Vz583X/up7
 BBe2+i+/FEFh/Z9WD/75Q25OnnabZ4MkihMgByLtZDrx46ZNUiVQCN2yyhac7CEbhICK
 YFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tH1fOw6y0vNQF4dreNKkipKssk8MEpaF1tmIMTiOzZ0=;
 b=r86JVxIwVQp9xWlozWbR7fQVa5J8OiqKvE6E59WEOn8IxfPk4sUQBpbCn0fUjVpB3I
 rH8wRL4ysOSQjja0OyOnp9p4cSvk7STXCTSVzQ1wtl7et/gRlaU+6mgMwA2Q7CHv/O09
 6Mh8FSA/g3vLkOJ0zRPMykjrFU2tcYw8qXpGJ2tvrOeWeigGrRe5etd0Uy1h45s7GWGD
 QgZZWt9lbbvhH2W5ZjDLg454EljjgxWOxHnA1YV+XDHnjLNqIA1Aue9W2Jn5TbfWdnuw
 YmcsWEaZ/tNXsOS5c5aaZAGbMuiCu6rnnwTZ5AnQj7bsiCdIWaKyfTErxvLtQ++lCvb8
 t+Rg==
X-Gm-Message-State: APjAAAWTmPbC2LbL2ZKAYw1t/yXHyxyfcfQZTIjqmnywUmaCKScUZy2w
 KHOT3MVzhK45rWyJYnrzcD2l9Q==
X-Google-Smtp-Source: APXvYqw0cMuC38HiirhzxXrIDkE7Ta0lCsm01E5gczklxa2ameHFTs38QzfSduEoCQ/93zEn2m/emw==
X-Received: by 2002:a1c:238e:: with SMTP id j136mr19054867wmj.4.1561481276276; 
 Tue, 25 Jun 2019 09:47:56 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:55 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 11/14] arm64: dts: qcom: qcs404: Add HFPLL node
Date: Tue, 25 Jun 2019 18:47:30 +0200
Message-Id: <20190625164733.11091-12-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094758_168696_756C4296 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The high frequency pll functionality is required to enable CPU
frequency scaling operation.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index d876dae5b0a5..94471aa31979 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -852,6 +852,15 @@
 			#mbox-cells = <1>;
 		};
 
+		apcs_hfpll: clock-controller@b016000 {
+			compatible = "qcom,hfpll";
+			reg = <0x0b016000 0x30>;
+			#clock-cells = <0>;
+			clock-output-names = "apcs_hfpll";
+			clocks = <&xo_board>;
+			clock-names = "xo";
+		};
+
 		timer@b120000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
