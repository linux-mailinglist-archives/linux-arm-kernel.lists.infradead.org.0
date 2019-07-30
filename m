Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3B37AC45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DwO/ahKTqCS6W7neJBv9vJcrxTUQx2weebKgAE4ALCw=; b=sQyBkih1himHJI
	wSaAzCyRjo3f/yM/HlTyXdGjH5E/wTr4B+jgDEBMpcaS5C4k3MynHMWN+zngNPZzstYK7q5P3jO0r
	dQG9Fd0/7B7u9nvS1/ZQINWb2n3vazMsjmyKElsrZNrX3CbsGLC7tWweb08WfPXHtU9HSSl9G3mmx
	e3CGRiCRnZAiusFh77DiOOKJjhl6lp+hfz2umb9jNnSX4PLX9ry4vFUedb40kcNngNC+SfzZvpgQb
	BJankQyTnT4x/IVFhYmrqI9v/bQwoKVDaiFY1ztm6qQoM7QDKSuR8Yljg8zO3l+3D1fjbvM+ievWA
	xMRM59/1YmfXM7BXzh3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsU06-0000lJ-F7; Tue, 30 Jul 2019 15:25:18 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTzv-0000IB-Jp
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 15:25:09 +0000
X-AuditID: ac10606f-d27ff70000003324-fb-5d406151cc24
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 24.AC.13092.151604D5; Tue, 30 Jul 2019 11:25:05 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 30 Jul 2019 11:25:04 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>
Subject: [v6 0/2] gpio: aspeed: Add SGPIO driver
Date: Tue, 30 Jul 2019 11:24:26 -0400
Message-ID: <1564500268-2627-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDLMWRmVeSWpSXmKPExsWyRiBhgm5gokOswdedEha7LnNYfJl7isVi
 /pFzrBa/z/9ltpjyZzmTxabH11gtmlefY7bYPP8Po8XlXXPYLJZev8hk0br3CLsDt8fV9l3s
 HmvmrWH0eH+jld3j4sdjzB6bVnWyedy5tofNY/OSeo/zMxYyenzeJBfAGcVlk5Kak1mWWqRv
 l8CV8ez7aZaCk2wVN6+5NDAuZO1i5OSQEDCReN9/nR3EFhLYxSTRssyni5ELyD7MKNGx+CwL
 SIJNQE1i7+Y5TCC2iECexOH1b1lBipgFTjFJzNjXCTZJWMBA4vOa72wgNouAqkTzw8tgNq+A
 vcSp6TOZIbbJSdw818kMEReUODnzCdgCZgEJiYMvXjBDXCErcevQYyaIegWJ532PWSYw8s1C
 0jILScsCRqZVjEKJJTm5iZk56eVGeom5mXrJ+bmbGCEhnr+D8eNH80OMTByMhxglOJiVRHgX
 i9vHCvGmJFZWpRblxxeV5qQWH2KU5mBREuddteZbjJBAemJJanZqakFqEUyWiYNTqoGRU6+k
 SrhkctiU/MjKL0dzmDYIv9uZKR8lfV7QefHnJ0Y7fwtZzuT4V+c26f4z3qXvjcUv3xdcyNwu
 4VzCmh+b/5lDve3elgMbJ8h5SC2z3HZr7ZILvOynL5zSOMKa9r3VZ2cP87RdGw/mbzgadO6m
 SRJLdeedhQv2/1V6enna9E/SHzxqn7BJK7EUZyQaajEXFScCAI781llfAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_082507_726135_37668DE4 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
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

[v6]:	Changes between v5 and v6:
	- fix a bug in aspeed_sgpio_dir_out()
	- v5 feedback updates, some comments cleanup

The related SGPM pinmux dt-binding document, dts, and pinctrl driver
updates have been accepted and merged:
_http://patchwork.ozlabs.org/patch/1110210/


Hongwei Zhang (2):
  dt-bindings: gpio: aspeed: Add SGPIO support
  gpio: aspeed: Add SGPIO driver

 .../devicetree/bindings/gpio/sgpio-aspeed.txt      |  55 +++
 drivers/gpio/sgpio-aspeed.c                        | 521 +++++++++++++++++++++
 2 files changed, 576 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
 create mode 100644 drivers/gpio/sgpio-aspeed.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
