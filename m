Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 986E31FB3F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TB3FiecA5qqgQ0xExwSBxkHEjmlcNc/j1S1NfgyztOk=; b=dKTZCVY6Av9Rs4
	d4D8Wave+NxIAPDy/QopTOVSH3hnTGewVrIKUShEJv1C9HYIsV7q3Y/LeCUF4m5U5G24IsCNmp3a5
	HZaPpj1CdIAgJik5E7Kwh5f1LnGqaYtzdgnh4x7VIuf1fNQOHdlkXNpcdbEzfnd4A3wUqarqb7ghP
	FCH4Dku7MtHiiXW0/Y2WcUrixSryvKnmmYK1om3UFPNEhkH0c14EENO60+AQG4Xuo//kxw3MMact5
	dcjJoKU0Iy/h2vQh7VCcb+M1+5u4yEh5xrFc8dWyP7HBaXtbQkE/oEj0CcVnMtwJt8GJqYUUJRExC
	ghZyedRLqrnpY3QvXr8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCMu-0001Mc-KW; Tue, 16 Jun 2020 14:15:16 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3V-0003k4-32
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id y20so3178240wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SUdlPyxdGWCgmnigeWgRVCwmjI++8hho3XmOt25jjdI=;
 b=lG33AK5PdVrGfzQbJRnW9klc7931v/SPsOkRM/oequaJiGe/cbVfXTzZ+rQHIApQcf
 gEUph1xaWj1okiVqas98eKy5J85tlN84RfqVfRkFwTVr/Rpge0QDA+XjMYgg/xa8LjJq
 xTNXRiLH0AvC3vDmfE+E0Nkvv9jCHdPS6V98KVYFy6/1oXdjdarPhfzeYhU8iP4V1QyV
 Zi30DaGHvwPrRKa+lGhjMgQZxF3C1nG+15jI9gjzns9lNDQAZb2Fqsn3TET3zhGIKr81
 XOs/oh6gy3rInlFu8MesJx/8tOOu3e8mKeFsf7ZIx9lPxPrGSigTVo5sbTpHRb1M8B0P
 QaZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SUdlPyxdGWCgmnigeWgRVCwmjI++8hho3XmOt25jjdI=;
 b=XaClxFjknyJbg48xWWhe75TnBtYMrgAIMXGqccwSYPJUR86C+wV2n+Ic65JH0Cld4T
 Ae/FDPpsOlkFbeFxJOLxv9jDuiTfALrJH+KXBRg7WhlgwYc2aYs19ZZ71yF57mr5WeZ6
 M4PJOsKm+zPsa4BU94uYn/hwHfQ7HbW3chDEkOgBdpscxJ8hiZkvEZ5P3tHMKWIlqSCb
 5payoEaH8L+HEUmXCqgq0wUxDCtXOZoCXBKo1GetuU8/ZF85LZEra69HIynzzNSmbAnh
 8ePGKvaxvLgSTkiAzpja5dBAuPsTTWV6dcg0kL/8YKQ9/mJBMA/45MnlynpK46MxUdo8
 sJtg==
X-Gm-Message-State: AOAM530fFhTVXgMt74pqgubfecQFs7+s5/iUsq5HjEyWZTN8bzn/js1I
 v02ENIZcD3YB/PXjEKJ3XRM=
X-Google-Smtp-Source: ABdhPJyRJKmPN8L7dtwQ/4k64aAuB2UW6h7GFFC+jQd8XIlu/SoAy1Yac0HJcSCb4Voylfd6BUkeeQ==
X-Received: by 2002:a7b:c0cc:: with SMTP id s12mr3476240wmh.111.1592315711173; 
 Tue, 16 Jun 2020 06:55:11 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id d17sm30608379wrg.75.2020.06.16.06.55.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:10 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 60/73] arm64: tegra: Remove unneeded power supplies
Date: Tue, 16 Jun 2020 15:52:25 +0200
Message-Id: <20200616135238.3001888-61-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065513_307959_7CF48F5C 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

On Tegra186 and later, the BPMP is responsible for enabling/disabling
the PCIe related power supplies of the pad controller and there is no
need for the operating system to control them, so they can be removed.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
index 43b8d643e7a1..482ed7b0fcff 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
@@ -119,10 +119,6 @@ padctl@3520000 {
 
 		avdd-pll-erefeut-supply = <&vdd_1v8_pll>;
 		avdd-usb-supply = <&vdd_3v3_sys>;
-		dvdd-pex-supply = <&vdd_pex>;
-		dvdd-pex-pll-supply = <&vdd_pex>;
-		hvdd-pex-supply = <&vdd_1v8>;
-		hvdd-pex-pll-supply = <&vdd_1v8>;
 		vclamp-usb-supply = <&vdd_1v8>;
 		vddio-hsic-supply = <&gnd>;
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
