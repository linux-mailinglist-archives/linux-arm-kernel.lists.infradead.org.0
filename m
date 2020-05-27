Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AE31E3A8B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=inbk+XZes0O0z8iA6Ta7bh1aFEYZ4Qw+6hlSP/wp1ug=; b=HpfYCct9aBKRT4E6jjjFwYINMw
	MVT9z8HCuoR9R1VdqSYsQpO9h+2BCSLcF5QaJXTclIQx5xulStopOTErkPaqUyDIN9H4UQETXgbJ7
	/1xmuSb/Rf7d4RZvhs23D2x8PspfSDvHZ4n1oQw+IighC48ZQ4ssNV1/GxwDBRZN32MJVGnVJMPRU
	Tf+E8SxoL5kC7bPKknvqwaOvKIDTbM5aPNrc7AsCgdpRta6rZXWRxdmPFr2wR8hrRiMgqbHhjs4AT
	1B27+ncTtZbC1HiUSUjjz3L2CA8L8swtFm4FDQsnhDRnnMvZ1u1wfeKxOcikA/+7Zxk1O7Jur1nz+
	hzHV+o9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqVZ-0004PJ-0k; Wed, 27 May 2020 07:29:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqU1-0003Hi-UH
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:28:15 +0000
Received: by mail-pf1-x442.google.com with SMTP id z64so6936460pfb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 00:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PCXZ/XVMi8KpMlGOTwhqCP9MMMe9ESFVI+WU4Q3c6Jk=;
 b=I8hUHZ6SxFDEwHdk7/zeDaW/Z2P4AkgiDIFUitVnXJXeTb+IOLeTPT06lLpHqELqho
 cHkEkrWucnwxAI4w9z7QW+3XmUv+zgx2u7kPK3azIIIrFymuAxKAL2rCyR9HUboYPkld
 wqT/JAKpZN3Rkjfb3iniOF3m8C5DPT+SsWECsI3JVppNGION1BhqoLc424/hjUYe+gdf
 MRftOfeBuYnUlGuwdnwN/mCbfPthTvj4rWFgrDhEMnFAMYruktb7ow5C9Bp8aE97DvLs
 KQvPaaw1ZLWNhbSOq9Ad9O1TOPc/aVPRXPBgmT6xw+CPz2EOWGz/sLi6nJLgN5uQ6Lj+
 DJNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PCXZ/XVMi8KpMlGOTwhqCP9MMMe9ESFVI+WU4Q3c6Jk=;
 b=BFIQP0vKbya3o0yl7Xyvu76hH/GdeQN/UmqaT3KTwHyX4vQKPMbJXkXp07GZHGjIOO
 AoG+ih1V/GdJSuiKogVdtL4rNYSe+bQkgB/QkGNOc1ocQHSdakVzF9kkfBdu8nQWFo9E
 bbpmJHYGFcZ9r6203fc7ZnXMDt71cZ+zwtaP11z2D2u3kh2WJCf8GksyNGRIg13GGBT3
 iiWgoK2G8xCWG/FrEO60RX2T/AKJkcpTANWMolWIbnwbKNGU/kH3/9tUn5GLVF3szOTv
 IllS5pNNrutdYIFeB/qk+Sy8tIubiPW0gZDjMvipFj5DhtjrWPPTGjJ0zGF3ujYaS2Ej
 vzpw==
X-Gm-Message-State: AOAM531AImRhGt+1tEIHt19aywJTb0E2Cx7GYidcJYTtcjlM/SILU6kC
 0CAs9j4SSIfClOR11WuGCe8=
X-Google-Smtp-Source: ABdhPJxPJhhSE88EJXZgUaSI8AhIFjINE/wSKKHD3Ql/J86dwwqEQCn2uj2TmRHGyg8Y6hFAjyIJXA==
X-Received: by 2002:a63:4b41:: with SMTP id k1mr2609543pgl.452.1590564491949; 
 Wed, 27 May 2020 00:28:11 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id q201sm1371842pfq.40.2020.05.27.00.28.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 May 2020 00:28:11 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org, andy.shevchenko@gmail.com, noralf@tronnes.org,
 linus.walleij@linaro.org, broonie@kernel.org
Subject: [PATCH v6 6/9] clk: stm32: Fix ltdc's clock turn off by
 clk_disable_unused() after kernel startup
Date: Wed, 27 May 2020 15:27:30 +0800
Message-Id: <1590564453-24499-7-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_002814_008689_AF7D6C5C 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

stm32's clk driver register two ltdc gate clk to clk core by
clk_hw_register_gate() and clk_hw_register_composite()

first: 'stm32f429_gates[]', clk name is 'ltdc', which no user to use.
second: 'stm32f429_aux_clk[]', clk name is 'lcd-tft', used by ltdc driver

both of them point to the same offset of stm32's RCC register. after
kernel enter console, clk core turn off ltdc's clk as 'stm32f429_gates[]'
is no one to use. but, actually 'stm32f429_aux_clk[]' is in use.

Fixes: daf2d117cbca ("clk: stm32f4: Add lcd-tft clock")
Signed-off-by: dillon min <dillon.minfei@gmail.com>
---

Changes since V5:
separate '[PATCH v5 5/8]' to two, add Fixes tags.

 drivers/clk/clk-stm32f4.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 42ca2dd86aea..fa62e990c539 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -129,7 +129,6 @@ static const struct stm32f4_gate_data stm32f429_gates[] __initconst = {
 	{ STM32F4_RCC_APB2ENR, 20,	"spi5",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 21,	"spi6",		"apb2_div" },
 	{ STM32F4_RCC_APB2ENR, 22,	"sai1",		"apb2_div" },
-	{ STM32F4_RCC_APB2ENR, 26,	"ltdc",		"apb2_div" },
 };
 
 static const struct stm32f4_gate_data stm32f469_gates[] __initconst = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
