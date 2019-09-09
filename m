Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2304AD568
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tb88KKSahPLz59Bioi5QuH0VejtnS8d3j81iEkTbUuU=; b=rO9gQkleJF+2JQ
	dOyzGbguZGaWLajH441xpzYeqHuChjpCPDnX5yHuouS+XtuZYCazyPFqIgcs9na9ig9NbwPwRPdla
	tzIKXU9874/QV6+IN3xaqFDR+LPgfWK2YDVb+Xke56qUIjnsEtH2RLpJuAtyP6m283uCk1L8bA9nk
	IJyO9Cqd1NrS1KV0Sg3ssqSvmtX9eqSQvFw/5Ln/ukW016MPH54DJkB9GN5cOfWi5cgeCV35UxoTq
	mStndP2+DZc/Ez7OfJdLC864RpmJumdGfYZolhpNpPc1kXnnuY9RPV7CcBvMtNi3R3VPKlkwf/4Mx
	cVWInMxe5ROx/1efXlCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7FhW-00028L-FW; Mon, 09 Sep 2019 09:11:10 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FhJ-00027Z-5B
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568020257; x=1599556257;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=ey40doxX0rG3pVBsPnyWR0CfVV2FkV/uoAA9DcuSCtw=;
 b=WXE+tlv2Dt/4sV2ehjf7eto0c8YHVm0LzqrKCKG+RdFMF2fLL0uHq4Sd
 T/9LgmcQnIKYtdWpnqA0KMdsugTEHvD44UoWPambBm+o5nfYWOthXOSwS
 CM42zATlCtJn8l3Tg8CMNUg64Ig0D4SH68PyOF9V2oP5eKJbJ4A+wD/7g Y=;
X-IronPort-AV: E=Sophos;i="5.64,484,1559520000"; d="scan'208";a="783971868"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2c-4e7c8266.us-west-2.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 09 Sep 2019 09:10:50 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2c-4e7c8266.us-west-2.amazon.com (Postfix) with ESMTPS
 id 7832DA1D01; Mon,  9 Sep 2019 09:10:48 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.82) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Sep 2019 09:10:47 +0000
Received: from udc4a3e82dbc15a031435.hfa15.amazon.com (10.43.161.176) by
 EX13D01EUB001.ant.amazon.com (10.43.166.194) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 9 Sep 2019 09:10:36 +0000
From: Talel Shenhar <talel@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <nicolas.ferre@microchip.com>,
 <tglx@linutronix.de>, <arnd@arndb.de>, <venture@google.com>,
 <linus.walleij@linaro.org>, <olof@lixom.net>, <mripard@kernel.org>,
 <ssantosh@kernel.org>, <paul.kocialkowski@bootlin.com>,
 <mjourdan@baylibre.com>, <catalin.marinas@arm.com>, <will@kernel.org>,
 <talel@amazon.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 0/3] Amazon's Annapurna Labs POS Driver
Date: Mon, 9 Sep 2019 12:10:17 +0300
Message-ID: <1568020220-7758-1-git-send-email-talel@amazon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.43.161.176]
X-ClientProxiedBy: EX13D23UWA001.ant.amazon.com (10.43.160.68) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_021057_331350_FC85E632 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: barakw@amazon.com, hhhawa@amazon.com, benh@kernel.crashing.org,
 jonnyc@amazon.com, ronenk@amazon.com, hanochu@amazon.com, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amazon's Annapurna Labs SoCs includes Point Of Serialization error
logging unit that reports an error in case of write error (e.g. attempt to
write to a read only register).

This patch series introduces the support for this unit.


Talel Shenhar (3):
  dt-bindings: soc: al-pos: Amazon's Annapurna Labs POS
  soc: amazon: al-pos: Introduce Amazon's Annapurna Labs POS driver
  arm64: alpine: select AL_POS

 .../bindings/soc/amazon/amazon,al-pos.txt          |  18 +++
 MAINTAINERS                                        |   6 +
 arch/arm64/Kconfig.platforms                       |   1 +
 drivers/soc/Kconfig                                |   1 +
 drivers/soc/Makefile                               |   1 +
 drivers/soc/amazon/Kconfig                         |   5 +
 drivers/soc/amazon/Makefile                        |   1 +
 drivers/soc/amazon/al_pos.c                        | 129 +++++++++++++++++++++
 8 files changed, 162 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/amazon/amazon,al-pos.txt
 create mode 100644 drivers/soc/amazon/Kconfig
 create mode 100644 drivers/soc/amazon/Makefile
 create mode 100644 drivers/soc/amazon/al_pos.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
