Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16092F208F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 22:21:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hkgy+PEAc+h6PYa7IeyXEPDHKbWvayVWDKxHoFmtKyI=; b=fQmHUwVhU5ZU7R
	jDajerkWQv1u4U9qvEwlzNdRnmyEhIjE9hJd1nUEH4DH+71pUKzuVuyrcrjA/iDEiXpONlBwYXmnq
	8jrb1fWvwy45XL8kv7uK5vsDCow8mafFGuZ92KhAaZyJZuEovaLHv72d73ep2jDWMLpcagT2Kgmhs
	hMHmcEt67IabFhObXve6Fb9yaaExmO3ty30xhqi1s3SqHcOgwjG3xwwYLHW/jPpmqu4QicvdEgoc/
	Gwi1n9xD4DXmuCVjEPEjI0/+fisAPaDqtqT2cQfF9k/f2RFLCLIickQkdik/lIq9cpQC1ilInGezT
	NGt8q2UvLxId3xpTrHEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSSkC-0002lF-CJ; Wed, 06 Nov 2019 21:21:36 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSSk1-0002j6-MI
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 21:21:27 +0000
Received: from localhost (p54B33505.dip0.t-ipconnect.de [84.179.53.5])
 by pokefinder.org (Postfix) with ESMTPSA id 732742C053B;
 Wed,  6 Nov 2019 22:21:20 +0100 (CET)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 00/17] media: use new API for creating client devices
Date: Wed,  6 Nov 2019 22:21:00 +0100
Message-Id: <20191106212120.27983-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_132126_028304_59C485BB 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These media drivers create a new I2C client device with the deprecated
i2c_new_device() and check afterwards if the client exists and if a
driver is bound to it.

These series changes the drivers to use the now suggested
i2c_new_client_device() call and introduces a helper to check if the
driver is bound. This helper supports (for now) the old and the new API
and is also more readable.

The drivers were converted with the following coccinelle script:

@@
expression client;
statement S;
@@
	client =
-		i2c_new_device
+		i2c_new_client_device
			(...);
	... when != client
	if (
-		\( !client \| client == NULL \) || \( !client->dev.driver \| client->dev.driver == NULL \)
+		!i2c_client_has_driver(client)
			) {
			S
		}

The helper has been tested on a Renesas Salvator-XS board (R-Car M3-N).
The rest was build tested by me. buildbot has this still queued.

Although the first patch is in the I2C realm, I suggest that all patches
go through the media tree to avoid the dependency. There are no merge
conflicts with I2C currently and I don't see any coming (famous last
words).

This series is based on linux-next as of today. It does not depend on
the i2c_new_probed_device() conversion I sent out earlier today. This
series can be applied as is.

Looking forward to comments.

Thanks and happy hacking,

   Wolfram


Wolfram Sang (17):
  i2c: add helper to check if a client has a driver attached
  media: dvb-core: dvbdev: convert to use i2c_new_client_device()
  media: dvb-frontends: cxd2820r_core: convert to use
    i2c_new_client_device()
  media: dvb-frontends: lgdt330x: convert to use i2c_new_client_device()
  media: dvb-frontends: m88ds3103: convert to use
    i2c_new_client_device()
  media: dvb-frontends: ts2020: convert to use i2c_new_client_device()
  media: pci: cx23885: cx23885-dvb: convert to use
    i2c_new_client_device()
  media: pci: saa7164: saa7164-dvb: convert to use
    i2c_new_client_device()
  media: pci: smipcie: smipcie-main: convert to use
    i2c_new_client_device()
  media: platform: sti: c8sectpfe: c8sectpfe-dvb: convert to use
    i2c_new_client_device()
  media: usb: dvb-usb-v2: af9035: convert to use i2c_new_client_device()
  media: usb: dvb-usb-v2: anysee: convert to use i2c_new_client_device()
  media: usb: dvb-usb-v2: rtl28xxu: convert to use
    i2c_new_client_device()
  media: usb: dvb-usb-v2: zd1301: convert to use i2c_new_client_device()
  media: usb: dvb-usb: dib0700_devices: convert to use
    i2c_new_client_device()
  media: usb: dvb-usb: dw2102: convert to use i2c_new_client_device()
  media: v4l2-core: v4l2-i2c: convert to use i2c_new_client_device()

 drivers/media/dvb-core/dvbdev.c               |   4 +-
 drivers/media/dvb-frontends/cxd2820r_core.c   |   4 +-
 drivers/media/dvb-frontends/lgdt330x.c        |   4 +-
 drivers/media/dvb-frontends/m88ds3103.c       |   4 +-
 drivers/media/dvb-frontends/ts2020.c          |   4 +-
 drivers/media/pci/cx23885/cx23885-dvb.c       | 114 +++++++++---------
 drivers/media/pci/saa7164/saa7164-dvb.c       |  20 +--
 drivers/media/pci/smipcie/smipcie-main.c      |   4 +-
 .../platform/sti/c8sectpfe/c8sectpfe-dvb.c    |   4 +-
 drivers/media/usb/dvb-usb-v2/af9035.c         |   4 +-
 drivers/media/usb/dvb-usb-v2/anysee.c         |   4 +-
 drivers/media/usb/dvb-usb-v2/rtl28xxu.c       |  36 +++---
 drivers/media/usb/dvb-usb-v2/zd1301.c         |   4 +-
 drivers/media/usb/dvb-usb/dib0700_devices.c   |   8 +-
 drivers/media/usb/dvb-usb/dw2102.c            |   8 +-
 drivers/media/v4l2-core/v4l2-i2c.c            |   2 +-
 include/linux/i2c.h                           |   5 +
 17 files changed, 116 insertions(+), 117 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
