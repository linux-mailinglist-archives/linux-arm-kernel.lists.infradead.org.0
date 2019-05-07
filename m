Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB79815835
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=32E1ZF1XrYMPEKassjISas3Hoo+MwXgDziseo3OQkCo=; b=YzFy2hGO434Lj4SC09/indTklN
	szQymiWSAwJkCc5/haajkrdxTw2rofGXEsT0+jO2XZAGw4iKwRjjcPf10P06gw0HxcjFNaUcpFth+
	qhSXNsLN4Bin0zBK08faLM63f5Ih8dg5WgI92nCQMnZ8ttc3a0Y+EEPJI7tWtSUWL7XvsGKT87IC2
	Cx5BaA774cYEioSjAGQzR2+JJs96w1uMyb/PfC++mSzisdEgr3N8JqLAlOFuWeybGjEBIsAiakmNI
	NjU5tZ4MaXoqPNPkvJJ5bY3JmpnXw9mz2cFwhYdseMN87xCiZXcm0jXmmXEeNqP6n8C90yn/YBbFN
	FgrbKJIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr6W-0006Y8-IR; Tue, 07 May 2019 03:49:20 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr5k-0005Yu-6a
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:49:08 +0000
Received: by mail-yw1-xc41.google.com with SMTP id p19so9291196ywe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wRuKLYSE3ofc2PdpHVxRvQQxLyxi6/JJAMw1yS/4TPk=;
 b=o2oUBz73Wf2w+cMzsWSEcPJgahzs4gt2X9vlTuXEKbxKbpQQQMH6yzssVCxzlM+3hG
 v+ZoUkRLNcBU39VsRBPC4Xt8ER6DRkG3b6AUHRBzHVsjOfNlxfaVcwBW8J3S5Tm8MFvf
 VZlKHFYxA5KZaofmwTar51s7UNHM26YHd4pf1jTD4CIae32phyxaBxzh0tIKKV+IV/se
 bSFxXic7VlJBPAsFccUm1mw3epAAAkrC7T2opyLZRqD7w2UK2Z29SyjcAzEWNj+m9z2W
 gxCUSJ9AcdMja5YE82oZRXU8WJelVuHVDiKVCjN8jNoODiArFfed62yKbMJVpUCxTsj6
 LDcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wRuKLYSE3ofc2PdpHVxRvQQxLyxi6/JJAMw1yS/4TPk=;
 b=pMd5gqJnnOzmy/An5Ljb2/S2fAPXFhtQq5McuQxflCtTIO9XNKTclP+IWc9597wJNW
 IQKTHaDS18llU2hlNKzohJVx4lUQbWZPNoPJHhfZK8vy+nc15hylbXN0zQ7/1s88qytT
 lcfVN0Wzfr5k20H66kEB/q0jKTp6mM4rKk6IlUddiJuAeLF7RH8X1AfJtLApGEhi7rUz
 XRd9suW/dhizkpVXF1ZSxVEfQrE+JyO0VmNaqL/o3p0+UF6StRn6NkLi/CFD8MfNviMr
 2fUsb0IPbcDOvYY1M9C/3KxXi4ocJAPGcF/DZoz9JPWf6zzRm++vkGAJLP+v8zqltuYm
 C5fg==
X-Gm-Message-State: APjAAAUwSS4W96YutIt7FsqxJDm4b9blR68mkq4AEAp6VDoniOv/VsDa
 vnN4PDzO5k9BkZ7D3J2vCP3L4w==
X-Google-Smtp-Source: APXvYqyu2ruX33E7Sz/llsqw3K4kG/kHzd5xasTGEWUQWqx71l+FjnJ4799hnkfSF3qLeseMYjEwMA==
X-Received: by 2002:a25:d203:: with SMTP id j3mr18980440ybg.387.1557200911280; 
 Mon, 06 May 2019 20:48:31 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:30 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 07/17] ARM: dts: ste: Update coresight bindings for
 replicator
Date: Tue,  7 May 2019 11:47:24 +0800
Message-Id: <20190507034734.20622-8-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204833_032375_5A2FA935 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight static replicator bindings.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index 81fabf031eff..a8c20f1bcee3 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
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
