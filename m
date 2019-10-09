Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8BBD094E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RUfMllN4/OWbaYBorTxYBMtlYFzDn2eX33kRpjh5flE=; b=KThkJ1PY2YAeTiOsjIEm/tPxnp
	lJpDjI5J/u0QLHTt5X3AV8OMJKcBKPglKG9zF/tmaQl2PqFgNzNGHw1UKB+xIUelFEoXrdiQjMBFd
	ilAQqWz5B22r8JRLk6WYoh7dWOfUrhNysWBiFGId+5SRaw76gtwPx7FjxPkuvH2qSLk0yptKXbrVW
	/lhOjoTCCR+fI9f92KWRP4cNCUMQkf3B9fiq223o9PcQOK0GkE50uox62ec+a7QXJUK+Uo5hDVTae
	6hHGcCmicLVgKoXqCBtUl03/tmAXBxZ4WcHYlHM6JsWQzXne/3i/K1w0rGSSy72DQjrB3TwMS3QwF
	6ubDx4Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI73d-00030k-Rf; Wed, 09 Oct 2019 08:10:53 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI72Z-000161-06
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:09:48 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AFAA91A039B;
 Wed,  9 Oct 2019 10:09:45 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A95891A0397;
 Wed,  9 Oct 2019 10:09:41 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A21154030D;
 Wed,  9 Oct 2019 16:09:34 +0800 (SGT)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: jassisinghbrar@gmail.com, o.rempel@pengutronix.de, daniel.baluta@nxp.com,
 aisheng.dong@nxp.com
Subject: [PATCH v6 3/4] dt-bindings: mailbox: imx-mu: add imx7ulp MU support
Date: Wed,  9 Oct 2019 16:07:20 +0800
Message-Id: <1570608441-29651-4-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570608441-29651-1-git-send-email-hongxing.zhu@nxp.com>
References: <1570608441-29651-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010947_217040_D176D079 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu" compatible
to support it.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
index f3cf77e..9c43357 100644
--- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
+++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
@@ -21,6 +21,8 @@ Required properties:
 		imx6sx, imx7s, imx8qxp, imx8qm.
 		The "fsl,imx6sx-mu" compatible is seen as generic and should
 		be included together with SoC specific compatible.
+		There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu"
+		compatible to support it.
 - reg :		Should contain the registers location and length
 - interrupts :	Interrupt number. The interrupt specifier format depends
 		on the interrupt controller parent.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
