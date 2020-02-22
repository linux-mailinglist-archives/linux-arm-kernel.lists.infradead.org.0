Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAA316904B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 17:25:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dkS14iI+IxnIPNpjrwAmAz3h0FgoJXBUTrbh94ZrFgQ=; b=jyV
	yglcFfgJ7b7TH+ScbR3+yYCST+P0z5jFq5hXI3pK6fp/zVDdf5vYyoMsYw1OOqc9Jq3nuaq6ZUioI
	briawVsJ/H1umYDLrwaItmOChofb36chunNgbj1BaySmSKAGre0g2XpqWyUW0Oo1GWoL2QyIEa1UF
	FPl6E5fEWczFs2ZwCOU6gsrPkXsAVK6tzsLbBHy3WRj/+dLJQrE1caKlGw8ElALtz0w8LUKN0Cgpi
	rxx1bD9t8pRiJ/CDsjLtCcZUePh1fT6RCOCBkwn0zTE9QNGw5dVb+zSEbfn8D21wrPehVcGvmqo8T
	SmdPeExwCjJJhegZHrlwv7xSmxinOig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Xak-0000Uv-Ef; Sat, 22 Feb 2020 16:25:22 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5XaS-0007wx-2h
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 16:25:05 +0000
Received: by mail-pl1-x644.google.com with SMTP id g6so2180784plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 08:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Ks7y/QSYAArJm8l8kQ7dWIxmdbWnSg+WMxAzD2T6n1c=;
 b=AdCuHZNFaRFDtgAAkhhYnFi/ZD1m9YBfJU01emxU4mSbXwDRhs1uDdwwYPrHYE+eBS
 GI4xxETIdZE/1zzNfMz0oVP3qlaf87/HfcgBXY8m6U6baMqi6/WQ+LdXInCdLcoIQZAL
 xDMNi2jguKXQ3LInFv0OtDfbUBxZMH2wUAyK/84KntG2ZEAl7rbKPGl+gWanNGicIdFp
 q0KASqHTpV2HD0HgSzBkiNVEIMJd41sWk+X/XsdK/vN5/ZV2yHZ4ism2B0qFGQ+JruDV
 RjnkFLntq729UCaXVHPF74Pq3Ajg2YR/Z+DO9qGH2xd4nLDuQvzBEksJJShR6Ggdbwhw
 Q2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ks7y/QSYAArJm8l8kQ7dWIxmdbWnSg+WMxAzD2T6n1c=;
 b=JOkOIkelL4TdHSJT5DWeTu+djO0Q04p7ezFhXqGtm4L5wxtpmLFoPrjGnZ06qeB5oh
 XSBH7CG1P5jspTj9/JPRg1WzfaLIuGAVQNA65VSLr1rMtRqJIz9eOg+h2g8R4QL1wJK5
 o7huuAStLlIWg7rjUNSgZfKpB6t3qgi8w3llEmX73KpBwnC6z4kHjx7ESW1KnJIXTSiU
 AH+PX4oOx89Mc7/8UkRj4saJcn3nEAU9Y/BxF0SnyrddYVqaNaNfn/UKBe+pw7fjbvdd
 hC5rLHfSA1GOC+mP6z41MCb2cGM4KXJ6gRTsYjmXl5iF0DobDySh55LbGXskiAcYwYLh
 EjjQ==
X-Gm-Message-State: APjAAAUGr+nbvO0gyCMCxBFqRXtuE0RLG9blpR1QxRc75QJlNw2zrkDs
 siEkXvPgDztpS7QqIuCoN6Rf
X-Google-Smtp-Source: APXvYqwDqWgruAJNxa7ONzq20wF+AVoEojPMgADvEuzyv7YdZNMt2utDAZTxPjtcVVj83OJFNZAHgQ==
X-Received: by 2002:a17:90a:fe02:: with SMTP id
 ck2mr9841156pjb.10.1582388701954; 
 Sat, 22 Feb 2020 08:25:01 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:801:b38c:89e8:305c:23c4:b77f])
 by smtp.gmail.com with ESMTPSA id q17sm6851296pfg.123.2020.02.22.08.24.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 08:25:01 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: matthias.bgg@gmail.com,
	robh+dt@kernel.org
Subject: [PATCH 0/4] Add I2C controller support for MT6797 SoC
Date: Sat, 22 Feb 2020 21:54:40 +0530
Message-Id: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_082504_126703_25550420 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 adamboardman@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds I2C controller support for Mediatek MT6797 SoC. There
are a total of 8 I2C controllers in this SoC (2 being shared) and they are
same as the controllers present in MT6577 SoC. Hence, the driver support is
added with DT fallback method.

As per the datasheet, there are controllers with _imm prefix like i2c2_imm
and i2c3_imm. These appears to be in different memory regions but sharing
the same pins with i2c2 and i2c3 respectively. Since there is no clear
evidence of what they really are, I've adapted the numbering/naming scheme
from the downstream code by Mediatek.

This patchset has been tested on 96Boards X20 development board.

Thanks,
Mani

Manivannan Sadhasivam (4):
  dt-bindings: i2c: Document I2C controller binding for MT6797 SoC
  arm64: dts: mediatek: Add I2C support for MT6797 SoC
  arm64: dts: mediatek: Enable I2C support for 96Boards X20 Development
    board
  arm64: dts: mediatek: Switch to SPDX license identifier for MT6797 SoC

 .../devicetree/bindings/i2c/i2c-mt65xx.txt    |   1 +
 .../boot/dts/mediatek/mt6797-x20-dev.dts      |  49 ++++
 arch/arm64/boot/dts/mediatek/mt6797.dtsi      | 229 +++++++++++++++++-
 3 files changed, 271 insertions(+), 8 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
