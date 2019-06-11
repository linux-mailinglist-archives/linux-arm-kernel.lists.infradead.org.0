Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A0C3C63A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NytPVttcwUEeDF/zvgTMeWOb3XV6Wsg+3xd6Et4xfJc=; b=gPp9V1wW3BIQJv
	uteLFMbLzntzhFX8q/FDjkz5Pw3VtVr6OJIutZ50sWreljc5xUaFCd29avjouifUGYFiNnQBg6rlB
	u1RF6BB0HsmGJt8JOnCk3Sx6W9ZqCnevUoWBiynFuV0hvdUifV/vAyk39YfmoYhmapfkH/z4NU7jh
	wwcbCFFY4m3ikjHFH9U7uFumImB5RmEQLjPkh+FKwxO+Pp3fyAzPKox+ki+NNWcQqarBxH5CsTl+5
	PoM67Pfy2QIJ0hHgi9MvPz9HaZP8WuzU8/KM3w0JZWnREF+s4H761lxRqf+vIKZZPboyQhhaCoP0u
	10CGC5AmJqWlpuN5TYHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacR2-0003TM-HV; Tue, 11 Jun 2019 08:47:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacP9-0002QY-PF; Tue, 11 Jun 2019 08:45:21 +0000
X-UUID: 26bece40580646158e739ddecc12b7d5-20190611
X-UUID: 26bece40580646158e739ddecc12b7d5-20190611
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1974616634; Tue, 11 Jun 2019 00:44:59 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 01:44:57 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 16:44:54 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 16:44:46 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>
Subject: [PATCH v7 00/10] add USB Type-B GPIO connector driver
Date: Tue, 11 Jun 2019 16:44:30 +0800
Message-ID: <1560242680-23844-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_014519_830674_9B4CEFD3 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Because the USB Connector is introduced and the requirement of
usb-connector.txt binding, the old way using extcon to support
USB Dual-Role switch is now deprecated, meanwhile there is no
available common driver when use Type-B connector, typically
using an input GPIO to detect USB ID pin.
This patch series introduce a Type-B GPIO connector driver and try
to replace the function provided by extcon-usb-gpio driver.

v7 changes:
  1. [5/10]: add signed-off-by Chunfeng
  2. [6/10]: add signed-off-by Chunfeng
  3. [6/10]: depends on linux-next of Rafael's tree [1]
  4. [7/10]: add signed-off-by Chunfeng and tested-by Biju
  5. [9/10]: add tested-by Nagarjuna, and remove DEV_PMS_OPS suggested by Andy

[1] https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/log/?h=linux-next

v6 changes:
  1. merge [1] and [2] into this series
  2. don't use graph anymore to find usb-role-switch
  3. abandon [3] and introduce three patches (6, 7, 8 in this series)
     to rebuild APIs getting usb-role-switch

  [1]: [v3] dt-binding: usb: add usb-role-switch property
       https://patchwork.kernel.org/patch/10934835/
  [2]: [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
       https://patchwork.kernel.org/patch/10909971/

  [3]: [PATCH v5 4/6] usb: roles: add API to get usb_role_switch by node

v5 changes:
  1. remove linux/of.h and put usb_role_switch when error happens,
     suggested by Biju
  2. treat Type-B connector as USB controller's child, but not as
     a virtual device, suggested by Rob
  3. provide and use generic property "usb-role-switch", see [1],
     suggested by Rob

  Note: this series still depends on [2]

  [1]: [v3] dt-binding: usb: add usb-role-switch property
       https://patchwork.kernel.org/patch/10934835/
  [2]: [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
       https://patchwork.kernel.org/patch/10909971/

v4 changes:
  1. use switch_fwnode_match() to find fwnode suggested by Heikki
  2. assign fwnode member of usb_role_switch struct suggested by Heikki
  3. make [4/6] depend on [2]
  3. remove linux/gpio.h suggested by Linus
  4. put node when error happens

  [4/6] usb: roles: add API to get usb_role_switch by node
  [2] [v6,08/13] usb: roles: Introduce stubs for the exiting functions in role.h
    https://patchwork.kernel.org/patch/10909971/

v3 changes:
  1. add GPIO direction, and use fixed-regulator for GPIO controlled
    VBUS regulator suggested by Rob;
  2. rebuild fwnode_usb_role_switch_get() suggested by Andy and Heikki
  3. treat the type-B connector as a virtual device;
  4. change file name of driver again
  5. select USB_ROLE_SWITCH in mtu3/Kconfig suggested by Heikki
  6. rename ssusb_mode_manual_switch() to ssusb_mode_switch()

v2 changes:
 1. make binding clear, and add a extra compatible suggested by Hans

Chunfeng Yun (7):
  dt-binding: usb: add usb-role-switch property
  dt-bindings: connector: add optional properties for Type-B
  dt-bindings: usb: add binding for Type-B GPIO connector driver
  dt-bindings: usb: mtu3: add properties about USB Role Switch
  usb: roles: get usb-role-switch from parent
  usb: roles: add USB Type-B GPIO connector driver
  usb: mtu3: register a USB Role Switch for dual role mode

Heikki Krogerus (2):
  device connection: Add fwnode_connection_find_match()
  usb: roles: Add fwnode_usb_role_switch_get() function

Yu Chen (1):
  usb: roles: Introduce stubs for the exiting functions in role.h.

 .../bindings/connector/usb-connector.txt      |  14 +
 .../devicetree/bindings/usb/generic.txt       |   4 +
 .../devicetree/bindings/usb/mediatek,mtu3.txt |  10 +
 .../bindings/usb/typeb-conn-gpio.txt          |  31 ++
 drivers/base/devcon.c                         |  43 ++-
 drivers/usb/mtu3/Kconfig                      |   1 +
 drivers/usb/mtu3/mtu3.h                       |   5 +
 drivers/usb/mtu3/mtu3_debugfs.c               |   4 +-
 drivers/usb/mtu3/mtu3_dr.c                    |  48 ++-
 drivers/usb/mtu3/mtu3_dr.h                    |   6 +-
 drivers/usb/mtu3/mtu3_plat.c                  |   3 +-
 drivers/usb/roles/Kconfig                     |  11 +
 drivers/usb/roles/Makefile                    |   1 +
 drivers/usb/roles/class.c                     |  41 ++-
 drivers/usb/roles/typeb-conn-gpio.c           | 284 ++++++++++++++++++
 include/linux/device.h                        |  10 +-
 include/linux/usb/role.h                      |  37 +++
 17 files changed, 529 insertions(+), 24 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
 create mode 100644 drivers/usb/roles/typeb-conn-gpio.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
