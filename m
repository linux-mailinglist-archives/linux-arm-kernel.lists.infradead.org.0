Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EB3120E68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JOivGK2ZhGhhXJGENUFuXlTDDGWoEozasSH1yptWang=; b=r921koMnU7j7Sv
	VuvJqPlq2gFUffcgHdHwbQYQKWIWir7LHqiXJ8jdzzzTkMdBhD2OSzsVxGDWqmk0jKPSLhvSqzUDs
	O8jcJyUd+VOTKAUcIbJd0bFOLKUpO6/KTNw1c3GCqIW+6aF5KP+Kf7zDwgLumoIp4SoAj5NIHkBvp
	Oqu/2CwMB52aDtKLp43P94QIaLv2pYm71IXt7ZcWsKaSSONWadnrirop5oRBmWp1ZPCjSi1iMn3Cf
	rDKO0nld4RJ8rma79VY13OtJHK2Wq0ntW1sNmagFMqktvpBEqWNVbygdbA8LoY5UBQTl1gAa7oRax
	c4Y8rON3C7b9phXYZw/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igsfV-0003Cy-3k; Mon, 16 Dec 2019 15:52:21 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igsf6-000329-Dk
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 15:51:58 +0000
Received: from localhost (p54B33297.dip0.t-ipconnect.de [84.179.50.151])
 by pokefinder.org (Postfix) with ESMTPSA id C22C32C04DF;
 Mon, 16 Dec 2019 16:51:47 +0100 (CET)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-media@vger.kernel.org
Subject: [PATCH RESEND 00/16] media: use new API for creating client devices
Date: Mon, 16 Dec 2019 16:51:27 +0100
Message-Id: <20191216155146.8803-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_075156_762248_2C93F78E 
X-CRM114-Status: GOOD (  11.39  )
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These media drivers create a new I2C client device with the deprecated
i2c_new_device() and check afterwards if the client exists and if a
driver is bound to it.

This series changes the drivers to use the now suggested
i2c_new_client_device() call and a new helper to check if the driver is
bound. This helper supports (for now) the old and the new API and is
also more readable.

The drivers were converted with the following coccinelle script:

@@
expression client;
statement S;
@@
        client =
-               i2c_new_device
+               i2c_new_client_device
                        (...);
        ... when != client
        if (
-               \( !client \| client == NULL \) || \( !client->dev.driver \| client->dev.driver == NULL \)
+               !i2c_client_has_driver(client)
                        ) {
                        S
                }

The helper has been tested on a Renesas Salvator-XS board (R-Car M3-N).
The rest was build tested by me and buildbot.

This series is based on v5.5-rc2 where the new helper was added. A
branch can be found here:

git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git renesas/i2c/new_device_with_driver

This series is largely the same as the last one sent out in November. It
was rebased to v5.5-rc2 and one Rev-tag added. The patch for v4l2-core
has been extended to use more new API. This series can be applied as is.
I think it should go via the media-tree.

Looking forward to comments.

Thanks and happy hacking,

   Wolfram


Wolfram Sang (16):
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
  media: v4l2-core: v4l2-i2c: convert to new API with ERRPTR

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
 drivers/media/v4l2-core/v4l2-i2c.c            |  10 +-
 16 files changed, 115 insertions(+), 121 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
