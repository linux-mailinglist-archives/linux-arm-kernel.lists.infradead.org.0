Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9045167925
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 10:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0442QbwzVcr4na0cVlzUiuiXf2JtTdD7qEtP+xiaO/8=; b=o0JJjSlBfvBjsr
	+pN0UKZyuT+ypJpgxD06RtQU2q5nSezljzehbaPW6zlhz05zX0oiVTyQ3EQnLa7cv2wNbvvs8C238
	dxwgfVHOChH5Ep9+j3zkLKKlLBVhTR1PgRtkYh+IipuNTWmxFs7Hz/OzSK9EkE7FjpCEahMDFxDJE
	xtvL6IzvHMDWMDzGLHOcKlBzJEi2eSCWheBoJGcjO4RvKStrS+HjBmIXdfgoYj2cUatledW/IOSyd
	f71ARIu4MHeyky9c4gLh060auAXGxAl4CSVcb7+54xKJhTpm5FBhiaU/5WMR53k2uVFJSiGGAXKXF
	5Bn1iXpFbONQkAcj99kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54PX-0003ZC-Iw; Fri, 21 Feb 2020 09:15:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54PL-0003S5-81
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 09:15:41 +0000
Received: by mail-wr1-x442.google.com with SMTP id g3so1092222wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 01:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bEVtSXMN2wxEExI4lH+Up8MQyxBldRZrbHcNZQGtFA0=;
 b=cHgClTJ05Rp4GvKFcbANPp3eANEP91ZtAnQuF7p4BkIc2AZeGLyVVGDl/cmZjHCXBe
 kpC+5YEtNprjLE1VOU6R8Y/ypyBhlZXu1raolt9vSnki0QV4Q/5dCKVNW9ZLZ54mxgvC
 CJGctsijTZQfUB5Lp6oQf7/5dJrc7MwlyiW5z2N/rhORM9sRf8vzkgDakvPi5WoTgRmS
 +6RN+Jjt+dhFOV4uhtiadJldz3vQDm4r23F+nl+qBNGSPHpErOYMxFWh02GKcGPVfnRC
 Hr843caZYawjhvC+knNV98fWCceOc+0fyZIjJrM6H+Tzpmiu6E9Wbt5OT44LtEwbNzr3
 XVCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bEVtSXMN2wxEExI4lH+Up8MQyxBldRZrbHcNZQGtFA0=;
 b=n/JcoQWJdhOeLZzUcjnEEGiZNMcHjweiUgLmeWDqsuT6E2ZpmnoyVi4zQiNoV+cAPF
 JYNCdIBFGXr74nreh8AQkrhtua7XZgSKPQXqO2J8SFql/OXoMV6Z0pUbvmoSCYr5GCky
 ZCavvvtl5xd4Mg43/BZrjt1NtpouMQk/DQ/RZEfRSQNCCoXDevVZMQ28J11+AZR1Oo8V
 CSYFaxzUZR0zcuGbFACyXPgvwL0290V43WI+E+f/kWlA0gICMooWC3c07q+jXKy/ZU8W
 UBUs5M/lXADCueHtRUDeqkR9LwXPD5NmdR76J+KmwQW5VGg3PPdFCI1jj3mMRhanqU4L
 YGVw==
X-Gm-Message-State: APjAAAWVCNgy4FvCsHAa+WybqE03C4UZXd9aViKebTpjnGHgEfc4vqvb
 WaOhvBe2F/63PRuxwucUtlbB5g==
X-Google-Smtp-Source: APXvYqwWqLydfUTa++1rHDsmS2lwyqPlQNNoap63wh2ujfgZkGStivmdKat61euYqdKxWzpwpuFEiQ==
X-Received: by 2002:a5d:4447:: with SMTP id x7mr47327713wrr.393.1582276537677; 
 Fri, 21 Feb 2020 01:15:37 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858])
 by smtp.gmail.com with ESMTPSA id
 o15sm3257837wra.83.2020.02.21.01.15.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 01:15:37 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org,
	khilman@baylibre.com
Subject: [PATCH v4 0/3] usb: dwc3: parkmode_disable_ss_quirk on DWC3 controller
Date: Fri, 21 Feb 2020 10:15:29 +0100
Message-Id: <20200221091532.8142-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_011539_284900_0533C770 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes since v3 at [3]:
- fixed patch 3 subject

Changes since v2 at [2]:
- rebased on v5.6-rc2

Changes since v1 at [1]:
- added rob review tag
- added Thinh Nguyen in commit log

[1] https://lore.kernel.org/linux-usb/20191014141718.22603-1-narmstrong@baylibre.com
[2] https://lore.kernel.org/linux-usb/20200109101535.26812-1-narmstrong@baylibre.com
[3] https://lore.kernel.org/linux-usb/20200219141817.24521-1-narmstrong@baylibre.com

Neil Armstrong (3):
  doc: dt: bindings: usb: dwc3: Update entries for disabling SS
    instances in park mode
  usb: dwc3: core: add support for disabling SS instances in park mode
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
