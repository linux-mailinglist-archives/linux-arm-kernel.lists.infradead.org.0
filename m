Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0821B0026
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 05:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Message-Id:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aUhcMowKqc07jGnWLvR0UQYtudye7DD8s/0UxOTJXhs=; b=VSxoxI8WecVJLc
	PVyLZg7V44y+CMfNs8Pd2grUzBcOzGcGxldExwHVCtNLJrFqPHrQuv2QUWJoncXKa5/hgsPnc+CEt
	RYzDSkOm6f0oRrPHpCkEE7hhhUM7yzBCivYtjabsZGUSnFp7vFgN4AvPYpp1CcBxg4ccj46l6YG+F
	rt/SsGB4bKZNk+kT0Bfrscakc2tz2BR3niJdio8O+it/mHuz3AESDo2crFs6qOJQ/ZIy9mWvXe4v4
	JADg00wZ85GHwR/M62n6cEz+xKuttUe5LupE0bp8c+QVZMC1+/iqEl5mnrJoa/oU7se+bBmfty12p
	Rz7ojhTyPJ8+I7QSBmKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQMtJ-00057e-Lv; Mon, 20 Apr 2020 03:14:37 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQMt8-00056s-7g
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 03:14:28 +0000
Received: by mail-pg1-x541.google.com with SMTP id n16so4367491pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 20:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=4mVJ1FTOt1x3OaP5F9BtaelhJos817xQwCsSJCY0EeE=;
 b=Snl8w6Iinx9QqYh8SrgZMl6DLamzu2YaFrn6sg/eo4Zp5hFuErtFmZ60db/d7x/You
 xdl/FH5xdhGnaXdGC0GzMsiEeULPAi6lD0k6GujXvsfbquV7vDSb8gQaiGS+ZvxFQtI3
 x01pVXzLTzxTivhEM0NRGZL4k41wF7ys+74kDdr6KHCeXxhMTohl+XSyu0sMim/94nUB
 u1B23E0E86KEfByga9JRg/yw5eQmWlNSOtVFYlJZu2Kb/VTX2qjQXvOSNqJInH0CmXsz
 /ibOYOrjAi19jF4SxsuJrJxfaumbhxYwE2Lpr9uA8THOsj/QN403CxrDq1nQKQFYHKUt
 VQ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=4mVJ1FTOt1x3OaP5F9BtaelhJos817xQwCsSJCY0EeE=;
 b=e/9ko4g+E+bON7yezXZCcRLACvyqagnAfXqve8z3n8/pU7XCu3Rc7nm1yZS7irYmGn
 dE3aQdeE/58J9V5aBCzVfPMLu+oEpo8IbihbDcoBhykmI0EYVTQ0k51PSlBYghaGvVtM
 VORHzYwc3HmkUxo3qt790ch97yvqZrF41TAqZP/oHmj3LI43eKCZL363ufy1f24fMhSo
 k/vesJMfALCXw1IjL6pY4srVUkiLRz104w8j9LsdoKi6M4HVf7Jub6Ng50BjAH75XWzo
 u7ktV6d/7GGe2KjZkGEIoYaTY08i6Li9eoMvDJ1c0E0qFdGRhCmZR8nk6cOR2iRpgJ3H
 yZDw==
X-Gm-Message-State: AGi0PuazQ/0DVp+UyvPHVdKL+YW+gPK6kJnOnagsC9sB24SZvc3bma6/
 cdAVyZBirW5y4s9GpuPSqs8jeQ==
X-Google-Smtp-Source: APiQypLSYsMECWGP+OF/c8ojJhhiomIzYGAYkibR1zcGdXrq7v0P8bMNUpaQ3mpnFatF9Yu8iyarXg==
X-Received: by 2002:a63:64e:: with SMTP id 75mr14021493pgg.342.1587352464115; 
 Sun, 19 Apr 2020 20:14:24 -0700 (PDT)
Received: from devnote (NE2965lan1.rev.em-net.ne.jp. [210.141.244.193])
 by smtp.gmail.com with ESMTPSA id b75sm12525541pjc.23.2020.04.19.20.14.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 20:14:23 -0700 (PDT)
Date: Mon, 20 Apr 2020 12:13:58 +0900
From: Linaro <masami.hiramatsu@linaro.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 0/2] dts: uniphier: Add Akebi96 Board support
Message-Id: <20200420121358.f1a392f54710084acfa96370@linaro.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_201426_793577_6F193A54 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Here is a couple of patches to add a devicetree for Akebi96 board.
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

This patch can be applied on next-20200417.

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
