Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8979C196
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 06:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g3VqMp7E+08vWteKWRX7A4+OqDzH3M8rbM9bJ3N43+s=; b=F2CzT1Jn5ixMLqEOogjPKgLl6A
	mZcZ1UfxkqpDl8lhRq8/2L78W1WZnUtIHblbWhA+2pYXfQM1X5GG50u1IfWBN2kBBMUoyxffOyyA8
	E9q8oU6hRLhuwuVKQvxsWIZSAEFEuBnpJJU75rhjTFUbq8L56fCSk+M/mRkBbXv2+ZExHOy3VHPkS
	2aRCwdIn32xvBeaE+fVwE1HLkFfYSVTFzZyGrmVtIcIloFjJkKzeOXEvEXcSsPRkYSDVw0WmRFOsn
	XeuhqaIGsWAp59WBlhVGFDbtVmMErmRcCoQzd537DE0NlwEaTlIXU1AON4XTXyYHKRFx4DJgEfOnM
	15LWGT0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1jlr-0007Mv-0M; Sun, 25 Aug 2019 04:04:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1jji-0005mu-Qs; Sun, 25 Aug 2019 04:02:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id y8so12089476wrn.10;
 Sat, 24 Aug 2019 21:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OfWp6DdTWFBY5iMG3Y4I12ubDq+isq8BawGVdp8q8tE=;
 b=u0G77X/SBFfXDGhxY1mgwkw+Lc2DpUIoIdKiKE75hN27NrmpsHPOmAB9IvCgyFpaqq
 rqRhGnNYOp+OwHv0oIwXSLEAcbca8ahJGUAlfO+gLJS5615+roz8DGgd2YFJiSiPppth
 wolUraO1EjUXvX7Zk1xK9BPSsj37Tk9bck9BVZQK8a0SPRJRvPSfrQZnDBGBud1XnH7l
 p47u5vyuCd70xoosyLni2CDNTOwMFqM3GkPUn4PBC1fHw4RsW7+9JmVfzzIKVsJznXNz
 VqfLDKUQdveYiqSz6Zzj5P3wEMkJIrQIUdm/kstxbgI/DFhsAScgmbJQ4/7XGapeKdVY
 xGbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OfWp6DdTWFBY5iMG3Y4I12ubDq+isq8BawGVdp8q8tE=;
 b=raDKwVuY3CPbDyO3yHH3wU5krN1jBLngf8vRkMhVRFPFfhFsIR2Bnn1YV62cEzXKC6
 JeqZwbmWQsBJzYd20UjVnDRubWHqQOt94vBdfkd3GTEhqjY73xSdG+8o2KX6xAm+mmLr
 Sw6v9/84AYoDwNtRR1UdzMjGdGxOfQCphAxyDz1/juxYLWIzsj4HS4TtBxmJyfjNEmIB
 Cdbu/ANwN6zuOBH2djV9Y+VA7uTZ78VQrgIeN2GSQAJC7jgfZi1OLeIseS9+6bdvV74Y
 9smZYt64CkbbvMbwOsDDO6CGQ3umCLCOdRrL+oaFtjanifCPJsJW+5dszKrtFlta1eXF
 6nvg==
X-Gm-Message-State: APjAAAWpr6UT+HXfpy1kQhJhuIaZ02kst+YmqjTC001+4+mTgNhwgwDx
 nu2SB6OlfewoDZVZ7FbDi2k=
X-Google-Smtp-Source: APXvYqzIzM7anln1kp1dhBf/Fy8v6RC5KHmIZwhYYq5nmO5CVTPGaWeWNBN7WkqDnGAFj51lP5TGPg==
X-Received: by 2002:adf:e94e:: with SMTP id m14mr14601540wrn.230.1566705753817; 
 Sat, 24 Aug 2019 21:02:33 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id a6sm6820985wmj.15.2019.08.24.21.02.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 24 Aug 2019 21:02:33 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 6/7] arm64: dts: meson-gxl-s905w-tx3-mini: add rc-tx3mini
 keymap
Date: Sun, 25 Aug 2019 08:01:27 +0400
Message-Id: <1566705688-18442-7-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
References: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_210239_019380_A1DB7729 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add the rc-tx3mini keymap to the ir node

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts
index 789c819..dd729ac 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts
@@ -20,3 +20,7 @@
 		reg = <0x0 0x0 0x0 0x40000000>; /* 1 GiB or 2 GiB */
 	};
 };
+
+&ir {
+	linux,rc-map-name = "rc-tanix-tx3mini";
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
