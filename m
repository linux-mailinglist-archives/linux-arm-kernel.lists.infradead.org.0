Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F761FB3F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1SOB+T1Unxb4vbQt0i4LMXxfknZnHJFY9pY7cRL/z4=; b=gwfI5hQ84UlXZ1
	GNg3nvlgpg4K1XXcLr8R7yXJ0NyabdjZITMH6t2GC0fI1ocaHRVvjhIZLgGe2cEHvD5M4ryYtIHlo
	misP2fMeMsFTm4EaolN/sITmB2Igg2pIlLlHjJyqzN+KXZPpT1g3ZKLSX8ZNkG8Oh6MHcwAwnjQ9T
	HXxAiB/Jgv257VN2Qta3lK/Ee5WlVIAUN6ioZaoix+m9LXIe93PZTWmwAvGAgYMEeoqOSliRfCPf/
	RQiAH8PYjqfR51BS3/sKvkkFWjJW/kRGHG2chjfvzbvZvkKKjYW+D0DXvQBrp1m/5Tr+oR9mJ5T+n
	uafxTmDw+EjSmwVupbIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCNr-0004fX-FW; Tue, 16 Jun 2020 14:16:15 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3a-0004WX-NH
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:37 +0000
Received: by mail-wr1-x436.google.com with SMTP id e1so20911427wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DYB4ZQuwwNsunJcbJiGNqX7khMQEkKhMmXCNYYxaz60=;
 b=ZkeIOyMY20cgfc6MeantZhoDn2yL2yD7tR5u5gSKkEYgdZ5XujQHp1Wj23YxKWgbZd
 syUEjg/GVJh6djWzI5bPvLbaAaTOgy78GK18r9eF2Q81ZVhUZ7vfqcRH0tZ7fIs5oQTl
 JIN7nIF5BIjZ3AexyiOWM0BmHUHfOusIcFo/xaWTJhDlpIazLrBSwgN2mQ6+ovNJZtQz
 R9vG3i6CW22fGqkrNyr9QDXUyNm8jIOr+G7kFLKsFYqngS4+IENTZzXhMbSxX6G+XpEl
 RjkpU7zLRNOITlgvNq1/a8lqx6MwGtPdxw/6SYeM/z/f0CXA+sbhtOsFroV1EDsKgCwU
 AphQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DYB4ZQuwwNsunJcbJiGNqX7khMQEkKhMmXCNYYxaz60=;
 b=mqulcRb8XTctDF9TFSM1lcTKqb/KQthslXdbB4J3KNGOhxkBpfn6ex1cFxdkeedafE
 ZEt21pfMvqJD6ztGfc1WKzQQw4U1XjdlhXO4KWCnO8tWb9dEaMIzg6fV5c/MntQ9VDzH
 VAjhZOYcTbU8TROYtuu3vS1XAmWVgJQCvsr/LO81ykhTud8B1mUFWJ7W0wJbHoRj52Ou
 S6A0H2+k5zZE6z8Mx4hwajOK9x1srBpCVYfhbemonnRps1PPHcMixYtYMMjPxVm8HBkW
 dSp8IgDv2PyxRwfF3HbYrIGwnXopBfZrR+lEADxWsR9gYfs2/T5TPrVC1vbUgKwnIXJP
 Hh2A==
X-Gm-Message-State: AOAM530q8jDC+e7WQtHVwqJGakjOkxomdbnWH3i1/iUMyqyXidjfc7FG
 fKgwgYh42/wwh0UDVLMbcWk=
X-Google-Smtp-Source: ABdhPJzXtOXZ/Pr4tVIFt6IhJt+h/kNErRYDhKHu5XKd8rkuicdDSouvUdSE+ansNiBx1ctl//tM5w==
X-Received: by 2002:adf:d851:: with SMTP id k17mr3181118wrl.30.1592315716913; 
 Tue, 16 Jun 2020 06:55:16 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id f9sm28545072wre.65.2020.06.16.06.55.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:16 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 63/73] arm64: tegra: Remove XUSB pad controller interrupt from
 XUSB node
Date: Tue, 16 Jun 2020 15:52:28 +0200
Message-Id: <20200616135238.3001888-64-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065519_007846_12E9C010 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:436 listed in]
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

The XUSB controller doesn't need the XUSB pad controller's interrupt, so
remove it.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 3 +--
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index b4150d8cccf5..1cd369ac48d2 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -568,8 +568,7 @@ usb@3530000 {
 		      <0x0 0x03538000 0x0 0x1000>;
 		reg-names = "hcd", "fpci";
 		interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>;
+			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&bpmp TEGRA186_CLK_XUSB_HOST>,
 			 <&bpmp TEGRA186_CLK_XUSB_FALCON>,
 			 <&bpmp TEGRA186_CLK_XUSB_SS>,
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index bf696ada856c..4d6f2127dd4a 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -688,8 +688,7 @@ usb@3610000 {
 			reg-names = "hcd", "fpci";
 
 			interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>;
+				     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
 
 			clocks = <&bpmp TEGRA194_CLK_XUSB_CORE_HOST>,
 				 <&bpmp TEGRA194_CLK_XUSB_FALCON>,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
