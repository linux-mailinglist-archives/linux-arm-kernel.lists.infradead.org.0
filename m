Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FF5D8534
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 03:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=av5QrWbipTO7nduB5u0B9CKNg4Zkn75XJdTx0Cy03ec=; b=ZfJlJKDC4GDVV7MSQO0R/Xte5F
	5IW336lhKftse3LCvvFhPR+cZOyv0IvcTCTR23QLbkBfKiG1w4PdRovyh8CZ2gl19uH68A0SDg1i2
	w8Y0cbqn1fff6Pfszl+Jg/N4QPgL3QGx711P6+UgHmvR7HIBRauajkMS9MEtlF6YAU4zn5RDbbH2f
	YytEAOew6OMHOFKS1O8gBTUr+f0PAN4eNqzHOvXIQi7ncanmhE1iO8ROdPyRnvlqWEA+5A3w/4WdB
	NHRmnLDy2XMLfxZCEFoOZNsajsYjmFAb1MUHW2qm5omzrUVOn9vnPSIcuwKlaXF7cAMzO+8day+J0
	dL7DVXFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKXlT-0003hz-MI; Wed, 16 Oct 2019 01:06:11 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKXlG-0003hb-4E
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 01:05:59 +0000
Received: by mail-pg1-x543.google.com with SMTP id e15so5193861pgu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 18:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZGa/e8ScYFo0O0ofE/HYTLUJXgs85jMHJAoOtTpoL4A=;
 b=s8542C+T1nvH48+/1s6d3Xekjoe2EDEc+K6WurUBiDeTR3Nghfdcrf7bDoH76cOrtY
 4TjcKrfCtWSmiVTGaNU+g/vOKYFE/N9iHkJv51qPAKJjKED21ERvREaG5pxAt1qezxmt
 VIpE9b2I5zkSqk6IQXIRc/lHK3fFho0ZQ03XMh0R9UhbORRgE4lN49XfzAjfbLm90yAv
 3Ac4jwRxX2rvfR0AnFUElfc/nKLj3Pl2ZLZojkWa4AhWuYBpTKijvwKjG8tKDQ96DYh1
 QhT0dyPv7CM/g798VyLVKCHDicsjKiPE9XlRwRrzBVDniK1vexzQDDfDvYUMhzMlcr4g
 z4Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZGa/e8ScYFo0O0ofE/HYTLUJXgs85jMHJAoOtTpoL4A=;
 b=YgbZfWc1nXJmgmx2s0CTxXkLkiBENxeBsZmaxS5AnQIV2Q6nnPcaujw+POqMViaCPd
 J6Rf9ZY6/DtXZCMsVIiA7rr39U3Tt+DpmW4NwXxQAWaibUY2vudqMjLnFKHRIq24C3/Z
 +omnxFXEw824i/e2KVVXS0LFeMzSeFg4LOLRSK3Zj4ADCqJdZiIw74r/FtjngBgVb0YK
 nhu7eGWqVqcEUFHNaE+A21iaJHIicqh6eOeAaNzK19kX98zBC/iKLsGA5L8+Xom1r9jP
 5a9Snv1OBbJIMbnXV/3ab+bZ0WxLKgqscf/1SXFB3pgcAfOUgy5AJmeLysBWf+i/MDaq
 MWHA==
X-Gm-Message-State: APjAAAWyRn64mjLp2RHLdFMUKoRxux8ZOE8NaUWjbDV2ShSrN9JS9s7P
 PKGkqxkMPH3J/vHeH7JwH08=
X-Google-Smtp-Source: APXvYqya1S4ppX7c9j/nZ9F987416mfu5NR9idjjbi0YlAVSoDy4n57Uews0z1b09VTxy5KpMBEWKw==
X-Received: by 2002:a17:90a:d991:: with SMTP id
 d17mr1654428pjv.73.1571187957506; 
 Tue, 15 Oct 2019 18:05:57 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id n15sm453714pjt.13.2019.10.15.18.05.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 18:05:56 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-kernel@vger.kernel.org (open list:CLOCKSOURCE, CLOCKEVENT DRIVERS),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE)
Subject: [PATCH 2/2] dt-bindings: timer: imx: gpt: Add pin group bindings for
 input capture
Date: Tue, 15 Oct 2019 18:05:44 -0700
Message-Id: <20191016010544.14561-3-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191016010544.14561-1-slongerbeam@gmail.com>
References: <20191016010544.14561-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_180558_166001_0C4B0892 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Steve Longerbeam <slongerbeam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pin group bindings to support input capture function of the i.MX
GPT.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 .../devicetree/bindings/timer/fsl,imxgpt.txt  | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
index 5d8fd5b52598..32797b7b0d02 100644
--- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
+++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
@@ -33,6 +33,13 @@ Required properties:
            an entry for each entry in clock-names.
 - clock-names : must include "ipg" entry first, then "per" entry.
 
+Optional properties:
+
+- pinctrl-0: For the i.MX GPT to support the Input Capture function,
+  	     the input capture channel pin groups must be listed here.
+- pinctrl-names: must be "default".
+
+
 Example:
 
 gpt1: timer@10003000 {
@@ -43,3 +50,24 @@ gpt1: timer@10003000 {
 		 <&clks IMX27_CLK_PER1_GATE>;
 	clock-names = "ipg", "per";
 };
+
+
+Example with input capture channel 0 support:
+
+pinctrl_gpt_input_capture0: gptinputcapture0grp {
+	fsl,pins = <
+		MX6QDL_PAD_SD1_DAT0__GPT_CAPTURE1 0x1b0b0
+	>;
+};
+
+gpt: gpt@2098000 {
+	compatible = "fsl,imx6q-gpt", "fsl,imx31-gpt";
+	reg = <0x02098000 0x4000>;
+	interrupts = <0 55 IRQ_TYPE_LEVEL_HIGH>;
+	clocks = <&clks IMX6QDL_CLK_GPT_IPG>,
+		<&clks IMX6QDL_CLK_GPT_IPG_PER>,
+		<&clks IMX6QDL_CLK_GPT_3M>;
+	clock-names = "ipg", "per", "osc_per";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpt_input_capture0>;
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
