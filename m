Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4041C7CE9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M647pWg6+tsekzWZ3mhDpZOvRF/ucSEZpf1brx1/myQ=; b=MF4iGp/QiOJxeM
	Q24ochvsW7/FGi0ZyC1hofO8qrV8Vmp4PxwvlJxjaCs31b3kfZT00AZ+4Rb5lhADrtSp6zgz1Ox7K
	6KaxCLzCZt6Fj5/AxpxwdoH1cmLa1hCO4frl7lonf3P4AHTX7IelGCZmSzxlGzWI4K2BRNBE73dxc
	8PuPduS8tYlmEHLw5qDnnbeB1+vTRaoGJ/BVFM/7UlMmMbgK0O4Vota0pjWoD9kG2jkVZsYC+l6gt
	2+q0+wsuYkLW0/TlXliQ+780QDmTk+EDvim0UB/WE0EqKj6IqCsRooDULQYFBZNv20eIThbXp5gSa
	jUqHTvLZwD9ymKh+4spg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvGJ-0006SP-Fo; Wed, 31 Jul 2019 20:31:51 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvEQ-00037P-4d
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:29:55 +0000
Received: by mail-wm1-x342.google.com with SMTP id f17so60979657wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L4Ts/ADGL+hlApCzzDUm7Jy+bE8lRcdVudPEahwDT9M=;
 b=BSdFLXko4tVMBjHaKYaYHDL9izB4mIFPGUBL4Fa5eQSpNQs2dg4NaxpNg0s7IFH9sW
 soR56XqbKMufRYSoRIyNxV5EijMg23s/ZfDpoGeNIRMSZK9hP3ImW8zG7Sh+vSfy18N9
 bCGOAfBSwh9/3EXyTgv0Vt13l6xwNA4mI0fPBtXOaIG60kSxtuAxmHpyIu3js/+vHH8+
 +ttjzR5Ci15+dszrOt7k5QPbmylx6risjovnrY9KlZleLOpnx09q4sniuDDwMN/BOyrO
 7ndmtgG3t+ML01kw0Yccm+dKWzvXV4hbTNXe9inkVPX8T7vSUgTXHqnt212uI+DWSNPz
 0BtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L4Ts/ADGL+hlApCzzDUm7Jy+bE8lRcdVudPEahwDT9M=;
 b=IjmL/HQq+gec6S/BUcg7+VKAf7TJicxUqYrGX9fI6psWkH5AaKuBz8NALpxqWdL4Dy
 DBBTjJkT7bAguBvp0LsYrRTijI7Yej2gwZhy64FwfMmbLuk3jVP0uUZvDpvpY+aQ7OmT
 x692t73aP9OnoPvtxxLu6hJqhn94XkmMKdcXRLTujiIw4Y17bUluGJPTvfVXBAokaUtm
 vNfjQAE2EU5yp4IHDgWezoZ7H/zGKqtsJL/cJ8gDMsonB0//z24KRsS9fZUydhYEeKTe
 BsEvagvGSIXs+Mujk+s5hwr1yFWVW4ntE8Ro1lwCEOxAE6DgwshRs0yWpIR0J/TYB/L2
 N8lQ==
X-Gm-Message-State: APjAAAWNobM6ooGgTDn6J4UDI/R3Q9AueSAAZdCxPZO+elmAKgwdPqWg
 WwS+AqeDkBv+tUPGn5Sum64oXA==
X-Google-Smtp-Source: APXvYqxchPbC3pvyGV4L0/DUhLZFXfOrdyYu2d7K+NuJc5EcWOHR9bxr3IVmnhGW5j3Lcy9EhRXVPg==
X-Received: by 2002:a7b:ce8a:: with SMTP id
 q10mr106546229wmj.109.1564604992885; 
 Wed, 31 Jul 2019 13:29:52 -0700 (PDT)
Received: from localhost.localdomain
 (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:29:52 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
 sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
 will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
 heiko@sntech.de, sibis@codeaurora.org, enric.balletbo@collabora.com,
 jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v4 10/13] arm64: dts: qcom: qcs404: Add HFPLL node
Date: Wed, 31 Jul 2019 22:29:26 +0200
Message-Id: <20190731202929.16443-11-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132954_418226_26972900 
X-CRM114-Status: UNSURE (   9.34  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 3d0789775009..3714099306b7 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -859,6 +859,15 @@
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
