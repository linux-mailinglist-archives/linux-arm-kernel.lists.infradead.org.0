Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF2929C37
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FokrfTHTG318i/JSV407n48HS0gUuhJEKkZ0PP/+FPg=; b=JvRxj8TLNlVTJ8
	RAU++PjeakO7ERBfc3oQlz2gzcrh2KLvIbQIAGlcDYYy1bFCr0M5QxzWLIdKHwnJvgxEs5SuGvnVt
	oGu1eICPqgKWVpGn8saP/wQ8Ho5asvokotMc+CB7mcKwB0+2Vl6uGnPtuTZFqTsPu4RV8p1+dMTdM
	GHes+SgWo46MRskIsKdUXlGHD3dL7KGmnZctZKc9dZ+Un5O3zeDidAnDJxax8GZNkC7KOiLWNSD0m
	CdgAq6MgUrGlkCwRCAanbVkXk/1P1+/qGO4YiezbFbMzbVmcb24N94apG1XOQ//vrMXRyQJQClHf+
	zIUIMY8XwzhTiyC3xttQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUD2p-00012r-Cx; Fri, 24 May 2019 16:27:47 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUD2g-00011o-Ol
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:27:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id x64so9993883wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 09:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PW1SRGUIIosnHzTIT8oKHW+BHMniX6kJc68l082Nb68=;
 b=JlhIiBr0LN+EnwR1yra8h8TfNP6AP5PihbHAG9CnLQaVbccxa0gL7XOEb/qPhw6xw2
 21kLfpqUhTCojwj+D/mGusUKs1jjVDGZkz3LyvpjNo1f2NpWouYSEFgNjb88fjsgv8mL
 DFLkoc+BPr3wl3/HYo7l/01oJB4c4rb0UtJ6Qy/7LkGxaxf+dyC5mTwsnvKUy3b/Dtsh
 /P9qWaIzy+l2zGV3aFtyeAOq9GU001faEsS2NFsTAZDM0A978menzvnuZlzVr5h3mazT
 i5FN0VuhV+N5XaldGyHhNDVl648ByGwe16b4tRcdlbaVE3pVIcTICNpEb3pCFCJ0ByCv
 ygkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PW1SRGUIIosnHzTIT8oKHW+BHMniX6kJc68l082Nb68=;
 b=SSwxRJDZsj/egg5k833J0h7m3tvSyyyR/2Xv4tI/UoLyoJl1g6MCizQl1pVm375sET
 0tXVD5HsfrjUbDrrED3wUhAWYVkDI1+iW2T6Ddf31tUg9tLtvJvZrT1FgaR/dBHocR3j
 SLdK5aAGIrm0XPmbQikUXl46mx5Ou+CFylGB9YQ2bOs7n6tuzcgcm7FgKQegsFwtGn3x
 TCGAkuZqEmzDYPWc8vWM2ETK84d+IgP6US7rkLpsahnslH8dOyAMkRdNyZl37kLjjWEp
 P1FEimzquaWsq1415bb/xVhbl8OgE2+gnXgrfsoAjYoKAqjZ/r4R+NFyYQJwJ3foIf1h
 Ipdw==
X-Gm-Message-State: APjAAAVCnuF36F0K9LlafU1g07XVMfJLYDA2R2UAEAUvACuv1hT9l29S
 Pk6+AKx8m8Ck65XW9W1+bOVtWg==
X-Google-Smtp-Source: APXvYqzFigln+kJPy+/t7Xbc8DEEH5LN8284rdnJjkHyVa5UHTzba6b6EgaPOigSNNHqYBAD5qkMHg==
X-Received: by 2002:a1c:38c5:: with SMTP id f188mr507266wma.9.1558715256725;
 Fri, 24 May 2019 09:27:36 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:2042:d8f2:ded8:fa95])
 by smtp.gmail.com with ESMTPSA id l6sm2200320wmi.24.2019.05.24.09.27.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 09:27:35 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 0/6] crypto - wire up Atmel SHA204A as RNG in DT and ACPI
 mode
Date: Fri, 24 May 2019 18:26:45 +0200
Message-Id: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_092738_828775_B8A67CE5 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Socionext SynQuacer based 96boards DeveloperBox platform does not
incorporate a random number generator, but it does have a 96boards low
speed connector which supports extension boards such as the Secure96,
which has a TPM and some crypto accelerators, one of which incorporates
a random number generator.

This series implements support for the RNG part, which is one of several
functions of the Atmel SHA204A I2C crypto accelerator, and wires it up so
both DT and ACPI based boot methods can use the device.

v2:
- update DT binding patches so the SHA204A and ECC508A module bindings are
  in trivial-devices.yaml.
- add acks from Linus and Mika

Assuming Rob is ok now with the DT binding patches, can we please take
this through the crypto tree?

Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Mika Westerberg <mika.westerberg@linux.intel.com>

Ard Biesheuvel (6):
  i2c: acpi: permit bus speed to be discovered after enumeration
  crypto: atmel-ecc: add support for ACPI probing on non-AT91 platforms
  crypto: atmel-ecc: factor out code that can be shared
  crypto: atmel-i2c: add support for SHA204A random number generator
  dt-bindings: add Atmel SHA204A I2C crypto processor
  dt-bindings: move Atmel ECC508A I2C crypto processor to
    trivial-devices

 Documentation/devicetree/bindings/crypto/atmel-crypto.txt |  13 -
 Documentation/devicetree/bindings/trivial-devices.yaml    |   4 +
 drivers/crypto/Kconfig                                    |  19 +-
 drivers/crypto/Makefile                                   |   2 +
 drivers/crypto/atmel-ecc.c                                | 403 ++------------------
 drivers/crypto/atmel-ecc.h                                | 116 ------
 drivers/crypto/atmel-i2c.c                                | 364 ++++++++++++++++++
 drivers/crypto/atmel-i2c.h                                | 196 ++++++++++
 drivers/crypto/atmel-sha204a.c                            | 171 +++++++++
 drivers/i2c/i2c-core-acpi.c                               |   6 +-
 10 files changed, 781 insertions(+), 513 deletions(-)
 delete mode 100644 drivers/crypto/atmel-ecc.h
 create mode 100644 drivers/crypto/atmel-i2c.c
 create mode 100644 drivers/crypto/atmel-i2c.h
 create mode 100644 drivers/crypto/atmel-sha204a.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
