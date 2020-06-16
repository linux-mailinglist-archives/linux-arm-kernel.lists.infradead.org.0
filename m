Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E7B1FB3EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qL5oHupAXo+mi6FMXHhAzNxx+teDZqfGzuuCx3l+okU=; b=W6RDB4ZDg8oYXw
	TRaLr1oZaMavpi9BVUQ6ErUdlDD1UlCdw/G+pqBV0yxsw//bpRcMW9wkxoj/hiGp15L7Xe2uoHWw4
	Qj01FT7m0XqflwI6w1wuEbZQ4wblM+FvXaF99vjGmRWOsfJqjUPen9aPRYTVvWMIMs69yIuUTUfmH
	RJLNDBHBBIvuofxxjCI8VswJjurvw3rtnZgfERG9W51YPpODxKYsEo4O7VbSkwuFzMb7TBkSO5rqx
	VMj8/fkuUlHNkv8MKkr9Ie2bFrc8gp3CNudK5NNQZfzyOCz1yzyQiDdDjgy1B6MFUKV6hh6fskBqI
	BAb0AYMYifeVK1+4RKcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCM9-0000r0-1o; Tue, 16 Jun 2020 14:14:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3Q-00038l-Jc
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so20900068wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e92nXRna6f6oAJuVgO2pIVWwwjLBTK0H6SidJH7THA4=;
 b=Ufp+uCItGeMBFHM0yFc0yz9wVLzyxUSYssv8/bqJ8uQ1pg8opkofPigX6Ho+4sHbwW
 uyCkwKZOnUdPLzRqoqNan4BQwPACLZtsT1BxbtPdx09YcCxGWuno374EJko+FzItmzzM
 3Unz5dNEY02EdMJd8dtW8Hduxn8w/uNifbwEl/KJrSmTP5h7etNxWzGRCzvAiZr5qZGW
 hf/NPpETrKY1NwzFORWTyOrxAbNDrimX3RqmLXZus7d4Qh2xy6qpeSFnpZ/XP6n/VpT4
 mV2hoyV3uyK1zE+szEc2MVZUhhcW3LXnNgWUOPNgwdHQdsCfwvyB7FQu1zMX9Mfresj3
 E49Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e92nXRna6f6oAJuVgO2pIVWwwjLBTK0H6SidJH7THA4=;
 b=O2PWxmPRj2b2F6lrOvoVyJB2AEQkOFIgJPPAWh8rV5E0tRKO2pxdnKr6NK3No7/bHh
 XfcXcuaK9i80AuROujqfl5kj2fpcj7oh/GC9CXbvfAsvT0YkztvY8WRee4z1LRqp9PRL
 6Cd95CYl0WUaWAf43H4d11jLiDZsSINh1lQH+mS0Hcfvj7TpUWpk1NJ5+r/ssBQioXMT
 mYgMY7ID3whb1Ow8CucMbgYRiGzEZGS84T/t79l8Q/k7OvzXcVHtpl5m8gYzf+vMFsut
 TUgtzRmEi62tdi4GFgRQhQ0fnQ7yDu9U8jhDBPS/Qb4PM+WS/dHfh21Qkf0Xy5U/iCBZ
 oO0A==
X-Gm-Message-State: AOAM532o1xwlStyLT7ZkY5a1d3AMR3d4uKJ21d6lOx8dseAlI/jaUIHa
 E2CKaxZAPdXHnf1qJG7wfvg=
X-Google-Smtp-Source: ABdhPJxU9dhTz7gsboG0QB69wlJs4Cyv0/uF0p4ZfoeNELT+fOfwzZzmOcZw3dyK+4QXoQO5ij9xlQ==
X-Received: by 2002:a5d:4282:: with SMTP id k2mr3153179wrq.196.1592315706907; 
 Tue, 16 Jun 2020 06:55:06 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id c6sm4339122wma.15.2020.06.16.06.55.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:05 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 58/73] arm64: tegra: Tegra132 EMC is not compatible with
 Tegra124
Date: Tue, 16 Jun 2020 15:52:23 +0200
Message-Id: <20200616135238.3001888-59-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065508_679713_436E60AA 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The external memory controller found on Tegra132 is not fully compatible
with the instantiation on Tegra124, so remove the corresponding string
from the list of compatible strings.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra132.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132.dtsi b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
index 6d9bd9cae388..0425e584791b 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
@@ -605,7 +605,7 @@ mc: memory-controller@70019000 {
 	};
 
 	emc: external-memory-controller@7001b000 {
-		compatible = "nvidia,tegra132-emc", "nvidia,tegra124-emc";
+		compatible = "nvidia,tegra132-emc";
 		reg = <0x0 0x7001b000 0x0 0x1000>;
 		clocks = <&tegra_car TEGRA124_CLK_EMC>;
 		clock-names = "emc";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
