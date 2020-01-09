Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA01135AB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:54:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9Q1JJtMED7jp4H83csRJWGFbED7DO/86AbXQnBxgJw=; b=OYbGsAiPW1SICd
	hWWv/LMUSIpAr3UaVi6K/UbiX/xkgrrbwDjTcN3Gxng8bGn5icg1jJW5JwKxGfk9bLmFZbXNGT0VO
	1ETbStQqSGuZsvWDrGOi/daFWjk2lkhWd2h4aSeMVQWH3taeAe2yz2Uj9xh2Bcf2j66hg54sPnrBd
	60fAALyiz5MfPw/cncybCIv5mCFaZBhCAsG75FzOi8MrYAp0+1YyFwLEaCuKnDrDJBQ8raTB0aGk0
	x7RGVRp0KDpvqIZg1gqizKjxHWWlSHhIkZlKgd9JTYzUXKn9RZMKCO4JqPxoaNXmHmmvyFvK8cYlt
	7RRZP0CjHc61+GgRzzQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYG2-0005EK-PV; Thu, 09 Jan 2020 13:53:54 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYEj-0003sZ-S6
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:52:35 +0000
Received: by mail-wr1-x42a.google.com with SMTP id d16so7433313wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SmlrA1h72ZzGJRA3vJ6HAmtvtsW5XxQ4C49Z2OG3RDc=;
 b=GU7oj8eqyaI6CJKArBOATouELO2rRt20bUumWtNWy9mud+/QF1s4DeUcjXnZFA1GWw
 55CZQ8cbAkM+WRLO55+Xx+hq3y7NsOyBYto9I4NmHT+TyrNLhKzoQAF+sQEgvZCThYXt
 RgBnnds/Wck+5/aetKf89fQAT2FFm1xBDAdl2sVHdiHX2Fm4OcwOYC3c32CWR8BNANYe
 XiRuc5yjnwJAguELKlD71QtyTz0X9DEruvDWJ08GR788bRG+DeALd+UMjYmU8A2aBCa7
 OBklAmwxHCdAoed0r3QTadzlar9Nm0p8Uv4hhrI7+gURSx43FwFK5MKusvK8rptmL27x
 lIqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=SmlrA1h72ZzGJRA3vJ6HAmtvtsW5XxQ4C49Z2OG3RDc=;
 b=Qp7kyxMYo1I7DglhGadHnCRDZ/t27l9jIk/w4Sy7F/KHuqY0y2oUpOyWynL0lQ3DYr
 UW/LoZuDHJp4ML6UWFRyHQ6ZUzBvU8iZ2peaC5BaQErYNlmMj8z5IOQtvTSyDSnk7SHT
 xBaR7uerjrQXApob75CgALxyLHNOKiRfupO2jAjQ8yMUQLSXAj9WE8BvsdT5ffAI731E
 jvQgRabIZ9b8spnnKcoj82TVNUisasYVlud3p6Wi5jk6NCSw6/ac0B059yDePHwnOHeR
 n8rvD9Sic0Z99tJ32rlnerVBaCVIWY9epOKFUUJWu3CPsp30mXcylKwZhCyCgf+TGggF
 mE6w==
X-Gm-Message-State: APjAAAUGRJxNvKF1UpFLVmn2SlRBsVE0HFG0I2aJwx8uQuFcGeBi5EWO
 IJnlFttIcNW+HyFeQ66plnWKkwYKdskLqw==
X-Google-Smtp-Source: APXvYqxry93M9d9N42zDox2abItlRc/ZRwvNbiZxMLdDc5EbQUonmPZpd1ymh1LA7g5ytlgPUoCg+Q==
X-Received: by 2002:a5d:530e:: with SMTP id e14mr10791323wrv.250.1578577951886; 
 Thu, 09 Jan 2020 05:52:31 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id g7sm8183285wrq.21.2020.01.09.05.52.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:52:31 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH v2 5/8] arm64: zynqmp: Setup clock-output-names for si570 chips
Date: Thu,  9 Jan 2020 14:52:19 +0100
Message-Id: <b1939b85c07be210f09a4fe60e91e580320def82.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
References: <cover.1578577931.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_055233_930236_E23E8B6F 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>,
 Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If there are more instances of si570 clock-output-names property
should be used for differentiation of clock output.
The patch is adding this optional properties for all zynqmp boards with
si570 chip.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts | 2 ++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts | 2 ++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index c96e8416fa7e..845671447f60 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -389,6 +389,7 @@ si570_1: clock-generator@5d { /* USER SI570 - u42 */
 				temperature-stability = <50>;
 				factory-fout = <300000000>;
 				clock-frequency = <300000000>;
+				clock-output-names = "si570_user";
 			};
 		};
 		i2c@3 {
@@ -402,6 +403,7 @@ si570_2: clock-generator@5d { /* USER MGT SI570 - u56 */
 				temperature-stability = <50>; /* copy from zc702 */
 				factory-fout = <156250000>;
 				clock-frequency = <148500000>;
+				clock-output-names = "si570_mgt";
 			};
 		};
 		i2c@4 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index ae62fe4287c2..822de6f04725 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -388,6 +388,7 @@ si570_1: clock-generator@5d { /* USER SI570 - u42 */
 				temperature-stability = <50>;
 				factory-fout = <300000000>;
 				clock-frequency = <300000000>;
+				clock-output-names = "si570_user";
 			};
 		};
 		i2c@3 {
@@ -401,6 +402,7 @@ si570_2: clock-generator@5d { /* USER MGT SI570 - u56 */
 				temperature-stability = <50>; /* copy from zc702 */
 				factory-fout = <156250000>;
 				clock-frequency = <148500000>;
+				clock-output-names = "si570_mgt";
 			};
 		};
 		i2c@4 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index b3c29947d6b3..022c732005ee 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -304,6 +304,7 @@ si570_1: clock-generator@5d { /* USER SI570 - u47 */
 				temperature-stability = <50>;
 				factory-fout = <300000000>;
 				clock-frequency = <300000000>;
+				clock-output-names = "si570_user";
 			};
 		};
 		i2c@3 {
@@ -317,6 +318,7 @@ si570_2: clock-generator@5d { /* USER MGT SI570 - u49 */
 				temperature-stability = <50>;
 				factory-fout = <156250000>;
 				clock-frequency = <148500000>;
+				clock-output-names = "si570_mgt";
 			};
 		};
 		i2c@4 {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
