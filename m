Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128DF1A8C18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mSHKFg3kDcbtWOU3RJmRashO1O8xUrd0YI2y6+gWDy4=; b=F1habGTf6oRXNn
	zWwA/gy8qNbiLbIv/I+BhffwRMExyKfLtRVK5FOVFYixAcrKIR9INL3K832kTZWgFSyIpUQScMa9J
	haEvsHRsbbRl/5rKa0P9GGIhQxPBofuAx5yavkBkopULeHyNQN8o2U+BH2ljdnL2xeQPKki/ZnB8O
	2HIcmyZBYU7R9nUCru6Qo0tpdzkvCk8p12aQW41lKnot110U/abkwhHVuosLn/Qhl9nbyg/S0GlwV
	tEDuIB1xIPe9udPSdWl2v1rpBg35iLEaddyv5Yf7iG8D5ZbLpLIz50aHiSaTSoXMviVC+8Etxgmc4
	U//G1mTjQ/zR3JV+0WoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jORyD-0008RA-Ay; Tue, 14 Apr 2020 20:15:45 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jORxw-0008Og-Pv; Tue, 14 Apr 2020 20:15:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id y24so15783348wma.4;
 Tue, 14 Apr 2020 13:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/nMN3gP9x2ARfODCEnbyaFnmiKSgzhDo+Aw3jjcLnlo=;
 b=mEbJKx7U88hspWaZQv2wZirmksuZrorf1nF8yEpwzZjYupFgLEII0wWhYQBph6N1GQ
 TQZDp9FTxyLAVl+eof0qZzzAhwqgnfNRHjj0CAVmvrM34KAuoYv4J/u1tB17P8D9Vn9f
 /fdr/NS/i5wKBsfX3TGXfy1L52YyO9FKGVb+onQTJ9LpQL0d3/fbOGucdabipdTpSaSs
 h9BZxhPcFRZaEihwL5XJ7Pjok1f6IMu5cQSyqEKXHFRjyDTQTZAD1KlUF+mi2NbUl8b6
 D9p7Ch03BlS7tu4NoPWtlNF/lAfwQN7SYdDRSe2pEyI3N34zkhd4ioKbPAuMXPdHuon8
 HWfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/nMN3gP9x2ARfODCEnbyaFnmiKSgzhDo+Aw3jjcLnlo=;
 b=hwgo2OhM4DqFrXxAMMRkUMAu74+VWsLFFJlEpf4XBnS/t9VxGP95m7yXjrOAvdWO0M
 yXS++akJhVK6/X17Iu4FXARJtk7PVVWt5SUcTphL0B9J+7tJqDON2y+0y/6hyQJT9XNA
 TttNpU1M7Fe0n80a7sUYnYemV9AGOlPl4Vr2GfEczq627MwjZtDk/CsYfuUnUyGNswVz
 P9jZXlFRItwXFrbY9UTqN/LXIUmLy2fvpuh3j8T+lCv3XsWxkreYdQgGkSaXfBZPxMHL
 NrNSKhdv0f1KsW/ReVbSqM148ZfoSG3xoumGIiWknLNSm6TA2eIKMfbMdOeHSp2LPpBt
 o1qg==
X-Gm-Message-State: AGi0PuZLMifLNa6H1yUY1xMTpeF65qekWLDSpuD5/nIusIzTJ9poP00T
 nQ3YJOgRn5FYaV+L2dMMKqc=
X-Google-Smtp-Source: APiQypKh2JU4ueEU0WUjbHYK8S4/0j/0MkKPw8LrYTuKKOm8lG5Osf/3Xu2oOVPnjrrPih3R/LI0Ng==
X-Received: by 2002:a05:600c:4102:: with SMTP id
 j2mr1610523wmi.159.1586895327469; 
 Tue, 14 Apr 2020 13:15:27 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13717DF00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3717:df00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id u17sm22537467wra.63.2020.04.14.13.15.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 13:15:26 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, khilman@baylibre.com, narmstrong@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH RFC v1 0/4] meson-ee-pwrc: support for Meson8/8b/8m2 and GX
Date: Tue, 14 Apr 2020 22:14:53 +0200
Message-Id: <20200414201457.229131-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_131528_866800_D58A2386 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for all "older" SoCs to the meson-ee-pwrc 
driver. I wanted to compare as much as I could between my Meson8b EC-100
(Endless Mini) and the Le Potato board so I added support for GXBB, GXL
and GXM as well as for the SoCs that I'm actually working on. I will
send the ARM64 dts patches once all of this is reviewed and merged.

@Neil: I would like you to review especially the GX dt-binding patch.
The old GX driver seems to include the same reset lines as G12A *plus*
"dvin". You probably know best whether that's needed or not - for now
I decided to keep it (as this is what "works" with the old pwrc driver).
Also I decided to use your copyright in meson-gxbb-power.h since it's
a shameless copy of meson-g12a-power.h with s/G12A/GXBB/g

I successfully tested the Meson8b part on EC-100 where u-boot does not
initialize the VPU controller. So this the board where I have been
struggling most.


Martin Blumenstingl (4):
  dt-bindings: power: meson-ee-pwrc: add support for Meson8/8b/8m2
  dt-bindings: power: meson-ee-pwrc: add support for the Meson GX SoCs
  soc: amlogic: meson-ee-pwrc: add support for Meson8/Meson8b/Meson8m2
  soc: amlogic: meson-ee-pwrc: add support for the Meson GX SoCs

 .../bindings/power/amlogic,meson-ee-pwrc.yaml | 102 +++++++++++++++---
 drivers/soc/amlogic/meson-ee-pwrc.c           |  98 ++++++++++++++++-
 include/dt-bindings/power/meson-gxbb-power.h  |  13 +++
 include/dt-bindings/power/meson8-power.h      |  13 +++
 4 files changed, 204 insertions(+), 22 deletions(-)
 create mode 100644 include/dt-bindings/power/meson-gxbb-power.h
 create mode 100644 include/dt-bindings/power/meson8-power.h

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
