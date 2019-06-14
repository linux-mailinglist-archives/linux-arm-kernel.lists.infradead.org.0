Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4FE45AF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OaRJDhUTqAo96ttj+UeeVnX0sjqcrWROCEfoJTvLAyw=; b=Lm2jjtcOvc07No
	1i0WfTY1sl1Q2riAeOooOLflpcjwxgfEjB3eLGlf9p1QTQaB426vDIiWSfEof7k8ewTmSso6QQv8g
	THwNBTo45C0zHAE5wxo81fIC/YsNhoY0eCxOjaWeoAYLqQrdzElLwF6Ckk8yKgQG53y0vfcrOvdpI
	rGZHDxbvglliCgI6Rl4jl/itdA7v7k0JSfdLXRjVqeCbJoU+8FDAiK7m5eTcbBxxWE8xd6RcKkGRg
	bVe5M7G/rG7AQ4QFZJN8y+SeMVYi1qMYjmIXdj/hIKtFttCXfhZ2SGh5IA51OXDrxu0xJGH4iEHjN
	chLBMquh7uFCqTij/Siw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjpE-00077c-3A; Fri, 14 Jun 2019 10:52:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjp2-00077E-Mx
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:52:41 +0000
Received: by mail-wr1-x442.google.com with SMTP id x17so2011904wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 03:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fJ8iYype7B/h1q9hN5d2vgk8jCoK9UoBXfSeUd7HvH4=;
 b=htJsh+XQPUWhn2798/V8NI0P2Z5GYPX+ZdbEUBgn5KQ4AZKAzkK3Y9QCDHcy726xP5
 M1tKrmil0d1S3NQdknQRd/6x1xiLmW5kHtfVxY+sxNiA7W84uJcK2olFKq6NjWWRMd5d
 zo7JzHEm2nHaxhQuOSAsTWk7am4N3uhGC2vEr4XiMQurb3eqhOLzc7V58aymWFwAlJ9Q
 cUCMahqPJEZnKoWjOwNMQ8KQv8IboSplFESqy/leewTJ8mXatmv6qjLTfF/hudpHxAGS
 ToG8822BsLyFED+5HCczqtPxDyKmayKFsVOlu6n0kB2glmQx1CAC7NB3bN6zH07tQwmu
 UuqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fJ8iYype7B/h1q9hN5d2vgk8jCoK9UoBXfSeUd7HvH4=;
 b=rRiVlbLSjgH48wKiqRujwfPZekbJEg+a2+ckZFlExLWbfLH+rDpuhEuPUg2cC5qAKO
 OMbmTVA0iVt2U9fiDrG/Xb2/gBNKTUUJW1uw1DBZBuvjLfmubG8Vg8vW5dSh/n+tPRNC
 c2zv2wB0WU1yCfpgwOScRUg8TsoEdA2CRZnVnATVxXsmzMlHFPZ8HZbRhR/4oyM/MKWl
 ApoGJGTFPO8zragZ1RF/z6AAM7EbixKexDx++YItdH5wJ+gxIjkuokECuuYDELm1GfYY
 gXmv83iy9NJ/ZxLv0NADexq2uEYT2fkD8NUrp40ZU+UD60cXVkEnALbklpXY3HxKKRrE
 5zQA==
X-Gm-Message-State: APjAAAVDkyrnYfbHvj7X1UC7j9G3B/frDHR/RctQXc8DWvT5gvhxmVJr
 MkIJL2ZLb7f+FCuL+rv3K8U=
X-Google-Smtp-Source: APXvYqyleBtAc5KygrTAXepBW8zkWRwcS+c+jAyLPUkadCZocABObWs4tfqWMtRFP++0UFtFEpKHfQ==
X-Received: by 2002:a5d:5342:: with SMTP id t2mr49377921wrv.126.1560509559173; 
 Fri, 14 Jun 2019 03:52:39 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id f21sm2299606wmb.2.2019.06.14.03.52.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 03:52:38 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 1/2] arm64: tegra: Mark architected timer as always on
Date: Fri, 14 Jun 2019 12:52:36 +0200
Message-Id: <20190614105237.20076-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_035240_775152_77085E22 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

The architected timer on Tegra186 and Tegra194 is in an always on power
partition and its reference clock will always run, so mark the timer as
always on.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 1 +
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 0f4eacaf5b77..3c811943e700 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -1360,5 +1360,6 @@
 			     <GIC_PPI 10
 				(GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
 		interrupt-parent = <&gic>;
+		always-on;
 	};
 };
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index c77ca211fa8f..a2528312db5f 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1053,5 +1053,6 @@
 			     <GIC_PPI 10
 				(GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
 		interrupt-parent = <&gic>;
+		always-on;
 	};
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
