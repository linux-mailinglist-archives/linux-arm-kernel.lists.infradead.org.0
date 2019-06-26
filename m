Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71833569F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JdSZ7kVgSiPG/dIpOLkaSvjsoQmyRNTVSStUgNhsZRE=; b=gwEmRJIK9Os/8+
	ZM4Ug7Yv3Sy2zWdN69GeR3tlJBSYoFSYM4JQVjEWqMqgVWUfUIqqrfAKAET7arLZmsD43Xo2oUF2A
	mA0/4HCHxfJ3Nm+aPoohpJcdulpCnbqxDOkeJ+sgRFQsSF17cJeWURdxD5Zs+fd1xUqCurrgCHvka
	PGdX5S5WfqRVA5zs87PLIBHUzN6dKSfn7EATmJZTIbujcQII9ULjUtPdGlwK7GY6FUk6PKDgBCulh
	uNx7qVnoluzGW2V85zTjiWRvhj16UQo2RXPTkIx7mQlf6MI7dzSFau7fGP5I9+UjhWjRUaCyo/5FE
	fw5g74TnSkvLNZcnagfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7c6-0006oY-Lc; Wed, 26 Jun 2019 13:05:27 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7bi-000635-Sn; Wed, 26 Jun 2019 13:05:04 +0000
Received: by mail-qk1-x741.google.com with SMTP id s22so1503672qkj.12;
 Wed, 26 Jun 2019 06:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k5O9oE6uVEOIMk3nCZB+QbyTxE9Wg+XK01suEC8a+TA=;
 b=uPYvYvEk0Nkk2u2fD9IWk96MmABOeM3RBQCROHdDlEqDdqZHW4OubafQKAzNMvuovq
 iKeH4fPhxifsQyjIVZoAMmZRPzpb5o3amMYjAncq43pR7apSABLA4WZiinICdzE/jLaD
 +z5w93D93nlvSvHYQeHHivRvQOYEHMCwkD4SKo+wdaM5ZT0crBBlSvsagvdFObKxJ1c7
 bocIph99Gy4sM2i0KtqVO5ukWbsz3CfetmvblpluClMV0HqTDTeHurtmiJxhrn5V+9dJ
 F2FJRumHlQ/55CBEe3Hr4vof/j/apcTUtDex+4s1uwDw7Zgaoy2/sN/9zbzYaomPjLbs
 mVFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k5O9oE6uVEOIMk3nCZB+QbyTxE9Wg+XK01suEC8a+TA=;
 b=YVoUjwh1j2iclndPMtpaRMxUXm2TT5vsj4YnrAs6FEY1IoAtf5Gxw3+W8TckjasgnC
 zyp5VKV9K2Rv+AtHhHnLf0MQVbzlFMBpUX9VKWPAsW10PQFFdn0aZeGMV2T9d8pXc0j9
 JPqoxBMezrwSW/b20Fj2lgWHqLONIW7BrD7WULtKO87ss40oU6mk8m/BGytQtCU25qxI
 nEpbHYiT6wdkC+zvq0HjhS4P96fJe8yNCbzQVuzPZ/q8t+pAR79potTaXKkT7irKwodZ
 lbmnD9FTOkBXksK32/sjUnQEjDu6MgXBkKETP98lNumbE5e9cwYiNQsPhsBJhCJLEISJ
 iraA==
X-Gm-Message-State: APjAAAVFeKMvnuobigrsKlMLPC848aZ235X/Dp5C9BlQnztyQ6znr+hd
 VgoxCoyUaOzXJp5kn7Xf0Zc=
X-Google-Smtp-Source: APXvYqwZyDh14JaHgMEUYlacuj4zCZLs8pL9lTam984XGbMtpUzCvpXgIxneOdxOTTMDhd+634gBwA==
X-Received: by 2002:a05:620a:1106:: with SMTP id
 o6mr3650393qkk.272.1561554301257; 
 Wed, 26 Jun 2019 06:05:01 -0700 (PDT)
Received: from firefly.sparksnet (c-98-233-237-228.hsd1.md.comcast.net.
 [98.233.237.228])
 by smtp.gmail.com with ESMTPSA id k58sm10368382qtc.38.2019.06.26.06.05.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 06:05:00 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: "Leonidas P . Papadakos" <papadakospan@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jose Abreu <jose.abreu@synopsys.com>, Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii performance.
Date: Wed, 26 Jun 2019 13:04:43 +0000
Message-Id: <20190626130443.22025-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_060502_965546_23865EC5 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Fixes: 4bc4d6013b7f (arm64: dts: rockchip: fix rk3328-roc-cc gmac2io stability issues)

Signed-off-by: Peter Geis <pgwipeout@gmail.com>

Tested-by: Leonidas P. Papadakos <papadakospan@gmail.com>
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
