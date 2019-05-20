Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD37238B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gxLknzWTYw2SEJA9BRQFtl0tJxQpNNJ1yUluJf2o654=; b=M9RgNoBrwfO4cn
	oUrZ4sJ9S4EvxyJM3y6MUmb+TnQl26rYBTO71Qg30X457Ww/koUQzJ5/BRsgNCLtGMh8kvR4sFN0y
	e3G1uag4OLIyfz8IEPK5V8qW29vqrIbEGIHXseATgYO085dzKSHtuHIQQj9ZsipG57xcavuzHORX2
	4mFe9QXt4gmWc8xURExsjZsJ2wsxNyqDxn8MNW3EZBiDEtwTfnLXxQcPaFvYVkLJLUdNtSmXW/87W
	yriYGAHKNv0d/PugaDNffWUrQ53zXqS7Zf0y7WB+8lDq076jr5uEQsO6uYYySZIFD+dBaGwwZSIkK
	OXKtUGY+CYF3IY9xpnIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiea-0001Mt-CL; Mon, 20 May 2019 13:48:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSieQ-0001KU-HV
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 13:48:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id w13so3945329wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 06:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s5sKOK1wXsgSaMO1AzQH4iq23iqC6NhMcHG8RaO68BM=;
 b=iUgrk3QarzpnVXXJjcHmm8EhxkcUwGaGt8kISnK9TukpoyYGA7+gj8AGKI592kpAbv
 LyPCIgD2H5dlq+FoG9Ce5ipLy474xpJi/4kfx9XLzXhcxPSpOSwlmY8w0W0nMXz5S6kT
 BZAFlZd95pWjB0kW0tYRuWvewdK3ifBRR9y4NLWTmm7oOCzriFSzDyfhV6y0lkYr2yU+
 sYCyzVQ0jjL2GtVBj+Mweou+I/bWcxrsuI35/UlbSO4eaKe8VqjrWrLMfFM4aHnORKDB
 B9Amk9hvhTvaITAt/iyJ50t7NrS1mkx+ajlxpCef2Fja9ukBQ6Yq/REKl5GGW25Rnxxr
 OoaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s5sKOK1wXsgSaMO1AzQH4iq23iqC6NhMcHG8RaO68BM=;
 b=kfNrPaHxESHhL+L3BM/3FQaMkHKh0TZaoUqRYHMruLLD/MnfRrAEKWofmY2wztrCJJ
 0nj/NKBUZKO24Z9JDUOAQr+KaqmA0wLX+VpSXn3t7MWZa0/6wo2wT2mlVx/L7qdNNd+K
 DmdKpWBZgdSULJRwbsN5+XqtPZTl+2mo9WP0yKnyhdE9E0clLHKhCttHCttah9AdnhG/
 v493G+aRtRN/toSvl1ycaNT0tNkpnXMjn0yMlKJAcJKtOF49gzfmQF2aLBGcJwkOVOhT
 6Oc53Xm7r4gdia1zaAThiKeKdxiMbKNmEdR42zTLgl0EcwKybNFDhoGdHOllR65CBbo+
 eaSA==
X-Gm-Message-State: APjAAAVNx4dlPoBayBOzfCFyoLp8BBjn8dfRCUP5j7jIrlxtIWEW02YA
 3vu5GAov/Caf8kAtUUU16I5wvw==
X-Google-Smtp-Source: APXvYqyUg6TkbDAAE6FFRfEtGNn0nmbTyFrH10vqBkNAGgn7Q6SzWFWsN+E2yrFIvFJj5Lg9hdGZTg==
X-Received: by 2002:adf:ef83:: with SMTP id d3mr34485340wro.253.1558360104707; 
 Mon, 20 May 2019 06:48:24 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h12sm12091358wre.14.2019.05.20.06.48.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 06:48:24 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 0/3] arm64: dts: meson: g12a: add drive strength and hwrng
Date: Mon, 20 May 2019 15:48:14 +0200
Message-Id: <20190520134817.25435-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_064826_582362_0446EF09 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds :
- drive strength for the HDMI DDC and Ethernet pads
- HWRNG node

Dependencies: 
- None

Neil Armstrong (3):
  arm64: dts: meson: g12a: add drive-strength hdmi ddc pins
  arm64: dts: meson: g12a: add drive strength for eth pins
  arm64: dts: meson: g12a: Add hwrng node

 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
