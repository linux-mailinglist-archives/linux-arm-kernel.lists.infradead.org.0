Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C5D9CA3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24zmMiRfCSKzzBPd63wncMk6FHNCP630UE6mdtcz5NQ=; b=fr34RJUv8olmjD
	j9/VCsqqqHrt0Zpe6U446AOSB5DSYkUWDHAhAeGX5QCx2LPhLMkV1rw+T/5D1Kzbw9MGdqJ1kDzf2
	deQHLsA2M3N/S8FMXeewK1goXtHipbakHrErlOAX2FOpDC3DB9mCVdU6Z/X0cW/UIBtdjvLwiQOnb
	RCHzuenX58CfK1ni3hQSe6dtOyftkFEBTNIFHbhZEKCPq2sJsoM3iP8F7a+I4cSHVSaFUMQ1yGsGh
	a1N7UP5Gr3sR2wv6NC5t6vvzsEbTBWR9j8vhqlr+a4K3ANRHyc7Euj3rIjUNlZ1uptGmDEW6uf4mG
	dNEsqSqfA+D8i5ZVu6mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29Oj-0001JU-2L; Mon, 26 Aug 2019 07:26:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29Nq-0000yO-8u
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:25:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id p17so14227269wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 00:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CGSQN1D6LMdbmgRSGuE1QGkShUk3nt2JdTILP9Ti30I=;
 b=qT5sO3/VwNLT9TYqFJpq3GUIhwypqUCsOJYUBM/JGzJ/gCpXWQiNF1AM6Gi6hIqIsH
 W+DNZxpwQSlQ/bWfL5331VrESChFxdIa8OBRlfuGlHAfYIZThkf6SUCakQ499aGtoD8A
 xlRZGuz8leZeFBkz6lF+U7393CssphmGpF7rznn47Pg8bxx+9aMs1ws/oeRbl7qKpigs
 SARsEA2jq6l7cLv0phk2SQ+9ynqJUrdGdcl795ULoIayT2/b2cjA3BCNFkdbAzZgcpfh
 wyQ52xxVMQIlDFGRwLQaTMEjziHECD024y92rUV/T4MldmvJisruNiWMlWqgXxlMuIw5
 5CSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CGSQN1D6LMdbmgRSGuE1QGkShUk3nt2JdTILP9Ti30I=;
 b=L+oOG3gf1vLpOoRsfivzNB89D308WxRPJWWonf8c1dpnLFQVL6lFE2VQedzJh25mSo
 d7jJN0IzDThpT4+dPTb/FibRBllTo/+cTFf1EwVIWJvXON5UsK+hTGdrg/2yKhjd9n9d
 Uwm2CLL8eHQS8tIs+CNkgkWbBCzBazZjOUfrOckVTk9RSMPpSo+VShAzWARPBV4Zk4+I
 +fHaTeV3l8lw40D9l4xSbPX5n5PQ5DnzFIBqAawLofuTvJkUASJ7pW/Ws9jNwWyeZAwC
 50SNZa9joWYgtRNboe+MgBqUIZ9FYXeqXd7erj2s9CNlIeWj7cBw5s4GN9ghbN6h1RZm
 5iwg==
X-Gm-Message-State: APjAAAUdmXIl6H1UmdgjAyfu4iyQmp7aaTD8bZaUMZ3NhPIVAioNOFE9
 8NrF+nbDoimV3xpFW7t0e5VrMw==
X-Google-Smtp-Source: APXvYqwlbtNtWnQBNuZa6LXcquUhpElWikUs08sQ+LU2PHstPRCWiPiyF+S0J+d1FpO1H6bp1Vu7DA==
X-Received: by 2002:adf:e4c6:: with SMTP id v6mr19549498wrm.315.1566804344540; 
 Mon, 26 Aug 2019 00:25:44 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm10821324wmg.45.2019.08.26.00.25.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 00:25:43 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	jbrunet@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/5] dt-bindings: clk: meson: add sm1 periph clock
 controller bindings
Date: Mon, 26 Aug 2019 09:25:35 +0200
Message-Id: <20190826072539.27725-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190826072539.27725-1-narmstrong@baylibre.com>
References: <20190826072539.27725-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_002546_366847_F73B6534 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the documentation to support clock driver for the Amlogic SM1 SoC
and expose the GP1, DSU and the CPU 1, 2 & 3 clocks.

SM1 clock tree is very close, the main differences are :
- each CPU core can achieve a different frequency, albeit a common PLL
- a similar tree as the clock tree has been added for the DynamIQ Shared Unit
- has a new GP1 PLL used for the DynamIQ Shared Unit
- SM1 has additional clocks like for CSI, NanoQ an other components

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Kevin Hilman <khilman@baylibre.com>
---
 .../devicetree/bindings/clock/amlogic,gxbb-clkc.txt          | 1 +
 include/dt-bindings/clock/g12a-clkc.h                        | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt b/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
index 6eaa52092313..7ccecd5c02c1 100644
--- a/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
+++ b/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
@@ -11,6 +11,7 @@ Required Properties:
 		"amlogic,axg-clkc" for AXG SoC.
 		"amlogic,g12a-clkc" for G12A SoC.
 		"amlogic,g12b-clkc" for G12B SoC.
+		"amlogic,sm1-clkc" for SM1 SoC.
 - clocks : list of clock phandle, one for each entry clock-names.
 - clock-names : should contain the following:
   * "xtal": the platform xtal
diff --git a/include/dt-bindings/clock/g12a-clkc.h b/include/dt-bindings/clock/g12a-clkc.h
index 8ccc29ac7a72..0837c1a7ae49 100644
--- a/include/dt-bindings/clock/g12a-clkc.h
+++ b/include/dt-bindings/clock/g12a-clkc.h
@@ -138,5 +138,10 @@
 #define CLKID_VDEC_HEVCF			210
 #define CLKID_TS				212
 #define CLKID_CPUB_CLK				224
+#define CLKID_GP1_PLL				243
+#define CLKID_DSU_CLK				252
+#define CLKID_CPU1_CLK				253
+#define CLKID_CPU2_CLK				254
+#define CLKID_CPU3_CLK				255
 
 #endif /* __G12A_CLKC_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
