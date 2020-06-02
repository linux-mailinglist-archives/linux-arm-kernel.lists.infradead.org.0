Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDBF1EB3E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 05:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=t8npB2NW96pYoTKYUlpkQIoKBBT5VjBo/oOkL2whs4I=; b=V0P
	1/8zeqP0j4PHyEvZkQFRlpb0B+IUw4omtGvoWVK2FwEg0pdl648Ez7pjNn6St+lKp1PMD8NNqsAE7
	vyxyJ4F/17KhWQcKMKKDzlf0HcsinBv4QHEPTfP6SI/f1i/SYsK8iTmXrMyAX7qSn8ToEkCX+hJ6K
	Jw6fwuXdgOUBAb2+BqUvkbu4lhnIIv4Q7orHX9hUAQkuU17jzCzRbQDdaGXZAv7KiVmI33oLV5Zxl
	tlkbwV2N4G8NivYxcAotHOjsBT9SmjKUfkK0bpeD86AG9WI/npEz98ZEZ+If88NgPZEOkUIziP19f
	0F+Rft/1mHwzNYt8fkZZnTpgvEUFmpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfxub-0001BG-ED; Tue, 02 Jun 2020 03:48:25 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfxuR-00019a-F6
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 03:48:16 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0B4A3200905;
 Tue,  2 Jun 2020 05:48:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 287252005FD;
 Tue,  2 Jun 2020 05:48:07 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B451640280;
 Tue,  2 Jun 2020 11:48:00 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 mpa@pengutronix.de, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Convert i.MX/MXS mmc binding to json-schema
Date: Tue,  2 Jun 2020 11:37:43 +0800
Message-Id: <1591069066-12727-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_204815_643042_E940800C 
X-CRM114-Status: UNSURE (   5.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

This patch series converts i.MX and MXS mmc binding to json-schema,
fix some minor issues in original binding doc, such as node name should
be 'mmc', compatible name for i.MX27, reg/interrupts should be required
properties etc..

Anson Huang (3):
  dt-bindings: mmc: Convert imx esdhc to json-schema
  dt-bindings: mmc: Convert imx mmc to json-schema
  dt-bindings: mmc: Convert mxs mmc to json-schema

 .../devicetree/bindings/mmc/fsl-imx-esdhc.txt      |  67 -----------
 .../devicetree/bindings/mmc/fsl-imx-esdhc.yaml     | 122 +++++++++++++++++++++
 .../devicetree/bindings/mmc/fsl-imx-mmc.txt        |  23 ----
 .../devicetree/bindings/mmc/fsl-imx-mmc.yaml       |  51 +++++++++
 Documentation/devicetree/bindings/mmc/mxs-mmc.txt  |  27 -----
 Documentation/devicetree/bindings/mmc/mxs-mmc.yaml |  56 ++++++++++
 6 files changed, 229 insertions(+), 117 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
 create mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
 delete mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-mmc.txt
 create mode 100644 Documentation/devicetree/bindings/mmc/fsl-imx-mmc.yaml
 delete mode 100644 Documentation/devicetree/bindings/mmc/mxs-mmc.txt
 create mode 100644 Documentation/devicetree/bindings/mmc/mxs-mmc.yaml

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
