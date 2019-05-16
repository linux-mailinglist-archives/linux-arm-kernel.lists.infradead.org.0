Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7667F20DE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 19:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lFjlRMjKZEL9Es+uX7shM6+vOQyE90/JSHzlPvexvk=; b=ry7x4tsZSmbq1t
	UqagWBmjxqjJaaoNN88DHLSfTC+WmAFM+yz4E2T8HLaxQt9Dd0MhbDSIgeRw1YouTHV0jBPVhax0+
	NwEtT9o7Vd+AV1JKZxqazhSCpiz2JCOG60NoCLd808wsf+BEL4apliZ+OttxTP+kbeO3I5a4qa/Mh
	khQ+4UufvoGE+JyFrz48SQEm4zhfJjluvDmfK0TAJKJ0KAVP8QShvxypouY14Wnaf7inqUKguGDBa
	R8IZ9HXvGvVVh0I0voWBVU10YsN8ojNaykRv+xkI9JANgNXQUisI8GmA68/mBT8HYt+xthhvbAbGh
	QIRznKTsUC1gxuaa6Z9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRK8Q-0002oa-6H; Thu, 16 May 2019 17:25:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRK85-0002ZN-BZ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 17:25:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id u17so2191736pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 10:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ousylPICmwH1og6gjNylTr7gaxUc1ig3ZdhjNRxPghU=;
 b=dgGSuA8VDPXv7Fj5Q5+ofTuWInUTRLCEGimaJ/XwDGZgH8iS5qpn3DIYuedOUERjIX
 TgF/rxteIL7Z4FgxhseTSJdM60kvzN7B9+j7MOUShrmdYPyIeiqsNXzbHYJYAtdG1MRf
 sXk2aqJnxCwgTHfdsfrBaJ3wtHTlqnbyhdVh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ousylPICmwH1og6gjNylTr7gaxUc1ig3ZdhjNRxPghU=;
 b=HPlkjVTuCKI1BAQKZfSXNnpUlGrWm3IifCSPacJgRYOUC4L1aHkFflnGMzbNJTTR10
 yvgr6VRCknO21hxqmsrbmj+CBP1+AePFww1Bg0coCaR6Qb0H6zS2Ju3F0xxAoihyFx+6
 +yZpReWrVfE+VDuyjVy/Oyj38BSzUfdUJT/7IXksylFedBao54AUGwSdSeA+8E6IjmKL
 5HGb/kIg3f+d1ASvlY/Aq4i2+gf0H/Q099UmejTzE8wQ0isJLCJeF4qiI7IvatKgRKhu
 qXRamZXZodQBl30+xzJDWeOR04F51aHIQomXLReCSQjphE8lVUmX/zpQp0PtrGP1xI5e
 +H3A==
X-Gm-Message-State: APjAAAV9iyX5SLRVyqE2vO/if/6pvA93Ng0OLEcpE5UswSOCUjLxVc3b
 47hVlrUZPER+TK5ADiWwzz7MXw==
X-Google-Smtp-Source: APXvYqyRLtHHdZ/6gBoDhAq+Ft8DnEuAOLEu1Tag/6FSXqdLHOz2xTh+/UUVMzZ7Jib/lJnPD2TaUw==
X-Received: by 2002:a62:570a:: with SMTP id l10mr54993359pfb.151.1558027516911; 
 Thu, 16 May 2019 10:25:16 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id f29sm17110563pfq.11.2019.05.16.10.25.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 10:25:16 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/3] ARM: dts: rockchip: Add #cooling-cells entry for
 rk3288 GPU
Date: Thu, 16 May 2019 10:25:09 -0700
Message-Id: <20190516172510.181473-2-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516172510.181473-1-mka@chromium.org>
References: <20190516172510.181473-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_102517_393963_8AFF1B98 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Mali GPU of the rk3288 can be used as cooling device, add
a #cooling-cells entry for it.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
Changes in v2:
- added Doug's 'Reviewed-by' tag
---
 arch/arm/boot/dts/rk3288.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index a024d1e7e74c..14d9609f0b15 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1273,6 +1273,7 @@
 		interrupt-names = "job", "mmu", "gpu";
 		clocks = <&cru ACLK_GPU>;
 		operating-points-v2 = <&gpu_opp_table>;
+		#cooling-cells = <2>; /* min followed by max */
 		power-domains = <&power RK3288_PD_GPU>;
 		status = "disabled";
 	};
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
