Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E011FB386
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVuBke+hJBWPPvVvP7a972r9FuAWbZh3kcrMsHdi/Jw=; b=qbOM8kbxtnx++s
	mhPRV5EeuzHKN8l1WtxkzCjoWtd8h1/W0F8zIkrGr1kWNAPL7jCup0Nfai17QmEb4V/flXZAJ2PNX
	PeKe3YXxIdfP56k3qjRUTEPzJLux7j+CJRswBpoCfMuIzAx1vwpqmaSLqEKlQF3ro+FWPJa2/K9GR
	G13bdSy3p9nFIj85LU8Laue61gqwnsoM/MF8GRvx0ZSrlg4joVYoE7jkpElQX/A57U1Mr0227YvZ+
	v9E75RYSaZSdsigVIQ2MGahAXpd/uo5UuNev0ucKxkpjgh/cOa0UCrU4v1/oZZ1qSCpV62WAXQcHJ
	uAkRKDCECXBHPQ5N16Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCFl-0001kL-2t; Tue, 16 Jun 2020 14:07:53 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2h-000272-GL
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id q25so3191447wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Kohp4ByBzij/Hl1xrB3hZcDo7ypF5P2DDaqD3Gmwppk=;
 b=jcdi4uwKaB7wSEetmMfgyfs9siH+AqnbUtVtKRDTYJY6ChjA4WVlAMqrl6999ZDPU5
 k8yXcKV1wzNcfiiF9dudSLTPAj//Z+zWIPXwZWB12cKJvimSBQvGgi+LEC5vTI7i6tiv
 i5T9yMlJlnuutdYWgtz6PsGn67K52tf/ZT5RHqA3qap5F0FrzSVXtmjaFp7vjx40N5fw
 qCa9vjcgaX5moihQ29Bo1dhz13lUof3JAcvmdyanZW34h+FC84uh/btgkonbyC19FcNW
 z4agAV1bt8YzhTCzed2zVb9OZX4SlRL0gr9UDFov1Zujhf/edyhMA5vOds8j25k3Z3Yo
 J/Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Kohp4ByBzij/Hl1xrB3hZcDo7ypF5P2DDaqD3Gmwppk=;
 b=eLYpSxeR+22GaGbyoudqgs+CzSBC36Dm02MPRdCcMYv9dDnplh991Csx5su/C10bbU
 M3Mq0eHTulRT2SJeteGWk5iiYcfQvtkBGF6SKlIMXsokN6cpvEakUtbWUzdTOXAsQVms
 +aQDGErwvJOLkZtorVC7LWi4/fvx2fMd2s7dCPKijW/pcrBeX/c+P1po45k53olYceI7
 RoEHGy6vfOz6g79PdKFCjxtI7U6MgBbtOkrQKg4aeeBmSOLSDuARBsxvr4dZAhknURj9
 WAJt66qh6ombVAr0rYaz03IekE/y2voYvrxF7lsRFm7IKy3WvfRuLp6vF5jbPenhEP9T
 DeLg==
X-Gm-Message-State: AOAM533m7zP3EBqDIeNtn5k4P1Lv4slmMmpLULrEuiumPju+c46JJ15h
 P8oZDf5eIK7IIVAAqHfb0aU=
X-Google-Smtp-Source: ABdhPJzYuYZvMSSS5pnGUNFPkuUuZ4PRqL2q+UUmEmXZXfwEASaYq51lzkq8aIWeT/mP4+U59DZB3g==
X-Received: by 2002:a1c:6244:: with SMTP id w65mr3355026wmb.82.1592315661916; 
 Tue, 16 Jun 2020 06:54:21 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id s2sm4000871wmh.15.2020.06.16.06.54.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:21 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 38/73] arm64: tegra: Use standard notation for interrupts
Date: Tue, 16 Jun 2020 15:52:03 +0200
Message-Id: <20200616135238.3001888-39-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065423_716450_876BB689 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

It is customary to use angle brackets around each tuple in the
interrupts property.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 373f575b8678..50b56168fc97 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -1199,8 +1199,8 @@ gpu@17000000 {
 		compatible = "nvidia,gp10b";
 		reg = <0x0 0x17000000 0x0 0x1000000>,
 		      <0x0 0x18000000 0x0 0x1000000>;
-		interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH
-			      GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+		interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "stall", "nonstall";
 
 		clocks = <&bpmp TEGRA186_CLK_GPCCLK>,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
