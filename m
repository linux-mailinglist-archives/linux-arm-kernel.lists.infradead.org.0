Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2721EDAFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 04:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+RwKojhCBgy3u8JTf9zT+kGipf6mRYDW/YzmFMH1DTY=; b=bFc
	95LsVfsdQY2TruaJAba76ICE196tKtE5OVTBm9AzlpTkdctC6vtydBVrYG/XChlx+TZp8Sm8KT+Fb
	kdvC/SAbk5/Pfj59dmqLhI+K5LUhReoVaZpBY0YFOxEyJcjMh6GUVGzqZ1P+0nwuoD2ZR7aH1U2h5
	r6F8kIVflu1b1GhgB9nkpzKbDgIb0wFn0dmWji1gtYeWdn69RJdBF8WWk5rXI+VftpNtEnUopv9n5
	5Yu60KEjynS+pwLMGNvKujIcoMcurffDwaFYXvRfUwVk9VWpLIqKsNH6J+cP+REgR7MOn6bGAdQap
	8VFKzWh4WlbZDcc2kd1kOBTuBDZEsTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgfAl-00032a-MZ; Thu, 04 Jun 2020 01:59:59 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgfAe-00031q-Ig
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 01:59:53 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F1E431A0191;
 Thu,  4 Jun 2020 03:59:50 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B6F1C1A016E;
 Thu,  4 Jun 2020 03:59:45 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 04E88402B0;
 Thu,  4 Jun 2020 09:59:38 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux@rempel-privat.de, wolfram@the-dreams.de, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 0/3] Convert i.MX/MXS I2C/LPI2C binding doc to json-schema
Date: Thu,  4 Jun 2020 09:49:15 +0800
Message-Id: <1591235358-15516-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_185952_751782_D9F6EEAF 
X-CRM114-Status: UNSURE (   6.17  )
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

Coverts i.MX/MXS I2C/LPI2C binding doc to json-schema, some examples are too old,
update them based on latest DT file, also add more compatible based on supported SoCs.

Compated to V1, this patch series adds "additionalProperties: false" for each
binding doc.

Anson Huang (3):
  dt-bindings: i2c: Convert imx lpi2c to json-schema
  dt-bindings: i2c: Convert mxs i2c to json-schema
  dt-bindings: i2c: Convert imx i2c to json-schema

 .../devicetree/bindings/i2c/i2c-imx-lpi2c.txt      |  20 ----
 .../devicetree/bindings/i2c/i2c-imx-lpi2c.yaml     |  47 ++++++++
 Documentation/devicetree/bindings/i2c/i2c-imx.txt  |  49 ---------
 Documentation/devicetree/bindings/i2c/i2c-imx.yaml | 119 +++++++++++++++++++++
 Documentation/devicetree/bindings/i2c/i2c-mxs.txt  |  25 -----
 Documentation/devicetree/bindings/i2c/i2c-mxs.yaml |  55 ++++++++++
 6 files changed, 221 insertions(+), 94 deletions(-)
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
