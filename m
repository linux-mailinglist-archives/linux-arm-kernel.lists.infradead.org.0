Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BBE5BAE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 13:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rF5jvh3TEi9oLZK2anqp7hbfWVLRLm5pY0h3afUrIaI=; b=t35
	VaMuVs1xft+sL7wE1s9PujxTWJIz6XWxwtxi8JFGwWOcUsxDp7O9tnXvi36XCrVr6vEaQgLV398yU
	Ny145waO9k/HDHgh5KWz49BUScNxdv+jWD8/gw2128A+6atHOyaLBLI2hRR+FLnRTMePkt++u+RMt
	SebFWDsUUiHD7NYK2pYh+02pO6lYxBGFTJvXX9doEQiMCys63I/fdIeNvCd/Sw/QQgJ0SnAML56Ru
	fWyIftDYfGiGvYdh+kJ5r9XJDksKJ0BaPu0Y+Qak0O5r1COU5WmRsfgarHnUTV/INk2rSGAypiDcJ
	CtgfWLOiA9kLx4Ua0h0ctzsngAiWX5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhui9-0003Fd-Qn; Mon, 01 Jul 2019 11:43:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhui3-0003FB-Dc
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 11:43:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id p11so13475017wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 04:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=768bW+NBh3+M3cU3i7aWM2KWkFJQXIv+KDZnW0aUxDw=;
 b=fGzO/KE1PbbBO3YoNBTkiFv/0lPAPJa3G3huWilN2bh+A3xomDymBTf4zszJ+u0cZ0
 /S5oKrJuHTH6SakpJwUIWYQcbOtB7vEceOocdTcm2r/o7Kz4AxjT4UemrxQtpyy9JD+6
 FiUwDnLdoxK60gHOCvP2AkR0zaDZkgSdGO/16LODcKc/yQOPc1oR7ZSjJgGiB2R+tf5w
 k5YvWHfxNUbmrs0i+gQLcNUWpsVI0IZ7Uq+lDSLEGtSiq9liZZ/WWOjnDXztzrQT1TyR
 mzcJK6kvBKNS4KMQQVUase2Q3XiwXxWdkSLI25unSrJYj7tgAnUph5CaCvRL91G1qie3
 stug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=768bW+NBh3+M3cU3i7aWM2KWkFJQXIv+KDZnW0aUxDw=;
 b=qGqnrpyOwtsQb7tssPItQF79WEU3tdStrgy4r3gpFqLqeRH8/AHOoJhuALiP8PlHmL
 QPxnB46x/oT19u4ZsaHx8B901Hm/jR29TImlu2Cwh09NkZsjWotQ01NvXzNXzodxL/hc
 xnCgyBOWTthQS8WntJNbzJoz5SWps7/ZGX1YCXpGobIb29loE7xsDfVBBjT6gJy792gh
 EDuX6Q2dgIsrkm1r4SedaIrMZjWorGwgB6zBRDj2glhzX6buZ+7UB2yoCgNlNFhAucRR
 74Xz19vRsRuetLeLRWFZvx4IXueqaz6nB1ysDDQk95cMoYtpO0TiHsrqGxrpV/CcJb/9
 cM0Q==
X-Gm-Message-State: APjAAAXm1CnLrKO22Rca6qauF3lDTOWv0iBwINS1bdAQWB9mIsmo27VH
 lbzio3rqffrEYqbPPAOWvcHYN1jf/uY=
X-Google-Smtp-Source: APXvYqz97AjjKDd/aHt72illIwPvryzQx9js81DBV6FxfQtGr3jfKNEQRfUKkH6Iy5kVOpm/dxXJOA==
X-Received: by 2002:a5d:6449:: with SMTP id d9mr871439wrw.192.1561981377568;
 Mon, 01 Jul 2019 04:42:57 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id f12sm23658907wrg.5.2019.07.01.04.42.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jul 2019 04:42:56 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
X-Google-Original-From: Oliver Graute <oliver.graute@kococonnector.com>
To: aisheng.dong@nxp.com
Subject: [PATCHv2 0/2] arm64: dts: add basic DTS for imx8qm-rom7720 board
Date: Mon,  1 Jul 2019 13:42:44 +0200
Message-Id: <20190701114253.1538-1-oliver.graute@kococonnector.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_044259_464769_25D2EEE4 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 mturquette@baylibre.com, Oliver Graute <oliver.graute@kococonnector.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sriram Dash <sriram.dash@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>, devicetree@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Pramod Kumar <pramod.kumar_1@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset is ontop of Aisheng Dongs clock driver changes for the imx8qm

https://patchwork.kernel.org/cover/10824537/

This patchset is based on next-20190222

I need information about the status of the integration of the imx8qm clock
driver into mainline. Is this ongoing?

I need some hints why the imx8qm-rom7720 do NOT boot with the following
changes. It stops at "Starting kernel ..."

Oliver Graute (2):
  arm64: add gpio4 and gpio5 to basic DTS for i.MX8MQ
  arm64: dts: add basic DTS for imx8qm-rom7720-a1 board

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qm-rom7720-a1.dts  | 221 ++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qm.dtsi     |  19 ++
 3 files changed, 241 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
