Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3783B9A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GoY6F4G9nMXlKSKMLihKaggCAwDcHYlAOrx2BV875/w=; b=sLxfpUWdXCdcY0
	RC9NjrgFM72D+TWTAzUlaXlg7BIZYPtcoWzALtyTR6KGyGWRhx3fnTd510IkMAfFHvvF8H6nMkKLR
	49j5de+ohSTHNTB0BojYHyHFFGeUGDQXFPffsZQkcSLRH2behXFVGCeS0U8xlkEjth2q8gZByu1mm
	S4iH2tsfnROplwgGQ9eg2w2P2Rc7jSfOjZsEPOviOvXsZ5Nvr7uvWYuFSnJzupVojh8y+/mKRAg1w
	lCKouV9SV2HeL/N1i5POoX14einPKvWs2Cu54braN4DzgvsSV6r3vA+rNUBdJxMpVBAaHcmJITC3J
	hGice9/CLSYJh8X0iSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNJH-0007KL-3i; Mon, 10 Jun 2019 16:38:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNJ0-0007FP-9F; Mon, 10 Jun 2019 16:37:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id f9so9847398wre.12;
 Mon, 10 Jun 2019 09:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Sh13vqQhVeUIp4ueCnaiflQcpY8w0hvllTIAtF32R/Y=;
 b=c6QlcPSWKF3BsvTZ/GIitZ8/3RkBf+tAU+lNnFvq9R0cwY7ZSTiKjHM58uNS9AvEuL
 8sykECWPbbVW0Po663W/EyEhlwwIZRkAmPC7YUl4tL+VGMSmScl+W18I7BYC5kCPXz1Y
 35WDuuUcnqFmF2kH9d0/og7OAQbbBIFTdfyzP3jmbVgb1RRena6AxnKrtesKwdr3sqs6
 33uVwN3IyoM8VTpXPN5emJgiwxo3HWFHTLyXiTX+TPGTJY4IBA7MB1WicpFOwY/pmDMb
 EjP1W140eDFQ20VCtf6Byv0h7MwSkzqDV/00u81EHXq1iM/5aGRJi+3emTRpE1s8HDxb
 mLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Sh13vqQhVeUIp4ueCnaiflQcpY8w0hvllTIAtF32R/Y=;
 b=HYVsA+kK0l+bX8auCw9Cdj1cfkyiytVXPdGkZzkkLEqWaancHDqe+SAHtmZqfMbRhN
 C+WIybUUGXizA8UZl+uluIUoyPFVqKTppSTN6Y9JHrp6m1IQntsxVo6fW+1DfKGsWem0
 3nByZJPigzJtp6Cz/W0uaJLeA/yW7kziZalP5oQbcFd6creikitmSeyce+CCKpd6JdVT
 ryAkFaV2sSlFSbt032dMd1AhZmJ6tK4uJxd5R/4bFIvI4zJ9bI2E2QNoFNzATMKXQufl
 4agRIPO4j1jK6TLNfci59LmKTxZiFy16ulEnV6xu7oyF0LdEN9Vd4dq65+/Ea47x02v9
 s/4A==
X-Gm-Message-State: APjAAAXmXm3xjCkdA+xUQ6n2PTAhCPXKLW0UBeO9gKzW1wpZSJEryLhs
 3debGCtQDIwfNkJ+GJaQGyPtC5Nq
X-Google-Smtp-Source: APXvYqydlQA+PLFxW4LDdRVC2OqHQ48h8LCrH5vskDoOkpLzQroMIZP5WjRCaEJpvZm70zC3KggTFw==
X-Received: by 2002:a5d:53ca:: with SMTP id a10mr32962184wrw.131.1560184675468; 
 Mon, 10 Jun 2019 09:37:55 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA40000C4C39937FBD289.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:c4:c399:37fb:d289])
 by smtp.googlemail.com with ESMTPSA id g5sm13900517wrp.29.2019.06.10.09.37.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 09:37:54 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 0/4] Ethernet PHY reset GPIO updates for Amlogic SoCs
Date: Mon, 10 Jun 2019 18:37:32 +0200
Message-Id: <20190610163736.6187-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_093758_334184_7B03A4DC 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: andrew@lunn.ch, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While trying to add the Ethernet PHY interrupt on the X96 Max I found
that the current reset line definition is incorrect. Patch #1 fixes
this.

Since the fix requires moving from the deprecated "snps,reset-gpio"
property to the generic Ethernet PHY reset bindings I decided to move
all Amlogic boards over to the non-deprecated bindings. That's what
patches #2 and #3 do.

Finally I found that Odroid-N2 doesn't define the Ethernet PHY's reset
GPIO yet. I don't have that board so I can't test whether it really
works but based on the schematics it should. 

This series is a partial successor to "stmmac: honor the GPIO flags
for the PHY reset GPIO" from [0]. I decided not to take Linus W.'s
Reviewed-by from patch #4 of that series because I had to change the
wording and I want to be sure that he's happy with that now.

One quick note regarding patches #1 and #4: I decided to violate the
"max 80 characters per line" (by 4 characters) limit because I find
that the result is easier to read then it would be if I split the
line.


[0] https://patchwork.kernel.org/cover/10983801/


Martin Blumenstingl (4):
  arm64: dts: meson: g12a: x96-max: fix the Ethernet PHY reset line
  ARM: dts: meson: switch to the generic Ethernet PHY reset bindings
  arm64: dts: meson: use the generic Ethernet PHY reset GPIO bindings
  arm64: dts: meson: g12b: odroid-n2: add the Ethernet PHY reset line

 arch/arm/boot/dts/meson8b-ec100.dts                   |  9 +++++----
 arch/arm/boot/dts/meson8b-mxq.dts                     |  9 +++++----
 arch/arm/boot/dts/meson8b-odroidc1.dts                |  9 +++++----
 arch/arm/boot/dts/meson8m2-mxiii-plus.dts             |  8 ++++----
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts    |  7 ++++---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts  |  4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts  |  9 +++++----
 .../arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts |  8 ++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts   |  9 +++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts       |  9 +++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi  |  9 +++++----
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi     |  8 ++++----
 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts  | 11 ++++++-----
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 10 +++++-----
 arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts   |  8 ++++----
 arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts        | 11 ++++++-----
 arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts    |  8 ++++----
 17 files changed, 80 insertions(+), 66 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
