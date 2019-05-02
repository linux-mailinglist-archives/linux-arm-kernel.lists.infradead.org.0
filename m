Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84392118B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fetazISUwmr7KDWuj4ucnLH4zLmv7W8J4H+JBs9F2lU=; b=HJO4BMiNbeP+q/
	Y4jmtkNmZWx0jXhbTZXM7y5ogymz1vjIhYMVjstVB5PPu85zbeFHPox8fSOYwhi69QSZOct5HCeis
	UWIPaFgUgOtM1n6VWFSqpI7YFdaJIp67frDTsLtDJdSgmzZ3gv0r1cDrltk0Dlk1l03fgSBH8EPlX
	mJq6b6YAiwOqKyJLN1RZiOEKnX1+nHc5k8o/vEtzmxEmnUHJ6xH1LUInJFuD6VOghniq79s0TUNej
	eod6toIxmVUIKoFlL/NB54VCTge6exhYMIJROcb2mLFegXcGI6R156qaPQi2I+D8HqNTI9KaP1iMb
	bITDH3SiY4fQEEJl9PHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAYd-00024b-Dm; Thu, 02 May 2019 12:11:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAYD-0001ly-7r
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:11:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id j13so2487415wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 05:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+VXnkCeQD9CSagUVthpKhe513V9cyFde6oB8Eo2RI2s=;
 b=Zsm0Hc1NNbj1/+fIZ/BsybgMhuG/oOzaKqUFCEk8LgEfDc9hJT7dxy7GpIFI4JNnhr
 PGXOVN0dZ2kiiDCJr85WYiICSRRDNKkpe9/jAqTZ0mlOf4j9RPB5r8PVl56U8lkocgJt
 KVdNAV3h/Q4NNidtPUvEOB5GFV63HNMfuVMbxEYXAw8YMLy6Bo9teYIc13Np49yXKlwq
 LQCqrOMBFHnxdcMlWFEn+Qdo9/UEjBCRLz1uBbVaYkoOK6RT4sZIoQrWpp47OZmXVBAM
 gMtQ6gLO+p739fPYzxm6NGDSulCjzNZ3MzKZcsUl38RoxfjTeBjxesm9h78AeVzhytaX
 ID/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+VXnkCeQD9CSagUVthpKhe513V9cyFde6oB8Eo2RI2s=;
 b=OfeOxPHn/BwfqUkaNdJ6Bi4C6aMbQnfsgZhR45A5Mv6k4VCQHnnaJYCbUDXK+p8m5H
 /TYyI56ZdH043H5RHa7imYWAqCjPOQUtGB7P6ha1eJOH7nPMUKSOSOx2t6nFtkOaMpni
 Cu9WD3W7CH+JW53I9iFD2meIEf3FZM4pRdmglggjo/Z+zYLyoMHL+98l8KCzdJXrJBRg
 xbuIVH+UUm5KVPfvktOCJTV8j6NgAqR8oFVwpoPe7/NMk0I2uTHZAp4KnRQ3HaiJdIR/
 3S7ncF4VEHwRl4o/Z/k5fKfHC9j+yH0CEFUqan4HHalcSUSiUVgip0WSelxT6Rrii2Hu
 49vw==
X-Gm-Message-State: APjAAAVj9raBDB6gJ+QMUxfcEA0dWf8KqlIVe3qFVU6fBmTtHKpoYvgA
 7taNfGnb9xro8PHNlexQy5WA3w==
X-Google-Smtp-Source: APXvYqzRKOlOevXDDSWksfUTYabZbVoMJ/6J96gC1hBjVY9RvSugrai1mEmZuwx2m1GH4e4XuKgfFw==
X-Received: by 2002:a1c:eb18:: with SMTP id j24mr2265512wmh.32.1556799052888; 
 Thu, 02 May 2019 05:10:52 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 05:10:51 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
 tiwai@suse.com, kaichieh.chuang@mediatek.com, shunli.wang@mediatek.com
Subject: [PATCH 0/5] ASoC: mediatek: Add basic PCM driver for MT8516
Date: Thu,  2 May 2019 14:10:36 +0200
Message-Id: <20190502121041.8045-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051057_481053_F4E8806B 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series add a basic PCM driver for MediaTek MT8516 with only
support for ADDA Playback & Recording for now.

Fabien Parent (5):
  ASoC: mediatek: make agent_disable, msb & hd fields optional
  dt-bindings: sound: Add MT8516 AFE PCM bindings
  ASoC: mediatek: Add MT8516 PCM driver
  ASoC: mediatek: mt8516: Add ADDA DAI driver
  ASoC: mediatek: mt8516: register ADDA DAI

 .../bindings/sound/mt8516-afe-pcm.txt         |  28 +
 sound/soc/mediatek/Kconfig                    |  10 +
 sound/soc/mediatek/Makefile                   |   1 +
 sound/soc/mediatek/common/mtk-afe-fe-dai.c    |  23 +-
 sound/soc/mediatek/mt8516/Makefile            |   7 +
 sound/soc/mediatek/mt8516/mt8516-afe-common.h |  18 +
 sound/soc/mediatek/mt8516/mt8516-afe-pcm.c    | 794 ++++++++++++++++++
 sound/soc/mediatek/mt8516/mt8516-afe-regs.h   | 218 +++++
 sound/soc/mediatek/mt8516/mt8516-dai-adda.c   | 316 +++++++
 9 files changed, 1406 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt
 create mode 100644 sound/soc/mediatek/mt8516/Makefile
 create mode 100644 sound/soc/mediatek/mt8516/mt8516-afe-common.h
 create mode 100644 sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
 create mode 100644 sound/soc/mediatek/mt8516/mt8516-afe-regs.h
 create mode 100644 sound/soc/mediatek/mt8516/mt8516-dai-adda.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
