Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011C11CF1C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 11:39:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X7qyOYdzD6SSFlA/YHrTkK+DZhgbp86x6sUAvS67+ng=; b=HHnq+JVIDLVd3Z
	zI6daxleBmqWpHrQwSvIoBeWqMbLcgKElaCdgxrdW7jiIGYtWLlpH9KBMnqptDsmU7nQ47F/tZoxk
	SASZ9z05v5GwPJF2Xz0qcsMXWr2oFL1jkpw/Tfx2y5XJF1IsqHTuJj0MG3V39blwacl4Mj10SyrvR
	qhXDhhvh86zwrHQ53kBuHRsxsfVaAEtqrYjtEkMRxPTLktcUUvwLpo8eJ5J8D/okHCgqQ7YT7Qa9t
	rHWd4TvxrZdI+r+OD3zWPB1w5D/Sr37yynzdtfVZGgihXup7YxJgIJA0F9SbhTFPTNaAXIC+bNv6m
	/p1Ga24FachHZougXpAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYRNx-0000fr-Dy; Tue, 12 May 2020 09:39:37 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYRNj-0000dx-Jp
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 09:39:25 +0000
Received: by mail-wm1-x341.google.com with SMTP id m24so11377459wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 02:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zgpqu0nvlNXje4P44wgJ/fTYplh7IoX+pXP6R2kTyUM=;
 b=uzxHI4cI4r7ueJkfpnBdL3JzpvoW11LDPGiW6NfK1U9s8c2/BhOFPdFJjMwZ6ryp+U
 1tU+DHdfOsMJQle6OpB0KoaUQHeyVEdbxV0BUVeHnfQVrsbYAS/6IzYrgTESjFYX4pqQ
 5/Dsf8ikXsKJcV491ahTN25F6sw2KPdozOs6+pO2ITbRI9Mm52K3zL744WjWTdvJG0hV
 YejSR9syq8/27XceTE9AdEzoCBtZW5B5g3cHdVmxzu8Rc0QoC/j25fJBFHt0A6NhSWOP
 IgHs7vrjfl1oPq0ouyWYrdBtpp+skiLEC3zJlbzZj0/f59jQ7iWsW5pKVjNBuR8ZmxVA
 UrPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zgpqu0nvlNXje4P44wgJ/fTYplh7IoX+pXP6R2kTyUM=;
 b=iEvTZ2Y87ZX5VdcYrkPNSt9OW7DQ6nenaEk5wXYjaBGwnlklmB4rTMuljcSUmaAC3M
 IMfrgLedR9icgHWF+d1qnsMCVlZJ3YbNJoXjzyePoKLkmxuMbqzyGVhFJYf1Ta6nmcpx
 Hljll0x2ZgYeNhWFyZf/JvjGhrh/2h9b2MwNXvYPWhrE8fNA3wP9vfthTIgsRwSP6qqU
 lX/w/1sIlsqbcKOVWbZEI5fJe5Ovv6Nm/n5Y/pSzc+SPLmZ+0l2kJ64bnm6x04K3MoXK
 I+FOL/SKtUFYxhGNO/E3Myo3ZMXRsr2IhQEUQRC1X261XvbgYhXPC1e7+ZswFa3zgRiB
 CnMQ==
X-Gm-Message-State: AGi0PuaSRTXB8JkvMlKQGGuLbpLY+Sk/dFppmNpn6DfXwHSjkTJ2BEIS
 eOjHYmRlXAtYk8KClvIsMi+u7A==
X-Google-Smtp-Source: APiQypKf2iz/NXq0roCfN6pjhAVz0wejgec/5x0siuuEH16JGsJRfDvKR1I8FJOnJ4nNNidj130K1Q==
X-Received: by 2002:a1c:1c6:: with SMTP id 189mr5058963wmb.47.1589276361349;
 Tue, 12 May 2020 02:39:21 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id
 81sm14037092wme.16.2020.05.12.02.39.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 02:39:20 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 0/2] arm64: dts: meson-sm1: add thermal nodes
Date: Tue, 12 May 2020 11:39:14 +0200
Message-Id: <20200512093916.19676-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_023923_698059_77A36213 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SM1 Thermal is missing and broken since the G12A/G12B thermal enablement,
fix this here by moving the g12b thermal nodes to meson-g12b.dtsi
and adding the proper sm1 thermal nodes.

Neil Armstrong (2):
  arm64: dts: meson-g12b: move G12B thermal nodes to meson-g12b.dtsi
  arm64: dts: meson-sm1: add cpu thermal nodes

 arch/arm64/boot/dts/amlogic/meson-g12.dtsi  | 23 --------------------
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 22 +++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi  | 24 +++++++++++++++++++++
 3 files changed, 46 insertions(+), 23 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
