Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F161F1D037A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 02:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=81jUXFYmbHdrw7Ah+pam4jjuk+owBdD2WaMzlFOl814=; b=RgW
	B9PQIb8xJF3dATwTA0uRGl/W/nWhiEK7WmOc1s32X3/UwnXX7qUtg5pX09LQbZyuO/TgPkDSOV/c5
	svvAfYhmqtxBrtL2jcGFU59/o8GnbydBy5ZMdw0otdjxRCAsJKiXk8YvWiDbKlzf6C84yOP2Ce4QE
	Fpytz+8Et7fd22SS9+EB5XUiEgwDswKwwrohKnMpX/gRyk8+4Qkg9KcDJb0mO1J/Y7ycWU1Hnr3WG
	G9CMzL3vrVfIy6pZezKrRyCo+3ZXVPpsuTw7o0VhkqZZ/f8HggplRGHo3w9uAwEWS7FwEo50KwWQd
	0n8+hviOTlhNq8J5MvdVjA1MujB7VVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYf92-0002Z3-I5; Wed, 13 May 2020 00:21:08 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYf8t-0002Wv-9d
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 00:21:00 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7049C1A12A9;
 Wed, 13 May 2020 02:20:54 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 97B7D1A12A5;
 Wed, 13 May 2020 02:20:49 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4A5B0402BE;
 Wed, 13 May 2020 08:20:43 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V5 0/5] Convert i.MX6 SoCs clock bindings to json-schma
Date: Wed, 13 May 2020 08:11:19 +0800
Message-Id: <1589328684-1397-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_172059_472690_48687A21 
X-CRM114-Status: UNSURE (   5.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Converts i.MX6Q/i.MX6SX/i.MX6SL/i.MX6SLL/i.MX6UL clock bindings to
json-schma format.

Changes since V4:
	- add descriptions for interrupts and each item of it.

Anson Huang (5):
  dt-bindings: clock: Convert i.MX6Q clock to json-schema
  dt-bindings: clock: Convert i.MX6SX clock to json-schema
  dt-bindings: clock: Convert i.MX6SL clock to json-schema
  dt-bindings: clock: Convert i.MX6SLL clock to json-schema
  dt-bindings: clock: Convert i.MX6UL clock to json-schema

 .../devicetree/bindings/clock/imx6q-clock.txt      | 41 ------------
 .../devicetree/bindings/clock/imx6q-clock.yaml     | 72 ++++++++++++++++++++++
 .../devicetree/bindings/clock/imx6sl-clock.txt     | 10 ---
 .../devicetree/bindings/clock/imx6sl-clock.yaml    | 48 +++++++++++++++
 .../devicetree/bindings/clock/imx6sll-clock.txt    | 36 -----------
 .../devicetree/bindings/clock/imx6sll-clock.yaml   | 66 ++++++++++++++++++++
 .../devicetree/bindings/clock/imx6sx-clock.txt     | 13 ----
 .../devicetree/bindings/clock/imx6sx-clock.yaml    | 70 +++++++++++++++++++++
 .../devicetree/bindings/clock/imx6ul-clock.txt     | 13 ----
 .../devicetree/bindings/clock/imx6ul-clock.yaml    | 66 ++++++++++++++++++++
 10 files changed, 322 insertions(+), 113 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx6q-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx6q-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx6sl-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx6sl-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx6sll-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx6sll-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx6sx-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx6sx-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx6ul-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx6ul-clock.yaml

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
