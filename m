Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7521D8E7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 06:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=h7kgouZ4P37zEtQ0Vy1oC1psqNAzMV/alxy52m931qE=; b=O0A
	EGmZhQ0/ZMDm6HIDCOZrOdSNCqfnYkQM2GDEgdHM7SK/IVrMf6/Yxm/rrdGoIITxpj9B4F5h9z1Ba
	itnICo8v2+YGnapO78sdj2C0yd0UZ/B7XKhywqtM9d1rTR3ra0YZNZ2IRht26GcQDUjnPmzg9C8oa
	fyXcJww2uyzTYjc+hF/hEWxLSrlfzXzi4RBJnZvTFqC3LeXb+vLCVQgIOXRz5Ynp8XUwNqIURZXq6
	WsxVbWEbdyQRHUmpiTu2RZivTTSB/Ti1fjvxGiO+tvkq8bAt07POPT6iUNwNIhQXEiHz4pD2yKRGn
	Au0MrWoyae7T3JFFbCFGgbKwh079ztQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jatVj-0000mG-4w; Tue, 19 May 2020 04:05:47 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jatVY-0000km-4c
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 04:05:37 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5B203200097;
 Tue, 19 May 2020 06:05:34 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 08879200073;
 Tue, 19 May 2020 06:05:29 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 07712402AF;
 Tue, 19 May 2020 12:05:21 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, ping.bai@nxp.com, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 0/3] Covert i.MX GPT/TPM/SYSCTR timer binding to json-schema
Date: Tue, 19 May 2020 11:55:44 +0800
Message-Id: <1589860547-3207-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_210536_323838_E4125350 
X-CRM114-Status: UNSURE (   5.86  )
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

This patch series converts i.MX GPT, TPM and system counter timer
binding to json-schema, test build passed.

Changes compared to V1 are listed in each patch.

Anson Huang (3):
  dt-bindings: timer: Convert i.MX GPT to json-schema
  dt-bindings: timer: Convert i.MX TPM to json-schema
  dt-bindings: timer: Convert i.MX SYSCTR to json-schema

 .../devicetree/bindings/timer/fsl,imxgpt.txt       | 45 ------------
 .../devicetree/bindings/timer/fsl,imxgpt.yaml      | 80 ++++++++++++++++++++++
 .../devicetree/bindings/timer/nxp,sysctr-timer.txt | 25 -------
 .../bindings/timer/nxp,sysctr-timer.yaml           | 54 +++++++++++++++
 .../devicetree/bindings/timer/nxp,tpm-timer.txt    | 28 --------
 .../devicetree/bindings/timer/nxp,tpm-timer.yaml   | 61 +++++++++++++++++
 6 files changed, 195 insertions(+), 98 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
 create mode 100644 Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
 delete mode 100644 Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/nxp,sysctr-timer.yaml
 delete mode 100644 Documentation/devicetree/bindings/timer/nxp,tpm-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
