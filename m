Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 679E41FB2ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcYe0Y+0zt2QYE+bAhT501Hd+JGMODrK1sYFwMydBP4=; b=o/KP/g0liFqOdK
	cLaySi37Nh7HPE4WUQzA5YJ+nqDhwcqcMxny/LtZ45p46eoFKjNQhs0bL2qjM+wm+QSK62cJsj2Yx
	MXwa8NbvvnUuuJrKupaIo3IE/iBehMsZAFENEZ//MYR3xzu64wl6WL/iO3JFfih1VdRKx0XhCJx8A
	1n6pNaWGxi1GJKW0fn4hagLm1Iv7PtW+BCRcTMBwEFz4Xe3j7PvTzif2ul52dU1Jb1HjZPP3q5+MK
	k0EiT5L+vueRHhleF9uPluW5hWJCLdoMH71AOgjykMZc9R/9QGPDNCWWrq8xULnHgrRoy+NiTcIYI
	GD+vUx2DhEJo1ffW9Y5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC4F-0005KG-Je; Tue, 16 Jun 2020 13:55:59 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1P-0001Et-4z
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id d128so3174046wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NcQyUR9ZMCNSxD7yzbRR2V9chBQB5uCLO5RENeG6ZPg=;
 b=dradM+XTFqtfIk1wbaLcrDc3FqQghNUwqkBA23/Q+SDlv1IEGaxnp5M7Yt+kPAymjT
 A3huBfelTXnU0x9tSR0GOtIeh4TRwlqQCYJZP+5mouXGtTkHqkVJ0EO2Abf8gwlx+Ibp
 TIcb1FhefLyWpB34AJsIeL0n5pi5GUITuQ5iwGZ57jgbohaXvHQjWjpr5a3L0Xk5/BPD
 IkwTxCFCNXjtUhkOAaM2QDnEALieTLEXXisoqMfgFOWQYhljpDsX1GAZeQd5JXm0t7Un
 wdT/6KQSvlw5pItHR6mVeUUdabTU7Ai3obwpKT45J26/64dqjzje52JaGw18xKNlTnYD
 rMLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NcQyUR9ZMCNSxD7yzbRR2V9chBQB5uCLO5RENeG6ZPg=;
 b=BiQLeQNVVjbTAT8l6NxDf2CgDWcpvlWeVFi3fM6Lc9WEfb/qpaT9uDB2qLo1tntIE8
 a5ixMXYQ1e/aAd3EXrLwCm0rAJOyhkucsbFuYqbD/9jxBKGE1xu27b916ynek1oJFO4a
 XQlEwLvZ7k4jPqwv0umpGkBDiXaUglLQwNRLRq2aObHQqcU7TDGAUT5x1NeCDeF/TSKz
 YqgtnDE3iSGLaqGl/1T35BXCSKqe9LnxkIVv1gC9o2iCbOTjKSzowX+XYJce7qs5Yt3i
 miNMGKkxRoRXhCQTjY5X0+2QTO4wxhj0Dugk5/zUBN2XeeHxJvj9sEFoTP/U+WvisK/f
 ptNw==
X-Gm-Message-State: AOAM531ev6L64yy4c8qP/xWhD+XeDHB1Irr4CIS9IDrTcpLvznItwMVV
 rNPP+A0UjaI9vCY0On1048f1VMd0
X-Google-Smtp-Source: ABdhPJw+XVbp6SdHrlPiQJidsycshiRYm0yP/7i8nx2fCykybpVhxL6NfQXcic+eGUBXuvoy4iA/KA==
X-Received: by 2002:a05:600c:21c2:: with SMTP id
 x2mr3392321wmj.33.1592315581703; 
 Tue, 16 Jun 2020 06:53:01 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id v19sm4088915wml.26.2020.06.16.06.52.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:00 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 06/73] ARM: tegra: tn7: Use the correct DSI/CSI supply
Date: Tue, 16 Jun 2020 15:51:31 +0200
Message-Id: <20200616135238.3001888-7-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065303_241962_0AE5D348 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

The correct DSI/CSI supply property is called vdd-dsi-csi-supply, so use
that instead of the wrong vdd-supply property.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114-tn7.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra114-tn7.dts b/arch/arm/boot/dts/tegra114-tn7.dts
index 90935db591a5..0e520ae1109d 100644
--- a/arch/arm/boot/dts/tegra114-tn7.dts
+++ b/arch/arm/boot/dts/tegra114-tn7.dts
@@ -37,7 +37,7 @@ host1x@50000000 {
 		dsi@54300000 {
 			status = "okay";
 
-			vdd-supply = <&vdd_1v2_ap>;
+			avdd-dsi-csi-supply = <&vdd_1v2_ap>;
 
 			panel@0 {
 				compatible = "lg,ld070wx3-sl01";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
