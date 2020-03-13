Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A3E184D2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:02:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPya5tJ5sjAB6/dyttXyRgcQJp1VVoxcaBieiprEdT0=; b=rnhP4aMUQ8yiPK
	Gr+pK03AZFnvEbIF1vr7xd5POPcudKch27NDXtLQLfvmdvbssXqIPw7/zIsDj8oaBB4vUfzJtfp2D
	M+h1fZydCN+WW/hM3HUt3G29vZbCTnZoIuWG2pK51G7FZCwPsRn8NNmupQl9fK0lCn5L7UZAVMa62
	NGBmkmG36EviVL0cfNIA/UTSQ4pci8FrZl1afQkcYqDJ9tpTI1KRE3jiA2gg/s96D0pzgrR+lh0YK
	4JsVIEOyqNU3cZlJpFEE7UZo34T3CD6rKblTal7ygTZszs1R0l9zHsStk23wTOWlvx+MJEfShqucb
	yRJMwhKAIPcRRt8MdmXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnh3-0003ej-0y; Fri, 13 Mar 2020 17:01:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCneT-0008U2-R4
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:59:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id x11so8269162wrv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GkSp53UqxGMezb98No71xXKz4FloCnxhdFK1fZRjBd8=;
 b=bq7JoO/XL/9E3wNqSP/iDNW7nPnI/h2Snjc+Q5S6MUMrKp2PKhjoQlXdYBtkFw8hJI
 BIe7F1U3egDJQxnSisgIVqxh5SK/awvgeeS9/Byk6bm2+dhaMml1bQbs+gCXWOfh7vbi
 LGik2/w2JmqwwpDCmjFlbuJHCpv4/p+XImoQYhaH09/WCxlpDqgk3YZog8jferWAazFt
 pzu+LDaFbjZn2yC9KRJj/q0NmNprEPVJWExR0YdPolcm20++kv1+67Kc6W9KnnLbiPvf
 XSf7aPE0LSSQ7dUbkgFHsNeqjVaTDE5JqdbfTA3GfI753mKzha2qfOwPOcDZqHptCZIt
 aFuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GkSp53UqxGMezb98No71xXKz4FloCnxhdFK1fZRjBd8=;
 b=fTKr70X4pwiaO1CdJUUiLf13YYYT29ycnL8ZHk11BO0blBWrJkk2GOme5Hbx2rfAKi
 wwrAZTzgVuK7+ntae2JDvxJcdA+HR6lmeWYqa+lXmR8quU3NjgPGzIdfCxtCj12vSGmO
 CvLYc58T2OzHM91zvkmEGTYKnNNAlWUql7v99+3LanUhOY3QkVto3yOg/oRUrjvv4z2P
 IrRfiutept3+7j7JR5mJMMzDgQsTQiAX9YcpXsm4nbjZEIZnci/41Z1bu6/7PUmfpRAv
 LC9SMBUOLi8GWyKs9Z6m2KVa02Th+Wed780SqfWOIEmiuK8imeLvwzpCF0Thl/DtTyHE
 idbw==
X-Gm-Message-State: ANhLgQ2fyWJhW29K4tnOPBr4gpTJatUJ8mOMNGONfEmW/2A/DiagsDwh
 5/bEoK83F06oiyRBA6dbaeWpPffR
X-Google-Smtp-Source: ADFU+vvD3V+yfjmMIN67TowA6OWpsOR4dkiJKy19dn7YAj+wM7wURdDPFxgQlMh3kK9rVMHUP1VpJg==
X-Received: by 2002:adf:fa0e:: with SMTP id m14mr3210545wrr.80.1584118752608; 
 Fri, 13 Mar 2020 09:59:12 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id e1sm69648524wrx.90.2020.03.13.09.59.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 09:59:11 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 10/10] phy: tegra: Changes for v5.7-rc1
Date: Fri, 13 Mar 2020 17:58:48 +0100
Message-Id: <20200313165848.2915133-10-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313165848.2915133-1-thierry.reding@gmail.com>
References: <20200313165848.2915133-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095913_890696_A67D36E5 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-phy

for you to fetch changes up to 04c929223d1db6ad4ba8e4c23122e1052f670c2e:

  phy: tegra: xusb: Don't warn on probe defer (2020-03-13 09:17:50 +0100)

This is a dependency for the USB changes that are also part of this
series of pull requests, so it was deemed easier to take this all
through the ARM SoC tree. The patches have all been acked by Kishon.

Thanks,
Thierry

----------------------------------------------------------------
phy: tegra: Changes for v5.7-rc1

This set of patches adds role switching support for the XUSB pad
controller, which will be used by USB host and device drivers to
switch between peripheral and host modes.

----------------------------------------------------------------
JC Kuo (2):
      phy: tegra: xusb: Protect Tegra186 soc with config
      phy: tegra: xusb: Add Tegra194 support

Jon Hunter (1):
      phy: tegra: xusb: Don't warn on probe defer

Nagarjuna Kristam (5):
      phy: tegra: xusb: Add usb-role-switch support
      phy: tegra: xusb: Add usb-phy support
      phy: tegra: xusb: Add support to get companion USB 3 port
      phy: tegra: xusb: Add set_mode support for USB 2 phy on Tegra210
      phy: tegra: xusb: Add set_mode support for UTMI phy on Tegra186

 drivers/phy/tegra/Kconfig         |   1 +
 drivers/phy/tegra/Makefile        |   1 +
 drivers/phy/tegra/xusb-tegra186.c | 261 +++++++++++++++++++++++++++++---------
 drivers/phy/tegra/xusb-tegra210.c | 131 +++++++++++++++----
 drivers/phy/tegra/xusb.c          | 189 +++++++++++++++++++++++++++
 drivers/phy/tegra/xusb.h          |  10 ++
 include/linux/phy/tegra/xusb.h    |   2 +
 7 files changed, 511 insertions(+), 84 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
