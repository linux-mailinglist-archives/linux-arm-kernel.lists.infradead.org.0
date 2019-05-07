Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CC41582F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c/KmYlOEVvRZH/Otx+K2tW9qQzXk/sDBdE24WKd7yUY=; b=ZigNJWgQx/Qrv5Jsk8y6j/Pglf
	sae3LKei9fW2h/nbo23IOdFpluJQmWSOPJpYv3Yflj7ZPueo3JdTrts+rG7RWoo2BkMrSupfFKKtz
	pOSxlQLBpxMK/6Kze0mnQMJqXaTv08eQI/m+sR0AzcdwNkAVSMwPqpAYckL1fcPZmA4bBKAkoLZ2C
	unQpK8ZL8CjYLnLzHhiG5Su0C+P41W2wWHG9KFOZAc+BRZ2KSFqvieJ2ha4uAj4iIGzfRHZ/t/kXR
	qFDImF9q9HC33GJG74zEUI4BqQ01k77xRZQdWUEuNxGjeY2EPpLusel6Hry02nxv/zvWvCo5cNUyy
	D4Hs93wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr5v-0005c8-G0; Tue, 07 May 2019 03:48:43 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr5S-00058E-AR
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:48:19 +0000
Received: by mail-yw1-xc42.google.com with SMTP id q185so12136186ywe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=O05RjGvxW6kkmC6O/2gQIoUFS+9nYgHxodCV63xbI7c=;
 b=Q3R8jXIwn62ap0LpJo0Le9cxWbxFreXjjrWzUVLAEaSEiYS/PLNA0jcjsTfuIDI5Zv
 Cv0tZKvnKuWACEbkZpWtMYNJZJdn02Agkm4N2YstBgjGirxfu0+xGofUucsQAka5qRnD
 duNcyHWeQLExL9dYDr0tUIeeDoU9rfIjLAPPKBb1RI7/x2Cv7ZKm28ollkHd4bMPKi9u
 S1dB6ie16OuZON7PjZ1bGMLL6+SZjnvVEW9HCMmJOYpGf/3dEqtzs0fBCrZ8gzmcj7CS
 gbMC4JHP6y2GUpPSEvYdUGmn8EFXjzBadoeb829+LUfmlBozpkGMDfysY1B0uPSST8kW
 Di3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=O05RjGvxW6kkmC6O/2gQIoUFS+9nYgHxodCV63xbI7c=;
 b=Z/xrMSv6armpIHXyi5fpWas7I5hh3XsXt2qP1Olt/kykkHFnHzegDLc3AU7+idjKjy
 WixV5m/j7ZPe0S18py034nqpMABxOro3W4nQ0YmmsBRt9IxuVFo3cTloZ+J82VuaDIt/
 bQFHV8qMd75ACGRskg4Pk1uRDEDLbspMybFCrwuNJ06ENtWvS1Bdo+5xKHvRjTRGSmxZ
 8X8iBy5UqrQxI394aSmQgJzKNEKXW0dlXNMtAhecoxqWnCpD28yXEYdYwmpSWLDhCtal
 AHtr9wvpApw7SMA/lFdzVKuh6p3n1tzN/tAEk2HRvlrT0JesubR/+nUaciWzc6m4bkgD
 47qQ==
X-Gm-Message-State: APjAAAXiNCr9pACjtTpKGqt2ykrLLB0+JZHKM96GDwjQB3FDepOOuela
 QjV2G6N89s8jvWNf87NZJtPeIA==
X-Google-Smtp-Source: APXvYqzexdQod1AbMmUny4NVJc4QWbChTmF+vqqXWuoVvj3lCvKiqjcXbutt5FWWHR1or2WLRlnvPg==
X-Received: by 2002:a25:aaef:: with SMTP id
 t102mr13070555ybi.293.1557200893517; 
 Mon, 06 May 2019 20:48:13 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:12 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 03/17] ARM: dts: imx7s: Update coresight bindings for
 replicator
Date: Tue,  7 May 2019 11:47:20 +0800
Message-Id: <20190507034734.20622-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204815_049280_30AB2422 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Leo Yan <leo.yan@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight static replicator bindings.

Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/imx7s.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 106711d2c01b..fb98761edac9 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -117,7 +117,7 @@
 		 * non-configurable replicators don't show up on the
 		 * AMBA bus.  As such no need to add "arm,primecell"
 		 */
-		compatible = "arm,coresight-replicator";
+		compatible = "arm,coresight-static-replicator";
 
 		out-ports {
 			#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
