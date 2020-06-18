Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A841FEF52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NUwT+UIy73fXqDWTt2PpKflHnM8zZXybP4F3sX/uxDU=; b=EkWjO66JeEDbRa
	fBOq+fiFc/tDbkSWN7YbGg2dERQ5Z+wGp1fauGBU+dNNQU+5FEP8QnFSAQz/JDAq/WX2iCnhDSSAb
	EEAIzclgZgv98AvpePozDTyxf4IIn0P4ylWhc2P3iwIj3xrpUDnljq0GAOkaqzuGH00O85TIEF4l1
	JtZdx9ku+kVHvrsQxZZdA904F+6xLi4Sa53i0gEzacrwiSy4S2srJgfhlC6YKHaWXJa6rpFKwH6hB
	5f20HwHJrxJlxMTtsQrGLK/h5Ue0ERQr+n7RrPIw6Jm3OOiwa0ugXUEyieFNitJoQ1Ksa6HEvMtdV
	0PSA4q6Dd6WlA699P+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrTi-00083e-Q1; Thu, 18 Jun 2020 10:09:02 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrTW-00082s-1l
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 10:08:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id g12so2234583pll.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 03:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s1VqP9EIERD+hagFVC72DAlEZ/VXVNsM2Fw1XLYSvTI=;
 b=H3jKplbfvME7fGxdX1WtYsdu4TmOA3VQ+7/NZMWf2u8wLO0HxmPsJa8PytQ7dZf9JW
 lUToFtWYpt9pEKmHUpw6Vs5GViXY6wsEzN3mACl0EEt0ZTGmJ5t3ZUYi1Tw4ulybGMco
 pYEiOxUiYIZleW1T4UibRgcAJWHxvG6L6HvpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s1VqP9EIERD+hagFVC72DAlEZ/VXVNsM2Fw1XLYSvTI=;
 b=TYoUwgCQlGulmT6w6NGSs1CvuxlKdSqbeYOCkZ9l10p8F7GWAGFv7wFKeICyWPHva2
 B7Rbl0JTthehftFosiLVphD/O8c+zPSszGaZ00BB0eicvC9bWBIL2wFPYcx81sAGiFOH
 DKffQZmXjt9PLF8h7rbRbbXDIMyF7cY+oDPLcwWAUD53e5MJW0GISTC/p/+pBRBe3nvq
 jrH3A+QZu7XpAbcgnhW9VZcvasXXkHLsN2PURFeQbbXBBt6WCpL6aai2lKz219bc4O77
 cMqYfPxNhdSo+/xv0qbFw+U09Rw7lKHbCGRSGc6exFBjS4FmzCpcy7ZE74WPlliLj3sz
 of/g==
X-Gm-Message-State: AOAM532gzrNJzsEmTwvOU4iMalbKJ8nhcWiteiZPWHxEEymAT01tR2Lo
 5cK4M1cQRRloSedbln9Rvc0P0w==
X-Google-Smtp-Source: ABdhPJyHy7LJRn/VtSjB/Zvs5KMCzyZvT4A08M95yw8GvYTIy2Cx+yvqQMNC3B+pEj0gQ7MYz9hMxw==
X-Received: by 2002:a17:90b:1246:: with SMTP id
 gx6mr3453815pjb.146.1592474928918; 
 Thu, 18 Jun 2020 03:08:48 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id o16sm2190793pgg.57.2020.06.18.03.08.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 03:08:48 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/4] ARM: dts: rockchip: Radxa Rock Pi N8 initial support
Date: Thu, 18 Jun 2020 15:38:28 +0530
Message-Id: <20200618100832.94202-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_030850_518663_471B7787 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3288 SOM need to mount on top of dalang carrier 
board for making Rock PI N8 SBC.

Any inputs?
Jagan.

Jagan Teki (4):
  ARM: dts: rockchip: radxa-dalang: Update sdmmc properties
  dt-bindings: arm: rockchip: Add Rock Pi N8 binding
  ARM: dts: rockchip: Add VMARC RK3288 SOM initial support
  ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rk3288-rock-pi-n8.dts       |  17 +
 arch/arm/boot/dts/rk3288-vmarc-som.dtsi       | 298 ++++++++++++++++++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |   2 -
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     |   5 +
 6 files changed, 327 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-rock-pi-n8.dts
 create mode 100644 arch/arm/boot/dts/rk3288-vmarc-som.dtsi

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
