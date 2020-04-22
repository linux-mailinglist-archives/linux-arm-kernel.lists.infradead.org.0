Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22091B3519
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 04:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Message-Id:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5QOHvLMto2ARebI7BWMXh1tmGnECIpnRJQnTlL7vEp4=; b=FQvtz24s3hDgK1
	3Cg1D7+IYJv7Jx9SM9UhdUBj53OkUV+LgeS4xTSYOwbAv4+tpN9X2/yOyStsHDpdFyRE2ziTLgUcW
	uNDqkF+WgiSKAdItZEr0rBtT9tLPlArc2a+XOtOxUavAKU3R0aKNLKM+/QNHiAf9dLmNteg7JbHEN
	UzkfOH7GNYeytbU0rfUC0GhysQVwErhfeOJ883XITx+q44ddEO5whCByDiA/qX9fYUeHS2J6H7iBJ
	Aeejls5dnRqcYIrHE0NqSP5Wah9jNQ3ObfFSn8vUg8l1HVT2avtC7amO1CR/43CX8y5u/lUpK4y5s
	yD3H4oeuMjTkRw5swRwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR5NT-0005pw-Ny; Wed, 22 Apr 2020 02:44:43 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR5NL-0005oU-WF
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 02:44:37 +0000
Received: by mail-pj1-x1044.google.com with SMTP id my1so1909563pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 19:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=17DeBbOuJOkYUumUllYYpaTlS+VBGmVOwtkd/Zl7kXg=;
 b=eOrNJpdKigtIk7ORw4Z+7QkcUAQOT0AvDZ5BbujhISyKxFY2nVSlY020cLD5J4Q6F2
 /a3tvHTOZta6T8U/eVi39qhOgHpWIJNwpJIgCpNX1UN+HCp3N6aiq7qMaU/TchA6cAOf
 gyC6QjK6qch8uXLfcbDGXTi/D3eDsD/Qwoc6lO/6GXZtXo0A+MnR1Jy/1w7SqU3XMVVg
 hIoZ525SQN/QqBB9aiS/d3WhAx8FHqTC1BdCLM55h0bW1FmCD9wUKUju67Vri1Xq0k/3
 /h7ok5hBFLKeSNCFAK2s8D7GIu1dLIr528NeDkWkdjnv65Ixv0o7AfriKALJv8awGB9g
 Xi6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=17DeBbOuJOkYUumUllYYpaTlS+VBGmVOwtkd/Zl7kXg=;
 b=uFOeF3wC+mIu0kWe76uuaNpWHCZX9CVtgVtMzPV7psJb2oOUXM3AV6rCHeUvtXda+M
 ZFE0eEc7s7KmlixeUul+cvdQa6G/utSn6fKXZupb7eLy+YZVkysgFENEGzWTP0VkxjJA
 zs8OhDiV8jkjCvIIv9vZcURmF9sDtKDCm6BqpCg5x7OELM9i06Y4gYE5chhf1axzPYjC
 d/Dz+6dvwAyLoAgYivVVwxrlyTizukYTrXvEoqMrjfi1hdmU5vii5/fPg8TZETax36eX
 seOLRVxJP+YTfLdM5SJKH87iHz3Z6MRTA/CBSnPNk4tbK+AJL4u7Fbf5CPtpJM6ITtsO
 87TA==
X-Gm-Message-State: AGi0PuYbWRpvpa5V2BrOSEJwx1jO7rvR5wnCYHVvWfrr6tCvbHPIaYXP
 2rWoC9lmJ/fSQira9n+odewUZg==
X-Google-Smtp-Source: APiQypL9P1l9F+Oz0txNdc1RqtELqyQOKzxMmkkIK33mjwIy1oqRhCQzU1EuIbbx2Vw7sO91kK4eAg==
X-Received: by 2002:a17:902:700c:: with SMTP id
 y12mr15446497plk.162.1587523473517; 
 Tue, 21 Apr 2020 19:44:33 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id b11sm3569232pgj.92.2020.04.21.19.44.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 19:44:32 -0700 (PDT)
Date: Wed, 22 Apr 2020 11:44:29 +0900
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 0/2] dts: uniphier: Add Akebi96 Board support
Message-Id: <20200422114429.0b1a6f1a3366bae5964f3e10@linaro.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_194436_049444_21C26E7E 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Here is the 4th version of the patches to add a devicetree for 
Akebi96 board.

This version fixes pinctrl_aout1 to remove unnecessary "aout1"
since which is not connected on the board.

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
