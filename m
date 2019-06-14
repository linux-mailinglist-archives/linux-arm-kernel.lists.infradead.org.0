Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F7245AF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ic34nqWbXcqgrUB4048tBIiPWOFN7F3OyFNDUZHQsnc=; b=qDLmA5IAsXQiXj
	NknXgOJLei1Y7GXvTjAtoxThQwQOZcXaF6+GdC4ET3GgCgIfA4pawe7jjUZJdDEKHdK83/3rzr2mj
	AOH8DZpB5pXqTa+DREJpXMfE9YJSj1p28Wt07njzauJzbKU8G4qCOiFHZp7OvMtC+OocfEg4N18sP
	rRVw+dhxH5BDkOxYDo2U7g3QWr1R460g1ovVKlHaI+mQ+e+forT6jskQqERIVs9E/PVToP8zV/whR
	LuTzUQQ1NDx9PMkZOf8Z8PfFlQdd+k12RFGGg5S4G4yoMFAwOuwwcsFhVzDuA53/ZdscuYmPhQ7LK
	bGoBhiz7VhM1Rl4C5Yjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjpX-0007HR-1t; Fri, 14 Jun 2019 10:53:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjp5-00077T-Ea
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:52:44 +0000
Received: by mail-wm1-x342.google.com with SMTP id a15so1844582wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 03:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3yLWk+SWwzIpfiJXYiunMromOUag1bpKENH5vrxKS7g=;
 b=OXdtDyfgdwZJMsPPl1GhiBcqQQUrwlqagIFdRiIME/bSWJO4GSl0qJYXvXOCBVRobH
 1RME9w+S9EuYnGf195egZ2b8HfREGvUx5kvlIlxOIoB8sIf+G79GzMHY6+0ng+fU8zYa
 Sbztl+ymVYalJ1IETOFuO0G4438SJhH379i1jMreSH2Sl8Fg6DDxIw7lyIdGkLOFkwdj
 h2VTV5q4cGNXI6IFr8Z25V4W/dVmdl9QaOOADoGZr1DFoazphKvQ7FYWvZm5atFWXEnW
 Q4SHX0+Eq1jGErTt+/z/pMaYH9JUDHOMY3MNAyVPQgxz1I+sOUwS53uVGiba0nif46Mx
 Hqkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3yLWk+SWwzIpfiJXYiunMromOUag1bpKENH5vrxKS7g=;
 b=iloZcehzon5rguAYLcgQyga+NmtLYiB4vHToIrF1CUVrWjzbd3kASXnIj0tzdBwdD3
 sdOVQgAQbme3M04aDpzFcU9Q6YMGdvGVe+t5t7MVwWXh6QhMT3xXr8T6KxzGxKIdc3ZN
 NYKtQs4xbqScKDdmISsiqWGa1S2JATnNOS6duCQMdCwFRJGJoz698YhdVEV32dfCu1zo
 yeJz2tcGOqCOuGxnhRN2k2WxoWDMbjg1sP+JYirkBA2rCVlgTKrpj9TRPLAJDRFRSnqT
 /KgXI51FGXm7KjEbFJRHnhG5u5Ho6gCsopRGAIzbOJPTBLdbyNVyCoIRdiKOtM8EBEUj
 +L4Q==
X-Gm-Message-State: APjAAAXspgJgkkdSAK+EOrH6LBG8KZsnLe8r36OFPBSC0UJuwEJAUfqi
 i5kdfrMhwVy6Jkefd7NVL8Q=
X-Google-Smtp-Source: APXvYqwImryDW885o+hnZ9ShltdSCoylOQxZC8iwvAZMVPPCDBO3MGZpLvgjWe7CpHuhheLkBiwRGQ==
X-Received: by 2002:a7b:c001:: with SMTP id c1mr7568357wmb.49.1560509560691;
 Fri, 14 Jun 2019 03:52:40 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id v13sm1674642wmj.46.2019.06.14.03.52.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 03:52:40 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 2/2] arm64: tegra: Don't use architected timer for suspend on
 Tegra210
Date: Fri, 14 Jun 2019 12:52:37 +0200
Message-Id: <20190614105237.20076-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190614105237.20076-1-thierry.reding@gmail.com>
References: <20190614105237.20076-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_035243_548995_38264F20 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Due to an integration issue the architected timer on Tegra210 does not
remain on during system suspend (a.k.a. SC7). Mark it accordingly so
that it isn't considered as a means to track suspend time.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 58ca520d5230..96027572ac12 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -1435,6 +1435,7 @@
 			     <GIC_PPI 10
 				(GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
 		interrupt-parent = <&gic>;
+		arm,no-tick-in-suspend;
 	};
 
 	soctherm: thermal-sensor@700e2000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
