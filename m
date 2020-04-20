Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7921B063C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Message-Id:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WLAeR9HWKU3lH0z+B0fc9G1BkCLD/Yhn+9YFRYIfID0=; b=LuR+wOA94fnPgQ
	DLxQsiWAg/qotE8CNKQ//NnqIbtGtqf4w1fNgAi1oNPF7ThwP0qnvae0cQ2wBYShAnO2j4aXrOkIe
	U4656iPd0yrzgjvSheCXWRkG5Pixfn5max7E7N8CIGS0AFlV+XYLjAhXrUTvqIf1yivA6+Jyp8fPl
	r/wIsao0btT8ryZLiaqYOfnMB9lWnc02ZxvEKHSTdn+weejoMYOYXLkUzd+ClC2mBVlncSIMjvEKY
	iyprTYLa2WPQaCfj9sLfC8qM2ybxoIVyVSsxwXGIGoWwwhXprdBY7ps07PafLQqi6VUDTWJVXjugV
	8VjS7IO2nmIUXCq1LSYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTLc-0000nC-Nt; Mon, 20 Apr 2020 10:08:16 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQTLN-0000mZ-Ia
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 10:08:03 +0000
Received: by mail-pg1-x542.google.com with SMTP id r4so4814586pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 03:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=dDKuyiXRSokrVaBMm2QH2sBSp5Ab0s7jSQxz7hO7RDM=;
 b=um2q1dsjJswgeVFtBuA1BvgkYFI4560fuIaA2EvQVO7j/YhXdLCnyvPDFnwB+BuJM1
 5Y3KPkt5k1qvoB15ROb23OMCCNl6oBMZnk5Y/Tw6FhG2AukG+jYslKwtqzM5rrD6f0Kk
 enwIYHAg1HWenoZ05ou264qDtn4u5tD4YXuedjCZOrJ7fHLQz9/4e9rtznlFBMsYSM5M
 YURzyEuYObP5IjyNzPf3Vl4QmVM6YyF4eXsqKMaMojKL2MemDjKNCZFXLGNc13/xnLK6
 p+w7AzxWG+7Ty2d91GpmF4k5vID0izetQrK1aONGNyr0AM33ITm7vPo/M7ET15cA2mCl
 /LTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=dDKuyiXRSokrVaBMm2QH2sBSp5Ab0s7jSQxz7hO7RDM=;
 b=MBPTn1Z1A5irwXEvj+XjhVRtUv6JOCBMSP80+CQZ/9eeKmasElOti2/S3WznaZ0rkR
 qd86QwA9eOiOOxpmixFO1x3TL+lhai6Xgj/fvEHBq+pyiTrsXq5/ymMX5uLjFOfef+cs
 L6kt8zRCJNQHVdZJmfyD622S8QbvScHPAb6/ORWPtCEcRL1jWEPWIIjNpmAapiJFx6WF
 TJKK7DsJb2MnfKge1OukIJSTZxnbqljzeyVDaaIiXrPumyG+KjY/qZ6MpQFqnjIl40QU
 yS9ZrgM5ORyRXF3Jwivl3HpT2k95JGBYTh85VEIpKnYwXzcylckRgheLZl9Xi93N7A+d
 m+uQ==
X-Gm-Message-State: AGi0PuaP2oW1+ZDAuGFKPmx0KCLwUL+BcQm7UDINrRkfGXbn8zNSMVP2
 z1ZRAetzbIgZXVeCRrEQOuN0RQ==
X-Google-Smtp-Source: APiQypLq4OY2K4KWyTUe3RnCjyUXv1m6u1a7Qwmj0M+jirUcanTWIygrVjmvGonNUodZQwyclKduVQ==
X-Received: by 2002:a62:34c1:: with SMTP id b184mr2108623pfa.73.1587377280645; 
 Mon, 20 Apr 2020 03:08:00 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id i16sm684144pfd.108.2020.04.20.03.07.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 03:08:00 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:07:28 +0900
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh@kernel.org>
Subject: [PATCH v2 0/2] dts: uniphier: Add Akebi96 Board support
Message-Id: <20200420190728.d720d18b9073e1c6c0304d72@linaro.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_030802_133776_D27E9143 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Here is the 2nd version of the patches to add a devicetree for 
Akebi96 board.

In this version, I fixed author's tag and rebase it on 5.7-rc2.

The Akebi96 is a certified 96boards which is based on Socionext
UniPhier LD20 SoC. Most of the part is similar to LD20 reference
board, but there are some changes.

  - MAX3421 USB-SPI chip on SPI port3 (for USB gadget port.)
  - Simple frame buffer with 1080p fixed resolution.
  - I2S port which is connected to aout1b instead of aout1.
  - 3 serial ports, only serial3 has CTS/RTS.
  - No NAND, only eMMC on the board.
  - OP-TEE support.

See https://www.96boards.org/product/akebi96/ for details.

Thank you,

---

Masami Hiramatsu (2):
      dt-bindings: arm: Add Akebi96 board support
      arm64: dts: uniphier: Add support for Akebi96


 .../bindings/arm/socionext/uniphier.yaml           |    1 
 arch/arm64/boot/dts/socionext/Makefile             |    1 
 .../boot/dts/socionext/uniphier-ld20-akebi96.dts   |  200 ++++++++++++++++++++
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi   |    2 
 4 files changed, 203 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts

--
Masami Hiramatsu <masami.hiramatsu@linaro.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
