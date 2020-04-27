Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E17901BB265
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 01:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7N2ZsLrWt0VrtEiuVNymzu1c5yREM0eDTDWFVi1t994=; b=qBurBcLhc479bx
	ZHJexmfHw/oAVtN9Zft/o4g0qCL4Dmjk1DR5a6AgRUrsRXgOHFkS7k6Unb0LVmiKWb4nptbbF29fu
	EdT7jG0NNBOF6dIlz5AYS0/G4f1ymBaeq80XWIhXhVV4nK2nMqDjeDrGMk1+nbJEOoEye8UexmOOx
	/7UfvxZrsI0O+TPOVb5nkfb2/338yf8RUk3hTpOOEIDdQUKq2npwEP43c+2Qf1RNI/lbSQ247iqG8
	ESzCRnYU27fG74+MTumpzGc1VsxZppMrdV+YFXZtMROFHKzPCkVKc/Oo7bGarKPJFNBBLq3KwQdzH
	lW390iQAj8c/YsEva4Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTDeA-0001Fc-9f; Mon, 27 Apr 2020 23:58:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTDcn-0000Cn-Ap; Mon, 27 Apr 2020 23:57:23 +0000
X-UUID: fe401303cf564a6db9aa622036f99095-20200427
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=aI88OR5SoOs9oP8eEG6yM2tCCWEGm3PDTnuHvBFnmpg=; 
 b=MNpXtV4Hi3HmuHHkkvUwJF5agIVCYq3l53uNtTP5aW9rPdmThk2iLIBT4JT+PW2n+51ZqEc/ToeBaPmrmuBF0LB3yOqdFVCnJM5K8i6fXDvs2x36VE2oTq4fM2VzfLc67knoJi67hUbgeRObcPF7kFGxNv2sjCUBohZW5b3htuY=;
X-UUID: fe401303cf564a6db9aa622036f99095-20200427
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1288457455; Mon, 27 Apr 2020 15:57:16 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 27 Apr 2020 16:57:14 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 28 Apr 2020 07:57:08 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 28 Apr 2020 07:56:09 +0800
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: <mirq-linux@rere.qmqm.pl>, Jonathan Hunter <jonathanh@nvidia.com>, "Al
 Cooper" <alcooperx@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 <bcm-kernel-feedback-list@broadcom.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Michal Simek
 <michal.simek@xilinx.com>, Thierry Reding <thierry.reding@gmail.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>, "Linus
 Walleij" <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>, Kate
 Stewart <kstewart@linuxfoundation.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Pan Bian <bianpan2016@163.com>, "Thomas
 Gleixner" <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "Mathieu Malaterre" <malat@debian.org>, Stanley Chu
 <stanley.chu@mediatek.com>, "Kuohong Wang" <kuohong.wang@mediatek.com>, Yong
 Mao <yong.mao@mediatek.com>
Subject: [PATCH v5 0/5] mmc: mediatek: add mmc cqhci support
Date: Tue, 28 Apr 2020 07:56:03 +0800
Message-ID: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_165721_405423_5B8560B9 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-arm-msm@vger.kernel.org, Chun-Hung Wu <chun-hung.wu@mediatek.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series provides MediaTek cqhci implementations as below:
  - Extend mmc_of_parse() to parse CQE bindings
  - Remove redundant host CQE bindings
  - Refine msdc timeout api to reduce redundant code
  - MediaTek command queue support
  - dt-bindings for mt6779

v1 -> v2:
  - Add more patch details in commit message
  - Separate msdc timeout api refine to individual patch

v2 -> v3:
  - Remove CR-Id, Change-Id and Feature in patches
  - Add Signed-off-by in patches

v3 -> v4:
  - Refine CQE bindings in mmc_of_parse (Ulf Hansson)
  - Remove redundant host CQE bindings (Linux Walleij)

v4 -> v5:
  - Add Acked-by and more maintainers

Chun-Hung Wu (5):
  [1/5] mmc: core: Extend mmc_of_parse() to parse CQE bindings
  [2/5] mmc: host: Remove redundant CQE bindings
  [3/5] mmc: mediatek: refine msdc timeout api
  [4/5] mmc: mediatek: command queue support
  [5/5] dt-bindings: mmc: mediatek: Add document for mt6779

 Documentation/devicetree/bindings/mmc/mtk-sd.txt |   1 +
 drivers/mmc/core/host.c                          |   5 +
 drivers/mmc/host/mtk-sd.c                        | 151 +++++++++++++++++++++--
 drivers/mmc/host/sdhci-brcmstb.c                 |  11 +-
 drivers/mmc/host/sdhci-msm.c                     |   3 +-
 drivers/mmc/host/sdhci-of-arasan.c               |   3 -
 drivers/mmc/host/sdhci-tegra.c                   |   2 +-
 7 files changed, 155 insertions(+), 21 deletions(-)

-- 
2.6.4
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
