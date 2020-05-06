Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 295DD1C7894
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 19:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ghah7dSc4cUCpwazNHH5rk12wEXngtETj2bvKPZ3PkU=; b=k0X
	ZkTSA4AVRXbE8NRiuswW2AbJQQuVKTRNVkIS/6En1g7IWS7m7So1I9PiBzLvntzAfRvdn0ozxlNv5
	GX9kijeP8UzzwEMYSI8lymEvNTDbelwQAbkNdwwgRQq2KF4vbjgh1DNECnj9OHCA/x34GbbGHhD0W
	x+qMJdRR4DSNmNkLaujgqYxsrAXX7dZlz8oDHjg3fV/sEw3udVugrIXz+7v79RcRnfGrD9dYpM9PW
	O9g5BhxfyP/qEWxTkAIpXZz0Fkb6ll2w5sqZw5YtguRovdOrBA5++ZH9PelSN1zcB0m7cwc96kjBI
	HKiFVeTW6yLFJpDSmLpZ5dRttzMG08w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWOAS-0001R2-A5; Wed, 06 May 2020 17:49:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWOAL-0001QG-Sr
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 17:49:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id w7so2398632wre.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 10:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=srtH8bskiQrF0mpCWsWnCxht+uD1HNatLGnWm/k2SmY=;
 b=I2C97RMATzMD8KLXLxy2rBCkuviQnKAhn6fSB5//HbcMzxaD2e96LoiXeaJMbjd4Ze
 z3WcT3MOAG0FWtphVfkRUz4MDwS4w8jZk/K8eiGZYojVuasbWBc8vXv9OxMaCppZWP9l
 aWrB+a240sIDDHYIVj1I9q3PMCKXYFrWKm60r4bL3HLGVOacpQr+qyWnvtA3Xe7rAs2j
 XPq3PAkTrdfxBw10Lnjd7DusLULQgghR+ZFTzzdSg/6CiQNXdBf8a/SbCMLaI5k7AIA5
 GgQjByqUdwYyt4u4huOJAkSsZLu+mCcXzbPgALmqAMqK/TZiOeub5XrUCImv67rN0CaB
 Cnkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=srtH8bskiQrF0mpCWsWnCxht+uD1HNatLGnWm/k2SmY=;
 b=qZuB03bNBrvWZFnY67s5diBXiOQLFahE8Y0Z9zwawZAWpUY41vdGv3VGF6jCITf4/V
 LZayjfMFPzNG4x+LoCWPlomHesFeTphTyJRFTfh66T4JazejPOTEtt64eZLNg1BeoEbO
 3WSgZmtQ6TSXCad/0kxImXAIAFcyXkGaln3TD58glCfwWTX5uDtjIU2T2bhsOZPXlqUw
 5p4+qLkbAAkDWeKkbmNwPz8t2IuJYDRcwFh+VBnlSzdwVfkYRJ15OYyyWP4yEJTiC5SN
 q9wbBVF4ujAGSNRz5Edcf8I6WZKDhT/5miNwxYIDV9faJ8PGdEWVVRIsFvqESVKqfHCs
 fmSw==
X-Gm-Message-State: AGi0Pua6WEWXgp0V1+OTd/BsRSWKa2lYMhqQi86/WccE1mWx8JqY46go
 v4MuTVFpG03v++kchxKj2JXvfA==
X-Google-Smtp-Source: APiQypJzrOxOnaeMZj2hShOBa2tNuW6vZBCQSqhwPsIO3GIRxw5ow3FX2cybrUz8TcJ9VkWpKvsviQ==
X-Received: by 2002:a5d:498b:: with SMTP id r11mr10685245wrq.368.1588787343455; 
 Wed, 06 May 2020 10:49:03 -0700 (PDT)
Received: from lmecxl0524.home
 (2a01cb058702ff00bc4b798f4f30d41e.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8702:ff00:bc4b:798f:4f30:d41e])
 by smtp.gmail.com with ESMTPSA id n6sm1997992wrt.58.2020.05.06.10.49.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 10:49:02 -0700 (PDT)
From: Etienne Carriere <etienne.carriere@linaro.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: stm32: bump PSCI to version 1.0 on stm32mp15x
Date: Wed,  6 May 2020 19:48:40 +0200
Message-Id: <20200506174840.19856-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_104905_938430_638D00EE 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Etienne Carriere <etienne.carriere@st.com>, devicetree@vger.kernel.org,
 alexandre.torgue@st.com, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Etienne Carriere <etienne.carriere@st.com>

Declare PSCI v1.0 support instead of v0.1 as the former is supported
by the PSCI firmware stacks stm32mp15x relies on.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 3ea05ba48215..ebceead1b120 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -24,10 +24,8 @@
 	};
 
 	psci {
-		compatible = "arm,psci";
+		compatible = "arm,psci-1.0";
 		method = "smc";
-		cpu_off = <0x84000002>;
-		cpu_on = <0x84000003>;
 	};
 
 	intc: interrupt-controller@a0021000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
