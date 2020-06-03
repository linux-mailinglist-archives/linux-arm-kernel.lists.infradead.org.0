Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7A91EC975
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 08:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GjnBocFv5QsR3+tcfigz6Vk/4XKPX//kGWBPJYAj0co=; b=B6W
	L0QXMPomYodI4xImVpHSqpvVZX960x1MvhqDppwDTk9zuTZMPNb6se2IX7aulX0z2FsO7ShLIPvwn
	18cFlBt6gqjL/K3qfkTUJNY1+oTtVMltfvkc6Yx0dI9LHPcrC5e/8E08qRibZwJjKqsM4qERjY/F3
	8zZI2ZYOyJryrbCap5LVhSxMRmWofjiePhxWeIFHHyFvq5hFuKwmodZNnFXz6H1I/ZMpOoZ7lkq+6
	dSmMVv8frWBuPq1PgCCV81LYsD2vv9nfhsm5N1EiQEkjnGOU569Bu7uXpTDaWFlSN709FmTn1TglS
	0v07F9nlSus5GOJDFerkfEfcMpKLpTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgMoq-0005mp-24; Wed, 03 Jun 2020 06:24:08 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgMoi-0005ju-5S
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 06:24:01 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 640DD20007D;
 Wed,  3 Jun 2020 08:23:58 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 819F7200089;
 Wed,  3 Jun 2020 08:23:53 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3B26B402DF;
 Wed,  3 Jun 2020 14:23:47 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: broonie@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 marex@denx.de, linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Convert mxs/imx spi/cspi/lpspi binding to json-schema
Date: Wed,  3 Jun 2020 14:13:26 +0800
Message-Id: <1591164809-13964-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_232400_337561_41823A4F 
X-CRM114-Status: UNSURE (   5.96  )
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

This patch series converts mxs/imx spi/cspi/lpspi binding to json-schema.

In fsl-imx-cspi.yaml, also update compatible, remove obsolete properties
"fsl,spi-num-chipselects" and update the example based on latest DT file;

In spi-fsl-lpspi.yaml, the original maintainer's email address
pandy.gao@nxp.com is no longer valid, so I use mine.

Anson Huang (3):
  dt-bindings: spi: Convert mxs spi to json-schema
  dt-bindings: spi: Convert imx cspi to json-schema
  dt-bindings: spi: Convert imx lpspi to json-schema

 .../devicetree/bindings/spi/fsl-imx-cspi.txt       | 56 -------------
 .../devicetree/bindings/spi/fsl-imx-cspi.yaml      | 97 ++++++++++++++++++++++
 Documentation/devicetree/bindings/spi/mxs-spi.txt  | 26 ------
 Documentation/devicetree/bindings/spi/mxs-spi.yaml | 55 ++++++++++++
 .../devicetree/bindings/spi/spi-fsl-lpspi.txt      | 29 -------
 .../devicetree/bindings/spi/spi-fsl-lpspi.yaml     | 60 +++++++++++++
 6 files changed, 212 insertions(+), 111 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt
 create mode 100644 Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/mxs-spi.txt
 create mode 100644 Documentation/devicetree/bindings/spi/mxs-spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-fsl-lpspi.txt
 create mode 100644 Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
