Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862D2182B6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 09:38:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KLQ/3deNZj5rVaAR9TQOCc8DXXRXBF33Gq8780bnilE=; b=OjH
	QQJ8zbDXF5rvFrhlOqTm31DSWXY4dPsgmyu9TTpiPbzpZdf542bR3RNn2kbPn9MqcFbbdgd9Rzfg0
	2CQReYNJ1ghQh1HCcIDJMWss1j+hirEKnTMspuJBKLtrQfav9CJEhh5v6eMOYhCKQnnnCfvYzW5Rr
	Gs5cvTTwb80LIDlv6a6fxBmx6tF6MzfdLNIEXZgQxAterZjpULbRmpckxqpo4Zaikw+HAzn3Og96t
	bNuFoplNKb3IwuWa30ZBcexdJ6zcmbL2juIaSPFUBN5ykwN9cGBoQmyBSttjSHdCJ2lwjXBHJP/v/
	kNgzSdTAB38FbThcdsF1R8aw4m63HIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJMe-0006dq-Vm; Thu, 12 Mar 2020 08:38:48 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJMV-0006dB-CN
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 08:38:40 +0000
Received: by mail-lf1-x141.google.com with SMTP id j11so4086596lfg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 01:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=njL/xVSacl4Pc5DEtw15HmBhPQTizshbsVWkVfiTBLY=;
 b=QsrMU/Di9LHFG3fLS4fRPfTghm0L3MmVK4fDq2O6pVXfffFJJgCux0XhJrPdT/OG3l
 TPivR1AqMUAbI8OqP2jZumDnYk0Mg3E8dG4ZtIRPKTnkrwtXyVRdZ277/Dykzg93aJHi
 g8xlqXUhusZUp7FcZmzWuYMAt65NbGt/ieBSRKxJYYEbzJPMoVdCumL3qXvTQfQmVrS3
 S/Pvfn0E7iinf39J1JAt6xmwzvYd4WpBgjpxcioZrey6Fv6iWi7nzpDPAmwNQhNKTq6e
 bwgOImhXXrATX4HsFQtJE5HP8hIK/nGveHg3k8/OyJHDezuDa4tt2TI+dTTgVnaLnPhF
 8+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=njL/xVSacl4Pc5DEtw15HmBhPQTizshbsVWkVfiTBLY=;
 b=qv7bi+aPn/n/OCZgvE/PUOy4/4sJ8Zru98zm+59lLMeECapcZ4oHKdh1A93PO16BsY
 B75jrTM3aGURTVYis7OERszVJInoOO0FV2oOOR2r8N5PlmlkpGf6StoZDuD51LBWA2Vx
 HBE+YqN7nFrYCMFFtDLHiKam3R+nw8TtMs47DRHCV2g2mzgiiEsmvUg7hlOh4wPyuuie
 vT+5kbNgaBiQXqObh8efHt+8e+pMCC+PKXF9qwpOnfni4mwu1mRbtbk7a7fc8QQQ/byg
 8EtdaM7GsGUgNfoU7YolTNNuYM8q3cZVtskGKarRqkiIBb4O984dNHG1ApTU8bs539Ij
 WswA==
X-Gm-Message-State: ANhLgQ1uIkf5zb1Zzb/9yqiRzLfWYCchHuwPXXLrvKXi+FhJ8Bbwj96Q
 yA5sfp7I6/1kU7oOh/OBx7e0FEdWlmg=
X-Google-Smtp-Source: ADFU+vspNzeVCKKtcvLNBCDPv0jVjywH/HxnrsGdojEsAE4CAtpd936CF7NW+rGunjAHjRSrMALCEQ==
X-Received: by 2002:a05:6512:6c7:: with SMTP id
 u7mr4777532lff.176.1584002316800; 
 Thu, 12 Mar 2020 01:38:36 -0700 (PDT)
Received: from localhost (host-176-37-176-139.la.net.ua. [176.37.176.139])
 by smtp.gmail.com with ESMTPSA id x8sm1091616lfn.24.2020.03.12.01.38.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 12 Mar 2020 01:38:36 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] ARM: dts: toradex: DTS license/copyright clean-up
Date: Thu, 12 Mar 2020 10:38:27 +0200
Message-Id: <20200312083830.18011-1-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_013839_427273_95E52E5C 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [igor.opaniuk[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Igor Opaniuk <igor.opaniuk@gmail.com>, Fabio Estevam <festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1. Replace boiler plate licenses texts with the SPDX license
identifiers in Toradex Vybrid-based SoM device trees.
2. As X11 is identical to the MIT License, but with an extra sentence
that prohibits using the copyright holders' names for advertising or
promotional purposes without written permission, use MIT license instead
of X11 ('s/X11/MIT/g').
3. Replace "Toradex AG" with "Toradex" in the Copyright notice.
4. Use GPL2.0+ instead of GPL2.0, as it's used now by default for all
new DTS files.

v2:
- Drop switching from GPL2.0+ to GPL2.0 [Marcel Ziswiler]
- Replace "Toradex AG" with "Toradex" in the Copyright notice [Marcel Ziswiler]

Igor Opaniuk (3):
  arm: dts: imx6: toradex: use SPDX-License-Identifier
  arm: dts: imx7: toradex: use SPDX-License-Identifier
  arm: dts: vf: toradex: SPDX tags and copyright cleanup

 arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  | 40 +-----------------
 arch/arm/boot/dts/imx6q-apalis-eval.dts       | 40 +-----------------
 arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts | 40 +-----------------
 arch/arm/boot/dts/imx6q-apalis-ixora.dts      | 40 +-----------------
 arch/arm/boot/dts/imx6qdl-apalis.dtsi         | 40 +-----------------
 arch/arm/boot/dts/imx6qdl-colibri.dtsi        | 40 +-----------------
 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi   | 41 +------------------
 arch/arm/boot/dts/imx7-colibri.dtsi           | 41 +------------------
 arch/arm/boot/dts/imx7d-colibri-eval-v3.dts   | 41 +------------------
 arch/arm/boot/dts/imx7d-colibri.dtsi          | 41 +------------------
 arch/arm/boot/dts/imx7s-colibri-eval-v3.dts   | 41 +------------------
 arch/arm/boot/dts/imx7s-colibri.dtsi          | 41 +------------------
 arch/arm/boot/dts/vf-colibri-eval-v3.dtsi     | 40 +-----------------
 arch/arm/boot/dts/vf-colibri.dtsi             | 39 +-----------------
 arch/arm/boot/dts/vf500-colibri-eval-v3.dts   | 40 +-----------------
 arch/arm/boot/dts/vf500-colibri.dtsi          | 40 +-----------------
 arch/arm/boot/dts/vf610-colibri-eval-v3.dts   | 40 +-----------------
 arch/arm/boot/dts/vf610-colibri.dtsi          | 40 +-----------------
 arch/arm/boot/dts/vf610m4-colibri.dts         | 39 +-----------------
 19 files changed, 37 insertions(+), 727 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
