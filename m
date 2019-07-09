Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BB0631BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rPjZyS0m37UzieUdglRYgVVqOJOZIJlQ+/V7OcwX3k0=; b=UFZ
	ehYQ24sqAurhJMOJMP3tAwFsjcTKAk+pkb3R79LmhCqlflcHnxIBcbH+Y/eLUnveda82yfSG6ChYS
	GWaN+Y5x4xWKdPdltx6QyDo8UaikRn8eas0kZGLsiyMSIAR9XiR3eM5H1zNzG711ZZvAkk6bVJZgi
	IamNbReg+SAG/NcsgJ4Rv4SErejj8iJrv4vjGTG159vJyzeuU0A2TXDuoeiRvYef0J7zzi3CmW4xG
	KDcRuSanvAKFXeNVU0ulmtAWpRk1fM0hMLMELyODGwm+6jBlIm0Wg/amR4FhrknEHFKoGO5foRPXf
	d7LHLrwv5l476/bHDBoY18BAaCb4cTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkQ5-0007lN-0a; Tue, 09 Jul 2019 07:20:09 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkPS-0007T1-En
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:19:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1562656767; x=1565248767;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IKnKR+7MnhE7QQSAv7QSA+JPPlLOOURTMuIT2GV5+rc=;
 b=ncXc0bvgabXx7oBwILfY/8GPH5ENCTnXxsnuJC3Vk+ePQik4u3MI8iGzSNYVFzPb
 OJRUPPpVPCj9iXX1+d8AVph1biit+rD5Q3mbChsDAcGlbMK9VLu/xy/jdL3epQWY
 u5VQGyaOwNnAJz5SA8CX8cfvdsNo9sx/iwKo2MG7RwU=;
X-AuditID: c39127d2-17dff70000001aee-ff-5d243fff46f1
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 17.B0.06894.FFF342D5;
 Tue,  9 Jul 2019 09:19:27 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019070909192732-309703 ;
 Tue, 9 Jul 2019 09:19:27 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 00/10] Add further support for PHYTEC phyBOARD-Segin
Date: Tue, 9 Jul 2019 09:19:17 +0200
Message-Id: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.07.2019 09:19:27,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.07.2019 09:19:27, Serialize complete at 09.07.2019 09:19:27
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBLMWRmVeSWpSXmKPExsWyRoCBS/e/vUqswfc+PYv5R86xWjy86m+x
 aupOFotNj6+xWnT9WslscXnXHDaLpdcvMlk8uNjFYtG69wi7xd/tm1gsXmwRd+D2WDNvDaPH
 jrtLGD12zrrL7rFpVSebx+Yl9R4b3+1g8uj/a+DxeZNcAEcUl01Kak5mWWqRvl0CV8a3pkmM
 BS9EK75PecXcwHhKqIuRk0NCwERi/am1rF2MXBxCAjsYJTZNPsIO4VxglLiweTYLSBWbgJHE
 gmmNTCC2iECkxLvtv8GKmAX2MEpMu36dESQhLOAi8WfnajYQm0VARWL53BZ2EJtXwENi+8IP
 7BDr5CRunutkBmmWEGhkkmi/eoAVIiEkcXrxWeYJjDwLGBlWMQrlZiZnpxZlZusVZFSWpCbr
 paRuYgSG3uGJ6pd2MPbN8TjEyMTBeIhRgoNZSYR3n7tyrBBvSmJlVWpRfnxRaU5q8SFGaQ4W
 JXHeDbwlYUIC6YklqdmpqQWpRTBZJg5OqQbGtW9P/3e7v863II/94YeCo9uKNOXPJUlIiAcu
 39KsE6C2JjVR8pxk1vanUokGqmW/eFdrxLGseLDriiRDQNm/GSvO3cspv2pj8ueLr/aMA1Ir
 jp2Y+7/pXroh+zObCyEPP/wRSs6UO71DYrV9mWRfu/jqnv2HPz3QYZBrWXUjd8m6B596qs++
 VmIpzkg01GIuKk4EAF0Fd88rAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001930_801344_E62D0C5F 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: devicetree@vger.kernel.org, martyn.welch@collabora.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchstack adjusts the already existing naming for the PHYTEC
phyBOARD-Segin to the PHYTEC naming scheme that is already used with the
phyCORE-i.MX 6 and the phyBOARD-Mira.

Furthermore it introduces some small fixes and adds support for the PHYTEC
phyCORE-i.MX 6ULL which also comes with the phyBORAD-Segin. It comes in a
full featured option with either NAND flash or eMMC and a low cost option
only with NAND flash.

Stefan Riedmueller (10):
  ARM: dts: imx6ul: phyboard-segin: Rename dts to PHYTEC name scheme
  ARM: dts: imx6ul: segin: Add boot media to dts filename
  ARM: dts: imx6ul: segin: Reduce eth drive strength
  ARM: dts: imx6ul: segin: Fix LED naming for phyCORE and PEB-EVAL-01
  ARM: dts: imx6ul: segin: Make FEC and ethphy configurable in dts
  ARM: dts: imx6ul: segin: Only enable NAND if it is populated
  ARM: dts: imx6ul: phycore: Add eMMC at usdhc2
  ARM: dts: imx6ul: segin: Move ECSPI interface to board include file
  ARM: dts: imx6ul: segin: Move machine include to dts files
  ARM: dts: imx6ull: Add support for PHYTEC phyBOARD-Segin with i.MX
    6ULL

 arch/arm/boot/dts/Makefile                         |  5 +-
 ...-pcl063.dtsi => imx6ul-phytec-phycore-som.dtsi} | 51 ++++++++----
 ...ull.dts => imx6ul-phytec-segin-ff-rdk-nand.dts} | 42 +++++-----
 ...1.dtsi => imx6ul-phytec-segin-peb-eval-01.dtsi} | 16 ++--
 ...hyboard-segin.dtsi => imx6ul-phytec-segin.dtsi} | 31 ++++++--
 arch/arm/boot/dts/imx6ull-phytec-phycore-som.dtsi  | 24 ++++++
 .../boot/dts/imx6ull-phytec-segin-ff-rdk-emmc.dts  | 93 ++++++++++++++++++++++
 .../boot/dts/imx6ull-phytec-segin-ff-rdk-nand.dts  | 93 ++++++++++++++++++++++
 .../boot/dts/imx6ull-phytec-segin-lc-rdk-nand.dts  | 45 +++++++++++
 .../boot/dts/imx6ull-phytec-segin-peb-eval-01.dtsi | 19 +++++
 arch/arm/boot/dts/imx6ull-phytec-segin.dtsi        | 38 +++++++++
 11 files changed, 409 insertions(+), 48 deletions(-)
 rename arch/arm/boot/dts/{imx6ul-phytec-pcl063.dtsi => imx6ul-phytec-phycore-som.dtsi} (72%)
 rename arch/arm/boot/dts/{imx6ul-phytec-phyboard-segin-full.dts => imx6ul-phytec-segin-ff-rdk-nand.dts} (51%)
 rename arch/arm/boot/dts/{imx6ul-phytec-peb-eval-01.dtsi => imx6ul-phytec-segin-peb-eval-01.dtsi} (84%)
 rename arch/arm/boot/dts/{imx6ul-phytec-phyboard-segin.dtsi => imx6ul-phytec-segin.dtsi} (91%)
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-phycore-som.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-emmc.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-nand.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-segin-lc-rdk-nand.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-segin-peb-eval-01.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-segin.dtsi

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
