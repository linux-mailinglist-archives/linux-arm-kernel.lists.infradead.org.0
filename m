Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F702BFEF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 08:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZAw1LI+qGSIjhPrMNUn8Oiqcawxkor6sgaiS/QSrJG8=; b=CLuExZKQMsAnQq
	iaRL71o6FqUxwhCXZMa0j3QW0mrIoNTusvkvGxSWiRtOBKfq0VHKUIqAwVc3GEKo9k430DyOp/gjU
	tm6Bd6gg/OGqIk6DYQORlFW30t7QJw5KcWF5pl3snfl6ZpxyGMrOEM5S5QAlgljWURws8zGK/hMp7
	vxCPtC+HVUfKsTvvGXoSDW1n7oyKTf68ApDsGj47kEqoFWhyfdeqg/fk4oWbgfZ+HBCr/w6HRmn+p
	WTy16Ax6Z7ggYCLTWsUZezTlyLmrRTWmNy/UfjGZBKnGjw48wAkFGskEl//FrVySw+8j4DV11QT1v
	74+nr70YlphVwc34myKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDjXU-0001qU-2X; Fri, 27 Sep 2019 06:15:36 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDjWo-0000Kj-FL
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 06:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oxwkS9iQGzBC3RRZgyxT6v5+4rmaQArHkLz3TielJTU=; b=P1T/0anjMGpXCNKGjdyZ0ahh7J
 bbYLQKPRArZjN70bqzip29W/yX7dR5UoFKKqi3m6O8ebxLBAaawp1naKUycmXA9nnEKCETAhxV8r6
 2YSGkSixE4T0U1A3+KtPxNQKGv/8QF+hAHtzKL2sbE5vK2dhz+grMijFW2iSxjQ+Dhyw=;
Received: from p200300ccff0e5f001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff0e:5f00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iDjWV-0001kF-73; Fri, 27 Sep 2019 08:14:35 +0200
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1iDjWU-0004VT-Gq; Fri, 27 Sep 2019 08:14:34 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, manivannan.sadhasivam@linaro.org,
 andrew.smirnov@gmail.com, marex@denx.de, angus@akkea.ca,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, j.neuschaefer@gmx.net,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>
Subject: [PATCH 0/3] dts: ARM: add Kobo Clara HD eBook reader
Date: Fri, 27 Sep 2019 08:14:20 +0200
Message-Id: <20190927061423.17278-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_231454_672806_C19D5678 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andreas Kemnade <andreas@kemnade.info>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a device tree for the Kobo Clara HD eBook reader.
Name on mainboard is: 37NB-E60K00+4A4
Serials start with: E60K02 (a number also seen in
vendor kernel sources)
These boards are also found in the Tolino Shine 3 reader
but equipped with a i.MX6SL processor. Support for that
device is planned to be added in a later patch series.
To prepare for that the device tree is split up into
a board file containing SoC-independent stuff and a
file containing the SoC-dependent stuff.

Work is based on code from the vendor kernel at
https://github.com/kobolabs/Kobo-Reader/blob/master/hw/imx6sll-clara/kernel.tar.bz2
but things need to be heavily reworked due to
incompatible bindings and to prepare for Tolino Shine 3

Andreas Kemnade (3):
  ARM: dts: add Netronix E60K02 board common file
  dt-bindings: arm: fsl: add compatible string for Kobo Clara HD
  ARM: dts: imx: add devicetree for Kobo Clara HD

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   3 +-
 arch/arm/boot/dts/e60k02.dtsi                 | 339 ++++++++++++++++++
 arch/arm/boot/dts/imx6sll-kobo-clarahd.dts    | 275 ++++++++++++++
 4 files changed, 617 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/e60k02.dtsi
 create mode 100644 arch/arm/boot/dts/imx6sll-kobo-clarahd.dts

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
