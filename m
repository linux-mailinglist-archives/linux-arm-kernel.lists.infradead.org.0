Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33929245B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:45:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xF7h3W+h4MrOY4CHvXjobBK3AXgmFwiQt0tBsaaS+/0=; b=nUIChWyZqsJsKm
	+FEXH9FzvV4sbyigTf/nIHTILkp/MAk8uQATypdjh74kA0C4TdBT5ipiBye/MwrZZhpV4bb1CbNyN
	9QBvdCxCEUtDHr/vlQHTntgMO/2hylZsw24XtFsIe5O5zBFkk4ee6YAlN93qPk/wrwordhkiNXXey
	VI8LmHINTAfzF+6MqDtIyEk3VYgMrSlXyqPjWBonz9gLBgAe4CweRNuR0dZI9ZEG/lSQwlLPRM+a8
	UdZORUkubTbMQ/5iO8K8KFTlnO21MQYHwSNJtSWq5OCYs9JaG89JWXesOlnvRZPI3aD7q/xilgj6C
	0li6+q00oJ/0dhEIxBWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStpx-0000YX-Hg; Tue, 21 May 2019 01:45:05 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStpk-0000We-VB
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:44:54 +0000
Received: by mail-lj1-x243.google.com with SMTP id z5so14258960lji.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IIahErT+Xk52W8xom0sRAAntlUCIVUf6X8wGeA51Sfk=;
 b=XLO0P6Cn1CpOrDkF1ebDNCtYe3ZPdScdnkUPEBUSUjjilL4vrzB1M4XN7Q73OIblvB
 dz6uhpyHDoPCLkd3epatMltKA84nJxvf/KvTj4ge58dwubjOFhuw62ncM/5FMzc5sHmV
 f1uecTKM4HnJM7D2L3GwJ5I4T6CmthmHgV/ACUqcZ6RoBa8oYJnRdnUSwUV4pePqcmo5
 jOsg+otPK3vImcTVk+/1op3xFcbMZYDDMV1i9+aEY/b94nPdQAmaj0woxNXNoqriPKC9
 fAPs8Vm9k14C1neqA2ki0p1rkFV4E4wjX+S0uxkD/BDUep9xv8T0PJps7mBVHgnyK5xL
 51yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IIahErT+Xk52W8xom0sRAAntlUCIVUf6X8wGeA51Sfk=;
 b=nEhw1dmnodtY6BBwL+ZMgGsGKufQBSqBeBXv7vCKf9RN/LhRRklhi3Md2DN4rRb0IB
 bfduiNalCDNvJC5Hvh0HL3eienqz5Yw6svYpDlBqLl1OIbVlYV1f6k/0fURsoaE5RNDe
 ihgifC0+zL5f8+E8Rws5K9rfWldTXgNpXHre8V3S9aCC3Bb761tDF7DIXCW0co2izgSu
 a1c8wBsnlk5yOHY2+Nj8jjmv1wPFTMCWPVUkN2d1eMygvVoojGRornpU6OQYMyHNWSVI
 JvsHO6rfldPsCVv3gg9aKBahQ4ueQzS1XakGSrVcytegESYV3+Pk7cHmFWzgqzVpmqg4
 rFFw==
X-Gm-Message-State: APjAAAVYeku4fL2Ipx9D/VsnvfY6nrW3rA+kPuCla8uOAoRafCDHsq28
 cSl3PgLaVMeSchEKtgDJfgfTnlmZmZc=
X-Google-Smtp-Source: APXvYqzuW3h0XyIWAWwtFFYE83ZrRKa6iHzWV96IY74qjiDpMb3whZiKuKpMPh2zT3W0IbN/jqaBbQ==
X-Received: by 2002:a2e:9116:: with SMTP id m22mr513501ljg.12.1558403090820;
 Mon, 20 May 2019 18:44:50 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id z11sm4232194ljb.68.2019.05.20.18.44.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:44:49 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] ARM: dts: integrator: specify AFS partition
Date: Tue, 21 May 2019 03:42:18 +0200
Message-Id: <20190521014230.18463-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521014230.18463-1-linus.walleij@linaro.org>
References: <20190521014230.18463-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_184453_005970_A8D89C5A 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This activates the code for AFS partition parsing on
the Integrator.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/integrator.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/integrator.dtsi b/arch/arm/boot/dts/integrator.dtsi
index 1612a869a4f7..602f74d2c758 100644
--- a/arch/arm/boot/dts/integrator.dtsi
+++ b/arch/arm/boot/dts/integrator.dtsi
@@ -62,6 +62,9 @@
 		compatible = "arm,versatile-flash", "cfi-flash";
 		reg = <0x24000000 0x02000000>;
 		bank-width = <4>;
+		partitions {
+			compatible = "arm,arm-firmware-suite";
+		};
 	};
 
 	fpga {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
