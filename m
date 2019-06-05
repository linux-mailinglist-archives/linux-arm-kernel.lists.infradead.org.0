Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424CE35C7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1urjAjOhNcnBtj+mj8NpqAoEHadsl7VsD6pZJ6ppgic=; b=D6C
	6/ei4OgClEebsoHl+Vj6/xknvrJsDZYIPfgKLiOc9IDUnz5N1pcc/0Cj+rZ7vEEfmzswdu21IDh+H
	Xg8mnMYvNoEZdvvtGUMQHII1aFZYQD4oJ2dm38/p6HmLoDQoZbxMZUD6TvZ6jguCNbSW6WlXz+0VH
	qkf9UN/bJFicemgphp2KsgLaNEDu3Zy3It1TM51hChYS5hfc2wHM8rdSsp7agaEpxWWvy0d0pTgRJ
	peS6n2v83Dd3ECUmdh2lLq2lF8KtT6YQ7DCvqd59C9RHcwMRijLh49JcHe30XrV/lhFdlK7DVlp6A
	dgrhi5GBXfvHX3p6mS/fXMsmUF3/Z5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUvH-0008FQ-8c; Wed, 05 Jun 2019 12:21:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUv9-0008Ew-TC
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:21:37 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so63026pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 05:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+mvlP3fCWubOTs9ufovlGWO4LIbpoCYwwxHP1hQzgBU=;
 b=tlSG9UuB2TIIVAhHkXyJteVss4sNjvVtjXzlISfVJ57kQpbON4O5dZEU9L18mwQYFs
 JTIdlAgGZ9RCft5JELCWRXMw5SqujYG2bU/gLo+3ZnGY0WHnf6nBLmJkY8zUoFWOEwEf
 i7cAHxNH1Mb9N+MyyYapQ9SPrP1qGmQOG2EFf+6r3EE8IxcDimOtAaTxl9VaUhgrvJ7B
 Y06vQcg8C2/sXWt8dY3VsyIlcZUCRLTER9dLcIkQ4C5t27gL5lDg3xSipRvENPcujW0F
 R3Gh8mmIpRo9kS+B0YfFcTYt+ZDhCI0V+0zUMWJPfGmfgjOePv/blY9BP6hnVJ18kbNI
 WhqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+mvlP3fCWubOTs9ufovlGWO4LIbpoCYwwxHP1hQzgBU=;
 b=E5XCiwG8RURHnxm2ZakQhT6bmJ9ITr+cxtCSDYfB6PBhSkGQeb+XnVDjgblVlVsLi1
 7c4O2DSUbePA80XOmvvmjHE1955M2M5O8FwlDw5fNXmH7fJWbFIUDo210fQwskOkPnzb
 EB+JnFF5BqWMDYIgSOSGLwf/Zyc6j6ntuQDkKDJ/7N1/SQximiO6qh/TSrzgJHrJbcun
 Ya4n5LW8seCfrvZb7e79hujLDD9bNiSwYQ9d57dGv+c0CjSzrGXv5ScJ29IEUMNkDqF7
 lwVBe8ihp5Gw+gY3Pi9BOQkUXlrVZGxueuJiqQO89e+VsKBrVLp0JndAKzd/eW5Y+k6S
 zoUA==
X-Gm-Message-State: APjAAAWRDNqk6wwaXm6F82d2vFerC38GBPTtM12krpJQwx3F+tCu/y4J
 czaazmoGKUiXQN9epoGBtOw=
X-Google-Smtp-Source: APXvYqwbCXonwkvVPjKpk6HE8xu6iR7IhL2CJLmh9dIfEhZBwqq+WLhlUvdi0BcMGzufDaw9EJZ+1A==
X-Received: by 2002:a17:902:b194:: with SMTP id
 s20mr30104605plr.77.1559737294765; 
 Wed, 05 Jun 2019 05:21:34 -0700 (PDT)
Received: from Pilot130.192.168.0.22 (211-20-114-70.HINET-IP.hinet.net.
 [211.20.114.70])
 by smtp.googlemail.com with ESMTPSA id q22sm3322094pff.63.2019.06.05.05.21.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Jun 2019 05:21:34 -0700 (PDT)
From: "sudheer.v" <open.sudheer@gmail.com>
To: gregkh@linuxfoundation.org, mchehab+samsung@kernel.org, jslaby@suse.com,
 joel@jms.id.au, andrew@aj.id.au, benh@kernel.crashing.org,
 robh+dt@kernel.org, mark.rutland@arm.com,
 shivahshankar.shankarnarayanrao@aspeedtech.com,
 sudheer.veliseti@aspeedtech.com
Subject: [patch 0/5] *** Cover Letter: patch submission for AST2500 UART
 driver ***
Date: Wed,  5 Jun 2019 17:53:10 +0530
Message-Id: <1559737395-28542-1-git-send-email-open.sudheer@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_052135_936902_209A3316 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (open.sudheer[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sudheer Kumar veliseti <sudheer.open@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: sudheer Kumar veliseti <sudheer.open@gmail.com>

Hi,

The below mentioned patches are for AST2500 UART driver.

AST2500 has dedicated Uart DMA controller which has 12 sets of
Tx and RX channels connected to UART controller directly.
Since the DMA controller have dedicated buffers and registers,
there would be little benifit in adding DMA framework overhead.
So the software for DMA controller is included within the UART driver itself.

Thanks and Regards
Sudheer.V

sudheer veliseti (5):
  AST2500 DMA UART driver
  build configuration for AST2500 DMA UART driver
  DT nodes for AST2500 DMA UART driver
  defconfig and MAINTAINERS updated for AST2500 DMA UART driver
  Documentation: DT bindings AST2500 DMA UART driver

 .../bindings/serial/ast2500-dma-uart.txt      |   40 +
 MAINTAINERS                                   |   13 +
 arch/arm/boot/dts/aspeed-ast2500-evb.dts      |   21 +
 arch/arm/boot/dts/aspeed-g5.dtsi              |   71 +-
 arch/arm/configs/aspeed_g5_defconfig          |    1 +
 .../tty/serial/8250/8250_ast2500_uart_dma.c   | 1928 +++++++++++++++++
 drivers/tty/serial/8250/Kconfig               |   35 +-
 drivers/tty/serial/8250/Makefile              |    1 +
 8 files changed, 2105 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/serial/ast2500-dma-uart.txt
 create mode 100644 drivers/tty/serial/8250/8250_ast2500_uart_dma.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
