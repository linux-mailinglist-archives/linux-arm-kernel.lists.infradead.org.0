Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BFDBFBA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 01:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uPt3Qio9nUUx0p8Rsk0ucjV7adH2yjcZXDxvjRSgFEw=; b=F+w
	oX9TKwdcg+7DzmeY3ro2sUag9E+6fyoEAZbeAhe76ZAZLJZSJFCX1/I+6QukQ00DWN6duLTxkHmMw
	6DH/RDo7RPlBRNhC1gAPXCglneKdOKJCjo1KkZEOBJOLgWqWU9Eosnclo9Khv35uzKSnnc62hGXBy
	nLWQV2uu39KqyZqNf41eKqU6nGZthI1cu8sA6IBJn3+ecEKZ4XTyLEvIPBCjHG2wLEDzn96T73ta5
	HI/V/Xtr9ITn4M6ehZbB4y9NJ+ttFL6LEUx5qzTeP8wIjICjVKFYn8HmU2lYCavrGGYo0m4avnhUx
	D+oNpAHEZKo3qPECSgvNxJVGOXrlJ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDcmJ-0000QJ-Ut; Thu, 26 Sep 2019 23:02:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDcm7-0000Py-Ie
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 23:02:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id q12so374236pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 16:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BUlZji+Rcf1QSUSKX0sbLRSuJG6J/nutRT82xrVSps4=;
 b=f6QkT3jsNf/ZOcGH6FB/1DJZT7DaSassU4MHSbdIutq9L/ZTArEweNYdaMmXS5nHw7
 xQaVtowTtHfZ0HOOX31is86bTTCFIrMbNcEFNoItfItfim7iJ5bkNmSz4BxnPeIE3oUL
 EoHcSGJ26Pa74CpTmcS5dtWN4IGzRJcMjTkB1QnwbLidaYD/DuD/cLCiXczHobwojyHa
 uox1RZUn+3H/SAkGkATy4nTJDhf5/EV0BFrsu7kLX19eUx6v1tQ5RnhIdGn2PnYPGy8T
 lyvLYdIv1OqaWF8+/A605+hNdhSXJ0lvSwGSE9oWdOcqJlIFP5jVFWlgr+geWQK+ANRt
 +veg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BUlZji+Rcf1QSUSKX0sbLRSuJG6J/nutRT82xrVSps4=;
 b=L3VnVwz/DU/+sfZ6P753p11D/NrZaihz/XHtP5RXPj309zeBvLhBCyRi0dfhthhC+E
 GrM8ws2KxxyQpzY5dLafFSeY8e9XjYRESNmPnD5vkhDomYyD1HQE3JAO7qx4BCBPvm3S
 I1C6a6fEGPkxrndOSYPn1FWLnxnmPIV626lnyklakWMNsDiIxvKUp+PYiiV9k8nTE7kz
 8RTlI6YJo7UqBDcK4RuE4AeqvoIkMT84ifSnMJnN+tJjqvatBQq1DnS1HznLzXwpheCS
 LWL1a1g+t/RXAZ/3rmk1eSw5OdLRuvuymO9cU3G8E99XZWcIs8IFKPAd66jkN9srW6aY
 Uvog==
X-Gm-Message-State: APjAAAWdoOVMp3ABh37dmrT59sy+Pi9GykAUfLJ6qSi8R8oVXxE0b8KW
 OOs7NiCd+Bos7nKdDH8+JJU=
X-Google-Smtp-Source: APXvYqyDB5aAhghP8WMbDE9y8l+6tdtiHyGMcJktKIFawVWUDNTvJEgFQwW1/MaC4ltWN94fm0IccA==
X-Received: by 2002:a63:441b:: with SMTP id r27mr5887449pga.357.1569538934465; 
 Thu, 26 Sep 2019 16:02:14 -0700 (PDT)
Received: from aw-bldr-10.qualcomm.com (i-global254.qualcomm.com.
 [199.106.103.254])
 by smtp.gmail.com with ESMTPSA id q13sm313970pfn.150.2019.09.26.16.02.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 16:02:14 -0700 (PDT)
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
To: bjorn.andersson@linaro.org
Subject: [PATCH] arm64: defconfig: Enable SN65DSI86 display bridge
Date: Thu, 26 Sep 2019 16:02:09 -0700
Message-Id: <20190926230209.47592-1-jeffrey.l.hugo@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_160215_643889_3C34B3EA 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables display on the Lenovo Yoga C630 by connecting the DSI output
from the SoC to the eDP input of the panel.

Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0134a84481f8..f318836bb9b8 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -541,6 +541,7 @@ CONFIG_DRM_MSM=m
 CONFIG_DRM_TEGRA=m
 CONFIG_DRM_PANEL_SIMPLE=m
 CONFIG_DRM_SII902X=m
+CONFIG_DRM_TI_SN65DSI86=m
 CONFIG_DRM_I2C_ADV7511=m
 CONFIG_DRM_VC4=m
 CONFIG_DRM_ETNAVIV=m
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
