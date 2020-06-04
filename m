Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8981EDB08
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 04:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Lejw+/Z9Aq4nFJqjq/sn+NGvyIjFEBl2j672WAIBnmw=; b=rdT
	cTphpRHoVNYKth6hX5B/JD2QDUZvJayVLS9C39enXlmTT1XMB+IeL8Z4dY8XEQrQP4hUIhbziBgq1
	WuQsRgiZ+5olCTDP5W8igbOMbBAWxzfX1fMYZ03BE+xAqNmrwoy5w8ZEH8Rf2vFYu+GqiJq14EY1q
	gevrI7ONq1XsTDJmjlcDqpcRp62EX9TDSoXuQCq6mD9As3GxHRf5KHNDb5yuFedQ0VZJBkGADo28h
	uE02UV3nrr67WX2M/rJzp6FrPYdxB6uuYWzbjteTht+ZQ0QLRTp/TW7pXaMIoXl1+QAdYrPnA3l44
	3KNjaHw41BZbhzr4FbkEc1zhIRYnAjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgfGk-0001CY-Op; Thu, 04 Jun 2020 02:06:10 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgfGd-0001Bv-BN
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 02:06:04 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0B9921A01A2;
 Thu,  4 Jun 2020 04:06:02 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 24A661A011F;
 Thu,  4 Jun 2020 04:05:57 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CEBCF40299;
 Thu,  4 Jun 2020 10:05:50 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: broonie@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 marex@denx.de, linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 0/3] Convert mxs/imx spi/cspi/lpspi binding to json-schema
Date: Thu,  4 Jun 2020 09:55:28 +0800
Message-Id: <1591235731-15673-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_190603_525698_74DEE0F3 
X-CRM114-Status: UNSURE (   6.79  )
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

This patch series converts mxs/imx spi/cspi/lpspi binding to json-schema.

In fsl-imx-cspi.yaml, also update compatible, remove obsolete properties
"fsl,spi-num-chipselects" and update the example based on latest DT file;

In spi-fsl-lpspi.yaml, the original maintainer's email address pandy.gao@nxp.com
is no longer valid, so I use mine.

Compared to V1, this patch series adds "unevaluatedProperties: false" for
each binding doc.

Anson Huang (3):
  dt-bindings: spi: Convert mxs spi to json-schema
  dt-bindings: spi: Convert imx cspi to json-schema
  dt-bindings: spi: Convert imx lpspi to json-schema

 .../devicetree/bindings/spi/fsl-imx-cspi.txt       | 56 ------------
 .../devicetree/bindings/spi/fsl-imx-cspi.yaml      | 99 ++++++++++++++++++++++
 Documentation/devicetree/bindings/spi/mxs-spi.txt  | 26 ------
 Documentation/devicetree/bindings/spi/mxs-spi.yaml | 57 +++++++++++++
 .../devicetree/bindings/spi/spi-fsl-lpspi.txt      | 29 -------
 .../devicetree/bindings/spi/spi-fsl-lpspi.yaml     | 62 ++++++++++++++
 6 files changed, 218 insertions(+), 111 deletions(-)
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
