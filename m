Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB8C23F9D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Na64cOw4UFqiJr7QgIahAkXAzOMoqNjJsbuq/1vxwM0=; b=gqBUZ8O4rAxtl2
	3YUEjAWgCjPWA7sbPPH/+WwLhUtlClMJ6jbibhp7BHcIo4RrLu6mm/hw7aNcPCUpOwHDPJM0GE+nB
	Pk3jz3JXHqW0iEqUow2c6qRsZzDZcTrJpfaYId2vuX3WFIvR+0iaper8EPBNthOP/m2R5iNObkyzC
	pbiHlx+VSV1j3FMJlM3zwSLbkJcwSe6ZnKdLt5BdIeqeQ0vLFwPkMDsqb+yGESTFofVtfISa6XZ9P
	urosOmHCVMHJ4uo8A6WH5U+dmvYiHB7cx0j4ttaMRl2aaeXOkIYiBenCVCoGAY2hrIMj7e0P22nqv
	tYtEiZ3q+OiSpLWAA8CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmWp-0008NI-Oq; Mon, 20 May 2019 17:56:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmWG-0007pc-Sr
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 17:56:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id g3so7594204pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 10:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YtT3QQC/EcCQGVPUxChzIKDFjejylVy5RwDw6h0rP8Y=;
 b=CxFoYWn12E2Wfl/DUay6zYNsj7HkCPiuVskqwVaONHUcKwExrtZmQOUQe3Ey65gpym
 dAOGhlevbrpgGEs202kzU4iLQG4beU2kc1yQsScSMSHPdzEI2Apm3x9wOXfEkc/mhrVz
 YFNNrU0Y11kLRKndmuzqLvU8tkqX4lUaA3LPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YtT3QQC/EcCQGVPUxChzIKDFjejylVy5RwDw6h0rP8Y=;
 b=ZtuSWJzXTlRP7TvDgVCOV0HbUuP6J3Lh1UVsRAKOnIct5HWFo3zh9a53R2K5/z36Zd
 pCPVOY5qajd2Zj3cHmtGK/4QNpafNbIWeXeQfA8BwJnqNhp/2MgzdCQN3BjCqzDBdltI
 9qAT01sdZDAHLKrEy1ye2o7oL17BQeocdxg774yczY400ymo8RMbxAk9B0uA7FLS0Ogg
 U70vT4NEhG01T62oOmdcuLzQFaMXQbuLwQd0x5bRt3eJWn4uX8FuysUnypkIubyh424C
 UHOor9d20y1gkgckZgCIS2cUyey8/vbPU+tbF02XW1UWEV/vgJI6rg0KsWqHwJ7nxkUC
 WTGA==
X-Gm-Message-State: APjAAAW/U2cdoN/u/N0DoioLxZ6S8I6S3+5Lg+PunpSVFxhNpYmIBkmx
 Y0OS7QTfyzhI0LC97KTM3rRdtw==
X-Google-Smtp-Source: APXvYqwliCorEDZCbklnXSYAbGCutGmLbgJZVbkDQsXYpFHd/ACzt+u6KekgF4vh+NU86UtFjG8ebw==
X-Received: by 2002:aa7:9e51:: with SMTP id z17mr81249778pfq.212.1558374976378; 
 Mon, 20 May 2019 10:56:16 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id o2sm16852723pgq.1.2019.05.20.10.56.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 10:56:15 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Minas Harutyunyan <hminas@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Subject: [PATCH v3 3/3] ARM: dts: rockchip: Allow wakeup from rk3288-veyron's
 dwc2 USB ports
Date: Mon, 20 May 2019 10:56:05 -0700
Message-Id: <20190520175605.2405-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190520175605.2405-1-dianders@chromium.org>
References: <20190520175605.2405-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105617_419663_30452DCF 
X-CRM114-Status: GOOD (  14.69  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 amstan@chromium.org, devicetree@vger.kernel.org, zyw@rock-chips.com,
 linux-usb@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Alan Stern <stern@rowland.harvard.edu>,
 Elaine Zhang <zhangqing@rock-chips.com>, jwerner@chromium.org,
 William Wu <william.wu@rock-chips.com>, ryandcase@chromium.org,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We want to be able to wake from USB if a device is plugged in that
wants remote wakeup.  Enable it on both dwc2 controllers.

NOTE: this is added specifically to veyron and not to rk3288 in
general since it's not known whether all rk3288 boards are designed to
support USB wakeup.  It is plausible that some boards could shut down
important rails in S3.

Also note that currently wakeup doesn't seem to happen unless you use
the "deep" suspend mode (where SDRAM is turned off).  Presumably the
shallow suspend mode is gating some sort of clock that's important but
I couldn't easily figure out how to get it working.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v3: None
Changes in v2:
- rk3288-veyron dts patch new for v2.

 arch/arm/boot/dts/rk3288-veyron.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 1252522392c7..1d8bfed7830c 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -424,6 +424,7 @@
 
 &usb_host1 {
 	status = "okay";
+	snps,need-phy-for-wake;
 };
 
 &usb_otg {
@@ -432,6 +433,7 @@
 	assigned-clocks = <&cru SCLK_USBPHY480M_SRC>;
 	assigned-clock-parents = <&usbphy0>;
 	dr_mode = "host";
+	snps,need-phy-for-wake;
 };
 
 &vopb {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
