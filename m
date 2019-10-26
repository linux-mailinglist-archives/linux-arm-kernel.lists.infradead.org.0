Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C2AE5756
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aG/vdDlEI4WHu0yNIShbhG/oH4gclxeIwkq2XtHxllc=; b=hC9
	glXPHCwvKPuKVf28f+AOy77pFbxWEokQZUD4L3EKUe+USMufm1T5Y3TM3FPD+s5qIqAcZR54VmHnh
	41xmiQjIVA0saZBh/z6kuV1tdySY/Wm7VDWj/mmvLzQbCONXaTtd4j5NXSzarqYFOt3YghF9CG/Er
	ieufeKegdM02Ipw3wNsTPWXbPxWru+MQ+29+6rZX7Ho5OK77UOgK2/yZ+chDvvgNzdCFXFnU9QMBe
	DA3fEb3hoEY/GMO/bkWak03+42K8rkJlLNdVuC/zPAiZ+j0XcYGvJSErqD99R7YS5l2vaDyn5fY1d
	Z2kF00ZIfN32hIUvBPjYmXBYxknAAwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9Wi-00053Z-2U; Sat, 26 Oct 2019 00:01:52 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9WX-000524-HJ
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 00:01:42 +0000
Received: by mail-qk1-x741.google.com with SMTP id m4so3365563qke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 17:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=CJa4jdQtlph80xRVz2uAXpKfXFL6ECs03zWGju+zACk=;
 b=KqY8Ncw+tOmCocejLaZYpB4kUASS9j1pvfFA/S1Ey4rkVwG1kf4Bm/G3+n8r+W3/qG
 DFTa8mlDFxwmn2MNtNTePSIOgDXIKlOXgfv1TSBwEEiOaVi9LzaaIdbN+ic/h+ru409H
 COgqgN7CerN/qa+nmWx/UVog8CMKJbECkhhR3Yg9TyCo3nMtKJ46k+atJpz+RwUCs7DH
 JIsKhrwECAhT/gTaGZbC/G6473aIH+GyL5NY2ArWvboAJDk5O+4vEuMD1meMk2cJSzMj
 kWV3ZdAyqK+D+iKwlcW3iHWWKHI4/l+9g+NNcdk2ENQIJjLyfPeHYi96w5wkGPmDfg2A
 3Fwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CJa4jdQtlph80xRVz2uAXpKfXFL6ECs03zWGju+zACk=;
 b=QyHRlYCLOckGBMNhi1FiQRWvC0kpxTllWzXYeQN79sJaaWi3tH4I8HFrMfJb+kmIiS
 GZfIvz5jJ4+oJ44ZLwtC1sDbZ3nqX4zkiqUTTXeuU+oh8UJla0dZc1DtWIi8+KbkvbSY
 pnCWLvnjalyjK7aouDdFpoTmAhPvAN6qYV8KRrSJFnzL0myNZvVInwrpUGAh5W+3o3d0
 IZDFddf615Yts+ZAoZFuywMGRVb1gBkmJug/M5oxFQuiazmBtAfRWhBP8/JoB12UJlv3
 D5MWicM4MI76j4PjuZUJ0dDLYExBYDgRIadsSgusrsfCm32yaS5RYLgAcHB4mIQ5u3OZ
 /KQA==
X-Gm-Message-State: APjAAAVpwVR/sn8fYXD9aiYtthXRHuYNtVOWHkTnv/aov+MtToOcTm8f
 T80CbE/jmZKZ7bd1pWdaf/0=
X-Google-Smtp-Source: APXvYqyi7jfQoU8F3YbIts+fzimce0Gx1v6AYGP8f3xbBDCs1wXyGL7aWxlFVCU7tj2CkLlN5QJwuA==
X-Received: by 2002:a37:684f:: with SMTP id d76mr5177504qkc.315.1572048099039; 
 Fri, 25 Oct 2019 17:01:39 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com
 ([2804:14c:482:99:1a50:482f:3e7:284a])
 by smtp.gmail.com with ESMTPSA id l3sm2547840qtc.33.2019.10.25.17.01.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 17:01:37 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/3] arm64: dts: ls1028a-qds: Remove unnecessary
 #address-cells/#size-cells
Date: Fri, 25 Oct 2019 21:01:17 -0300
Message-Id: <20191026000119.27178-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_170141_601317_E35AE4AE 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 leoyang.li@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following build warning is seen with W=1:

arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts:196.10-208.4: Warning (avoid_unnecessary_addr_size): /soc/i2c@2000000/fpga@66: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

Fix it by removing the unnecessary #address-cells/#size-cells.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
index d98346da01df..1456d83f2bee 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
@@ -194,8 +194,6 @@
 	};
 
 	fpga@66 {
-		#address-cells = <1>;
-		#size-cells = <0>;
 		compatible = "fsl,ls1028aqds-fpga", "fsl,fpga-qixis-i2c",
 			     "simple-mfd";
 		reg = <0x66>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
