Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA821E58C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PhKzgX/GpQkgjU/pQ95RX9DFIISTqd0+bSVvz7M1tfc=; b=SaN
	mslpurzKjR2gFA/p9sTt/zcRXu6bEvaBnAc21wXfLcPkuUNMDj1lrgQ5QLSn172ikz27t1NRZH7+i
	Kv9d0/tLLXC/w00pScK8O0wLPhfNOj4fxUK75hST/nv2pKHHOvDp3atFiNwXho+iV56jXFNIXhawl
	q5a3wfIs+vwGtSINlUisWmaGU5XHga0gsc6PyEkw22xRP5zomdYskY8370Yr59B7LkYBMZBiTQ5ns
	CVIKrEs4OmnmrGHmprJCOInrG80LOxJBBPWWv88tCNEWeZCRx6v2UwYFYvjdB6inQCxlL2Nn7QeH2
	rWk/7BGVCMWHEEbDkvuiE7g9ljWoLMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeD7f-0003J5-3n; Thu, 28 May 2020 07:38:39 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD7K-0003H4-BC
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:38:19 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1FBE51A0184;
 Thu, 28 May 2020 09:38:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 440271A0C56;
 Thu, 28 May 2020 09:38:10 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D5B8A402D3;
 Thu, 28 May 2020 15:38:02 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, shc_work@mail.ru, s.trumtrar@pengutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/9] Convert i.MX legacy platforms clock binding to json-schema
Date: Thu, 28 May 2020 15:27:50 +0800
Message-Id: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003818_663874_B9CC90D1 
X-CRM114-Status: UNSURE (   5.79  )
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

The patch series converts i.MX legacy platforms clock binding to
json-schema, including i.MX1, i.MX21, i.MX23, i.MX25, i.MX27, i.MX28,
i.MX31, i.MX35 and i.MX5.

On i.MX21, the CCM has no interrupt at all, so remove the interrupts
property from original binding doc.

Anson Huang (9):
  dt-bindings: clock: Convert i.MX5 clock to json-schema
  dt-bindings: clock: Convert i.MX35 clock to json-schema
  dt-bindings: clock: Convert i.MX31 clock to json-schema
  dt-bindings: clock: Convert i.MX28 clock to json-schema
  dt-bindings: clock: Convert i.MX23 clock to json-schema
  dt-bindings: clock: Convert i.MX27 clock to json-schema
  dt-bindings: clock: Convert i.MX25 clock to json-schema
  dt-bindings: clock: Convert i.MX21 clock to json-schema
  dt-bindings: clock: Convert i.MX1 clock to json-schema

 .../devicetree/bindings/clock/imx1-clock.txt       |  26 ---
 .../devicetree/bindings/clock/imx1-clock.yaml      |  49 ++++++
 .../devicetree/bindings/clock/imx21-clock.txt      |  27 ---
 .../devicetree/bindings/clock/imx21-clock.yaml     |  49 ++++++
 .../devicetree/bindings/clock/imx23-clock.txt      |  70 --------
 .../devicetree/bindings/clock/imx23-clock.yaml     |  90 ++++++++++
 .../devicetree/bindings/clock/imx25-clock.txt      | 160 ------------------
 .../devicetree/bindings/clock/imx25-clock.yaml     | 184 +++++++++++++++++++++
 .../devicetree/bindings/clock/imx27-clock.txt      |  27 ---
 .../devicetree/bindings/clock/imx27-clock.yaml     |  53 ++++++
 .../devicetree/bindings/clock/imx28-clock.txt      |  93 -----------
 .../devicetree/bindings/clock/imx28-clock.yaml     | 113 +++++++++++++
 .../devicetree/bindings/clock/imx31-clock.txt      |  90 ----------
 .../devicetree/bindings/clock/imx31-clock.yaml     | 118 +++++++++++++
 .../devicetree/bindings/clock/imx35-clock.txt      | 114 -------------
 .../devicetree/bindings/clock/imx35-clock.yaml     | 137 +++++++++++++++
 .../devicetree/bindings/clock/imx5-clock.txt       |  28 ----
 .../devicetree/bindings/clock/imx5-clock.yaml      |  63 +++++++
 18 files changed, 856 insertions(+), 635 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/imx1-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx1-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx21-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx21-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx23-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx23-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx25-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx25-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx27-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx27-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx28-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx28-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx31-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx31-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx35-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx35-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/imx5-clock.txt
 create mode 100644 Documentation/devicetree/bindings/clock/imx5-clock.yaml

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
