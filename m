Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A57CF1FB30B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s1a5yWFwZIVWyMF3sKheYKBlcyjtcyAc18zwIx9tixk=; b=Cjp5dvdC9UtDDm
	6fo+znM4Rw/3BPzsr312WX83KxkgDvjE4V7zEjVOugHW7GoLi8xfqK3zf/nsn8rlwd4Ql1xoafp0N
	6IJMebqZxDbTpXr1bkCcPKkKul8p39RlBmNpXwohMfuM2S+vdiY8ROoAxw5UFkdkqzLM7M9jeRXPb
	MMZgWRG5Hz48KgOroV+WbDIYLELpUXxeM0AZ1+mj1Gu6U73+gU3JSRebCskJ6J06FozuuU/UPMEUc
	XjNJtmH6/vrFwC2eeYofTh27F1WRibvR8JVllCXLRRwBkrF6TsIGp3qlYXJTp7c51+q8F1lPgj0bl
	LTgk7+J39QYgB1W5f1AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC66-0006F2-Td; Tue, 16 Jun 2020 13:57:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1V-0001Jm-Sh
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id f185so3159543wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pY2kP8QaLCgM9u5xuScF1WBRP6jpC7y6DLBKjAmpX6o=;
 b=VTca1UDWHTX77gU57cx6/hNUlHYLBsgnw9+ftt2tDVmQmcfmb5r/SLrzbfVZfMvcIp
 Xsng1EHW3Q/OEaEHKVOZ20asRi6gZhVAV8CuuGalt2xQWDb4afQ6+vZ32wsocAu+vTkT
 9lXdceT+ou/cZVzb1QyDfgvVyN3pyKdMnnCyTe9vUKn+XjCz0W6vVgDmb7kgOpelQb1A
 34mi4/rvDndOjaMr++0u+xaHlRCGj504dJEiCc5AxNKyXVNwMmIlN2An1ZJK2Vgv30Uv
 g7nZiARjfw72+ryz9zm6f1E2Fl6C27ss4Y+ydoB/Ff8aaJf4aINMz6CMj+Pu/d5p2gV/
 AlUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pY2kP8QaLCgM9u5xuScF1WBRP6jpC7y6DLBKjAmpX6o=;
 b=aQw5HGoD8L5AFFgqlkv50FXBf3Q1STd9dlAGXmFvRf51Q2foduoAE1jk2pH4Bi4818
 xSF6YyiSYM0Os2DjA2huiMseSBKZNuBKHoOYJjXULZ9Rm0X/0yKWAhgtwJ8RQBxDjiaH
 dckSqR5uPSn8UkskRU1WhPj8EpceuBoFXD6plXNr1QzjcconXrlNiprxZotFlkPL8zIe
 6r77YeSYloFAGy7IJvNVodQ9oAJGMshXvY5hKMy7l771lU+K7mNTj+9xELdW/OJOL51A
 VTuxTHzejDCZaufousxNThoJOzShPZEopie6yVCzoHuQuCzOnJBSLmlrCPXRLk2WpFpz
 mmeA==
X-Gm-Message-State: AOAM530gTGAXfx2BnbDaKaAvCQnRsBOgUQLfAsIqYhZO8zohS7ODBf5u
 GJiE2mgtlrAX3AQxRGAwz5o=
X-Google-Smtp-Source: ABdhPJxwsXO2fi8BEJOi5Kwj7YFoJAXFVUwoG6JstBm0/h33mt2ttTmZVcUOpkIw9wIw7Ck+amnTEg==
X-Received: by 2002:a1c:f608:: with SMTP id w8mr3299282wmc.78.1592315588654;
 Tue, 16 Jun 2020 06:53:08 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id j41sm532604wre.12.2020.06.16.06.53.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:07 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 09/73] ARM: tegra: gr2d is not backwards-compatible
Date: Tue, 16 Jun 2020 15:51:34 +0200
Message-Id: <20200616135238.3001888-10-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065309_934761_1C5DF21C 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The instantiation of gr2d in Tegra114 is not backwards-compatible with
the version found on earlier chips. Remove the misleading compatible
string.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra114.dtsi b/arch/arm/boot/dts/tegra114.dtsi
index a0ac9ea9ec9d..d583dfba688f 100644
--- a/arch/arm/boot/dts/tegra114.dtsi
+++ b/arch/arm/boot/dts/tegra114.dtsi
@@ -35,7 +35,7 @@ host1x@50000000 {
 		ranges = <0x54000000 0x54000000 0x01000000>;
 
 		gr2d@54140000 {
-			compatible = "nvidia,tegra114-gr2d", "nvidia,tegra20-gr2d";
+			compatible = "nvidia,tegra114-gr2d";
 			reg = <0x54140000 0x00040000>;
 			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA114_CLK_GR2D>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
