Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3E0E5758
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3AlQ9Ypq1kF3e+lEovK0c3TFbEHNUA3DdWlhYn2z+/k=; b=FdSNXGepRbAYxgfe1abK7hdZKh
	TU029nh2+nIiFbgZhTcMyotjX0win1XJSoTWaRfn2P+98ANWQ6uscNdwMIiOnVheyqBJICSLySw6H
	TxThLyxAk9UqxDfxiNxtN7004DroC/kY09W4sBB7wCSreeYX2CBhmyC6Z1Ya0hWDRQ8c5P9hwjeWv
	5EVDVAqQfO4woJLCEqjnzJjH5hG2dsELgJckQez4gSyLTL2T6/5ITr4acH2I2U37+GdVGRLOCeAq0
	noPlcWTWoyuseGItJnz0ftECq4FukDj+3OU7Qvabk9ftDBb4yxXpudeATs2qILzwOsumqUhXM77Gg
	zTSpNQwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9X0-0005Dt-Ju; Sat, 26 Oct 2019 00:02:10 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9Wd-000545-1R
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 00:01:48 +0000
Received: by mail-qt1-x841.google.com with SMTP id t20so5838930qtr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 17:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=N7n+RQ/8oNhqVjKWIr5o8NBxEKbNqCAB5IwgTXdYhCA=;
 b=k+xvXB0b9ZooqTl5yJQqYjCXXdudHreexzs5MFmO9Lnfqy2lt1wb6wvmvMEz8tqhXR
 /w4rtC3NAzq8ogHiSNl0pYihSrctSqNlRoPmjuzSwPnGh1d+yXgh7McywaU/Ra+wwk+w
 4VSbhImQzpfX7slJv6Jj0dv/EwMDta0+WNZSousjJIT5O7F6idoGPJ6aSrDb10xXDLyU
 CAWMTt1cokVkSpR09pWpFdrKAB/U6sMKQLTR7SzAjIUwykBc0WUeFWA/zbVHCqlqM4wj
 10Oam9v43ROtdYzC6hD/mAOwlEm1hZNy81g2by7OUzSlLkGKjzV1ppi4PcgNXfSjOD+A
 My8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=N7n+RQ/8oNhqVjKWIr5o8NBxEKbNqCAB5IwgTXdYhCA=;
 b=uPzOGMSAaZ4lQMmoJo6vX3BV68ZAARwGXgAP+6JbL1bHpxKnLipSc92sj9srnui9Iv
 MwPo4VxoN6+AVW4y/ZZIt0ZY2r7j/JqdkhP9CBSpaoxFtG8mQCKgbtAgM3z3mopSmLeb
 pzpTPlsCCjHXEW0mMQYcexjaZYv0WokEGxpnbwGxN/cLFMsqIwT+qyF8QVBsuJKsTBvU
 GXVZ3gUBeFVa5fCtvKTKZ6GH6zZRtwMeoE1zp6ReCUUr3Lj50TVvIsQDAF8Tj7vLqVCd
 UbI8dfTaPmtwLzluzFAjN3OnTUDCWVAOPCrbolwgNSF/1tNkPa0xNPcv9woba5jlwFiA
 UOSQ==
X-Gm-Message-State: APjAAAX/aZlGfjxIqPfjS7QUS9HDOKvpbjvwNilohHJU90rwDmWudgrd
 vYl0MlzYmVa/DKZ/krTLxlSiKia+AGs=
X-Google-Smtp-Source: APXvYqzzEzdbrlauZNiftXyGq8YMjq81v7LUByUzlEK2CQtAbkvouVmxCQPxRkPeNwTAFUuUT9DsZQ==
X-Received: by 2002:ac8:8a1:: with SMTP id v30mr6143591qth.44.1572048104767;
 Fri, 25 Oct 2019 17:01:44 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com
 ([2804:14c:482:99:1a50:482f:3e7:284a])
 by smtp.gmail.com with ESMTPSA id l3sm2547840qtc.33.2019.10.25.17.01.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 17:01:44 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 3/3] arm64: dts: ls1028a: Fix tmu unit address
Date: Fri, 25 Oct 2019 21:01:19 -0300
Message-Id: <20191026000119.27178-3-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191026000119.27178-1-festevam@gmail.com>
References: <20191026000119.27178-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_170147_117259_4E3F202E 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi:531.20-581.5: Warning (simple_bus_reg): /soc/tmu@1f00000: simple-bus unit address format error, expected "1f80000"

Fix it by adjusting the tmu unit address to match its reg entry.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 370e9aa07efd..b32830f83da2 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -559,7 +559,7 @@
 			status = "disabled";
 		};
 
-		tmu: tmu@1f00000 {
+		tmu: tmu@1f80000 {
 			compatible = "fsl,qoriq-tmu";
 			reg = <0x0 0x1f80000 0x0 0x10000>;
 			interrupts = <0 23 0x4>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
