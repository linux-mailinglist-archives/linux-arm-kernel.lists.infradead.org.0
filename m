Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DF8D4B34
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 01:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cifEZAOACy6GsbmJqJshc9SmblAjmbSMvHMHo6a1wuQ=; b=rU0DFnwmXu2/39
	XGj0kWns4P3gyrmYjm1IJk1CoocWwpVN8fSISEd2cFwaIc3s6btWeARiBgkyrLzec5DIuT5Bzz/vO
	ryl3YEG14G5iBwGJVFgJ7HTFCM+Wx+7fQhwPdIwlG4Ed/Ukzg3f40sE2RIeYD71H1lyj59l23PKnZ
	vfrEmWAattAwc5eU4ulKoRXMLpqHuWPEelg/bL00pp2f6/esvtWl5GroyX0CfyW695I3NKhuvJ8FH
	2KmzAPlI+7TLyqhrswhM0vcErmz6XE2H8zQzegkZ4Q1GzRhIW8xTOsB5mfP6Lnf228RF+X+6Q3kzt
	XQ6WsIdon1XBUpPh7CYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ4gJ-00033z-SW; Fri, 11 Oct 2019 23:50:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ4gB-00033P-IV
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 23:50:40 +0000
Received: by mail-pg1-x541.google.com with SMTP id 23so6661378pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 16:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EgtZMQuv8rVlaVgRlgv5EqHSKVxfWJrgFI1xeOtDznY=;
 b=Q+ZBRH4JMLVEz3cKNEBDilBpczI3cAfNTxVUQ0GmOaaYQMrnhMpBpG/oMkEbPv6Odf
 8GGYfPNZshLNysepMYmTkT+3aNAgXugsY1CpHbIdxbtdrQQ60VUYCVdhNKtGJPZ9XNmZ
 yeC9ihKcyyHJaIzy1EL8IqBelW7q7XUwmg/Hj26mRmV0FwdkKluXBx8bn/qC4si8Txjq
 BJcMrTQsWH7JShE3N5uQdrbWPaMlnQ7E4TerYqhVVbjckQYF1dRgiIH2UwHVA4jeybRa
 ct5jnHOzbs9B/OYFzSNZbT3pquua3lDioCSE2rTR4TEhQ2ocWM1R5k2um3dsc3fczhsT
 9efQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EgtZMQuv8rVlaVgRlgv5EqHSKVxfWJrgFI1xeOtDznY=;
 b=Yq3ch4HB8DJjguzR+31ADCL3efP4879eRc2+IYunkm6XWBfZdM75iwJL6f5ep+U97d
 zelAfCyemfE9qqPHZKw1ve6T7pXR4mOfjOuwXA9CIO87nTMZY3RsuNrdwl4zlX6o6o00
 2C0A4azKQFOpIqg8w5jrTAZhoOw5hHG8T8rq3r4QJEtXzFO50UiH8HjPCQvq9XT9LKSi
 44V03JJW+n0WwOi2jQraOtlYM9jnHvxT2AP2Lg4030W22d4w0czjeBVTRuoWosIZtA05
 V8D/GVWEP9cElqQ3S46cSm8mCuXcivTmZiwJ5/nKL2cFryZY43/LX37P+x3GcoJssZ/P
 sSWg==
X-Gm-Message-State: APjAAAWFxKy9NJwpDEh6ARqfKXgqgELKanSrA5XroYWbh+je8yyPlRAz
 xz5m5ugGYBTBf0HuY7xc6zE43Q==
X-Google-Smtp-Source: APXvYqxyTECy/5ImThDv0fD4LqF+cLTW2tgyxri1a1OulnP2BTV3jWbPhAnqE9psBlNscebeW3EiBg==
X-Received: by 2002:a63:a357:: with SMTP id v23mr19518356pgn.383.1570837838628; 
 Fri, 11 Oct 2019 16:50:38 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id ce16sm8784551pjb.29.2019.10.11.16.50.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 16:50:38 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Olof Johansson <olof@lixom.net>, Maxime Ripard <mripard@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Anson Huang <Anson.Huang@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH] arm64: defconfig: Enable Qualcomm pseudo rng
Date: Fri, 11 Oct 2019 16:50:35 -0700
Message-Id: <20191011235035.374569-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_165039_615242_448C084E 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most Qualcomm platforms contain a pseudo random number generator
hardware block. Enable the driver for this block.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a5953b0b382d..688c8f200034 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -855,6 +855,7 @@ CONFIG_NLS_ISO8859_1=y
 CONFIG_SECURITY=y
 CONFIG_CRYPTO_ECHAINIV=y
 CONFIG_CRYPTO_ANSI_CPRNG=y
+CONFIG_CRYPTO_DEV_QCOM_RNG=m
 CONFIG_DMA_CMA=y
 CONFIG_CMA_SIZE_MBYTES=32
 CONFIG_PRINTK_TIME=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
