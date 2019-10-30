Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43512E9B7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=x+6HjzF6f1rcH+ZeUnXy6nYZq26ZxkvuNW+uJUQttRI=; b=pdn
	BlXFVsN9XylxmSTEt76M/eGpqE/NGn10DuZHOZttjCQln/+hy7coTuxUR/JX0b4HSUP+jhQm/KiPR
	6AnVAkh4Zwq8qVvOBVL7//qf0AGzJHZoKhhifY9OeiW7au6LVRQ37CAESdH06GQKFtHuY+d9Lj5t8
	uSL8qpK8bBPjUdv1/j8Lk5jmvCTBFbXA7vVWBa9W2kFldJ6SjjHtv7bHpgixnwaj85/3NRjJZsLRc
	fkejBnJvWRoRZ2NyT9PpxUt8UTWMYTPEnj9enKgZOGcIPG1Q8wb+DvRtsPpmPvPDZl3SL9omUUQH/
	KWg6g2B8VEtwWp66u+HfN/iAuC5mx3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPn1o-000750-0I; Wed, 30 Oct 2019 12:24:44 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPn1c-000749-BN
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 12:24:34 +0000
Received: by mail-wr1-x433.google.com with SMTP id e11so2080464wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 05:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=qYwE7FsGe97l1beAf1eyAxkAOWYmrfKu34GFoISuGQA=;
 b=BTCMz/6s5xDHOivs9iJ4DNl/xUrEMHCNhOL3f1n0P51lSMrBPZCaI/+YvfZ+2CUxcw
 LSiZ6Nc0FXwSQDUoekRgda2s+aK0mPM6rVh8cAGMqwh466MvqxFxccZeiw5T5bLDF00Q
 nSln6DvvbHcFuQC4AdGiKb8ociL08ydqplhTRCIuqf9M6c7MeBGX+bBbJiMKas9C92Vf
 aqqFJDWeFeexC8hsGESo6ZPn7OjE21PswP39OzzOf6T/AzPsMXVASIeWf+tadBwvaF7j
 GqccjulcTFXkoZnpVgxUDv8B8gPy77VLeQ6jjYoG46XydlUaxy+kiSXzDZtPAXO8kqWW
 9LkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qYwE7FsGe97l1beAf1eyAxkAOWYmrfKu34GFoISuGQA=;
 b=IQ7tU64Pc9G4bl0HDa63T+J3wyfEhUGcMQB/FJL0D9joVxGUOSJFi6mofKCDNFX0ov
 cNDan1i00s7EX5xa1YmUqK5tkVLK54vU2gieiziTat0o9auKZLqAuLUZYfRqQYYHd5Di
 eR/bLHkbwmLlYHOHnHL9SB2LJuvLcoEXHKsd7Ngtx1DLf0CX5f7wCVHz0wJYg+OW+hcd
 LWd0JULUpL7vNNPim+6dofaeDYEVMuzPq2ZnUWihwLNg5HMiWY0zqYBEVA05pf6Wniak
 2NOF/hO/ThNHDYiXrQV9zN6ClBJCVeO6S44lkC30jMG3vRHhSwMR16L55xOUAW0q1Mza
 B5eQ==
X-Gm-Message-State: APjAAAXF9R5xhyu1lB4EazpHhtR5UTkr4Q+isGVBHgN6XRvzjNumKhiK
 6nz0XpxQJ6qbGS7XAC8A4nYc+Q==
X-Google-Smtp-Source: APXvYqyS0VRZ7PaBJVGP6LtoqcC9odvbFoHcm6yY+Sg5t8wpq5OFK/pV3duLATtCShyzYGK3CAYrNA==
X-Received: by 2002:adf:d183:: with SMTP id v3mr19659006wrc.316.1572438270889; 
 Wed, 30 Oct 2019 05:24:30 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id p13sm2075919wma.41.2019.10.30.05.24.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 30 Oct 2019 05:24:30 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org,
 wens@csie.org, jernej.skrabec@siol.net
Subject: 
Date: Wed, 30 Oct 2019 12:24:12 +0000
Message-Id: <1572438255-26107-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_052432_443861_2D4F1D2D 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Corentin Labbe <clabbe@baylibre.com>
Date: Wed, 30 Oct 2019 11:54:51 +0100
Subject: [PATCH v3 0/3] ARM64: dts: allwinner: Add devicetree for pine H64 modelA

Hello

Pineh64 have two existing model (A and B) with some hardware difference and
so need two different DT file.
But the current situation has only one file for both.
This serie fix this situation by being more clear on which DT file is
needed for both model.

Regards

Change since v2:
- Added the HDMI connector node to model A

Changes since v1:
- Added the first patch for stating which model support the
  sun50i-h6-pine-h64.dts

Corentin Labbe (3):
  ARM64: dts: sun50i-h6-pine-h64: state that the DT supports the modelB
  ARM64: dts: sun50i-h6-pine-h64: add the hdmi_connector label
  ARM64: dts: allwinner: add pineh64 model A

 .../devicetree/bindings/arm/sunxi.yaml        |  9 ++++--
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../allwinner/sun50i-h6-pine-h64-modelA.dts   | 30 +++++++++++++++++++
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts |  6 ++--
 4 files changed, 41 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA.dts

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
