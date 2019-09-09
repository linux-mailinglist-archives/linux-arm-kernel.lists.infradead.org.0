Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B8EADBA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0nxZCGZZDFMkAUyv9FXzN45HQHhMilQsBGX1/FGf3tM=; b=Bk1
	ZrA9VnUF1dVjEgh1PnmuhIbzmlf1ZDmLo60eGhj6FvKy8qxePnXwrd+JoUuHQoDNjJMN/Pln/f8mW
	5oRmkkzM6UlzoAeCye9NNgf7bCN3RWeu7Y3cvLd8uEPTKozDOkEhmYOATt9K9LENGhKTMkCzEAL4y
	z1p/Jd495/seYsIryn5izo8vUzsEV38uZtPp36yiwSmJUNKtNHy66cqmqh6OvLMTXq7ph/iVXc+Ed
	OoGgDkR5brdmj14SXwPqODPF73y+l+QAXhsKLHFsguJud/Q5WIFWenYkf1Q0YCBdQwb+M43fdiHTu
	RWw7V5DEvfB4Xab1eSRzhTqeArzng/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LBa-0000z8-Ah; Mon, 09 Sep 2019 15:02:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LBQ-0000xS-4Q; Mon, 09 Sep 2019 15:02:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id o184so15087458wme.3;
 Mon, 09 Sep 2019 08:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hz2LLAs1cNin8+Ffsd99n/VCZu9MKmEH6kess00jubE=;
 b=kYLKHoHw1+FdpSAoZzgikfbFo4aHSD51QuWxTqCKhwqj3oiheEFX+WJYtWCKXssu02
 hgshnQvzqDW6oYrgdphx07wtfGM8lDdRbRvsPsExSMMNYRdVOpVxjx6VtYTdIQvH6PN3
 98yBv7dEucrqRlXp+ndBEpQelQyanNmQza5dRg6BDmMSI0Mxory2upSb10YDzOdXYOtl
 CF3/rOTbY/8MQb5xEJjRkR2JFAMtv8lOL1LFmY+HDPss6uk+qekUOa/Yi1jL1aZ3YGqP
 Lglhg0dARlwzBtOnieW7qwhqKhDoIlwCTAh9DojPChQ+HReemA5EMLoJZSWJDnkudBsn
 px8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hz2LLAs1cNin8+Ffsd99n/VCZu9MKmEH6kess00jubE=;
 b=MiNaOhYkqHrtqc1or3RSDRy1LE32VZCVgdnkiNPf4Qj+YPOpJXA4W3dUwyyZBjVsBZ
 AiO8U+69crJZFNSfgqHJ1IeJtxeqkLpPXSslxeJy4mbv6u9SOE9NOyQNpEQSAe7jtadE
 8OZH9/i05v3rjO30x5yowwITMXUdbtb/hmbPJEY4a/FTDh84qRPoz2HfZBFciA7EJeaO
 fKmQwbm3CPyBaXE0fPtU3ZhkcqvxMrKbA8lVn3LycKpf71pOJj29t/geIjLbF3CJ9g+h
 BbUgAGwuChgRMsbsCyPjZT+f7KvwUGqOwZM8SnBdbqNQTnxNgT4aMHwH+h6nVc0/oJRv
 7vcQ==
X-Gm-Message-State: APjAAAWDpktLhRbLXWL+tBV/vxc70cxjmQenGx31SjBUwzkFQFj26cfQ
 R54VHq7XIqbxG0xAkd7isVohwxKknChZ/A==
X-Google-Smtp-Source: APXvYqxuVkRXu5Dx4fweA5WFPPS8e3xjqSXDcwP0Si25TxUEBUwQkdppodEEW3Bh9ipx6K8IG31EeA==
X-Received: by 2002:a05:600c:259:: with SMTP id
 25mr18717914wmj.158.1568041337964; 
 Mon, 09 Sep 2019 08:02:17 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id s26sm27755397wrs.63.2019.09.09.08.02.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Sep 2019 08:02:17 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] arm64: meson-gx: misc fixes and updates
Date: Mon,  9 Sep 2019 19:01:21 +0400
Message-Id: <1568041287-7805-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_080224_177151_F093716E 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset:

- Fixes bluetooth on Khadas VIM2
- Fixes bluetooth on Khadas VIM
- Fixes GPIO key dt on Khadas VIM
- Updates model for AML-S805X-CC
- Updates model/compatible for AML-S905X-CC

Christian Hewitt (6):
  arm64: dts: meson-gxl-s905x-khadas-vim: fix gpio-keys-polled node
  arm64: dts: meson-gxl-s905x-khadas-vim: fix uart_A bluetooth node
  arm64: dts: meson-gxm-khadas-vim2: fix uart_A bluetooth node
  arm64: dts: meson: libretech-ac: update model description
  dt-bindings: arm: amlogic: update libretech-cc compatible
  arm64: dts: meson: libretech-cc: update model and compatible

 Documentation/devicetree/bindings/arm/amlogic.yaml           | 2 +-
 arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts | 2 +-
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts   | 7 ++++---
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts | 5 +++--
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts        | 3 +++
 5 files changed, 12 insertions(+), 7 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
