Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5512A38D57
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zYwVo+t4vtvAxqqgxpBSaE+oj7ODdkuSFTfKzqFCyKs=; b=iFO
	mUGRyiWMwJEJEbGRWMlCC84gLXgxqe61txLGXg+Cr3vm9tz9rj0wCpPSL5I1w4k4Dk5Xz0vpmF6Nq
	8r2NarBoddP0o8tlgZYDZt6hFyLeoVP5v0sbZ9KniKRBdBJAEGtJCPKialBh4swfDaHkRaHU9uWMB
	tK6s5rx/KZIfnL7RZg3ouqilnNgUqAhmDVbEJWXtrLZenpsociwwB2ht35XK7iGsWvUy57rseYwgx
	Oc0yNcGpAsg2J1H6+9uEegRAjsCYuy/n3HUjwAQWurlA9pULH4wZOE5ntLE+Z06cQZ80cZr6qDjFa
	+p6/csvEdL55M1/tTkqiAuYtu0xJ9sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFzV-0003oj-Tp; Fri, 07 Jun 2019 14:37:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFyi-00039H-TZ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:36:26 +0000
Received: by mail-pf1-x442.google.com with SMTP id 81so1297885pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pq/Lvk15ljiYEFoaWRgGbFP+gJyMTleHZAPs6hovw5w=;
 b=NS8vdw/GJHgKRux+FPYpvZ1035mvg0losXyssRsNKPFmBf+Dd3mytPf5oXv0xIQXge
 gF+vGSKmDA+atGT+6R2kBslqqvA8ESY9FX4LJajCmN6iRcK7zP6WJMfAYslyPF53ywAz
 J+lJ1WfQ2ST/ox+HerdcEbakT9gTh15DA1jNdB8lb4tVdoncR1zZJae6NvbKrNcfhfkG
 SQKT/IIGTRqlYzHw/Glymm3z51uPDa0LrCpuTiPbwQ+Wfo97dNT4leH8Zc0lCxrbfaQp
 /9p1er7aFMaVcHXr0ow+Uekg1SNPQpe4OsoX7e+1jU6TqB0zKRmregy4NkX4vMuHGb7l
 RNNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pq/Lvk15ljiYEFoaWRgGbFP+gJyMTleHZAPs6hovw5w=;
 b=Xu4jRSa/ymZ+UnE2T+GcsrZ+MWnyTfLlk4xLH2LRJCD6Cn8EP2u3EXJO8Bwvi04M79
 sviAs+1AG3TwRlnDJm1gLfuZV/rtyQhZjhp6bzAeVfWh4zZPVXU88KAvHt8NBO6iVj6Y
 BL1zT/FeVFjjViuSvN4tyjBLuTc58Sk8aO+h29qoDBjno3OOkBC3ZSghHxeur8Q3Kcob
 E//XEqBZcoDzEGyH+wGrCgnfTLVrpEmO9jHqyLm1gHjAidGXJ0y6oe9gUeHh6HqdhNge
 MMdD0j8fhnRg11wwxOYfykDFakY53MFT6iWcQUYoX6TQfoAdqbkhTj+xss3Y6TLPytsn
 yy6w==
X-Gm-Message-State: APjAAAWA3Th9BBDSOGv2ElV5yG9ttvXkMJfPHmI8JO/YJ/lkvgR71z6G
 5qMsu+QaP7KTXhgDkj+WQto=
X-Google-Smtp-Source: APXvYqw30sY2aTITKC03YyoEWuPCWfta3TNSMMIjzjseZKoOCxnFHXEuHvemF8xztPRhaoegGZ26eQ==
X-Received: by 2002:a65:624f:: with SMTP id q15mr2961898pgv.436.1559918183543; 
 Fri, 07 Jun 2019 07:36:23 -0700 (PDT)
Received: from localhost.localdomain
 (p2445105-ipngn21501marunouchi.tokyo.ocn.ne.jp. [60.37.178.105])
 by smtp.gmail.com with ESMTPSA id w1sm3703457pfg.51.2019.06.07.07.36.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 07 Jun 2019 07:36:22 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH/RFT] arm64: dts: renesas: r8a77990: Add cpg reset for LVDS
 Interface
Date: Fri,  7 Jun 2019 23:36:13 +0900
Message-Id: <1559918173-30577-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_073624_972662_E173176E 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Takeshi Kihara <takeshi.kihara.df@renesas.com>

It is necessary to reset the LVDS Interface according to display on/off.
Therefore, this patch adds CPG reset properties in DU device node
for the R8A77990 SoC.

Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the devel branch of Simon Horman's renesas tree.

 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
index 83cf590..547e970 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
@@ -1766,6 +1766,8 @@
 			clocks = <&cpg CPG_MOD 724>,
 				 <&cpg CPG_MOD 723>;
 			clock-names = "du.0", "du.1";
+			resets = <&cpg 724>, <&cpg 724>;
+			reset-names = "du.0", "du.1";
 			vsps = <&vspd0 0 &vspd1 0>;
 			status = "disabled";
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
