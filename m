Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 751221356A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:16:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=csTvW9o0XMOyutbGvN8JHASklFEWSUBWdvBbdWJTLt8=; b=bnKFH6WF2T30CL
	VQV2rRIWUD7O/Ah2e5bRpRP00RIl+MQURS0e8+eInbw5vkJzOqN0+a9ESz+ht+F5vlmhC7pf9di/v
	jyyvhxCP12AtR6uaVeJLmKRcOlqcNJn/X+wd1NVrIlJxhKyZcYzqBi0L8tT7w5YxZyQePiHjwkemi
	WANpkaWgRPKFAffYEGh5g8MvO8xUfRvU1TEGxKBdBORiwdXHlyVkIfzNgZjnYDAekkONl7pwISgGv
	y2W6+DJSq4PJVuIiNwoUdHhNX1UR2+3puzrdmhD6Uo7ndakKOkOzlTK1TBiTHQ481E1cTdaqR3dru
	Lr3PEhCtc2gq3XZeCzmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUr8-0000bj-5c; Thu, 09 Jan 2020 10:15:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUqp-0000Uf-RB
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:15:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so6773816wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 02:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OCtmiCqI2P9xqNVNxOtkPbW3MhGrPJGbIhxNJ1nkAW0=;
 b=lgrnbfU1H/MNfYfjNyPKCLX8Dupk4Xxp802m2khDE6FAH+jUO/Q3rujArNbNp2srK6
 AfNTQhK48EeK13IfM0XUEaJdZp95ZAuuWu9Pntf0yr3/sp6bThHoHwsonQ/DSRIRC0/l
 Iu5Gp1tC3S1tnQ/3MbLIqdHeOdxG7vfRUjitNgCPvGzAa8l94U+hzydiaLVTk8knZD/i
 N3HVpz8pngzUeuEzphEVCNcsRI7dzQPoQ87bbf2zHSgiyiyo77hRZhx3o/NvtzcV7/P6
 /fQx0nCINET1HpGXUBhr5qqwuRBsOOa0hullENg6hfApAy9N0TTTx0by95HdDWYRf/s0
 +A0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OCtmiCqI2P9xqNVNxOtkPbW3MhGrPJGbIhxNJ1nkAW0=;
 b=e/xqDxL14hg5yOs5jCgPggvLhWO8fOHUfrRUw+LE7qCKodG8YWDsK8z7dYvQKkDMT6
 RSM/uUsmDxutB15XyCaYSswcU09m2sQuH9NU2GdqutNVzrLoD1wjSJgMa+38SXchTZgB
 Q+yJ00OmFqtOA3FxlvqKk0dUe1NAZxm2r0aZJN2pW5d7FahqoyABRSaiLJb06RcxiYtf
 MpfJxpzp0xr7OeMe1O2YI/CfFJoH7TE5gjIWfoOWGqpV3g9eJq16sNic3yhcXXwFfSBl
 AvKCd3y8gP+IUkz3AV5F+nGL1UIdlqGx3U5TACNnKdacLDWNRHJpIu6n4aPnPJFxCO6K
 LCyw==
X-Gm-Message-State: APjAAAVna+see0kOoVOMylIPGJr6fqmLHq4svrjhMZ6IIV3zObtNSwAX
 +Er/2K1fnKNf5/26l9P62s1lmw==
X-Google-Smtp-Source: APXvYqztrhFHOZkOTr83Eod3hS6kUXgxLZedODaQHDCw+HCLHCGGyJQ6p/fPteX91I44SSRh4Tqxhg==
X-Received: by 2002:a05:6000:11c3:: with SMTP id
 i3mr9946380wrx.244.1578564937945; 
 Thu, 09 Jan 2020 02:15:37 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q19sm2250460wmc.12.2020.01.09.02.15.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 02:15:37 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org,
	khilman@baylibre.com
Subject: [PATCH v2 0/3] arm64: g12-common: parkmode_disable_ss_quirk on DWC3
 controller
Date: Thu,  9 Jan 2020 11:15:32 +0100
Message-Id: <20200109101535.26812-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_021539_916039_ACF401AB 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Changes since v1 at [1]:
- added rob review tag
- added Thinh Nguyen in commit log

[1] https://lore.kernel.org/linux-amlogic/20191014141718.22603-1-narmstrong@baylibre.com

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
