Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A3820049D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJj/15qECILlLsy0mou01qmSY1pTRi/Wp/5nz5FcwWk=; b=hBCIRTWtzdz24A
	y5ASK5itxpACF0o4doQwKQLMIUw+CPJT/7TBI+XUy0sMbBuw23gGmGfWqkER3M90Wc1fAdnOoQrHU
	vzQsZy2qmRGGRYKcU1IHwP3BMPy87uMLABEUhfb8XPwkIqrQtAnK0qGDvRUajolQCH4nxINWBGnRM
	qcqnoRKcKQLca6hqDksDKSd4tBVJ+Eh6XexzLpj+9bECwgNEaYW4SPc2Porw3tIubHMqfCjuT69Dp
	KZRq8kFtWQz9Fcasl3y1VaXKhfmwSTG+e2/CdrL02pALLO8Z9nK6lSmmT1r5OnsEBbVnmqNRMElIE
	72bb/SV4n2tGM3eH4akA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCzl-0004BZ-MD; Fri, 19 Jun 2020 09:07:33 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCz8-0003jQ-I5
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 09:06:55 +0000
Received: by mail-ej1-x644.google.com with SMTP id mb16so9416031ejb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 02:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EF3uQr3RQED1YKYkNKEVE2Xoq5JyRRd7hiTR6pRsTG4=;
 b=hbsAZmXNE2TaOrADyfhZ4LncxAlKOcWNbKLbDeF2rsahruJQCNzLprdZsGdbsUDjbq
 qrzTvHV7mlFcoGs5wRL1DmgYNtpfTYJn4yUmv3wLcxZn6ifXoTmBYaKDalxxjprE4H75
 OFcrYnlQQb3DyBgekcLt/QElT7wo5S4Fx2JoOrZuAHEe640Rad0m9k1WfJvRz++zkTS7
 c4Xc2hdrnjqNTUCgQk4kqi9gGZAT/y0MHgN+y3t734xefMs29v8NjuC/JpsypOd6R2t4
 Si6ZesNDYvk6F49qAjkeO/QV73MqqosehLo+mhVjGQDVaAiRozB3VWBJFDg8zbopksMe
 ClXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EF3uQr3RQED1YKYkNKEVE2Xoq5JyRRd7hiTR6pRsTG4=;
 b=AGN34qJSCD9E2uAFLAO4xH3bpAdbRm5/bPWjGlMdLRIFAcBjNtcP3HGL4kiF2grjDt
 M3jg764bD1si+RaE2Ter6AAyT1VQqbZDyCdLqSeFOY/PV39L967y8m96m34DMmg1cL5T
 SVeo3+iGfKEs9aOGUMAOPnWC2Offs+w+q+5u40a3Eovp52Q0Oh99mu5qg4yujaRZB917
 zpPQYcxatMsP/7bZTxBGU/yh9qYCWRPFVGguiu2i61mn+3TdGoBUCnKZ+8Vv5me71eMM
 NztyyIKDvO7d/b9615ljOBKNy3/gb8a7QCNvCP42ILf+xw77PSkJWG/xzX01tPDVTZ+f
 b7pQ==
X-Gm-Message-State: AOAM530h7eXxwiqBKkzUhqHM1bR/9aGYPW+0rhnQTv0x+QrKcKSQS//5
 1gBD/7TfbeDzRpsfA/FMwOcQtKmsyhG2qYMv
X-Google-Smtp-Source: ABdhPJwcHprUUq00PuchIFIQbAmYwvW8uI0PLiIJTeBXZedE5iHqZtnO5Gza2w34X9TiFWfp14Ftgg==
X-Received: by 2002:a17:906:2615:: with SMTP id
 h21mr2624881ejc.84.1592557612232; 
 Fri, 19 Jun 2020 02:06:52 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:16b8:5c68:7901:5c06:6064:338b:4004])
 by smtp.gmail.com with ESMTPSA id dm1sm4653650ejc.99.2020.06.19.02.06.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 02:06:51 -0700 (PDT)
From: Drew Fustini <drew@beagleboard.org>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, devicetree@vger.kernel.org,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@gmail.com>
Subject: [PATCH v2 2/3] ARM: dts: am33xx-l4: change #pinctrl-cells from 1 to 2
Date: Fri, 19 Jun 2020 11:06:07 +0200
Message-Id: <20200619090608.94948-3-drew@beagleboard.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200619090608.94948-1-drew@beagleboard.org>
References: <20200619090608.94948-1-drew@beagleboard.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_020654_648471_29BA289A 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Drew Fustini <drew@beagleboard.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This requires AM33XX_PADCONF macro in omap.h to be modified to keep pin
conf and pin mux values separate.

pinctrl-single.c must also be changed to support "pinctrl-single,pins"
with 3 arguments (offset, conf, mux).

Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
 arch/arm/boot/dts/am33xx-l4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/am33xx-l4.dtsi b/arch/arm/boot/dts/am33xx-l4.dtsi
index 340ea331e54d..f9b99cfa93b6 100644
--- a/arch/arm/boot/dts/am33xx-l4.dtsi
+++ b/arch/arm/boot/dts/am33xx-l4.dtsi
@@ -290,7 +290,7 @@ scm: scm@0 {
 				am33xx_pinmux: pinmux@800 {
 					compatible = "pinctrl-single";
 					reg = <0x800 0x238>;
-					#pinctrl-cells = <1>;
+					#pinctrl-cells = <2>;
 					pinctrl-single,register-width = <32>;
 					pinctrl-single,function-mask = <0x7f>;
 				};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
