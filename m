Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7613A1FBCE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UoFrQ6QHzMn/yn27vYugItRnZz6OQFVQY/05WSPvCFA=; b=XO3//CEWY4Sw34rijoG2kYsqtR
	ZuPnyz3kl2O40ESEazlVg64u3IRSNNeOmPLl/+8NToEEIYsV/KnrK/x6OFRKF5Js3KcMgNqMSqqjm
	EIvQm/vc3zC3vix37kp2MqVqRpVDGtnRnJZCOMBIpxndQbEVQ4tdFaWF9ISKLBofsJFGonbz6CWTA
	xj2EPLUQgC0Ybh9PA51SXI8kPtYRkwEfrkK8Hf2iImXdQHYQt+kXBtG5c5MSW2CFmiKzUcG8pImS1
	4BoPNItTeBBZmz/lmBUgCJTkWeRe5lKvXfG29IW5rVa5OmPEU/C/SN5+PvIZ1ew1qyVm7p/JrRCoK
	/l5xaElw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFP4-0006JE-Bn; Tue, 16 Jun 2020 17:29:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFOj-00063c-1F
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:29:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 4CE612A2C75
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-input@vger.kernel.org, linux-tegra@vger.kernel.org,
 patches@opensource.cirrus.com, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org
Subject: [PATCH] Input: document inhibiting
Date: Tue, 16 Jun 2020 19:29:09 +0200
Message-Id: <20200616172909.21625-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <40988408-8f36-3a52-6439-34084de6b129@redhat.com>
References: <40988408-8f36-3a52-6439-34084de6b129@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_102921_228767_ADFE71FC 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel@collabora.com, Nick Dyer <nick@shmanahar.org>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Peter Hutterer <peter.hutterer@redhat.com>, Fabio Estevam <festevam@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Len Brown <lenb@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Vladimir Zapolskiy <vz@mleia.com>, Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Barry Song <baohua@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sangwon Jee <jeesw@melfas.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document inhibiting input devices and its relation to being
a wakeup source.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---

@Hans, @Dmitry,

My fist attempt at documenting inhibiting. Kindly look at it to see if I haven't got anything
wrong.

Andrzej

 Documentation/input/input-programming.rst | 36 +++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/Documentation/input/input-programming.rst b/Documentation/input/input-programming.rst
index 45a4c6e05e39..0cd1ad4504fb 100644
--- a/Documentation/input/input-programming.rst
+++ b/Documentation/input/input-programming.rst
@@ -164,6 +164,42 @@ disconnects. Calls to both callbacks are serialized.
 The open() callback should return a 0 in case of success or any nonzero value
 in case of failure. The close() callback (which is void) must always succeed.
 
+Inhibiting input devices
+~~~~~~~~~~~~~~~~~~~~~~~~
+
+Inhibiting a device means ignoring input events from it. As such it is about maintaining
+relationships with input handlers - either an already existing relationships, or
+relationships to be established while the device is in inhibited state.
+
+If a device is inhibited, no input handler will receive events from it.
+
+The fact that nobody wants events from the device is exploited further, by calling device's
+close() (if there are users) and open() (if there are users) on inhibit and uninhibit
+operations, respectively. Indeed, the meaning of close() is to stop providing events
+to the input core and that of open() is to start providing events to the input core.
+
+Inhibiting and uninhibiting is orthogonal to opening and closing the device by input
+handlers. Userspace might want to inhibit a device in anticipation before any handler is
+positively matched against it.
+
+Inhibiting and uninhibiting is orthogonal to device's being a wakeup source, too. Being a
+wakeup source plays a role when the system is sleeping, not when the system is operating.
+How drivers should program their interaction between inhibiting, sleeping and being a wakeup
+source is driver-specific.
+
+Taking the analogy with the network devices - bringing a network interface down doesn't mean
+that it should be impossible to be wake the system up on LAN through this interface. So, there
+may be input drivers which should be considered wakeup sources even when inhibited. Actually,
+in many i2c input devices their interrupt is declared a wakeup interrupt and its handling
+happens in driver's core, which is not aware of input-specific inhibit (nor should it be).
+Composite devices containing several interfaces can be inhibited on a per-interface basis and
+e.g. inhibiting one interface shouldn't affect the device's capability of being a wakeup source.
+
+If a device is to be considered a wakeup source while inhibited, special care must be taken when
+programming its suspend(), as it might need to call device's open(). Depending on what close()
+means for the device in question not opening() it before going to sleep might make it impossible
+to provide any wakeup events. The device is going to sleep anyway.
+
 Basic event types
 ~~~~~~~~~~~~~~~~~
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
