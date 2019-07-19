Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55EC6EB0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 21:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LJnsLLJl0DwtlGhFmpbW8WQTHWs4Lm9i9JJDUUU3GAo=; b=F7OM/sUnCdILgI
	HYEb92BaJdykMJvzZAB9RnzZpy6O9F1qcssI2C8u1PPA0IQyVnYbuidkyqSS5yLEmX1ssVBsbqbQp
	Vlz5fIJvU1pocm02YBtaKVUDrvKGohHz9r4mDsUczOD/vhPXUZUhMhvxd6k2LWRvqVdbFnlJUasl5
	cVLaM607LV+YMzVefLk8IncnzzGuj7wsjb8rGxaSRJx5RQjQJIEyTm/VKBPfJqYw0PpIIJwit2ZRP
	96/VRdMEUSe9tExvKzltzEMXF3Wnhe1O6Pj6AAWPDnSMW04wWyDaGByY+HSxvrz5ZcXltFS0YcN9b
	Iv2WEDyFiInVpp9CIFog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYVP-0008Bk-9F; Fri, 19 Jul 2019 19:25:23 +0000
Received: from atlmailgw1.ami.com ([63.147.10.40])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYV1-00085z-Ch
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 19:25:00 +0000
X-AuditID: ac1060b2-3fdff70000003a7d-7b-5d3219097179
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw1.ami.com (Symantec Messaging Gateway) with SMTP id
 67.7C.14973.909123D5; Fri, 19 Jul 2019 15:24:58 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 19 Jul 2019 15:24:55 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>
Subject: [v5 0/2] gpio: aspeed: Add SGPIO driver
Date: Fri, 19 Jul 2019 15:24:49 -0400
Message-ID: <1563564291-9692-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDLMWRmVeSWpSXmKPExsWyRiBhgi6XpFGswZOljBa7LnNYfJl7isVi
 /pFzrBa/z/9ltpjyZzmTxabH11gtmlefY7bYPP8Po8XlXXPYLJZev8hk0br3CLsDt8fV9l3s
 HmvmrWH0eH+jld3j4sdjzB6bVnWyedy5tofNY/OSeo/zMxYyenzeJBfAGcVlk5Kak1mWWqRv
 l8CV0fkxpuAMa0Xr+pNMDYwHWLoYOTgkBEwk+trDuxi5OIQEdjFJnHpwlhHCOcwosWvCFeYu
 Rk4ONgE1ib2b5zCB2CICeRKH179lBSliFjjFJDFjXycrSEJYwEDi0Ps/bCA2i4CqxO/Pj8Ea
 eAXsJe7emMACYksIyEncPNfJDBEXlDg58wlYnFlAQuLgixdgcSEBWYlbhyB6JQQUJJ73PWaZ
 wMg3C0nLLCQtCxiZVjEKJZbk5CZm5qSXG+ol5mbqJefnbmKEhPimHYwtF80PMTJxMB5ilOBg
 VhLhvf1SP1aINyWxsiq1KD++qDQntfgQozQHi5I478o132KEBNITS1KzU1MLUotgskwcnFIN
 jHkvNq50Ny+Ir13+SiJP8kO21Vu36ZnR/yLLSp9Ps6r6P3Hx4i0GB15bl58qEt3atPGDnbLE
 pGWnnwg4p5/VP6No4mw6K31HYfELPTPfn38W1Z5r2Ss5s7fv1t87UYWfD4a5LpssruQn1Dz/
 fAz/x9Q3Muu/Pj6gt0TzvtIS2RM3WxexTPq59K0SS3FGoqEWc1FxIgACgC/sXwIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_122459_502371_527CA9E2 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.147.10.40 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Hongwei Zhang <hongweiz@ami.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This short series introduce dt-binding document and a driver for the 
Aspeed AST2500 SGPIO controller. Please review.

The related SGPM pinmux dt-binding document, dts, and pinctrl driver
updates have been accepted and merged:
_http://patchwork.ozlabs.org/patch/1110210/

Hongwei Zhang (2):
  dt-bindings: gpio: aspeed: Add SGPIO support
  gpio: aspeed: Add SGPIO driver

 .../devicetree/bindings/gpio/sgpio-aspeed.txt      |  55 +++
 drivers/gpio/sgpio-aspeed.c                        | 522 +++++++++++++++++++++
 2 files changed, 577 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
 create mode 100644 drivers/gpio/sgpio-aspeed.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
