Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED5396FD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sY8SWFYna2h+0oVs/b5EXrvine2QjLmIGR/x40n2cjY=; b=Ze5
	dGhF7M3QH06xoskH+VS/iOlHuu39fDAkPnoGGzQAOkxzTXhXvcYgJGNks4q0ghT3q4bA24O6r9Zpd
	HvOkzP+pua6eOuw/EYOSt4+fNfCI2chzthNMT/NGSg89FaZoqhs9R6RjMtL52/q9hHvqKtu3Ylvav
	Ax6pBS7pv22wjGtpsf6kJGF5o1VgbJLsEnekc6y7LHKBO3eU3hiCZHhPyaftHDfI32eAfMJGn5jnN
	BBa5R9dP5CgHGCA0NKAeOwaPamxQsmHVwA41I+SYuGI/8sfym+l3YYX1nSHgcAgV30rrZF3FzQE0d
	fLl3lpBYJoQtTTQFiz1YnD4dBMpwA0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Gnu-0004GD-PW; Wed, 21 Aug 2019 02:56:54 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Gnl-0004FX-RL
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:56:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id m3so416395pgv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=soIydz/rgNKJaCy/gC57Rz46eI4EuGd1mOjpc4LfKIo=;
 b=Ic8dxupL3xZxcnGS16o8Ydv+lcngJuVUr7X4h3XFGrDV1pVWQjv2ZWczkhLo1g2JrP
 GlY3oeUn8eOeyhZ2N0u1MzVAuWFlj84cLk7vGTqw0zVzhACVNolO1ljl/qi2XsoXCE2u
 +EM2u/HqHhJvBLYWXzy+Pl9IqpLaR7JTQMdQ/Ercq7LZhkIw7vCHI63uncItpKfItXDE
 EzrcKzbQFRtHI6RdqRXJ3Aaag2A9fY4RkGf+Zv+CJFyFOQ0vO5p2X793IC9gQUU2b2pO
 mJ8HgyMSilr678FRNVD8KMa+VZjA9fc+Cxgo7akQ7tuntFIZgz+urRp5ew/LqsihLSMs
 vUlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=soIydz/rgNKJaCy/gC57Rz46eI4EuGd1mOjpc4LfKIo=;
 b=GZStVkT6rt7fNrDnf2Q5XbZJd8WVClUgSoViZNDPTePhKAPJUGOmCJ6d9lSWRjt7Ib
 wuE/Kh1/Csbatc13SzhZoiBH4EkEvKXjb+CkfYkupQg6poLT/FOeqRdTNfH2SmSf2LTx
 /c/vNZedTMTwRVG/v8NXXzg6dXp+sdd22ni68ydEhM6lR9bY+rO1icRcrMmhVaRiajrD
 PIL91PJqfPIeugmiERYZeDpb2pZuHLbovHJFIcBN26LPpXU3SFMw6CQJcBfVFkKaPiEO
 a+2kWGyX7Lf1GOGRlJe49ggXo9VtNULWBrIUv3qF0mb/+BXfH3cgVXOtpdAyXaeAONp/
 pXVw==
X-Gm-Message-State: APjAAAXCrDLypayXnA8tepBJw5JIvcC0RVHS79Nwv8iVuxKKiDfwmO8Q
 1UXVPHZiiyaZ8OseoA+4YJPm
X-Google-Smtp-Source: APXvYqx897GzsEFoofdDkQskosAqgrhiKaFJ1of7zLrcRUF0GdrmFpF19QtTv45xPM4v1D/HT17izw==
X-Received: by 2002:a62:7e11:: with SMTP id z17mr3917397pfc.211.1566356204895; 
 Tue, 20 Aug 2019 19:56:44 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 d16sm13251682pfd.81.2019.08.20.19.56.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:56:44 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v3 0/7] Add SD/MMC driver for Actions Semi S900 SoC
Date: Wed, 21 Aug 2019 08:26:22 +0530
Message-Id: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_195645_900023_BA85C5B5 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds SD/MMC driver for Actions Semi S900 SoC from Owl
family SoCs. There are 4 SD/MMC controller present in this SoC but
only 2 are enabled currently for Bubblegum96 board to access uSD and
onboard eMMC. SDIO support for this driver is not currently implemented.

Note: Currently, driver uses 2 completion mechanisms for maintaining
the coherency between SDC and DMA interrupts and I know that it is not
efficient. Hence, I'd like to hear any suggestions for reimplementing
the logic if anyone has.

With this driver, this patchset also fixes one clk driver issue and enables
the Actions Semi platform in ARM64 defconfig.

Thanks,
Mani

Changes in v3:

* Incorporated a review comment from Andreas on board dts patch
* Modified the MAINTAINERS entry for devicetree YAML binding

Changes in v2:

* Converted the devicetree bindings to YAML
* Misc changes to bubblegum devicetree as per the review from Andreas
* Dropped the read/write wrappers and renamed all functions to use owl-
  prefix as per the review from Ulf
* Renamed clk_val_best to owl_clk_val_best and added Reviewed-by tag
  from Stephen

Manivannan Sadhasivam (7):
  clk: actions: Fix factor clk struct member access
  dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO controller binding
  arm64: dts: actions: Add MMC controller support for S900
  arm64: dts: actions: Add uSD and eMMC support for Bubblegum96
  mmc: Add Actions Semi Owl SoCs SD/MMC driver
  MAINTAINERS: Add entry for Actions Semi SD/MMC driver and binding
  arm64: configs: Enable Actions Semi platform in defconfig

 .../devicetree/bindings/mmc/owl-mmc.yaml      |  62 ++
 MAINTAINERS                                   |   2 +
 .../boot/dts/actions/s900-bubblegum-96.dts    |  62 ++
 arch/arm64/boot/dts/actions/s900.dtsi         |  45 ++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/actions/owl-factor.c              |   7 +-
 drivers/mmc/host/Kconfig                      |   8 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/owl-mmc.c                    | 696 ++++++++++++++++++
 9 files changed, 880 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.yaml
 create mode 100644 drivers/mmc/host/owl-mmc.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
