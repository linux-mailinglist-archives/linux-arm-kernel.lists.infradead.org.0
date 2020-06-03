Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 227381EC720
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 04:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4svh3+eWeBncx7XQPJD0ZxB98RTcvfdUZJ9QpI11SQQ=; b=uLW
	I7aTpBPjKjTjd/WR7EY5iRzx+E8rLNwtRElNj8aYkwGmgErGJIJAxxusuHFuFTovkbj/n8BLe6PE8
	Ja9y25XXk8YcxX7KsefLsuD/puCR5YgGQsOrzOI7DdqjIuRIH+71CKgeZ/B38bs3FBQELE0c8yZGV
	rb8QmQgJeiz9cGYOa3UZXZJmRyJqyvm3+rshagfH1i7d7RShTmkP9Mcj+D4eumK35caknRo3ZzH2j
	FcJb5udGF8Y496ZSmh9I2EJZQSfgc++ifBNr/JKClOsC3PTbA5Dx5RGNie4qRPAfYtMXfoi32Xj5d
	6/bXwxp+oug7Sp+//acy5aIAw96I7Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgIqV-0005Rc-25; Wed, 03 Jun 2020 02:09:35 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgIqN-0005Qg-H8
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 02:09:28 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7E4EC20004C;
 Wed,  3 Jun 2020 04:09:25 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E05B8200025;
 Wed,  3 Jun 2020 04:09:19 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B291140296;
 Wed,  3 Jun 2020 10:09:12 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux@rempel-privat.de, pandy.gao@nxp.com, wolfram@the-dreams.de,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Convert i.MX/MXS I2C/LPI2C binding doc to json-schema
Date: Wed,  3 Jun 2020 09:58:52 +0800
Message-Id: <1591149535-342-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_190927_705305_728E60DA 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Coverts i.MX/MXS I2C.LPI2C binding doc to json-schema, some examples are
too old, update them based on latest DT file, also add more compatible
based on supported SoCs.

Anson Huang (3):
  dt-bindings: i2c: Convert imx lpi2c to json-schema
  dt-bindings: i2c: Convert mxs i2c to json-schema
  dt-bindings: i2c: Convert imx i2c to json-schema

 .../devicetree/bindings/i2c/i2c-imx-lpi2c.txt      |  20 ----
 .../devicetree/bindings/i2c/i2c-imx-lpi2c.yaml     |  45 ++++++++
 Documentation/devicetree/bindings/i2c/i2c-imx.txt  |  49 ---------
 Documentation/devicetree/bindings/i2c/i2c-imx.yaml | 118 +++++++++++++++++++++
 Documentation/devicetree/bindings/i2c/i2c-mxs.txt  |  25 -----
 Documentation/devicetree/bindings/i2c/i2c-mxs.yaml |  55 ++++++++++
 6 files changed, 218 insertions(+), 94 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-imx.yaml
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mxs.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-mxs.yaml

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
