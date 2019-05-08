Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D7D16EF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4oe9VopljUm9fVRFnr0KcKl3dFlOXjSg5IX181oi8F4=; b=kacMl2rfWmj2kA0KSa86PCIug0
	fK+ARReO8tJjQZ23b262iAwJ0//b/LHdUHJQtxSrJ72A3eID+sqmYl7wHpnr10qpJ3wjI0v3thyHc
	mqGPQIvd+yngvAcsC/a5UulpdrOYM4Sfk+T4ZTA7mLXhNEGOR8VlJDDsD+BH1kFoLTksqTPNH1xkM
	TRbEq17bdLMJuoER0UbicYmUrfAlhHM456lorun2NVRiEqqaNmFI+uyxIr2Eref2CzCN/lpaAgwnN
	cgsdDJUMQoCd2R6up8nBGQpX4SOE/WKOW2Pf4mdbmgiBRcxYhAeWOav/NeFOzJIzrMFPbSHP8IROn
	ipAjzm1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCCN-0005Gm-E2; Wed, 08 May 2019 02:20:47 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCBn-0004GK-I3
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:20:23 +0000
Received: by mail-yw1-xc42.google.com with SMTP id 186so6151433ywo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3xn9aUdHTXUU+Zzxyk2IpkpM9si4DJKJs9eF/WREL/I=;
 b=tf95ZE3nCfdgu1pnTDfH+dgBMFO5i/a0a0gc+zEHdvOxf2q0PDyUZTkgfr0o2qjpd1
 hWUGkOWMovWzFekc8yXWkTxPxt3P0Hncn+FNwVdnpTQz+Wqx/ZWSJT5TQcA5Xe56LVbh
 C6qfw3gcsRulLCzxPE3aJpvYdOKxDQlHPwcudUVP6ZlWK8cuhdBmQFhKuFcUzt+nFgJt
 5RsKHcugdpgvojQKpjzuNAvPSBpmKMewr0ZcPUzCqmMVeHksBlZK39fhYfsnkePHWrxH
 McbkxCCCe6G+E354jNQiFHZ5j6GBUwgWGt2hoMWaIw+pnAwWd9adUaSyoUJfnk10VMKv
 fi0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3xn9aUdHTXUU+Zzxyk2IpkpM9si4DJKJs9eF/WREL/I=;
 b=Q62RG0uOz8wUWz44dltiHrhf4/Ixdou3+0eHOdi/mgPIE51nLXAY7aRmIwegIbU4d8
 32RkIoz7i3UpH56B7UdjkTsz5a8C7wiz8H+evumef6/v5RTcVjaJNxmQQp8WYSfX9D7m
 OWPZQWor8Z0M6hWFqHn2K4xtMIkov4B9bb4Jp+vwXo4riTNxaB2NXfV/2ROePxbTJhkQ
 XplXIk7PhxRM268oGVqTqkKqF4tDcvjay4WvJtFWIFg2z1xzi9aJMi2SvY3YkiERa/V1
 sFNgKUIby9V7971DHxD36KaTw43dAhmxba7A2AsRt4qv0Ut7uaGdc5iK/16rJRGVxAdP
 SXOw==
X-Gm-Message-State: APjAAAVbaTjourJcDfjAjRL56oUrn7WU1SAR9h+fmqN8RbWaGm7OflxK
 ELu9SeCLFWPRnVS5B8hAoI06xA==
X-Google-Smtp-Source: APXvYqyecJI9uSLoBVIG2oni2XR7jmB3bIQR/Y9OHbOtXUCo3QF+8holn3bu3+ZduqAFuRNVS5n6Og==
X-Received: by 2002:a81:518c:: with SMTP id f134mr7492739ywb.0.1557282010773; 
 Tue, 07 May 2019 19:20:10 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.20.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:20:10 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, Wei Xu <xuwei5@hisilicon.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Andy Gross <agross@kernel.org>, David Brown <david.brown@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linaro.org>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 04/11] ARM: dts: ste: Update coresight DT bindings
Date: Wed,  8 May 2019 10:18:55 +0800
Message-Id: <20190508021902.10358-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_192011_826880_F090DB10 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lee Jones <lee.jones@linaro.org>, Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CoreSight DT bindings have been updated, thus the old compatible strings
are obsolete and the drivers will report warning if DTS uses these
obsolete strings.

This patch switches to the new bindings for CoreSight dynamic funnel and
static replicator, so can dismiss warning during initialisation.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index 81fabf031eff..4bdd247b9534 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -98,7 +98,7 @@
 		};
 
 		funnel@801a6000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x801a6000 0x1000>;
 
 			clocks = <&prcmu_clk PRCMU_APETRACECLK>, <&prcmu_clk PRCMU_APEATCLK>;
@@ -133,7 +133,7 @@
 		};
 
 		replicator {
-			compatible = "arm,coresight-replicator";
+			compatible = "arm,coresight-static-replicator";
 			clocks = <&prcmu_clk PRCMU_APEATCLK>;
 			clock-names = "atclk";
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
