Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A431F50CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8XD3GoIdujPS9MWfOFGY9ZJ+0i6FRTgz9Dy35iwxx9M=; b=o3yk5dYpLhsigq
	QnP8iYrCz/0nGZ7Du+HRf+O883dJuJos4RdDzOlD+U78Xcvzjc4j45s9J2qVkPQ1tyYrNX7CHbSsR
	yJsE9KENXQZAgsjk7BlAmUnLEKowqLQuvEp8kjpMYjhpGaXM8sfeDiM73vPh1pbi2zmfGBR5L98xy
	51+Y/eQOUKxgef0EbSH7+8q6uFYNbjhe9DdFPzZnJWUfVU9T/1u4Ts2LClIBk189A2/FMMhOInl9g
	u3ez1XO7uSWIEpLutpdSC+mdzWM/Ur0xRGdOGu0GdATPtSYAN2gq9+ZjYSLwF71VDNLloNEDTWPoN
	IgTN8xbfWSq5AqWXSR6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwgH-0000S4-Vp; Wed, 10 Jun 2020 09:05:57 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwg7-0000Qt-HI
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:05:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591779947; x=1623315947;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=8TnDDBGvjHsVFDp8wvSJgEncCN5mhl7gO30xVW7TOu8=;
 b=Kz5C0mybEMwoR6IYq3MBcHmFgSEG/hKZOUmgfKMA5Tbzu2LvhirSwa9y
 +8YjhXPjbzYJdx/nRfPoqDg/gvR/aVnVwJjAxbV8BjjZk2JVCemLgU+ei
 w7HEAWs+GVK/fLcWEmzO5tkx3uxn4/XSPk/PStwTQtXuuwcazLKqCi/ua
 9rQNf3Fj9sng4iEPqtgWZky5EMCWkHa7OrKGi/df0ELUAc2H8UJo06UPN
 MZWk5HBKIHZQcde/NO8l/7j9rUmi3X8+hGSmzZ9qQ0zWQi/+EAgMUaFsE
 xZDJdnp/BQZJldVlSIBJXGMUzCMNSeyUGUxV0XNd9rcrshxJcOf/+Rb5i Q==;
IronPort-SDR: bEQtM5O08WY8XWPZjThcORefaYzLaYHRKlbGPIiYxkkzUQKbY97lKXCIRSplUE5/0eMClhaX+4
 gebC76JG9zjTxzY6MVCBE+rG6ab9+RSBtXlxmZ2q+rRWTB+hakfTGFaxDPhjr65p6eqAEv2Gtc
 gB5m/Ee1tbcJahx+vdeetPYiNCfzWHHpK+P6KqtxVINVhSM9PSJ1t4Il0iTEDCVHtZ3V3zNAlw
 hJkVn8F39xowDl2MV44dPrNschw5929QQSuNFCPLiKrn41E5mWZc4yMObr+4GpLhpXQMPztunf
 vWQ=
X-IronPort-AV: E=Sophos;i="5.73,495,1583218800"; d="scan'208";a="82953209"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Jun 2020 02:05:43 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Wed, 10 Jun 2020 02:05:43 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Wed, 10 Jun 2020 02:05:38 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <tglx@linutronix.de>,
 <jason@lakedaemon.net>, <maz@kernel.org>
Subject: [PATCH v2 0/3] add RTT support for SAM9X60
Date: Wed, 10 Jun 2020 12:05:33 +0300
Message-ID: <1591779936-18577-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_020547_607786_7B4B6D29 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds RTT support for SAM9X60.

Changes in v2:
- use "atmel,at91sam9260-rtt" as fallback for compatible
- in patch 1 keep only the addition of sam9x60_aic_irq_fixup
- get rid of patches 2/5 from v1
- squash patches 4/5, 5/5 from v1
- change commit title for patch "rtc: at91sam9: add microchip,sam9x60-rtt"
  from v1 into "dt-bindings: rtc: add microchip,sam9x60-rtt" and
  place it before device tree patch

Claudiu Beznea (3):
  irqchip/atmel-aic5: add support for sam9x60 rtt fixup
  dt-bindings: rtc: add microchip,sam9x60-rtt
  ARM: dts: sam9x60: add rtt

 Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt | 4 +++-
 arch/arm/boot/dts/at91-sam9x60ek.dts                         | 9 +++++++++
 arch/arm/boot/dts/sam9x60.dtsi                               | 7 +++++++
 drivers/irqchip/irq-atmel-aic5.c                             | 8 +++++++-
 4 files changed, 26 insertions(+), 2 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
