Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D2D17153A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kFVE3bylgKKYiknAWBzvZGvNWBu9H1HQ8KSrXHdCXqI=; b=daEXDN30K02qeV
	VcGZaa38lf30MlwrRqyYYd9KpaWYygkVfFC5IZmbmjHrwQvSRIPBiUtN8vo5KQE5G3pJ2qq5uBtuz
	CDgFPqaoIcuft+Q5wde92blsQtaV/jWKmai/yXm82C8neC3iYfGZsZBMECx/VXNUcJwItCERMECVn
	xoJZVKJskBpWa8UfC2MQKHs4kFOofgY96bJW+n8Nz1pXX12vd26VYLWmAK5cU84L1AVPOWe44/n54
	OzN6tGFP5yqYCEiw3+8fRQYG4EnetgSBwx/oIK2TCKUc1urCGSmpgvd3CNiztLefF1Suy4M59rddI
	5wmDVZJdMEgmOFMuGz7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Gd4-0001sm-B3; Thu, 27 Feb 2020 10:42:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7GcY-0001g4-7K
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 10:42:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GcR-0003f5-Ay; Thu, 27 Feb 2020 11:42:15 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GcP-0004nZ-5E; Thu, 27 Feb 2020 11:42:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Peter.Chen@nxp.com, gregkh@linuxfoundation.org, shawnguo@kernel.org,
 linux-imx@nxp.com, stern@rowland.harvard.edu, jun.li@freescale.com
Subject: [PATCH 0/3] USB IMX Chipidea fix gpio vbus control
Date: Thu, 27 Feb 2020 11:42:09 +0100
Message-Id: <20200227104212.12562-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_024222_269122_84986CD7 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-usb@vger.kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

the gpio-based port power is broken since commit [1,2]. I changed the
core behaviour to to cleanup the code and avoid local workaround fixes.

With this series and [3] I'am now able to disable the port completely
after I disbaled the pm_qos_no_power_off flag.

[1] 6adb9b7b5fb6 ("usb: chipidea: add a flag for turn on vbus early for host")
[2] 659459174188 ("usb: chipidea: host: turn on vbus before add hcd if early vbus on is required")
[3] https://lkml.org/lkml/2020/2/27/198

Regards,
  Marco

Marco Felsch (3):
  USB: ehci-hub: let port_power() override the ehci_port_power()
  Partially Revert "usb: chipidea: host: turn on vbus before add hcd if
    early vbus on is required"
  Revert "usb: chipidea: add a flag for turn on vbus early for host"

 drivers/usb/chipidea/ci_hdrc_imx.c | 10 ++--------
 drivers/usb/chipidea/host.c        | 31 ++++++++++--------------------
 drivers/usb/host/ehci-hub.c        |  6 +++---
 include/linux/usb/chipidea.h       | 17 ++++++++--------
 4 files changed, 23 insertions(+), 41 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
