Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA98A1B0F39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:05:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Message-Id:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0l47I1sYnpcsNH3NzQg7sZSV3sp4WMo7Weanj8JYujs=; b=BAEuJ/+2nx7twn
	NP9CZ37TBKbNMkvzEoePGzvS6FLI2uKGPar79+lgq+TWAN9P9qGF92pcI9uFNv75RqG6IahpUMe2q
	7MgBy2rESExGLbIjVGqP7CEbaCYcY1gZ4NCgC6/HjRtsDc9130W78USKQ1q30pxZNcl71KzMfF/kQ
	TJk7Ep/6yjAicla1t5cD6qN2oonxGnhTbF40TDhaHj0UNP6x0X30FAEDprACLVQRrE6n8YliW1yHp
	KKHS3ZujIXw7PZKJZW4LZZfLIOVldQKXIwucNXVXH02qLFjwoKK2rgmJqmHagRBf9I612xvKi3bUV
	A4BwNScGUY/I6lx98AyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXzE-0008Mq-Bn; Mon, 20 Apr 2020 15:05:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXyj-0008Kx-4U
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:04:59 +0000
Received: by mail-pl1-x644.google.com with SMTP id a23so4053961plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=ksYDvDMifJSDzaLe8ppl9fPQsaUEh1BKmaFRsUu0FRM=;
 b=dP/sa21AeYjRWh1TVvNJkTvzmFhd54MB5zWkbXU4Ne62xEiz68w1XgIJMNEdq6YlCy
 xGSqNK7lUNgWAY+LHRdie8zraBNtFqfCK0EuW6KWJw2QHezbZzuG0VJ+Dy4Dxj8A7mos
 xwZ4PpPVMVPmM/zFmy1BIRyxBgA1HBp/r+N9RqnX92Z6nFIOcR5e51E9DQy39RXR32Um
 X8TN8WRJXSUJ5I0/O/qy+ubc2y5ADDKjVHqA3/tdfRAwLo894nBIr/Tik0Qx/kldiA4e
 pp2N69oN169709NunCURUKgaCsTzKrVslDj3VCCU+6IXj8CoTjjSDVM4QYa5hbfT79xG
 Kefw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=ksYDvDMifJSDzaLe8ppl9fPQsaUEh1BKmaFRsUu0FRM=;
 b=pbPx9Ng5VDKU47f7YG9eUs7rLZFtkMBenaYWraXP4xrWiYHI1a07+WzqDMSNDHDjD4
 9oCBEwfToy+g8JB3uAnMsuhxkTYEACiE49IYmkKZ1wBrf9mEYNOhySAJHjUmmcrKXQs4
 XXOPUrHQjq39yPoxKBeRtIZJ9SRPYlALQ47OxeUCxqntwpeyKT9kbk/DkgxzCWmwTFgr
 0JIVXOcBoLz0drQ7sYzVoNd/QnIMihtZGX2K7lcJoNL5ct2+FEka52rzuiSWciWkbVIS
 SeBypUo1xzsZ260fa/0F47O/VEwZsbd6q0PZUZPgwIa2ZeEeUhb3cqmFqcjEjZmFuldl
 KSMA==
X-Gm-Message-State: AGi0Puad2MdVotkxHWe/kH3Ji27dLYLcIxxrliBYftWNT5yLw7Ya6Hzy
 v0qhjf1Vnu+Dnfh7tq+/CABMnw==
X-Google-Smtp-Source: APiQypIk1Du+aGj95qRFJMvPft4RvKQ+RUnkIms4lRS+8pbRyvlYkpkqC8LQsyngAi4hAvzbX7aOwA==
X-Received: by 2002:a17:90a:8d02:: with SMTP id
 c2mr19342929pjo.113.1587395095926; 
 Mon, 20 Apr 2020 08:04:55 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id n16sm806835pfq.61.2020.04.20.08.04.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 08:04:55 -0700 (PDT)
Date: Tue, 21 Apr 2020 00:04:22 +0900
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh@kernel.org>
Subject: [PATCH v3 0/2] dts: uniphier: Add Akebi96 Board support
Message-Id: <20200421000422.6823a1a023161a987aad0d05@linaro.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_080457_708436_B81A2BC0 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Here is the 3rd version of the patches to add a devicetree for 
Akebi96 board.

This version simplifies the devicetree according to Masahiro's
comment and update patch description. (Thanks!)

The Akebi96 is a certified 96boards which is based on Socionext
UniPhier LD20 SoC. Most of the part is similar to LD20 reference
board, but there are some changes.

  - MAX3421 USB-SPI chip on SPI port3 (for USB gadget port.)
  - Simple frame buffer with 1080p fixed resolution.
  - I2S port which is connected to aout1b instead of aout1.
  - 3 serial ports, only serial3 has CTS/RTS.
  - No NAND, only eMMC on the board.
  - OP-TEE installed firmware.

See https://www.96boards.org/product/akebi96/ for details.

Thank you,

---

Masami Hiramatsu (2):
      dt-bindings: arm: Add Akebi96 board support
      arm64: dts: uniphier: Add support for Akebi96


 .../bindings/arm/socionext/uniphier.yaml           |    1 
 arch/arm64/boot/dts/socionext/Makefile             |    1 
 .../boot/dts/socionext/uniphier-ld20-akebi96.dts   |  190 ++++++++++++++++++++
 3 files changed, 192 insertions(+)
 create mode 100644 arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts

--
Masami Hiramatsu <masami.hiramatsu@linaro.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
