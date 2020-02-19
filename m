Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056BC1646B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:18:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G6ZNx7sriVGQ3ETqfYuB6A1WnvI96HAiD/XxtqL29p0=; b=m6YHW65N8lCBSx
	3bVdnvfeBo70diuG0VSKfs6UKIpJw0yae9L0WNFSEV1OZH2uRH6+ahfAzMbWj+SuR9cJWEdZD8apU
	ZE+IB2l+eyiJBRKYpuOZGzwjsYMK9gGafe/eHDGV7HJbxVUuAvHLz3OMgdLnck7eRdolAm7YhNEx+
	2S88tHvmta6p67uCF4K9pC7FRf7Zo8TxYMVFIPUYK/E25sm+MkQ+CIjbapa7IBWIbxgJwoH0ZWtTv
	PRp9Ahc/yRmUESfaG1OBoe1Jvy5BtMdjAKeGctM6Glm/v6WMDGrtezFxZz6Bcg38UZKZK2DBvJQZL
	bRvKUWnnEhfMGl3eIFfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QBP-0001qA-5a; Wed, 19 Feb 2020 14:18:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4QBB-0001oE-On
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:18:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so737517wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 06:18:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n73JnDmg0VzOPRicTQwaM/KnoVwGL/4pXuBOrYc7ef4=;
 b=U4ucAUEAepCuTndLcLzujqnjNO5Vw7hsLHtU27Dk3BiCHkZTHeSfe4LRR7YCwX9+Yt
 Q1GvFaJiQsdwMyFrYNSrKr9u7wYs2uLspG1a5fo31YVDsaaTOdff4HDdkNnZ1Rod84LB
 NWvZOTy15qlcYLWMcU0PlihDccGWQQVYlzMbeVaaiYGYrQuK+64m00E0CdG9ZDtNAip8
 xFBBmfhEE32XXk/uctEVJemKHTXIH+BRQmPVWwttpax63y0HMK6D0H2WUooPXyvk88oq
 UGjAYwi2CbuFuQ2B5PZ8m1kCYNtO9glDPcsdGKbyVKN7dsySr1skOJaMpDZ/ZowcxiGc
 uyYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n73JnDmg0VzOPRicTQwaM/KnoVwGL/4pXuBOrYc7ef4=;
 b=aexJnNrjLqFPCoeTaWp3GSWRTR3AeGHYdexs+Wl0u9ro2AI9fiGKug68afFN5+KBFn
 bAJ7V1/zVK08Uk2F2M2ldUG7hvJI0n1LLpUKFHx3uzZdDPUXFp5Wrb/2m2RU1FFra1Gd
 e6LOaXNaUiMoJCW0BoMsGaw9RKx2av4gr5jUymVJJbBHpQrE1KMLacnwoUQRAL5/ZJ61
 iWMEJigmsokXE5KqHvKYZVwxkcvZKORpXczJsTH02LYyzlf2Pj8Ak9SrX5owBqC2XtUr
 uuZuJW/fnNSt1FMu4NQz6lE6P82HhERmdm0T4DmNn1rlWYvxx+LfyJP0w0dJ0JdUDdcK
 EtUg==
X-Gm-Message-State: APjAAAVNj/d9BqcDaId/Qkytf56Ty02ic119T15dPG+CqcBs8zV8idNz
 6h1AsZ4Lo5VkevbVBu+yW2f7cA==
X-Google-Smtp-Source: APXvYqz4yAg1bD+S0svdzIoD9J0ZoAZj9d9nIR9o555HoYP0tBNnux95dFcBJ/pcGkZq9I0WWoDm0Q==
X-Received: by 2002:a5d:474d:: with SMTP id o13mr35628480wrs.309.1582121900311; 
 Wed, 19 Feb 2020 06:18:20 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:510e:e29a:93ab:74c3])
 by smtp.gmail.com with ESMTPSA id b11sm3337772wrx.89.2020.02.19.06.18.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 06:18:19 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org,
	khilman@baylibre.com
Subject: [PATCH v3 0/3] usb: dwc3: parkmode_disable_ss_quirk on DWC3 controller
Date: Wed, 19 Feb 2020 15:18:14 +0100
Message-Id: <20200219141817.24521-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_061821_808662_392CFCF3 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In certain circumstances, the XHCI SuperSpeed instance in park mode
can fail to recover, thus on Amlogic G12A/G12B/SM1 SoCs when there is high
load on the single XHCI SuperSpeed instance, the controller can crash like:
xhci-hcd xhci-hcd.0.auto: xHCI host not responding to stop endpoint command.
xhci-hcd xhci-hcd.0.auto: Host halt failed, -110
xhci-hcd xhci-hcd.0.auto: xHCI host controller not responding, assume dead
xhci-hcd xhci-hcd.0.auto: xHCI host not responding to stop endpoint command.
hub 2-1.1:1.0: hub_ext_port_status failed (err = -22)
xhci-hcd xhci-hcd.0.auto: HC died; cleaning up
usb 2-1.1-port1: cannot reset (err = -22)

Setting the PARKMODE_DISABLE_SS bit in the DWC3_USB3_GUCTL1 mitigates
the issue. The bit is described as :
"When this bit is set to '1' all SS bus instances in park mode are disabled"

The bug has been reproduced by Jun Li <lijun.kernel@gmail.com> and confirmed
by Thinh Nguyen <Thinh.Nguyen@synopsys.com> with the explanation:
> The GUCTL1.PARKMODE_DISABLE_SS is only available in dwc_usb3 controller 
> running in host mode. This should not be set for other IPs.
> This can be disabled by default based on IP, but I recommend to have a 
> property to enable this feature for devices that need this.

Changes since v2 at [2]:
- rebased on v5.6-rc2

Changes since v1 at [1]:
- added rob review tag
- added Thinh Nguyen in commit log

[1] https://lore.kernel.org/linux-amlogic/20191014141718.22603-1-narmstrong@baylibre.com
[1] https://lore.kernel.org/linux-amlogic/20200109101535.26812-1-narmstrong@baylibre.com

Neil Armstrong (3):
  doc: dt: bindings: usb: dwc3: Update entries for disabling SS
    instances in park mode
  usb: dwc3: gadget: Add support for disabling SS instances in park mode
  arm64: dts: g12-common: add parkmode_disable_ss_quirk on DWC3
    controller

 Documentation/devicetree/bindings/usb/dwc3.txt    | 2 ++
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 1 +
 drivers/usb/dwc3/core.c                           | 5 +++++
 drivers/usb/dwc3/core.h                           | 4 ++++
 4 files changed, 12 insertions(+)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
