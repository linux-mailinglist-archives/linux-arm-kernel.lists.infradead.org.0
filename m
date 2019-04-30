Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C580FDE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 18:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c71LcWI950CmsYXAJnNgF898MhL1w0dz3V2XP88thtY=; b=JyQlKob+IILEHf
	t2yPBVvx6RgslkjSU+GojZ5fhanGptdoe0fdjX0jHtAp6b9WO/CMCVR295Pt5tjPgklJgwxmXNElC
	uf2avOkr7qCKj5IzI/ne3gFBjWoyS4voHw3i7mrlDqFAtMVAVNfdYxQLQxFKWJdPkukQfWYJHdAFE
	Sa48IrpnNzws/GNA9zbj34sydA3lbOnGUyxRWBI5vj75utpxCis6N9OK1DvsMOw22FYkkx1rNDAlr
	nSeC7faK/oQVPHt4edOakobL+aWGaObAXn67yaNqF7I54Tdq8Z6HAF7V3K1nkAnXMVx+umEN0RpFD
	7sNJeMTtFNVlScJmZcuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVdh-0003TI-WA; Tue, 30 Apr 2019 16:29:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVda-0003SM-0T
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:29:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id v16so19347806wrp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 09:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pJcnizSX09s8fd54NDpfsOEpZWqIjJb4KGon6CoHIdE=;
 b=kAt6DfvsoMEHFhgdnVzV+s9YIgmyxSKYpBh6b+I2H9eu/PEnBAoh+w/TypaG5YDPUp
 QJghPybgsEgarbZMdnKUYaQszvNm9YfL6CT/sl4vYcCLSomRGRtOvzL76Wthc3URDenE
 kq602HzH60sURQqKmhZFfLvKUfMjmcEqZJl14K8JPoBiJtW8FfvzhhSd/rRyaVY5k4D2
 V0rPDJE5XWxwTCsX7u0fzq70bvCPbxqHb3LM0cDe9SSfYvLK0pz++qIFqdClZl2TKKIN
 8BhXdozQndFP1q7WSc/caAVc1yP3paxyB+UuvJD0UFUuxjrofnpGsp6uTstCsj8GG932
 ZKng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pJcnizSX09s8fd54NDpfsOEpZWqIjJb4KGon6CoHIdE=;
 b=TWMDgelMBdSJ4P2hlxK0Siws4idJIqLSS2wjFjvJz/jFdJwUOIX2VFSlNVRNbmCJ51
 8Wt1b3gxOJ6uXhg1H4xf2M6oyGkrp6aBM23B9E5Kd+9UOpaJoZlFBB1yzHcIMDMXLu9k
 lxSlwRjpMDzuNqs9yZffy9NttN/WWGhjXpMxPiAWQKEBIxcAhitGzBLFwTLoQuLNXQQ1
 R3NBed7dX65LYZhwNsTKO0ZG49fDRsqgDxS7dFGZjVMqRkSd1r69gJqISUtLdBhf9toR
 CRh8BqGksj5asWYD0yRSTCUvAIqK/XBAF16KugpQpkz+uW2yKvcVSbus3suP8TL5OXdt
 4kbQ==
X-Gm-Message-State: APjAAAWOziJAZ5exZ5b6NGIYoylCWNuR1CEGDmuPdOxjEkZglhnXc7sO
 JttUCBldDLq/fTJ7cuGoC76nwA==
X-Google-Smtp-Source: APXvYqz5wZra/C9A30s60jxmqc5nStLHxnlqkLWQ+B1O25gRbpQOXIuGcHg5wrlsF8QZ5T4qlXp61Q==
X-Received: by 2002:a5d:6347:: with SMTP id b7mr754362wrw.1.1556641783915;
 Tue, 30 Apr 2019 09:29:43 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:1ca3:6afc:30c:1068])
 by smtp.gmail.com with ESMTPSA id t67sm5848890wmg.0.2019.04.30.09.29.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 09:29:42 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 0/5] synquacer - wire up Atmel SHA204A as RNG in DT and ACPI
 mode
Date: Tue, 30 Apr 2019 18:29:04 +0200
Message-Id: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_092946_062605_5ED5E4DD 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Tudor Ambarus <tudor.ambarus@microchip.com>, linus.walleij@linaro.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, joakim.bech@linaro.org,
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

Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>

Ard Biesheuvel (5):
  i2c: acpi: permit bus speed to be discovered after enumeration
  crypto: atmel-ecc: add support for ACPI probing on non-AT91 platforms
  crypto: atmel-ecc: factor out code that can be shared
  crypto: atmel-i2c: add support for SHA204A random number generator
  dt-bindings: add Atmel SHA204A I2C crypto processor

 Documentation/devicetree/bindings/crypto/atmel-crypto.txt |  13 +
 drivers/crypto/Kconfig                                    |  19 +-
 drivers/crypto/Makefile                                   |   2 +
 drivers/crypto/atmel-ecc.c                                | 403 ++------------------
 drivers/crypto/atmel-ecc.h                                | 116 ------
 drivers/crypto/atmel-i2c.c                                | 364 ++++++++++++++++++
 drivers/crypto/atmel-i2c.h                                | 196 ++++++++++
 drivers/crypto/atmel-sha204a.c                            | 171 +++++++++
 drivers/i2c/i2c-core-acpi.c                               |   6 +-
 9 files changed, 790 insertions(+), 500 deletions(-)
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
