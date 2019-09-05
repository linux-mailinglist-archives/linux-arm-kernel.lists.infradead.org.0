Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B116A97E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 03:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=323Ybe+s5031vLm4Ld4tJpCT/Xj+NusqGUMZEgXzdRM=; b=cjNyaVQ9c9OhY2
	zRWNdVUQM0R0geucaOJiGxc2u7EyvQXuBx+mE4kk5WhP4fOWoFngtkR6NzRVnJgpHOst+Mh2BJoGI
	4dYnOs63k2M1GgHrJmKkRKT/Y9wOtoFmQrZ03mvbuLcrFLOd6+jwCloFZ06v8zgnjdx9t86Utxw1M
	24y/v3lbqLNAkrPH3zJG+ivo5AU8AdmYq6DcITPx45YI/8Jk4vg1NS9EtmNx9TSt6HfSHFL+WJLcx
	KZMqPm29UrjRSNkC+2bH4i0OSH4dbElS0U/5POOyRXLsGMKouz/2Hm2/rG8fwMlM2vV5V8flucSxJ
	DYWIyrl7DqKf1ND1meTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5gNk-0002aU-G0; Thu, 05 Sep 2019 01:16:16 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5gNd-0002ZR-NV
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 01:16:10 +0000
Received: by mail-pg1-x52a.google.com with SMTP id u17so406810pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 18:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z3Ei8FyHzXCEAswMjYYL2sgHBCg2TC7hkQhTjvYG8KY=;
 b=mzLpXBBSjIfPoEznzDVi8hEGCoi8iPdVtV8Hzs4xr0PPj03usX/NK85vi1/SC3DNJ8
 cbZm8aJV/muvSP7U5x2czXSHfhO8XhBRtYzUArCTgPG2U9p6fC9vhcLGmJCOq9QXy/9t
 CqH78HGJ00MSIcznSifqNso3bpZsBijFDPVDgPHJ6++c9yIaodj1B+YLBgFe+97RUrOJ
 sxIpfha+z/sQQqJAKYoxfeq+BT3sVV1vSsS5gEArAfjltMN1X7UnOWbwlraaWgwArNeq
 UoQiewIqDIxmx42RFeNT2rw7VX8+4GIdY0qDdLSI2SIDPTkhU7xpEkVJGYxnEmFYLjP1
 waRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z3Ei8FyHzXCEAswMjYYL2sgHBCg2TC7hkQhTjvYG8KY=;
 b=sxF0C0YqjsRVmfVThmoIWmGyF/GejdOh/LqccBU41yr2m0q/cJPC20oAe5t469pW8T
 kIhRJbnHpL/1r3CTZotKFWKkjcakuOSYVqK/q5Y0SLY3wfBGybccSdNZ8ZrYd1tJAlFR
 nDbOFekhBUfo60nDQ6yem4LkMbiqhImfs7asTfytHzffJ9CglUDbOz55F/vw8cufJT2E
 Jd4mBerT1Z/UxMJkGLLOFHzordJHP5TSJsHDAd2+GZdZWyPQyVSLXV2DCfAnyQwGYpur
 5adZnXoiKFrIeaI0bPwu6jhbX/TteA65LAcbwU6/ay0+OuhwVhV1fGpPElpwt4OQOGZs
 +5rQ==
X-Gm-Message-State: APjAAAVc7bf4AD5Lf5wZ+0ud/jS/LhkzaHh7LyiS7WmgJ+gsdIo/3r5S
 ArKx/WRM9QQFTdeeGEN9Sp8=
X-Google-Smtp-Source: APXvYqzTqKmk34vcZ/2Fksg66IicendpcLZGFN0xLJvxlsd5PmuspSmVqBJQBYhJ3l6UV1K7WLBbzA==
X-Received: by 2002:a65:4304:: with SMTP id j4mr837941pgq.419.1567646168290;
 Wed, 04 Sep 2019 18:16:08 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id v43sm6300914pjb.1.2019.09.04.18.16.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 18:16:07 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v2 0/4] Add ast2600 gpio support 
Date: Thu,  5 Sep 2019 11:16:00 +1000
Message-Id: <20190905011600.15821-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_181609_795240_57534530 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 Rashmica Gupta <rashmica.g@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v2: More verbose commit messages, using DIV_ROUND_UP().

Rashmica Gupta (4):
  gpio/aspeed: Fix incorrect number of banks
  gpio/aspeed: Setup irqchip dynamically
  gpio: Add in ast2600 details to Aspeed driver
  gpio: dt-bindings: Update documentation with ast2600 controllers

 drivers/gpio/gpio-aspeed.c                    | 48 ++++++++++++++-----
 .../devicetree/bindings/gpio/gpio-aspeed.txt  |  3 +-
 2 files changed, 38 insertions(+), 13 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
