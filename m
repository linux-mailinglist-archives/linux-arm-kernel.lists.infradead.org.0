Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEAE158E73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZIRfFGbs6CCq6naIJmum+LUPh4uvEtmKnPuk6WuUTFw=; b=k8m
	sMdFRivXLAnXV3lz2o+eKsBMKV6kq1wgwuQVf+CORpnQdFSx6V07Kh+qw787J7QGj6/JaNgCONyGw
	aZdOPjTAuXDHj/0Iw170srsVRA2VfPus5ytcmH7bQtF0Lh1vg9eCxQw+JRIvQBnSKfZbeCe6IMkeE
	M0f5BTTnF7wYLV4EaNG/jTnlsb8m8MpB07Q9E6qXPj71scJIDy6Ouq2ooH5UKxxmhgblEwosgtoPC
	z3Qx2ETK+W4bUpih8pUzMUtyO3oWvugPCNg0qxHRxC7o7aD2O7H1y3g99IS9KV/GjL07LxM9R+A0y
	+vSAonuO5qOgWZqu/9u54Js5OskyMPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UdA-0003qy-Kj; Tue, 11 Feb 2020 12:27:08 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Ucb-0003ST-DM
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:26:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3D88AAFCA;
 Tue, 11 Feb 2020 12:26:30 +0000 (UTC)
From: Nikolay Borisov <nborisov@suse.com>
To: mripard@kernel.org,
	bjorn.andersson@linaro.org
Subject: [PATCH v2 0/3] Add support for hwspinlock on A64 SoC
Date: Tue, 11 Feb 2020 14:26:21 +0200
Message-Id: <20200211122624.16484-1-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_042633_612489_B62E17B2 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nikolay Borisov <nborisov@suse.com>, devicetree@vger.kernel.org,
 wens@csie.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here's v2 of hwspinlock support in A64 SoC. Main changes:

* Rewrote dt bindings in yaml
* Re-arranged hwspinlock node in dts to follow ascending address order
* Sorted includes alphabetically
* Minor style changes
* Use GENMASK/FIELD_GET to query number of locks from mmio register
* Separate hwspinlock_device from sun50i_hwspinlock. This enables to utilize
devm_add_action_or_reset, which results in cleaner error handling in the probe
function.
* Switched to device managed resources where applicable.


This was tested on a pine64 board. I loadeded/unloaded the driver checking the
state of clock/reset/sysstatus registers as well as trying lock/unlock operations
(using the devmem busybox utility).

Nikolay Borisov (3):
  hwspinlock: sunxi: Implement support for Allwinner's A64 SoC
  arm64: dts: allwinner: a64: Add hwspinlock node
  dt-bindings: hwlock: Document A64 hwspinlock bindings

 .../allwinner,sun50i-a64-hwspinlock.yaml      |  47 +++++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   9 +
 drivers/hwspinlock/Kconfig                    |   9 +
 drivers/hwspinlock/Makefile                   |   1 +
 drivers/hwspinlock/sun50i_hwspinlock.c        | 163 ++++++++++++++++++
 5 files changed, 229 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml
 create mode 100644 drivers/hwspinlock/sun50i_hwspinlock.c

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
