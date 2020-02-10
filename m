Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D40158065
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:02:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XeEfu+/qGHuaJev9d2MPZUZ7PuhTWPEwlcoUYobPhCs=; b=RDM
	1z2S50Jh4sitMCKEOZD9vUhbavMGR72Oyn4susSgNF6OXBXLu7dZqZqHwTvyR4ywYi6n/RA9c6t0C
	YJnSE2F3kCRfkI5+ekcMXi+Kklbs4vRAXLPdYaho4aynnoY7N8/fsHBA0qjzx3gzjmNo4L2i9RKWg
	ZLEQmta6lLUw7gYmBNN5fWcD8z0eL2wE+XfiFwVejTiQhB1VWzJnScelvolEcfJhHBuIlzf+6Hb89
	ULzxo5iGBLWR8sM/XA1NOGqpYpEFJLW+Ow/gDVHdN1HbIZM1Movlw45sZsuU1Ne9EIYL6HffRmzSe
	zPOL+YugqFBcSoSBLc8iBQRQA1iZ/Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CS1-0006vG-MO; Mon, 10 Feb 2020 17:02:25 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CRW-0006XS-IO
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:01:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0A64BAD66;
 Mon, 10 Feb 2020 17:01:46 +0000 (UTC)
From: Nikolay Borisov <nborisov@suse.com>
To: bjorn.andersson@linaro.org
Subject: [PATCH 0/3] Add support for hwspinlock on A64 SoC
Date: Mon, 10 Feb 2020 19:01:40 +0200
Message-Id: <20200210170143.20007-1-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_090154_966652_5CE6C92C 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nikolay Borisov <nborisov@suse.com>, linux-arm-kernel@lists.infradead.org,
 mripard@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here are a couple of patches that add support for hwspinlock ip block in the A64
SoC. I tested the driver on a pine64-lts and it seems to work - clock gating is
disabled and soft reset is de-asserted.

Nikolay Borisov (3):
  hwspinlock: sunxi: Implement support for Allwinner's A64 SoC
  arm64: dts: allwinner: a64: Add hwspinlock node
  dt-bindings: hwlock: Document A64 hwspinlock bindings

 .../bindings/hwlock/sunxi-hwspinlock.txt      |  27 +++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   9 +
 drivers/hwspinlock/Kconfig                    |   9 +
 drivers/hwspinlock/Makefile                   |   1 +
 drivers/hwspinlock/sunxi_hwspinlock.c         | 181 ++++++++++++++++++
 5 files changed, 227 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/sunxi-hwspinlock.txt
 create mode 100644 drivers/hwspinlock/sunxi_hwspinlock.c

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
