Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DFB116B3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 11:40:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=feC0KVAeVJAlSrCpkJBSzzKldhdXol+w0kPCSgK/548=; b=Saw
	ASOaAueepzaqYHghUmd3evcDCD+7N+Ws2+oJIiiWV+2xDUtu8GAyxZnF4Fb6CYolrvIh82V1XsK0C
	uWGa3O13GvAZiomgVHtckT1zkyATdPezHVFJdXUnX819lky97XehBLrxjehydtzUnnXISd5DnvmxQ
	clHqsLbnIdV5KYQsgbhWZg8gr5oF0lRKIxxqlBkamN29d5t3CiwY3xZgA7VsgmwUK7LJcyZLBEM8q
	043yVa0OqJi0u8S/8vcp4AebcJ6awXpYPnPrGt/MTxM7sV6sbVQnXOuDraotlajO0b0P7VwBKJRtJ
	F//08nm1lN5uahv0YwAVOmeimh5TGAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieGSb-0006ak-3T; Mon, 09 Dec 2019 10:40:13 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGSB-0006XX-DE
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 10:39:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id c23so350631plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 02:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=oyUzXNyM2BZIrQqZ39LMNSyb/18SG6bETdmW07jNwB0=;
 b=p8xmjYz9+/qRuCsE2jubkJmIPXSVJTGeWa2NDwHus4k3f4ZldG0Vq0bFf1V5PrEyQG
 HQuoDymz3mp1fi2KLYSLeyj1z2kzVrpZdinWS3sn1KHTC5K23ZvffubzQm8WhXFhpPjA
 0SX7btl097FKvA8yiJN2/cXomEy6+VsitZs06QW2fnH4oKVG3GIkh7BhGCbFxJmAJ1UX
 rvO3nUNHe3eFbT+LXEiPqaYjwshMKmp1z8aht+mk3KgPqf+kNl292mnWJO+C48uDWrb6
 Fwshtu1BLrtrgAO2au90EzaQq9pF2f0v4pwywV2A43/30g/rdd9xUbXV94bXtWnK+5R/
 lrpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oyUzXNyM2BZIrQqZ39LMNSyb/18SG6bETdmW07jNwB0=;
 b=sj9M9Sq+XYy3IeqOjlyFApTYxK1ndII5KAfYUj5StOP/Y7oHvfxLV2MqGGTxT3WX9F
 T4RjMZjjO+8lA5jZJnE3LihXhyptYZnS7ac9IdI6gIhFGxDy51bzyBfwIwt3pTcmtt3o
 QAKbNVGK0tBqQg+Wfs4FLtrlYq2j8fX6NEEG+Iy8Vyyflscx5USI06vz1UNFwrb3PR0r
 kVGZCt1joVOu4i+B3eHgDSjJI7iGTavo+f7wK2EvB8GeaRqsKRy4D7yiXYBIy/yZAmjL
 KUifsTEXHny7sQDmNYeoPzHb8CL9EEhUeGuu/ry0aQdIIb+AEOSnkhu/+0BpSMtrek+G
 J8YQ==
X-Gm-Message-State: APjAAAVOIpROKSQxAT5lmWgCyX3gE76EBF7pVsbqoeHZvQ9AsGriUIn7
 iU0cro81dZ1O2BM98rTN6RCcUkP5NlZ2dg==
X-Google-Smtp-Source: APXvYqwm9MjGf+d0an+Y6Ppay6GY4qS0VROa0W1ir2hQ/FwCcOqlJPjbgFAmJ5pGaNozW081Ihe10g==
X-Received: by 2002:a17:902:9306:: with SMTP id
 bc6mr29331075plb.132.1575887985839; 
 Mon, 09 Dec 2019 02:39:45 -0800 (PST)
Received: from localhost ([14.96.126.41])
 by smtp.gmail.com with ESMTPSA id o184sm8065929pgo.62.2019.12.09.02.39.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 02:39:45 -0800 (PST)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 bjorn.andersson@linaro.org, agross@kernel.org
Subject: [PATCH] arm64: defconfig: Enable QCOM PMIC thermal
Date: Mon,  9 Dec 2019 16:09:42 +0530
Message-Id: <5f193f2a7508d82037e8f04e73150feee1a2583e.1575887866.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_023947_488214_B5D88C17 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QCOM_SPMI_ADC5 and SPMI_TEMP_ALARM expose thermistors on the PMIC of
several QCOM platforms through the thermal framework. Enable them.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6a83ba2aea3e..9893795238e0 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -447,6 +447,7 @@ CONFIG_BRCMSTB_THERMAL=m
 CONFIG_EXYNOS_THERMAL=y
 CONFIG_TEGRA_BPMP_THERMAL=m
 CONFIG_QCOM_TSENS=y
+CONFIG_QCOM_SPMI_TEMP_ALARM=m
 CONFIG_UNIPHIER_THERMAL=y
 CONFIG_WATCHDOG=y
 CONFIG_ARM_SP805_WATCHDOG=y
@@ -759,6 +760,7 @@ CONFIG_EXTCON_USBC_CROS_EC=y
 CONFIG_MEMORY=y
 CONFIG_IIO=y
 CONFIG_EXYNOS_ADC=y
+CONFIG_QCOM_SPMI_ADC5=m
 CONFIG_ROCKCHIP_SARADC=m
 CONFIG_IIO_CROS_EC_SENSORS_CORE=m
 CONFIG_IIO_CROS_EC_SENSORS=m
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
