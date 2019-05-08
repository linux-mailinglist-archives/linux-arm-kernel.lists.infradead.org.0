Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7898516EE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lm3o82GCAioZ0fQOEGk/MgoBoZA8AaQ+KUbP/uT4qDo=; b=RFmSg+XGecbQaoTO4vD14VjdkM
	G8C9lBDEuxu9gFDwFQ3xC1xe/8uhKtDzlP0KpTdkfDggUtuOIavsmdx2XHDD/JWFEH8S34eSRaTvG
	Fz4h+TcyWn8oEMyCV9DrXXAtS77gqSt22Mu66TfBjnPr2ub/NAYOSM40MEa78iQ4bGDlFVEFsWlU5
	udX9v6cLK3zae80jtOT615fL246WnKjGr+Al7N+Un2BkoWmpw8l8el/Bs2gpmDBql3mGYz1O+nGlv
	fHrpCFxSvQ1LZjEq0cRtsjQbbLk3IIXApy6Kk986IUU/8w2oXxffLFsXLUwwR0yZunYaPT1nlMDNF
	yTo+8NZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCCA-00050l-3j; Wed, 08 May 2019 02:20:34 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCBg-0003Wi-FW
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:20:12 +0000
Received: by mail-yw1-xc42.google.com with SMTP id 18so10170803ywe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 19:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=V4MjvAfsmYt35Qj0jxF1NF/Z9s8olO9umFfF5oX+E7s=;
 b=v0zJ8I8yxGiRb6J++uIhWFMwG/diBBv1wJefCabNxV+5fOOf5YVa9I5/6+1zNIpBlO
 GdCpGPuhp6Zsdie8FF+bTPItDmcPSg3bY3yEsOq411LktjRw4vI7qRlirHDw1jwxqSCJ
 OcDUMZCwdJGbWRTLYJljeJer3ElORzUmqDXFeyVHhh2grN7jLA6Uo7SHEvpAZvoQkw9Q
 c5CCJ6//+iOFahhIG7aV/6GOn6isIQoBnM+x+CWocgthqMvflC9Bdtmkvc694Ci4FK0s
 K5/SJkxWxiyeeRCaVGbc3yEf/ZGg4w3eEiO695PPfOSffhO0bCcnS/YcBH/n5WwM7+DO
 g4xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=V4MjvAfsmYt35Qj0jxF1NF/Z9s8olO9umFfF5oX+E7s=;
 b=SxWkkOzoqoBqxOWqqS9YgTYXU8ILc7Q9/Sppn26CycnMtVRVk/waKTSdHHaf+AM6wO
 EbLtoWhSReXFJUWNfTq7B9XLOGMjl0R2erP4vcu9xBA1/F8q22PrGbYHV/QQofaTPEdb
 sSrr1SDY3DT4/jOJFkrbEJvuR3HRNgWMvSrFicsGqzC5R8J0IVloGvj09gMb7y0+Qhap
 wrnUBzUMqT+hy1TIEhD9YQi8HJnTxg5oRUz1e8E7CY75SvgK7VrTXBXuTLh/pHKH0xua
 EJlkkFWWDXNYP3p4Hde4/UGEC7FMntrPcUYa+rkaC3RV1Om0joz69eiknGr5opIYSM+2
 rebA==
X-Gm-Message-State: APjAAAUGAasf2bt3boZ97HDMycN7SqhO3wUhuc5qkplVKzUv4I72vtqv
 uLm1kcNfsfdl1RMKYByHCwq3/w==
X-Google-Smtp-Source: APXvYqyU7pDHfVnSkOI32/itiCS+CICRnF48CMOaqcMCCS/1KO/sw44MPaaFQQ+CTk8/ppKC86lrtQ==
X-Received: by 2002:a25:ca12:: with SMTP id a18mr5032891ybg.21.1557282003329; 
 Tue, 07 May 2019 19:20:03 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id s4sm1168116yws.48.2019.05.07.19.19.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 19:20:02 -0700 (PDT)
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
Subject: [PATCH v2 03/11] ARM: dts: qcom-apq8064: Update coresight DT bindings
Date: Wed,  8 May 2019 10:18:54 +0800
Message-Id: <20190508021902.10358-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_192005_529397_C9563819 
X-CRM114-Status: GOOD (  13.99  )
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

Cc: Andy Gross <agross@kernel.org>
Cc: David Brown <david.brown@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 65975df6a8c3..8b79b4112ee1 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1603,7 +1603,7 @@
 		};
 
 		replicator {
-			compatible = "arm,coresight-replicator";
+			compatible = "arm,coresight-static-replicator";
 
 			clocks = <&rpmcc RPM_QDSS_CLK>;
 			clock-names = "apb_pclk";
@@ -1636,7 +1636,7 @@
 		};
 
 		funnel@1a04000 {
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0x1a04000 0x1000>;
 
 			clocks = <&rpmcc RPM_QDSS_CLK>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
