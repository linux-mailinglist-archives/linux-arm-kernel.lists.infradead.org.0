Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B1E1B4849
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gjRqQNmP9qcceZbe62145M8XPIUx1RLebhkxCrPHsbg=; b=nET0k4iVSTpNQq
	WX+ffpdp/WUF8rWqEJj9/9lxEUwKzcS9l9N2g0pPbeXjxx7I61WW+HJp+5hplYIuWoBlON872K4bf
	SeLnBqyR94w5Y8WexsFjoh1W/f+XBT1jixs3P6QJLdESg8CU+XlW3X9PaMjseBWiMdvzbIKLAYPaZ
	NEKL8KY1hs0lUQkiqdrwxF7yf27/D7lWahNLuDzg1YV3wKoRzGUfvMITxiIZpz8EGu4KXXopd3W1l
	d9NJRCCv/aCAqAQy7i+9IodyI1LD70ZzGtdVlrDGHuFtHul+9uYVqZwd1804qx7C1tCcSVmsTd222
	vkxzJ+trmQqeoZuG7asA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRH1V-0001vA-5G; Wed, 22 Apr 2020 15:10:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRH1H-0001sd-CQ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:10:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id d15so1225562wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 08:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6MfGdNbZJAtx4H50hH+DJeAeTdpR6Yb4aC2XJdjmZcs=;
 b=ioOI8Qk02luRJQZNiFXlin0DEScq6GZWagj2tKS5PCDSEhMedbS13Q4GNVvzdo2vy4
 DZwFDXZ7sgv6C1VQ1pPCh63UL1VIydQ8FZLGh4iO0qj5SUeykL+uxy36VcPptq1QxJFu
 H8Bqx688cpISC/FaFWDhhLMCGttqs8YXW0oS79uH2Kfn3Qe2JHUqyDOqIaa05yAR3rAh
 vwdYYk5qN4Da9GCsLoRneIqq9QxqcpnFYInTzYrwEKLpvVRLZOyH9fdYQ6/khF3tnmUl
 y+cteCPFRB4DlyyrNd+165c8hOI7XfrBAo3g0Q7csVGy9ZuRYYxJltoS4WEXR0bP6qjs
 gJDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6MfGdNbZJAtx4H50hH+DJeAeTdpR6Yb4aC2XJdjmZcs=;
 b=JnvcPzj1pI73e8ZtxwW1zZiyjBZiMdHbVujRfRNBCOvZQrpdYxxPazzgz8ijYT8Mni
 HyWJ2Pt6pAr+kFdiYsnfmLmUSPGtFbIxo64HgNNzx21SYcI41DaRB7M4loRo8bqUy8jg
 gfNmIPg2DUFkRBpcx3lRtjp9UNLzvN2Gs+LNrdQPqA3n3BiD68LALsUvPlKd9tcHKfNM
 0pqiUASLb4O5NFxFYMnfnUQuQdPEuBkvMe1zZX7zZjjpAsfZ4HNJxj+ZqgxEQq/5nYha
 t3fCc7qPXWe8mCPjS8hW69qhXIkoLCTS/g13be9mWHOVUkrv18cMuWVc8XcMBPAmSZLp
 6Q0Q==
X-Gm-Message-State: AGi0Puan3CqVyt8UlGF2swM3mEB8N2ayNOPFNxBXYlilVe2wl9CpdkKe
 l51Fg/oc6ZlM2/BA/0JeM22JfQ==
X-Google-Smtp-Source: APiQypJxOab/iAg7Da5ViwCTxFBi4v/oDkYFV5ylPpVXFYWtYN+0CYNdP05BuGEA0h9tODKNKecFxw==
X-Received: by 2002:a5d:4dd1:: with SMTP id f17mr28911341wru.383.1587568233067; 
 Wed, 22 Apr 2020 08:10:33 -0700 (PDT)
Received: from localhost ([188.252.226.236])
 by smtp.gmail.com with ESMTPSA id s14sm7901194wmh.18.2020.04.22.08.10.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 08:10:32 -0700 (PDT)
From: Jakov Petrina <jakov.petrina@sartura.hr>
To: jason@lakedaemon.net
Subject: [PATCH] arm: dts: uDPU: switch PHY operation mode to 2500base-x
Date: Wed, 22 Apr 2020 17:09:15 +0200
Message-Id: <20200422150915.3355073-1-jakov.petrina@sartura.hr>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_081035_494466_21B70260 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Jakov Petrina <jakov.petrina@sartura.hr>,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 vladimir.vid@sartura.hr, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This resolves issues with certain SPF modules.

Signed-off-by: Jakov Petrina <jakov.petrina@sartura.hr>
Signed-off-by: Vladimir Vid <vladimir.vid@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index 7eb6c1796cef..b6e2a9c68b2a 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -144,7 +144,7 @@ lm75@49 {
 };
 
 &eth0 {
-	phy-mode = "sgmii";
+	phy-mode = "2500base-x";
 	status = "okay";
 	managed = "in-band-status";
 	phys = <&comphy1 0>;
@@ -152,7 +152,7 @@ &eth0 {
 };
 
 &eth1 {
-	phy-mode = "sgmii";
+	phy-mode = "2500base-x";
 	status = "okay";
 	managed = "in-band-status";
 	phys = <&comphy0 1>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
