Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED6C1FD28F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 18:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKplys7XraGpczzJDLd2bxLkfHJ3SsoTQOAheN/dGTM=; b=f02Sz28VZTmY3m
	fO5aE/izyPhFArULLDQPfw8+ccnCyHCNhKNf/EAf2uXl+y4/HS2NY1z4rWHmeF4lwwCBIJHHioeNF
	ZWoUh44HvIRYMfizK0ACkfX0MCH0gzrMO5vHaBPlBDVcECgmSKU+A07l4G5lraTOBMUG87RP9k9bU
	bEJ2ZbWNwy/6Fgzp6ZoXheeDTJpsMQKtsOizkQrzwWdgx8ta1+PtQkNF7mXBY8r7iluSWomdEaR6Y
	lb5W1oJag3WicBFU3C4xBsTuDi3Zq/unWS5Ox8n3i/W6/dKXYycG9/duEE44b5ALCPUCuuNroAlVo
	ZcZga+T00pfg16JFEgFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlbFw-0006nX-1u; Wed, 17 Jun 2020 16:49:44 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlbEb-0005iI-4g; Wed, 17 Jun 2020 16:48:22 +0000
Received: by mail-ej1-x643.google.com with SMTP id dp18so3116208ejc.8;
 Wed, 17 Jun 2020 09:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q+5BoVRG0VffCCrfTH/S4zSbtLgUTIBUYTPvbWiSrIw=;
 b=GkLw1Qi3/TTudWObG01QoJrFLKxkdf91mx1SL4oWeEOC8q6Gv/ljjmyt8pVbLHdDgq
 3OWdR2KGw70+qrKXmtMD9Dj1U6QqT0QwZMe2fqPvA9wh7DzpH17z3QzMgUDhwKP8dAbK
 5Thl1mj79F3RlP0hosvkJkBfjhvKNzKilAp8o2cMRog5w5lUwKjl3HA9DwS7UlF3rtbt
 65TRG1tAO34jE5GgX3b93Qm1fNwFzmOeI5CmZ3fBOB21ntxet87PXhmNSkWo/2HYdDZM
 dWP8u6vrcMoxXDbyZPaoqLJ3YbVRCV4ZDaneO8CTFeiPmpZyz3NEWd2LOBYUV/GOfq1p
 CwIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q+5BoVRG0VffCCrfTH/S4zSbtLgUTIBUYTPvbWiSrIw=;
 b=QZCaWjt07ILB1jQds3QRt4U2JSedfZT+07wN7C9kIzs3DG8c7hAcYcYQueOfVWsrs2
 kHkdpjCe4LYHizOMC//2dF9iGJNG3mRsdohBx54sZ+/mkmGfmx4NP3YWIfmlVYaBF2aT
 +YWE7WA8hFwdFwtoeQWQ/KGXecSvhHoueGWMdUGT5Na347nsQ955yJLcXdpjBaKhFi3h
 kOY5eqmvm0vEPVhR7njgy4Q4w8yQDmDh7h64UvHqabwi4ZVUaiTqDKMbzop/8TSr5lmP
 V0yvamz8DOoG7qadqG7ZUmru6GfUHa5oAxC7FpBSAvUEYu3RWfHF5QFtpZPEm0CZGs45
 ioPg==
X-Gm-Message-State: AOAM530roN4OwW9EN+vaR2qYqI9Y1ylT4TA80Yv9kHCEVfX582F85Tn3
 LmOJs6m3BI3xkvNVcE7O61g=
X-Google-Smtp-Source: ABdhPJzya/QUz9hu7DpG378s/WItmQR2ysBmEx0/RnQh/KMg8YjHmMTNVtBDCdDe9YqjZVf+sNcS2A==
X-Received: by 2002:a17:906:365a:: with SMTP id
 r26mr60093ejb.466.1592412499978; 
 Wed, 17 Jun 2020 09:48:19 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id v3sm127124edj.89.2020.06.17.09.48.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:48:19 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 04/11] arm: dts: owl-s500-roseapplepi: Use UART clock from CMU
Date: Wed, 17 Jun 2020 19:48:04 +0300
Message-Id: <255941aa76e1eec8224c7a88b99924f3bae2cec8.1592407030.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
References: <cover.1592407030.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_094821_192949_57F73E44 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the UART fixed clock and enable using the one provided by CMU.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 arch/arm/boot/dts/owl-s500-roseapplepi.dts | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm/boot/dts/owl-s500-roseapplepi.dts b/arch/arm/boot/dts/owl-s500-roseapplepi.dts
index a2087e617cb2..800edf5d2d12 100644
--- a/arch/arm/boot/dts/owl-s500-roseapplepi.dts
+++ b/arch/arm/boot/dts/owl-s500-roseapplepi.dts
@@ -25,12 +25,6 @@ memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x80000000>; /* 2GB */
 	};
-
-	uart2_clk: uart2-clk {
-		compatible = "fixed-clock";
-		clock-frequency = <921600>;
-		#clock-cells = <0>;
-	};
 };
 
 &twd_timer {
@@ -43,5 +37,4 @@ &timer {
 
 &uart2 {
 	status = "okay";
-	clocks = <&uart2_clk>;
 };
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
