Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 352471CED9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:05:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fmjI9dCpkI5jERE2++btX00TFLFhalaC3PTHnv58Ks4=; b=m4fxDMMrrepJYD37SumeJRXq9Q
	p/OC4MiqzXy7owTugamKPB5W3JGnxvrcrfEJ7EKwvRYbyKiKwv5TlF2JC3YqD59cvDUYPaJz7o/pG
	YknVw41ctPUjb6eDYBwAv98eOLvnIsQYJ0/9pwNl1YJ99EwvltE7upJHTCiB0c1L0cOMVa2bNGl19
	TzD9fRYZkECgURczRVB/tx50ZjNw1ckxUhQe6VybAB0bJ8OmsDtI0a3j2TH7HfvKzBsCuPUMkNhJW
	My14CBJoKTzZnjM1bHQl1MKnwk0MbgRXt4xIWQy3rEFLnMYLbs3vFT1y9vKdM2Fv9W8ecbLKrZLZk
	8XP850jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYOyG-0008Vi-O4; Tue, 12 May 2020 07:04:57 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYOxT-0007ph-5V
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:04:09 +0000
Received: by mail-pj1-x1044.google.com with SMTP id z15so319427pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 00:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cPYlxJhfKmWtbP4a2dRiIg5n9Tzb/bTlK0+j+KORUjo=;
 b=fJSL2ofei13tcbkZZb/Pr2NnHzs1Y2rSHpEwbHjNlqAa7o8IvZixYeWVN0GwMPsg3e
 NxAQzgeAo4o4vpJAckHUOcH80IP1TYeqpPIGlXUVpc42ex8nU7V6rEYV9TBblsrf8BEC
 HUIAaYhUqYBYn9phOtOrgDq3qusl55w6vxMQXl5OXAtVE1omAufTXfeTU4xVweno/ouS
 68tFoeeXP1DdaqcSkvQo++6sfqHAGqbOkBYkn+s2pyoxmE1/GUPGaOX333CbZjrumHIZ
 +/nrG+kam+ITLvosujZ2z0x8Ewa1/gON6f49XZfUVM0/KPLnCoXNaubyBmYyyCX5Zkp0
 /6rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cPYlxJhfKmWtbP4a2dRiIg5n9Tzb/bTlK0+j+KORUjo=;
 b=J+fXSaWaLSN2js+89ooaMiu7imMvblE/0roVV/z2pIEllVfI66O9O6b+fus1onsyfJ
 fVuZw0XbVfS3aFCGroJVdUmSIdG8ioVDLVm27Voj1la+zwppUBuW6cXoi/qhl7+s/erZ
 3gxox1LyV25JuLyfuRGtjfFhGULrFI7LOkhygB20a+Hx7+EmEfMvDTECXnAtqZKQYtOm
 xZLMfd9R4gBu+qmdzIMfep7rWy4x4eRzqXSHBSlK/zNwUn72xCP2GKKai5DSC6mUGndL
 ToFxH6YcxIkZcuGCkPep8Lo4Ik05FMjdp7qBMJOkx5WOcDtW/74b/5PCpv8Js70onGZd
 iJ7g==
X-Gm-Message-State: AGi0PuZAGDvV62ucPN/EeuEXF0+DbrcP5tWCFFzz8Z1mTh8t5Gh0pNgT
 Xj/KnL4OjFhUhGWt4h4QOUM=
X-Google-Smtp-Source: APiQypKswW2iqMgYeLIiYULPyqI7RQPh0iMAPiCh2qROGM6rAR0Y5+8mNaNz5BngqvD9sBNfVV306w==
X-Received: by 2002:a17:902:8bc5:: with SMTP id
 r5mr18978437plo.218.1589267046097; 
 Tue, 12 May 2020 00:04:06 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id 62sm11016369pfu.181.2020.05.12.00.04.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 00:04:05 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v3 4/5] clk: stm32: Fix stm32f429 ltdc driver loading hang in
 clk set rate. keep ltdc clk running after kernel startup
Date: Tue, 12 May 2020 15:03:36 +0800
Message-Id: <1589267017-17294-5-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_000407_454998_477A73F1 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 dillon.minfei@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

as store stm32f4_rcc_register_pll return to the wrong offset of clks,
so ltdc gate clk is null. need change clks[PLL_VCO_SAI] to clks[PLL_SAI]

add CLK_IGNORE_UNUSED for ltdc to make sure clk not be freed by
clk_disable_unused

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 drivers/clk/clk-stm32f4.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 18117ce..0ba73de 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -129,7 +129,8 @@ static const struct stm32f4_gate_data stm32f429_gates[] __initconst = {
 	{ STM32F4_RCC_APB2ENR, 20,	"spi5",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 21,	"spi6",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 22,	"sai1",		"apb2_div" },
-	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div" },
+	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div",
+		CLK_IGNORE_UNUSED },
 };
 
 static const struct stm32f4_gate_data stm32f469_gates[] __initconst = {
@@ -1757,7 +1758,7 @@ static void __init stm32f4_rcc_init(struct device_node *np)
 	clks[PLL_VCO_I2S] = stm32f4_rcc_register_pll("vco_in",
 			&data->pll_data[1], &stm32f4_clk_lock);
 
-	clks[PLL_VCO_SAI] = stm32f4_rcc_register_pll("vco_in",
+	clks[PLL_SAI] = stm32f4_rcc_register_pll("vco_in",
 			&data->pll_data[2], &stm32f4_clk_lock);
 
 	for (n = 0; n < MAX_POST_DIV; n++) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
