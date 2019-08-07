Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C656C84325
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 06:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tOeBjmIXL1857uA2AFlB2BiiTJJltzVEeRGWmg4H4MA=; b=Dqv
	UJg0gx8qBGEsQaI7TkIyv0oV6zZ5Nk/rpy2fvVae4Ct3+otBctWJZpPBOIF/vlwcwstIuvzri0w9M
	vaa1b3QyyYY9eNaNjZRs5oRSzVfHq8a8sMcek41+fWk+jXip/zmtzymh8q2ZXXzvnjoiguqiTvec6
	E4UsNaEPNBnJPa2pAwW71K+Lv9lqL7FFGjHjamZbxKUaUVBEjM9ZP0cX46Gcg3W3jRfkUEIJk7qik
	8LSdw/279iHLHUhGwuyjdM8oGb8slf+pvZHvDjZZT1aQDYDFTAd+vWFSsjalzo+jILKSqmgYjCpIy
	oD/MhU1haQst3iUskmCCSkO/17vcpag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvDKN-00007i-7k; Wed, 07 Aug 2019 04:13:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvDJy-0008K4-S3
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 04:13:08 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 17DC41A01FB;
 Wed,  7 Aug 2019 06:13:05 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9412C1A02B9;
 Wed,  7 Aug 2019 06:12:59 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8D7F240296;
 Wed,  7 Aug 2019 12:12:52 +0800 (SGT)
From: fugang.duan@nxp.com
To: srinivas.kandagatla@linaro.org
Subject: [PATCH nvmem v2 0/2] nvmem: imx: add i.MX8QM platform support
Date: Wed,  7 Aug 2019 12:03:18 +0800
Message-Id: <20190807040320.1760-1-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_211307_048675_44B94194 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, robh@kernel.org, festevam@gmail.com,
 fugang.duan@nxp.com, devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fugang Duan <fugang.duan@nxp.com>

The patch set is to add i.MX8QM platform support for i.MX8 SCU
OCOTP driver due to i.MX8QM efuse table has some difference with
i.MX8QXP platform.

V2:
- Add dt-bindings for the new compatible string support.

Fugang Duan (2):
  nvmem: imx: add i.MX8QM platform support
  dt-bindings: fsl: scu: add new compatible string for ocotp

 Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt | 4 +++-
 drivers/nvmem/imx-ocotp-scu.c                               | 7 +++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
