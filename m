Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2F316F04
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gZlTGjAoSW4OykD04O1rULT82ejmPp8XnwVmq240x3I=; b=m8ylU5tENV/LmHILdkZwxA7oHL
	+vb5ajXSqFdHkgNfz2dEal52rcyZ7MArhmWPDTC5L8E0FsgaGhRTaiBk513tYHgUVUU+LudyDZ5uM
	W/xb868OR64ICg68p3RpYbZeoFp6A/12vCV0THs1Swf21uc3CjC+Phq2M86YrOpIqg+Pdt0LnNh6/
	3fSXY9jy0NV8lQq9FgSV3I+QMxwSmAqgWGRgqgAf4Rw9GsDTGiEtTnLSn4/hxKRit/fySIXLEsmcl
	Gp5u8+0HjLg4CkkIOQmFOyDm1nKqGqDIGQ4Y1J9CuGw4BXs5f9gSFx0G9WXUEtW7PmNaBv0ZhVTd4
	A3BbM3iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCCY-0005XQ-Le; Wed, 08 May 2019 02:20:58 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCBu-0004t9-Qh
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:20:34 +0000
Received: by mail-yw1-xc43.google.com with SMTP id b74so14857769ywe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=luzkdm/vY/d9DSMJpZXXkdaCYVQylLWX37IuJlSjSvI=;
 b=O4CvT+wpioFlo6o1ONKedXd5PmRIkZ34A7MtUnDx5L42qIpPstYgNWmOxMg4LEGRyb
 DTpNaSj2GxM7k8NZLthuEyRPb3YKw47qUBfjXZUtBzCNNntwpttHmeU8dfBBg78D1iGg
 vuAMTacyFw5gLbCb6GUZG+J5G/heP+LtZee6+vPsxbSXotGPX9KI740YKLzJPbGfjAhP
 3mr2ytKXAY7QnMyz2MwpdNl4yGLWt3jikQ3T8fOOGCPrb8llxwC4/Kb71nUkJZ0aXmiW
 nUTMrLpvwZtmkA7+Dmqhy5yxPQ0guX2QYX1ro2RwDjsq7xioeAcYl9ruVbHsm64Xqm4N
 ZfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=luzkdm/vY/d9DSMJpZXXkdaCYVQylLWX37IuJlSjSvI=;
 b=UYJcmhm2qr9QVfpcgf9sHKpbDQm3eQeOLi76mNH+nd1GiIrFU/2UOPTb8rGGI+JHd2
 qkNW5DUkTuKcuec5B8DbO3ucTAwrAUssuAF6blmc0pTZBbunTw18o9/+yqsrHceu5ANX
 8ec9+J+kiiTDk+cu+izu3wb1vkiISIsLq9PlXo8BFQVwV/nLX5f4bYfz2ISKWEG9KIX2
 ulWiorlHUtAilpuXKXJ26qcwSfaNg81cmAP5Rn895FRitTqNQig2JgNI+/30qcKLeRkP
 ckAVHzMRgHAbrlQAqjtr7B9DAi0dKEw966I91qkRxkT0mIYuCc5+97/DL/piJhDzHc7E
 9vvw==
X-Gm-Message-State: APjAAAWnOpgIZbfyGefx+IueokAo+vi8mwa75XadDeF4IO9MfS3FAFlM
 ez/6pdDcn8x4/HZ+Fx2SuD7BUA==
X-Google-Smtp-Source: APXvYqwtZ33+oLWzmatl408B313A7G34hUUVmzsJOmZ1DLU5dGNKsPVJWev9P0fXaghzne8AaVkDvQ==
X-Received: by 2002:a25:7652:: with SMTP id r79mr22520606ybc.216.1557282018025; 
 Tue, 07 May 2019 19:20:18 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.20.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:20:17 -0700 (PDT)
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
Subject: [PATCH v2 05/11] ARM: dts: vexpress-v2p-ca15_a7: Update coresight DT
 bindings
Date: Wed,  8 May 2019 10:18:56 +0800
Message-Id: <20190508021902.10358-6-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_192019_511136_BBDFABE2 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
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
Cc: Leo Yan <leo.yan@linaro.org>
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

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
index 00cd9f5bef2e..164c904c9992 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
@@ -440,7 +440,7 @@
 		/* non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell".
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
@@ -471,7 +471,7 @@
 	};
 
 	funnel@20040000 {
-		compatible = "arm,coresight-funnel", "arm,primecell";
+		compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 		reg = <0 0x20040000 0 0x1000>;
 
 		clocks = <&oscclk6a>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
