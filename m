Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D46D9D64E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cnXT8UbnPSySZu9KihdvcruZvuJK1THP6OpqhPDYS2I=; b=a3WK2d2VO4M2fQ
	JyrIXTunnwvTSTg46JPvx3ck8SjRW/lXyP/DByNqmLBYxPDpGSgHdWYGMFBX4usRSZroN95qhCQOX
	a/Fl4ugDu7nfCCchhz97ZvVtPPL+mzwVEVsNTRb/SVQVHMmVIf6Nfx9yxXSJjvSngcMcstfOAjkvJ
	2cSV30R3mw50Dm1IEp/QgXnv5isyzJVuQCF8dibTgNHSu7i7eANGkmcstaMavFKqjji2LEIxSY5b3
	OYvuuRd7aA2IeF1NpRskr/82kEPv0QG+eFtKbHCueunEaOYRLkqKj/szXE+GGK1fKsg9WK/5eJ1dX
	g+3/PXTak8JpNiuJO2SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1AD-0002eY-QF; Mon, 14 Oct 2019 14:17:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1A3-0002bh-OB
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 14:17:25 +0000
Received: by mail-wr1-x443.google.com with SMTP id n14so19914728wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 07:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WSSsFrkn7EdTTWu+GWp0+LGeW3aaonOPgHYuuTaEg/Q=;
 b=oH36a8sl1Y0woo+uZ+4d0YC209fG+020lXLFq2OWCB2CNdkLhDLm9/zs35CX/x2qo0
 zYI7znIKhTEadQR2tDjgQTxje1l03+eUNK8+pPUzzcqGuiY+4rNgov+W+TpwKDVb34wa
 gSojkc7hfZhAHFX5wloTc2MrIC08nBej23ayyT1Q/GQytY3rFPAHkNsW1C44GKSI+Snt
 ilTLJ99AXZjy+eHwDXCY3nLPPOAEV2ryDLikeqvttfu4IBI0TvRxOdhV7o1xXQrIr8Uv
 WqruTS/QkuTKsv/SzCjvKEdVjhkhlhE4K+lxDjwMf2n5QDY24GcYFA0chKuOp71rVzDL
 EnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WSSsFrkn7EdTTWu+GWp0+LGeW3aaonOPgHYuuTaEg/Q=;
 b=khS+HJmsSJKefloaSdDAP3rBX84jv+YK07aSBdFlY9waNQQbn410pdLZJhMPdIJ+p5
 yAIsFfVMuhF6FarQ6vYWI5CTGm2vc+7ujNh85CPwd6g/vGk6Dm0jH4LU2BUe10pkP3hX
 5GCmgZoJtbqAbsrFan2jZI1tw13WFicpXTxFAGigjcktnOD+rS8F0SZBbzJOpc8Fum9f
 GJIUg+J9Io1FImyfiOSOZIFwJP5FwDpVM/paH5sIUbDlQufnRrLDK+0VWfPTVXuYFM+r
 OyRkBtRhR8oDTcEyVSyxOOAXRP38cCSJr7q1nSnHAciezhFpJofMhfrQTKiJIG+ry2aC
 Qrcg==
X-Gm-Message-State: APjAAAUZk6dnRFMVyJ2gy0bdYlixF87IrKmTYQQAyb6iLooouaO450NF
 IFCRcUFmcgCnXM00dQnUkU3AOg==
X-Google-Smtp-Source: APXvYqzKPStl7+pYZiI5sC3h4CfQaz40UoOoFTnzTHrvT/VixgRr3uo24eUmfwMJhwQ+sK/e93D/3w==
X-Received: by 2002:adf:f004:: with SMTP id j4mr7541474wro.68.1571062640575;
 Mon, 14 Oct 2019 07:17:20 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t83sm42708624wmt.18.2019.10.14.07.17.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 07:17:19 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org,
	khilman@baylibre.com
Subject: [PATCH 0/3] arm64: g12-common: parkmode_disable_ss_quirk on DWC3
 controller
Date: Mon, 14 Oct 2019 16:17:15 +0200
Message-Id: <20191014141718.22603-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_071723_833050_4B10D746 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
