Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4D11139C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:20:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y4KeDIub0dy2PTEplnLZmJv9PlJbJoYI+MyPpt8Azkc=; b=nD22AnXPaRg2/I
	c12omRKVK3B+mwD+fD9rLCbPsmHkkl7e+HwSS/YKSlDr/RP6uyb52YGpSzdlML2Gng1ZqAWq29xPm
	Ztmay5GhaOu9DTpgjkNdWJd0yWAQzRU5rKUXnpKaxvED3w94v339lwxQk0q2V2xOXnghiZy23bmx2
	WTN+G8PGMygdXeBOs6JxYv+NUO7atzDGJerGHY15zpDYV/FmKyiPAZz7LQFxN5tq6b6Na0N2/2Kd5
	h4f6bEtogJKAEfj9KbAsJcz3nMEu9Cr4Y4Dn5zpsTU2Zlg1jU7qegNUVGvaTMYFZnsU/ElcoeRHY6
	nGL1jKXgwtffP/0UQJjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icgkF-00082H-SK; Thu, 05 Dec 2019 02:19:55 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icgk4-000816-EK
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:19:45 +0000
Received: by mail-yw1-xc41.google.com with SMTP id i126so614820ywe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 18:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W0wipGAlhtFBkJDMjyVi53Belp9dZbF8qy8E6IHBmAc=;
 b=kUT4K4VJ3i15DzpOkpq7fK7DgnWrHPwjdAGZyO4qBy5SBblwpIll3K/BimeM7GBf6S
 h5JNbWRPQXOoa69Dgpc/c28ZfdA2zZcMDn0ptcRrinbBAdxWFeqjSD39G8OEV6MxyfPo
 PhBieSaCbbvXKPLJ6qAQIXFDisK10uuc/bcHHVArpwGNERDLN3/DEsxnEDPPk6bkLhK5
 4elI7/lcLdf3xETQ+vSuio0Mj+v6HasE/Gc7/cO6p7ELWxy3WnuQltkRDKEdOnv9sY+q
 0wznrP/qzbKz5EgEONJ1NCajYAtvI2dS0XRUVEfYWxtywhIHwozZSWqL/NjgHP6dkISy
 hyPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W0wipGAlhtFBkJDMjyVi53Belp9dZbF8qy8E6IHBmAc=;
 b=pALCFRqKUuZjYTlZzAgfoClshH1hr2xP8p0hOs3i1LAYuFBCcDSiJ+vOfJbG8pajge
 mCO3Vvx9kIAm9sicHJt0ByujGYlMmjHpn0ej3qA7vWvB9b+eHRLyVCOXtR0/iLUp61lQ
 hGsOXAKl1lOIy+J+qSAKyb9rG3PBKW36DnVyukageFBBEUX6J157mthT9JzFzkv3VtJO
 qE20JC+/V4Uo+h8LBg5LxKgbzGaiu75RfbrUh9l5xAc+99KxmCbeW5FvEarZAkJTBDzb
 vbx9gSwZN3fSZI7m769YiPfFTV6TbHcchWFuLM+eaWqAfWLlaLgjV8ERNJtO6NHq2bxe
 lGOQ==
X-Gm-Message-State: APjAAAUYQxu7/m05VwDLgcZ4mRGHnDM5jmClDuOPFx7V6JlxlkBt1S96
 sVyT3OuCmzYP9FWwDJJRHfbpEeas
X-Google-Smtp-Source: APXvYqwmA0tNypyxHFhWWBSeQmaZKBrbjW0ry33aUyY5ro4GqrUJGZqXbgcg/CTdfAPjgNHekXLwLQ==
X-Received: by 2002:a0d:d5d5:: with SMTP id x204mr3846561ywd.283.1575512380930; 
 Wed, 04 Dec 2019 18:19:40 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id l6sm4188449ywa.39.2019.12.04.18.19.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 18:19:40 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/7] soc: imx: Enable additional functionality of i.MX8M
Date: Wed,  4 Dec 2019 20:19:16 -0600
Message-Id: <20191205021924.25188-1-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_181944_482865_2451F6A6 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GPCv2 controller on the i.MX8M Mini is compatible with the driver
used for the i.MX8MQ except for the register locations and names.
The GPCv2 controller is used to enable additional periperals currently
unavailable on the i.MX8M Mini.  In order to make them function,
the GPCv2 needs to be adapted so the drivers can associate their
power domain to the GPCv2 to enable them.

This series makes one include file slightly more generic,
adds the iMX8M Mini entries, updates the bindings, adds them
to the device tree, then associates the new power domain to
both the OTG and PCIe controllers.

Adam Ford (7):
  soc: imx: gpcv2: Rename imx8mq-power.h to imx8m-power.h
  soc: imx: gpcv2: Update imx8m-power.h to include iMX8M Mini
  soc: imx: gpcv2: add support for i.MX8M Mini SoC
  dt-bindings: imx-gpcv2: Update bindings to support i.MX8M Mini
  arm64: dts: imx8mm: add GPC power domains
  ARM64: dts: imx8mm: Fix clocks and power domain for USB OTG
  arm64: dts: imx8mm: Add PCIe support

 .../bindings/power/fsl,imx-gpcv2.txt          |   6 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 129 ++++++++-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +-
 drivers/soc/imx/gpcv2.c                       | 246 +++++++++++++++++-
 .../power/{imx8mq-power.h => imx8m-power.h}   |  14 +
 5 files changed, 389 insertions(+), 8 deletions(-)
 rename include/dt-bindings/power/{imx8mq-power.h => imx8m-power.h} (57%)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
