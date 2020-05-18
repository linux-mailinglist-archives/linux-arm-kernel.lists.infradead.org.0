Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE7C1D7C03
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:58:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YOx0trkm+Jz6VW8SeijE4taaD0BbISFH0xGnG4Bh6yk=; b=BQG
	UW6lFwGmMZCiDXbYLZ/LLVDGrKINSppGDWCcqkk+PR3Z6B7yr9QHCSc8GxyVZds4vNR2VYcIOGi88
	5+tbmf08gtoRDIJ4Z4P7mlZbJUtfroTQH4UMxaoPBD1bdhkeD+DST45rwheOMQQD+Gszto5owSebP
	mrvfbWVNE4eVv3Hz0U8oBxAfA68sQdwV2awhkvtpkV/RzLCH1+iIM0YXggtNOfONSQ919oanBsxi3
	sWZ85wWuaKEHbpfxXXnyAR76lcH/zFWfxrTN5/QtWgFMJcL6kqFplYbp4lmzcHLaz/GlGKMn+Mm4Q
	4EHUmpFiWq038o+I+lZQ5MMAPZrTVuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahDH-0007xr-Hk; Mon, 18 May 2020 14:57:55 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahCp-0007n1-Ud
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:57:29 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 718FC1A0B0D;
 Mon, 18 May 2020 16:57:25 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3715C1A0B0C;
 Mon, 18 May 2020 16:57:20 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 593B9402A8;
 Mon, 18 May 2020 22:57:13 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, ping.bai@nxp.com, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] Covert i.MX GPT/TPM/SYSCTR timer binding to json-schema
Date: Mon, 18 May 2020 22:47:37 +0800
Message-Id: <1589813260-20036-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_075728_128008_0A703325 
X-CRM114-Status: UNSURE (   5.64  )
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

This patch series converts i.MX GPT, TPM and system counter timer binding
to json-schema, test build passed.

Anson Huang (3):
  dt-bindings: timer: Convert i.MX GPT to json-schema
  dt-bindings: timer: Convert i.MX TPM to json-schema
  dt-bindings: timer: Convert i.MX SYSCTR to json-schema

 .../devicetree/bindings/timer/fsl,imxgpt.txt       |  45 ---------
 .../devicetree/bindings/timer/fsl,imxgpt.yaml      | 109 +++++++++++++++++++++
 .../devicetree/bindings/timer/nxp,sysctr-timer.txt |  25 -----
 .../bindings/timer/nxp,sysctr-timer.yaml           |  54 ++++++++++
 .../devicetree/bindings/timer/nxp,tpm-timer.txt    |  28 ------
 .../devicetree/bindings/timer/nxp,tpm-timer.yaml   |  63 ++++++++++++
 6 files changed, 226 insertions(+), 98 deletions(-)
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
