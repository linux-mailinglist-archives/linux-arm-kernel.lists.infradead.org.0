Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505EE139B27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:08:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4fLpGxgY00f9GoBZI13I4GbBglyceRFl0TamR0Ih2bk=; b=BXS
	UERq/x1nm7WUsBQBNbWklO4wAsE/cclSYNY4DbuLE9Suhd1BmHIfraI6xIcVCXFO6/83E0ZHtm4oi
	xmu/6UtZwFQH+5x/UEkzqM6eVOV97VVxuur+g0hoFv5XOPchb+Y1Yw9tikwuYMVrAFiws4mDchIEC
	BijJtdMpx9COU6CDmBrPUa1kXCwskLEdm2vBANofU/TIakaNRe4B8+mCwNvM3ejaOU7Hz+wHOKcGU
	t1u+8pbv6AQD0Jgm9Q1IUsEZ3OlCUW02nc/SbOsR0nH5lKTZINFkKSvMiybse1JdoPFIE4Hp8pgrq
	az4LiRJ6TFZDnQeSohDzp3EkvlIAVUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6wP-0006uy-S3; Mon, 13 Jan 2020 21:08:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6w7-0006tl-Ra
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:07:49 +0000
Received: by mail-pl1-x644.google.com with SMTP id bd4so4300648plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hH2HYPUX9M6K2Z8XwzaDO6EO0dTrQa3gOricl4ewwpo=;
 b=vFyGHYP6n86HZaGZ9+4JdkQf7CK+H28vzqquaSDxb9MCqb+LcyGTzf2CskjHwbZklD
 TvVhs2vnzH7pOxSJkGYxxT8XoJIS1R1KWU8qREHewOXxvI8X5jKtIfumStAJf4i54LvI
 0nYJVtU7/VdKjAjuKxnlPrJa23m7cyCSuswO+W4rukIKZNkHgQCqAYiWErw1pNVyciR7
 kX0Lbh5SdY1k4R3mzHXSq8q8wDlvc4fHX7lgWSw8e4zWs3yt6BmwdOKbht1djw8W7U+w
 WdzDDPAPeXiELByAweQWdH9LJyV7lmNpVnkoiuxsuTQz40qJXdxa5iUWz28aqEjNX2+j
 /lXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hH2HYPUX9M6K2Z8XwzaDO6EO0dTrQa3gOricl4ewwpo=;
 b=RMJ3JxRUoOJo1DaPk89StV9Qy3pRcxKRFUqDERrYv02qn4HlS/ErvOZfM8T1WoEdKt
 7BtkL9P8t/jjh/XzPzpBaiXLQY1eBS9llXrxa/snv/RPocWxRzBePPksUInEbAEOZdls
 y1eYNRvkILP6nTWGr9dgPS4qjunOpAAzQpo+FIq5XqM6k8On3IFHxxVHCTwEJaOuUZ4d
 X2PbT6Zg5tnc1BLt/VZbZT6PNOlRIf59W7JtNF7vnJ86/Cn/NureAiCNXMseMvRI0D6u
 3hd3Cpmt5dLCTXGEtMpd3X6FpaG5EQty2mOkoHJo2AIMVms2hCwdLTnpzzY1Eblc7v7d
 TC+g==
X-Gm-Message-State: APjAAAUm2Z/lJSY3sFQt7+TYfJdejMbvXI6rMI4Jk459BkXIwaWY0gKn
 S0JfT8AY9sOiBzDVYDAmZ00=
X-Google-Smtp-Source: APXvYqwKyTtQjzJW+9Hz6nQj31Gm7sA7wdoCBN07yvu9rXr0QkOkuRpV9u3YHV2lN2zba3A+W0wLJA==
X-Received: by 2002:a17:90a:7f01:: with SMTP id
 k1mr9851033pjl.81.1578949666986; 
 Mon, 13 Jan 2020 13:07:46 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s1sm14195827pgv.87.2020.01.13.13.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:07:46 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] mmc: sdhci-brcmstb: Driver updates
Date: Mon, 13 Jan 2020 16:07:00 -0500
Message-Id: <20200113210706.11972-1-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_130747_918008_2DF29DC8 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Takao Orito <orito.takao@socionext.com>, Andrew Jeffery <andrew@aj.id.au>,
 YueHaibing <yuehaibing@huawei.com>, Al Cooper <alcooperx@gmail.com>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Faiz Abbas <faiz_abbas@ti.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sowjanya Komatineni <skomatineni@nvidia.com>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The latest BRCMSTB SoC's now use a new Arasan controller along
with a custom Broadcom PHY that supports HS200, HS400, SDR104,
HS400E-ES and CQE. This series of commits adds support for these
new features along with a few bug fixes. The 7216 is the first
SoC to have this new hardware.

Al Cooper (6):
  dt-bindings: mmc: brcm,sdhci-brcmstb: Add support for 7216b0
  mmc: sdhci-brcmstb: Add ability to use HS400ES transfer mode
  mmc: sdhci-brcmstb: Fix driver to defer on clk_get defer
  mmc: sdhci-brcmstb: Add shutdown callback
  mmc: sdhci-brcmstb: Add support for Command Queuing (CQE)
  mmc: sdhci-brcmstb: Fix incorrect switch to HS mode

 .../bindings/mmc/brcm,sdhci-brcmstb.txt       |  41 ++-
 drivers/mmc/host/Kconfig                      |   1 +
 drivers/mmc/host/sdhci-brcmstb.c              | 270 +++++++++++++++++-
 3 files changed, 284 insertions(+), 28 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
