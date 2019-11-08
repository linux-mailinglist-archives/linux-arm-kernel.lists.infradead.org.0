Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F120F459A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:21:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5DQy2+xdh/6zPD9upFBaWfwhxl0Fd7FIWsLoc8eEgeQ=; b=CKCJBmPC5Qb12D
	znpoukWxznK7u6rSSJUbWrKWhBr6rE3NGkKrifCNHM/EQ1qpkB5ot1zM5PXNDcfjONmmv+NOXn71s
	l782Err68VAu/OvGUXSGzZ0URuXY7kp0J8Bz2xAt5j6OKCO2+/svVLcpF4baLFxpJkInCOnmU5y5c
	fLLcvvuCR0r+62X6yWjVJCmI9Q9j4tnKGxphn7bHqvMHCvW2S7Llgg3NHJHNH8N7USyMfIsAJTDL/
	SSPqbI9Sgr4XZZrrMacc22tNx5kRbRAOa9mxmKotAFCeKOvnagbmmnwJPOnBkvWcb9hxs6CpZpISb
	xpMMN3yeT6e6hXoNEEdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2Kh-0008EL-UY; Fri, 08 Nov 2019 11:21:39 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2KX-0008CI-N6
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:21:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Message-Id:Date:Subject:To:From:Sender:Reply-To
 :Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TStTNZM8PfBlzl4Lo1zrdZm0ddkmI3oBmBJSellfY7c=; b=Bsm8E1xcOoUl6l8gQPnHh1yQZu
 5cyykXPM9F8n+18VoakJHEBpvjYfua8LiYIcG50uzYqYkrXjJBnYIC8WRu0p4YB6yxq5+Fm/GWfCF
 rYClCAGsKjIh1o4U1iMoLwt9BzPKCAxh603lrTrHeEO09EE2PbEvsNwz4pGJeqvLhyV8=;
Received: from [2a02:790:ff:919:7ee9:d3ff:fe1f:a246] (helo=localhost)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iT2KP-0000ap-Io; Fri, 08 Nov 2019 12:21:22 +0100
Received: from andi by localhost with local (Exim 4.89)
 (envelope-from <andreas@kemnade.info>)
 id 1iT2IH-0004rL-Gq; Fri, 08 Nov 2019 12:19:10 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, andrew.smirnov@gmail.com,
 manivannan.sadhasivam@linaro.org, andreas@kemnade.info,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, j.neuschaefer@gmx.net,
 letux-kernel@openphoenux.org
Subject: [PATCH 0/2] dts: ARM: add Tolino Shine 3 eBook reader
Date: Fri,  8 Nov 2019 12:18:32 +0100
Message-Id: <20191108111834.18610-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.11.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_032129_909100_F752FD02 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a device tree for the Tolino Shine 3 eBook reader.
Name on mainboard is: 37NB-E60K00+4A4 and serials start with: E60K02
These boards are also found in the Kobo Clara HD eBook reader
but equipped with a i.MX6SLL processor.

It depends on the previously-accepted patch
ARM: dts: add Netronix E60K02 board common file

Andreas Kemnade (2):
  dt-bindings: arm: fsl: add compatible string for Tolino Shine 3
  ARM: dts: add devicetree entry for Tolino Shine 3

 Documentation/devicetree/bindings/arm/fsl.yaml |   1 +
 arch/arm/boot/dts/Makefile                     |   1 +
 arch/arm/boot/dts/imx6sl-tolino-shine3.dts     | 326 +++++++++++++++++++++++++
 3 files changed, 328 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6sl-tolino-shine3.dts

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
