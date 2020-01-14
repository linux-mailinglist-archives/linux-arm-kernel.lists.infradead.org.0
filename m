Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE6213B2BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 20:07:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DZpdCEZprK+DXN1N86WfomJlHEgJsFY75Rb2bz1hMfw=; b=gGn
	ItaAzMPMCULR8S2u+6ivCRljdAqlzR0Z9516NG03NTIZP4w6/dS2lZKVyY2xDDWwUlTALRaE/BFK9
	IsdkoZ/ZRifZXsVKwpqff0n9TAiuLxsXvdUgBOQZ704qkL4dGqUkQyUBQY+obn0ijozfJbLWnFr22
	vBAKC87mporSvEQ/X//6lB+NWdxZjAynnO5MADRsp08+fD3e1Q4X+HTC3XYSIpa/rdi4Co134g1zL
	SZgbA04yAl9OazcxOqkQYucuM0Gu3+i2rzYZiHzruRGFFbJleVGs1AUTAdwhxaUgWf6I56RJXzKDa
	XzapRHTxZAluIm4u4enhaR4KE91z//w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irRXV-0006Mo-Q5; Tue, 14 Jan 2020 19:07:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irRWG-0005Kp-NV
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 19:06:36 +0000
Received: by mail-pf1-x443.google.com with SMTP id q8so7017836pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 11:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+hPubKNXoscOquUFuUg8wCoFmK2UJGRL5czKa1SRJrg=;
 b=pqIDTum/4xK6Gk4dpSXs6uOcELVtrOjobja0bYjtq+TW0v0ptivJ3PzVORm7lMjVl6
 cwxPQlxjqgwWZdWyDfQDiAN+NbOYAq0r23n59uxmbTJsy1uezEWh6LpwwRg5vWLFjhHr
 1GCadP27R7lpu2NAfVuTA67uqCFfUY+cFp8IPEPrEOLQS4PA4mbd3x20+HNP35r9GT+H
 vqijWp83vVzIcfYCWdvQFKn47/tbHOs3BZEy2mBND12QS1sJcNyYb7Kuc8LZXBDxxrpz
 n4sW/TxNr2Jxm3Zy8TA++Dn9MzmUWtfdUAlchgD3GdPLQMhnzpD8Of4de4iQSE5uuBY2
 ALzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+hPubKNXoscOquUFuUg8wCoFmK2UJGRL5czKa1SRJrg=;
 b=LJM4353cdxNzb9pc7MS8cGyuaWRL25KfVpZByOHV5CvVeOt0uvVVg0xK+dcZpM5v32
 Kzx/VxwOcE1TiL43TC8awZuHuB7HRMmBSPvOsGtG2WHwND7vMpPYU2G2SHy8cEjQMGlI
 5o58WNplz71BK3eZylRJIO6/4110wyyrtEPa7UosrHFKQAsjFN74AugmwLKcPQ68zLbA
 knLTEr2gCm4JfZclYB9od+2LyK3ruGRYxmVA65v9+xzhkrOop03WxlVy7mwqqcpMN6Of
 BDMhdJwanloEXtePket7ZGY8TsoihtlHYNSsnT7Jkg190A6LJUnD5Ngr7VvnENEyTiJb
 cqZw==
X-Gm-Message-State: APjAAAXyX47v/g7OQvuzdjZ4pEIVyv8IChAjmSSsJQTwQL8J9VQSZyyA
 FGF/CKnwNdKGedqEiRTm60Q=
X-Google-Smtp-Source: APXvYqy+K/IGJGx+SwbNg1zLTYiArYpJ71V2j5GV9N0ZwFn68QJAk7EFMvUS3kFclpBAcrTbht+djw==
X-Received: by 2002:a62:5343:: with SMTP id h64mr26058168pfb.171.1579028783171; 
 Tue, 14 Jan 2020 11:06:23 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a195sm19284528pfa.120.2020.01.14.11.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 11:06:22 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 0/6] brcmstb_thermal updates for new processes
Date: Tue, 14 Jan 2020 11:06:01 -0800
Message-Id: <20200114190607.29339-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_110628_760425_9F1F415D 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patch series contains a bug fix for the existing platforms and then
paves the way for adding support for Broadcom STB's latest chips in 16nm
processes, and finally updates the driver with pecularities introduced
with the 16nm, like the lack of interrupt notification from the HW.

Please queue up the first patch for -stable if you want, thanks!

Changes in v3:
- do not change AVS_TMON_TEMP_MAX with AVS_TMON_TEMP_MASK
- use of of_device_get_match_data
- maintain function pointers back to of_device_id::data

Changes in v2:

- kept defined constants in patch #1 and keep using them for subsequent
  patches
- add Reviewed-by tags to patches #3 through #6
- rebase against v5.5.-rc1

Florian Fainelli (6):
  thermal: brcmstb_thermal: Do not use DT coefficients
  thermal: brcmstb_thermal: Prepare to support a different process
  dt-bindings: thermal: Define BCM7216 thermal sensor compatible
  thermal: brcmstb_thermal: Add 16nm process thermal parameters
  thermal: brcmstb_thermal: Restructure interrupt registration
  thermal: brcmstb_thermal: Register different ops per process

 .../bindings/thermal/brcm,avs-tmon.txt        |  8 +-
 drivers/thermal/broadcom/brcmstb_thermal.c    | 96 +++++++++++--------
 2 files changed, 64 insertions(+), 40 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
