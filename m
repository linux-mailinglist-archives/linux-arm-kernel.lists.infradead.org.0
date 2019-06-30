Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1843E5AE07
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 05:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qd76cg87C6Vt+o+Qsq+XfseAFQwW1rbckMhNakK0ioE=; b=PlyAUn66BB7rFn
	tmSWn5xBMybvcVQN1JvmNxFNWig+UrwZ3LzFn1kBT//qlv2FYskiefR33+k5eGOmdDZ3BAnmI2TUG
	l9kYKNjmMBc1GjgAqvoSZkEMXLTcqBHo8CUea69AOTrVmBb1qPhhC7hKwaVHkZmWj01yJ68u5JOp/
	WZ6dbZkKRN1KADk+/ibyoaoegE1kp2MHAqHL9+cXk+/GJ3LWoD8sCPCeAglr7Hggo29ynsL/xB9bD
	iONrAf8dZo5cDKs6Zk/sg4d/teZg2p8fVkKDsvMwJVZH5ind7HOCQF9vPPwrns+NJAKEBiQOl7zic
	IuE6qp+lv3g6lO4wuGmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhQxM-0000ew-GP; Sun, 30 Jun 2019 03:56:48 +0000
Received: from knopi.disroot.org ([178.21.23.139])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhQx9-0000eA-Ra
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 03:56:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 82CE435AD1;
 Sun, 30 Jun 2019 05:49:54 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RcVaHcMZLjIq; Sun, 30 Jun 2019 05:49:53 +0200 (CEST)
From: Chinmaya Krishnan Mahesh <chinmaya.mahesh@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1561866593; bh=9Ans4RlZn8dOH7qDF/10KOpQwK7T65Z7lmdyjzSs6EM=;
 h=From:To:Cc:Subject:Date;
 b=cxRkBFtLkJqF49ZKRJOmdQPn1WiL+0gAI0IbH2izNDvE48VmypAe/M+yVswDVcpFO
 G0jOYvwIl4tfIuw0ErGts8jklgNnMtIWEvNlyZh8OcbO8t+B05MxH238awK/j5QT/v
 nbXssB0o4AV839WeDkBIp/uhnTDe0fbi/XVVhvPViaoGK6bTFZNUFLBjloaQ5Di5dq
 RXOmMjmDq8tGhSHt/U4rrmlPxmbRJOkNDNvw4+b26gcLLvKWHgsf5t5eQpesV8YC9v
 zQX855x2+tPa8WxqO2WIhB0VOjyXG2m+5kjkuCm5D5k7o7pU+3BZF6rvzObA8kfsqZ
 zhNvFdQA6TUqw==
To: 
Subject: [PATCH] media: imx7-media-csi: Remove unneeded break after return
Date: Sat, 29 Jun 2019 22:49:04 -0500
Message-Id: <20190630034905.7124-1-chinmaya.mahesh@disroot.org>
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_205636_177781_6C7F4910 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.21.23.139 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Chinmaya Krishnan Mahesh <chinmaya.mahesh@disroot.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch fixes the checkpatch.pl warning:

WARNING: break is not useful after a goto or return

Signed-off-by: Chinmaya Krishnan Mahesh <chinmaya.mahesh@disroot.org>
---
 drivers/staging/media/imx/imx7-media-csi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index a708a0340eb1..c15acca1dc0d 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1021,7 +1021,6 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
 		break;
 	default:
 		return -EINVAL;
-		break;
 	}
 	return 0;
 }
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
