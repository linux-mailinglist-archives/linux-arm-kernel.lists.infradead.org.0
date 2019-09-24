Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E7CBCC50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 18:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5K8z3E27J/xiGVCPXT4FdsFfFFvRlGxd9yhFFPDIaq4=; b=ciI
	RfXID2ScUL03Ay5z+7HlAnR45M1roHO3reBMPxjElyOkAkUyPHn+kbi0BhIc2DS1a6quFAGLE056i
	AxpfDrZv4sDsVyI8boK3958ROtaplxLNpEsbE8+Nq8gO/e3IMfEyCUQK+OQY6b2FhHLzURBWOhgib
	uKTs/AfAiVUVFc4+LCVO5bUhw4qOCdQY5sKoj9I8MzyVtSoJx1GWzEAiTsnstoCJtu6ot+xrr2H2l
	E7yYey+7or1AQqTfcE45RHB3xfqJ+2kLhxAUyJS5u+AMrRKJ1F29E7ffwA/XLcPKPiCG2f8clTP9c
	MsX5cAhPeaTCeC95JIedIkWeAkZDEZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCnYm-0005RS-HG; Tue, 24 Sep 2019 16:21:04 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCnYM-0005Qx-G8
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 16:20:40 +0000
Received: by mail-ed1-x542.google.com with SMTP id v8so2393263eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 09:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jGaYIvx5eMd2C8W/Ntjb7BFiKQ1bZogo0tZfXc3/zIc=;
 b=ngYhG1/r7NA2i5Q2IKHFn1PWl4b7ZDF2BiFZbaJGQB6cTzVzvh5BNmQKxxrKrj8naF
 cVwVen+dZXMaQfupoRu3+ffJ4UJ+HEo+ZfQoijKa3jh6hS9eydyI+gNiDBh5xDo/iB/k
 1quZQnW0va2qcmqMBjsABDHprwEeTgGhly9EiBsh8gWvjpAXkjzmojioarPBSR7QoQF6
 A5Dp1TGM7GggNWD9CuDIoSS658uU+4wQAFJQ6iTOgdrsa0okbUVEnyjSfzi1+cz2HTyh
 sD7BYxLLY7jL3zfKAs1r8GP8istN1ATWzJcFz6Lwp9PVtdZ4FYKXJwep4UrLfOJkgUfr
 +x8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jGaYIvx5eMd2C8W/Ntjb7BFiKQ1bZogo0tZfXc3/zIc=;
 b=MFmh+ccqC7dEWRzbNY7q8pSjcfN6TRthLaeb65ZAzmu+EGrVNCY8d7jpMIeYetBnZJ
 P71tejNnfisc4NXG4LMx5hwCO81b/YAChqyq5/PJpQN2obrcCzm4Ykq71bUPMlAcApJO
 StSZ3WG02K2ZzBXCSP0lAfuT3XBzZymgzN1lWc4WQi0QCKJIUjQyoxhDev78nDT01mMV
 JW4jDm7ojrmdi+dIh1GV5phXuhcvIe4NyUq3er++Y8mVafcUy6RwRv38MbH5x/ZI0FNW
 UAgMbgSYy4X7SpVd9GZpUsIr/nHW1cWNSrRQOxaQ/dGQBc3VgSEqcG7/LKiuPg2T1RLy
 naSA==
X-Gm-Message-State: APjAAAWhFBRjgdGGRGZb5qdHPACd9E326NG14pIm/a37F49P6xy88Iwy
 s8gnnyhP9dExDXZwIkr+0HM=
X-Google-Smtp-Source: APXvYqy1z09jDJqczIuE4DqBONcKoRnAnyHD+uSGkuKv3lqECLD/pZ/WdZJV5iYePeFfBfQWUbI1vw==
X-Received: by 2002:a17:906:d8c8:: with SMTP id
 re8mr3325112ejb.130.1569342035905; 
 Tue, 24 Sep 2019 09:20:35 -0700 (PDT)
Received: from localhost (ip1f113d5e.dynamic.kabel-deutschland.de.
 [31.17.61.94])
 by smtp.gmail.com with ESMTPSA id g19sm253301eje.0.2019.09.24.09.20.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Sep 2019 09:20:34 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCHv6 0/2] Variscite DART-6UL SoM support
Date: Tue, 24 Sep 2019 18:20:19 +0200
Message-Id: <1569342022-15901-1-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_092038_564952_212616C4 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 narmstrong@baylibre.com, Sascha Hauer <s.hauer@pengutronix.de>,
 m.felsch@pengutronix.de, linux-kernel@vger.kernel.org, oliver.graute@gmail.com,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Need feedback to the following patches which adds support for a DART-6UL Board

Need feedback if the division between customboard and SoM is done right

Need some feedback why ethernet RX is not working the right way. RX is deaf.

Need feedback howto document propertys and compatible the right way


Product Page: https://www.variscite.com/product/evaluation-kits/dart-6ul-kits

Oliver Graute (2):
  ARM: dts: imx6ul: Add Variscite DART-6UL SoM support
  ARM: dts: Add support for i.MX6 UltraLite DART Variscite Customboard

 arch/arm/boot/dts/Makefile                         |   1 +
 .../boot/dts/imx6ul-imx6ull-var-dart-common.dtsi   | 445 +++++++++++++++++++++
 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts    | 196 +++++++++
 3 files changed, 642 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-imx6ull-var-dart-common.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-var-6ulcustomboard.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
