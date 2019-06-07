Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C35438A79
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 14:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bx9fXZnhA8VRFA8FhH663Dmy60ACi5tVyJ1QJm4Ifec=; b=VzMcSy9UrW5Gws
	B4n8bggD7THkpfoAM3Ee1mjk67jl375BDB49FJmO/YpxAuFvI5DOKxOHoSmP8Y38XXavSKceIH0gU
	LdQIecGVLTU7U0zUSq0bH0SHvIYkzdPVqjIL69vig9WwyMy9YCrH8fbGjJ9cVR3NeQt2Fm95bWcP0
	9b1xMvTVJVQj3yl2UE7B5BsXyg8nIJilAqXzQOJ4XFz/7yKfFtMTAgDcntQbPwGwQvOEs/GKOPEAk
	qLqT6a3rdbefcqmOZbfnSmJuil2jOMuQbXLn1js6Xj7jpcEXNhlCs9bj2Bb/+ZyuNQB5Gpu/gkxEL
	IHg48rZdzq4FOgnkY8sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZE8t-0000GU-49; Fri, 07 Jun 2019 12:38:47 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZE8j-0000FJ-3S; Fri, 07 Jun 2019 12:38:38 +0000
Received: by mail-qt1-x841.google.com with SMTP id s57so1986611qte.8;
 Fri, 07 Jun 2019 05:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6iGSfs58nJEWANfcqakVLDnIqBJN0sG2xeLAj5suBzA=;
 b=jpVVBJBgGBWvuVp1bgLIZ6kj6T33Jf3ZDqewzBsJiOkescpA4SpZIjK7BPSkEzPdjX
 0dq7fPDipCzIibmPYHDj3PxkYUgh+sbcCivpbRLZqfEzd7Sw5gKo74I1ik2CIHi5dXN1
 foWiBBYiLqj5Mz0qdlPngVLRyuObhyodT8oAs5AybIXdvpuxZVd4kiIOFIHZNu61dGi+
 59C4WoZTeq4RqmTOjxyGrJWQ+24MZh/KCs1mTxibbctjN66XCLo+2Gr5lomdghWEaW0i
 ZxHjciIn7nT6kBOcWVabp8qLR9Fc1yFkZZ9SubnkXwkiabJsu93GrTTxSVjwm5TRqTl/
 WQCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6iGSfs58nJEWANfcqakVLDnIqBJN0sG2xeLAj5suBzA=;
 b=bT51aJw/hpoHwtB3Y0WV7SuqOGvxoX8IWwrPqc99gDYMOAF1DBegDcjL6YYkfowsJt
 AFIAIwlmLM1bVwlokxb4pIuRq3sLkRCMZTcxm/f8OQuW3L1eRaEhWPbZvhgrKSH6RhfQ
 HSi5mweu8KFnpeXDAxPVrIiUDk0ucxCvq6LweVaLJ/grlCUQnRuJDyuxlag2ZkO6CZoV
 KLPSvMmsPtbm6ZhSXF0AFUQ/mpuyB8hyH9sn47/C8yElYspKBL2PKXnChMujnvdVz1dx
 rjtli4cVaOz2g6UP57NoqlOz7iHkDXQyoDHce1Zt9CwWz026OS+DfXDUlzuZ6gjrzJDK
 xkhQ==
X-Gm-Message-State: APjAAAVBDNuSA0cor1nQ+EBd50ZEjxwLwR3qRWM6j5Nxizewq5/xjwnr
 /ic9ax0YUXsHmrX+qhLblUk=
X-Google-Smtp-Source: APXvYqy3lnFlY+YhZJzwKz2YNnsUjtvp2Q1p+GonECjpcMx9XDR0cb8cTW4wC/H47MjLRzYxMFcpFw==
X-Received: by 2002:a05:6214:206:: with SMTP id
 i6mr16751479qvt.169.1559911115340; 
 Fri, 07 Jun 2019 05:38:35 -0700 (PDT)
Received: from firefly.sparksnet ([2601:153:900:ebb::2])
 by smtp.gmail.com with ESMTPSA id o54sm1281963qtb.63.2019.06.07.05.38.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 05:38:34 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: "Leonidas P . Papadakos" <papadakospan@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jose Abreu <jose.abreu@synopsys.com>, Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii performance.
Date: Fri,  7 Jun 2019 12:37:32 +0000
Message-Id: <20190607123731.8737-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_053837_166883_259F8DCB 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the rk3328-roc-cc ethernet is enabled using "snps,force_thresh_dma_mode".
While this works, the performance leaves a lot to be desired.
A previous attempt to improve performance used "snps,txpbl = <0x4>".
This also allowed networking to function, but performance varied between boards.

This patch takes that one step further.
Set txpbl and rxpbl to 0x4.
This can also be accomplished with "snps,pbl =<0x4>" which affects both.
Also set "snps,aal" which forces address aligned DMA mode.

On my board this achieves the best performance yet, however we need broad testing to ensure this works for everyone.
Please test and provide feedback.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 5d499c9086fb..8bcc08de82fb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -141,10 +141,12 @@
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmiim1_pins>;
-	snps,force_thresh_dma_mode;
 	snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 10000 50000>;
+	snps,txpbl = <0x4>;
+	snps,rxpbl = <0x4>;
+	snps,aal;
 	tx_delay = <0x24>;
 	rx_delay = <0x18>;
 	status = "okay";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
