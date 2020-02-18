Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B621622C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 09:52:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PY8AzddR4vcLy+Hrt3PYmubgtDYNXvKIDFG18Si9C2Q=; b=G63
	OpbeXwUmPkUqWOL3UdHFtUm/RXDAsSDKI86VDt3QIQGk6iQnwRIwgLHFlXcels7H490JsBCBUhf97
	ZUnhrDI9RLwizkfpfhbeoTjqXOulJsjNkdIGqz5QIPQ0eZ/FuQ1X68EBC5sXHtgKOWjC6hYYiZD0E
	39NFi82D2k9SZk9psG5oXceFP+51q0ozKhfioYRngUeCW4FG8uY7AdxPi1rwbl6zrkSVklPcetMHu
	I35OJeh5F1REom4EIDksTtXQWxBa55SnIvWxuY/4OTTy6zR8BgjpBzdNn7I8t1pSM0Q+0nlgH+A/v
	cYGTGHTPvx9Jejlh64t9q92ADGjXhPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ycQ-0003la-Ng; Tue, 18 Feb 2020 08:52:38 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ybA-0002fZ-8o
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 08:51:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 93F0EE1131;
 Tue, 18 Feb 2020 00:50:37 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TOJcBN2WAsxs; Tue, 18 Feb 2020 00:50:36 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de
Subject: [PATCH v2 0/9] arm64: dts: librem5-devkit: description updates
Date: Tue, 18 Feb 2020 09:49:33 +0100
Message-Id: <20200218084942.4884-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_005120_352617_245F92AE 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 Martin Kepplinger <martin.kepplinger@puri.sm>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These are additions to the imx8mq-librem5-devkit devicetree description
we are running for quite some time. All users should have them:

revision history
----------------
v2: review by Shawn and Guido: remove a battery description
    add SoB tags, coding style fixes, squash and reorder audio
    descritions, remove redundant and unneeded changes.
v1: https://lore.kernel.org/linux-arm-kernel/20200205143003.28408-1-martin.kepplinger@puri.sm/

Angus Ainslie (Purism) (8):
  arm64: dts: librem5-devkit: add sai2 and sai6 pinctrl definitions
  arm64: dts: librem5-devkit: enable sai2 and sai6 audio interface
  arm64: dts: librem5-devkit: add the simcom 7100 modem and sgtl5000
    audio codec
  arm64: dts: librem5-devkit: allow modem to wake the system from
    suspend
  arm64: dts: librem5-devkit: add a vbus supply to usb0
  arm64: dts: librem5-devkit: add the regulators for DVFS
  arm64: dts: librem5-devkit: allow the redpine card to be removed
  arm64: dts: librem5-devkit: increase the VBUS current in the kernel

Martin Kepplinger (1):
  arm64: dts: librem5-devkit: add lsm9ds1 mount matrix

 .../dts/freescale/imx8mq-librem5-devkit.dts   | 134 +++++++++++++++++-
 1 file changed, 131 insertions(+), 3 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
