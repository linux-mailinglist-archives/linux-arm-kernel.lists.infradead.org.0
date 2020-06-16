Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B081FB35D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:04:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VM2KEK5TGClHsqyCQfXFYG9JBDw45/LnOIHgf4B2z8U=; b=jYO0HF462A67C0
	fnSYkdz23gv6l85IW289lKT3PNPlLtopMEaaHkTpRfIbMuK1jAaUoL93ZMfus9eDR6Y1kqO2+ESqM
	qBoORvMTIzLdqQeXCJE0PxKqhBZm8P/xcyNKtW+H04OKGGpTZ5S8yxa9IgNFaBUraSF7VsFWqSAZ4
	YajlB65dYlw29AMDB9LMsWDbplz6BLsqQjtf4IYoSgMW81c9as6iYW/Y575TZASWKB3cUx8/CWX3R
	55bjlmk/GRgAVL+IORsr4BPqzWGSbXaaaDwZ2Ha28BtpndOjfVA/mo4U8ozA9ucuEadzo3WAmhGay
	dpW/BT+havYre8uVRDKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCCB-0004ui-KF; Tue, 16 Jun 2020 14:04:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2E-0001ph-Iu
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id q25so3189650wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UmNqc5hsD3DobIcOkfT8oUHZhc0K21ivxjwgeIbNRxc=;
 b=AnfoBKPuYoDsBtAsRxfzizoqUWkP+v8P+obvDks0pBbFBPfMYn2/3zp32EhJfN6rCA
 ucauSms2BpZCNQGt2xt+vjA6A2S2ltYFrxCA9tae3jxsQaXGu8ygVLzKktL0KfBaT7n6
 WGMmbBkN/Ew5JqxB3mSjX0pkEF+ncpqon8SH2FyYR+G+wlR62hguG4dQikHCmjWMJjt4
 I3SJmGC0gVFLxI7lQZvyhku2U6fOtOfqzbWlEmjH+g7HT7MDvBHXE6hRwU0VxATlftWe
 8SjpIBO4jDOaSRIo85uuzUQuGzp+kgLAPctmDX4G9qxqxLxR+xhqUTlRQpRz8x5yVG5v
 AHgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UmNqc5hsD3DobIcOkfT8oUHZhc0K21ivxjwgeIbNRxc=;
 b=Pva2C1qsqN/UrUuSPzbswZhedOWwc2clJYYtzn+UUkOExrURrCObe5sD+xajlN6m9N
 sFxSh8ia6ZF5NJWBzoEb2F4Fz6EeTsfPGE4SIan+HvbaA4dG7hUkqiPyUQyVkc/bCbpQ
 5nN6S8W7xVgFAl+50LdTVyfdwv3HTKa71niS+RCLuA2I3CSdkqErM31pDDodLnfV18E4
 WlXnYXYB+NvZMRxsezAIloGeNDmpMhFt0kJUkgC4LgiwsKh9F8nTyjIpNa04OWLMK6iF
 3S1bV7FvlWvqQlKhfQ3jGLERb0eEXfZpMYbMp7JxZ3KhQlvb6oF0SlNTLXYFDmr6lQ7U
 s6cQ==
X-Gm-Message-State: AOAM530ONQpA6wp52Lg18j3S0cxbe7WvDtt8rqCU3phTPrdDuxP39Wo4
 EnJSzPaIlOhtl20ufRaNqTM=
X-Google-Smtp-Source: ABdhPJzzBUavyHf99hjFAc0SOolGUcuE7FGhCUvYuFKCUpHk+Xp2ZBz54eK9ibaAmHmndaISzrQuIw==
X-Received: by 2002:a05:600c:2945:: with SMTP id
 n5mr3616321wmd.189.1592315633157; 
 Tue, 16 Jun 2020 06:53:53 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id r12sm30951520wrc.22.2020.06.16.06.53.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:48 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 26/73] ARM: tegra: medcom-wide: Remove extra panel power supply
Date: Tue, 16 Jun 2020 15:51:51 +0200
Message-Id: <20200616135238.3001888-27-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065354_669311_6C96B922 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
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

Simple panels can only have a single power supply. The second listed
supply is not needed because it is also the input supply of the first
supply and therefore will always be on at the same time.

In retrospect the panel probably doesn't qualify as simple since it
apparently does need both of these supplies, even if in the case of the
Medcom Wide it isn't necessary to explicitly hook them up.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra20-medcom-wide.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra20-medcom-wide.dts b/arch/arm/boot/dts/tegra20-medcom-wide.dts
index 049181421a86..a348ca30e522 100644
--- a/arch/arm/boot/dts/tegra20-medcom-wide.dts
+++ b/arch/arm/boot/dts/tegra20-medcom-wide.dts
@@ -59,7 +59,7 @@ backlight: backlight {
 	panel: panel {
 		compatible = "innolux,n156bge-l21";
 
-		power-supply =  <&vdd_1v8_reg>, <&vdd_3v3_reg>;
+		power-supply =  <&vdd_1v8_reg>; // <&vdd_3v3_reg>;
 		enable-gpios = <&gpio TEGRA_GPIO(B, 2) GPIO_ACTIVE_HIGH>;
 
 		backlight = <&backlight>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
