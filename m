Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AA51FB369
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnXxwAtwj/KoVSO17u61azP6P9DEcivjAbM5/nLI4Xg=; b=V/PtCVcKqKLEkq
	jbS/7ncoV8QdYDuRxiWdsAlFi+IatQ/rrfsbaa8zDe1h96rYPslphzNv95/9sUQkvIihnQ4GDy6NS
	Nej91NJHsrvdGiMAGQYafUYm8K4fpJL8YSrEpIVffldxY4ssWvur2ZI7mWIbJ89uLo1frqSw+GD4U
	4UIJvCuTnpHg3PtnkjzhErBrCK9QFhXTHyHJ+V+qf2Z3crrKJz6D85rXvJ2sTFIs3r9R7XoMgKVvH
	nMnUTo65y4YF2F7s+QplNquv80X5du7XRN7pX0H70Lkvyhx+MuPOfQrJyuHSQXjRZyYZrUKrqiF8q
	jbGZqcD1AZ7F32H+1esw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCCr-0005RS-DM; Tue, 16 Jun 2020 14:04:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2L-0001v5-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:04 +0000
Received: by mail-wm1-x341.google.com with SMTP id g10so2965763wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YuiLIUu/YnML9dFw4hu2Yeqj2POA+ml5uNhb4909fHI=;
 b=nlwgsg+ofktUw3Aw5uAsr+hgAEjUb5vgy4T/TfjNeRjK07MwLGNKm1rEBOkWy2jvjF
 WoKqKnwPQaRaa6LMAbTmnHJw7GPwdegAPwQ4U85tLvl3k/xoeQQrRxMml2ekLjVoHdYC
 h5BdCTnLbQ27lplp8fpBkUZrrwief5qAfWovQZ7mWqvan9sJ99DuFgs0WEEeW9X0jFui
 koigc9xrioJdheaFyNOYYMr+CeYdXdoOze0CAQjYccpf9F5PnpB3u5L0KOQNmLBL7IRV
 KyNgzuOkWOQmwnQw5L5PfKl3cUwogbbcSY8Wc/acBNDJ/7kbxsR5N0bwGb/2Pt/R5vKK
 AN8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YuiLIUu/YnML9dFw4hu2Yeqj2POA+ml5uNhb4909fHI=;
 b=OBtAy11rF5rIBuXe1mb3vbE1gnmTtrvd/jhv/dU2wzrYXhF4/adRZMO0gV/0D3hkoL
 S6GNwTj8ctvzEVy55fkKR9v3S2FIchjDknqwSUuoNQIcgZax2m9bEZf4qQm8tx9qAxfS
 IGlyOYsTEUE4OfajFnH8GNvY+sEqHr1XDJpKLWFo+IF+BXCUGvRdD/5aoSP9Tm7m31U8
 091R2+/U2EqGvmgDp10abKU5WgS8WmsbeDjEGBvheiSo13+sbgtc8LTwKb0pqIWrzk37
 W5r0mRsDG0Zwa5rnKu4cWcn5fXjZLkmterr7f2KUQ4aEgfV10fCt0e5Z12AcPWVxHpTu
 sx+w==
X-Gm-Message-State: AOAM531XOP3Bw3jTk6inpCho638lM8NNPO8TBvf1rqaMJwUvmAmd1kQh
 5t4JWWqMAgHzFiNkazeK23U=
X-Google-Smtp-Source: ABdhPJzLSUEeB11A9gIgfZR8uzltD2LdQNQ9FATlM6iL7NTpC0rwccouKcZkB398Df+o56LB614dSA==
X-Received: by 2002:a1c:4b15:: with SMTP id y21mr3402842wma.32.1592315640615; 
 Tue, 16 Jun 2020 06:54:00 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id h15sm27602787wrt.73.2020.06.16.06.53.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:59 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 29/73] ARM: tegra: seaboard: Use standard battery bindings
Date: Tue, 16 Jun 2020 15:51:54 +0200
Message-Id: <20200616135238.3001888-30-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065402_004204_B6525126 
X-CRM114-Status: GOOD (  11.29  )
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

Seaboard uses a non-existing, possibly obsoleted, binding for the
battery. Move to the standard binding which seems to be a super-
set of the odl binding.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra20-seaboard.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/tegra20-seaboard.dts b/arch/arm/boot/dts/tegra20-seaboard.dts
index f1baf16c5010..c24d4a37613e 100644
--- a/arch/arm/boot/dts/tegra20-seaboard.dts
+++ b/arch/arm/boot/dts/tegra20-seaboard.dts
@@ -394,10 +394,10 @@ lvds_ddc: i2c@1 {
 			#size-cells = <0>;
 
 			smart-battery@b {
-				compatible = "ti,bq20z75", "smart-battery-1.1";
+				compatible = "ti,bq20z75", "sbs,sbs-battery";
 				reg = <0xb>;
-				ti,i2c-retry-count = <2>;
-				ti,poll-retry-count = <10>;
+				sbs,i2c-retry-count = <2>;
+				sbs,poll-retry-count = <10>;
 			};
 		};
 	};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
