Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E058D315A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 21:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ergp3fzRBkG2agy1pdCg6litZHl92642yMoSS2Qk6Qw=; b=BDQ7Jc9trYtHFf
	N8D/JtUOdjxA9eE3kcHZbjYXDgIz4+Zbz4TXkqRS4zFHlrFH/7RitaiNB1F+QtrXFpX+IvDy0P4zw
	m/Q3InEIm5rq1Jl1nH1vnNR0j2CETUDFbzIfyRhe/OZDN7KfR4N+nWjSE7rplLrjdjn3fMeDAX7p6
	k5/Uiw8yQLFMG9/n7VfJup5A5ruzMleOQ1fh34pVNge+91d9sXqDoXYvSmFJG4OGFWf1Hf9OzsqOH
	idiumhFQgfo5oVwrPBddc/+n7V7ZXSoodzZtjdvvaAAiYVABANCl8W2w122V79o9bDjmITahge5a9
	ynL8dB74whxFQZj/OX5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIe4w-0007mk-7L; Thu, 10 Oct 2019 19:26:26 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIe4m-0007lK-Nv
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 19:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wJEqH4NrrjSb9vl8KVNZW+HaMMj7tZUwG3p49NSaKKg=; b=YKdpMlKc8u3Gja5oVaR6Zuf3uN
 yEFIG2abAmtmQ1KNg3+tm95tqvam2VOFhTpEVnt+ite45WWUAyBjQobGhGeT0oY+FhK3Y+NdaLzxC
 tPCkU+H5Q5Aod1Zc3NYF8xRTLmsnB6iqHk5gCEAC2etdvsySswxAwOW2BLyOy9+/EV88=;
Received: from p200300ccff13bb001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff13:bb00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iIe4Z-0007Jj-Ci; Thu, 10 Oct 2019 21:26:03 +0200
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1iIe4Y-0007GV-M4; Thu, 10 Oct 2019 21:26:02 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, manivannan.sadhasivam@linaro.org,
 andrew.smirnov@gmail.com, marex@denx.de, angus@akkea.ca,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, j.neuschaefer@gmx.net,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v3 0/3] dts: ARM: add Kobo Clara HD eBook reader
Date: Thu, 10 Oct 2019 21:23:54 +0200
Message-Id: <20191010192357.27884-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_122616_929714_B02528E9 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes in v2:
- reordered patches
- various cleanups as suggested by Marco Felsch

Changes in v3:
- correct memory size
- better name for led
- comments about missing i2c devices

Andreas Kemnade (3):
  dt-bindings: arm: fsl: add compatible string for Kobo Clara HD
  ARM: dts: add Netronix E60K02 board common file
  ARM: dts: imx: add devicetree for Kobo Clara HD

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/Makefile                    |   3 +-
 arch/arm/boot/dts/e60k02.dtsi                 | 337 ++++++++++++++++++
 arch/arm/boot/dts/imx6sll-kobo-clarahd.dts    | 279 +++++++++++++++
 4 files changed, 619 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/e60k02.dtsi
 create mode 100644 arch/arm/boot/dts/imx6sll-kobo-clarahd.dts

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
