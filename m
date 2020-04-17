Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006A21AE577
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 21:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2qeKweE1AyPG3LMCqlTwuffNOKsYEY97pqeoiu4mmkA=; b=l6J6+DjAXAEgJR
	4kpHEXZYV7pgO7HHZ2ItBr87Y67T6W9R318Yc1017rk9eZhCGyZPLZR1tE2M+yoKvtTgJMvEZ2G9L
	v3sg5Qv5EkuqdqI5SlAcALUyzxSmPgDtAAWh8y3tRxXQZZ8ui4YM+l4i8Sl0sl5vl9JDtw2ODHZdU
	G+tgxm8ON4yUWmRucRFvXOqnN3cGrLqcfvY3UWROZrsTLEzFlabVkehikIaHcUqvbz0hlsLYMDeEc
	OWC0CrE7jFhw3fvtZYDivOHIhqMWJ0sw9YvopiQZ206hMlZzBOvG9kRvOGfYcGWE4nD1wn/rSMy1S
	I5J4FyiRVbONW/zJywIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPWM9-00026l-Rj; Fri, 17 Apr 2020 19:08:53 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPWLy-00024d-Te; Fri, 17 Apr 2020 19:08:44 +0000
Received: by mail-wm1-x342.google.com with SMTP id x4so3997318wmj.1;
 Fri, 17 Apr 2020 12:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PMuvuyOtFyoLpiY9akzKJAflY+hfg2VBUUL0F5qxAe8=;
 b=VFWrd83nihPAd9jGqMjJj7mOg7uSRRuJRre/cQRjri0xNaNlduifUNSMb23hB8pK61
 aR0V7qTDd6xAXXytHpIulp6uwcM/jyxG5myWZIHq5cclm2JD2XW6jhwpsBzV6ieOc3RH
 Ywo1LCk5SLOhNLgszZVxqedyiHcB/mP0DzLD6vo6gK2Igw37afpghTZBfKlEieCq6hbs
 mxqwCuoYI0GnFfbKROnT93/1tdM245mHGpZhrcHzEQ721DuhYbQI7MkWF6u/ayUp3iav
 iLI1ZPkio2N+5P6lIoFtRrBDxmQqG7i8AftYmJwLRMAD/gCn0cNvWQthBICnbuEbgv5z
 wJTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PMuvuyOtFyoLpiY9akzKJAflY+hfg2VBUUL0F5qxAe8=;
 b=Cf09SjubGVYGYsBXTkf/64X3kbpMQQt3pSV6tOG8PVJKJmfCzGtOjmBVSrR7E6YaPT
 gCGXt+4EJmTDcG2aaUtxFs1rSvzKDn+LIMrRnzWDqHKvPnVpXVQVw7auNERbsGwuQ9YJ
 G3vqQx4aW6yA08YYQsVlduDTtAo2BR7F1/54fl4EbfdSzo+ONzAbSSFVfP68YoQcdyxU
 /BVLR25ZitBGfs0gj7h3kiNaypXR1CI3p48GmQi/h5bJIx2HDBxA3xDQjF+xINQjIKW/
 8SPmjWBspWW+4ObzPKQNotimGOb5d6PNSefTGzL9a2rgngQLU6fy5G+nQAO153zshSlK
 HhMw==
X-Gm-Message-State: AGi0PubBOVTBxZJ1mrzbD0+4WLS2zukQvc2rsuSN5ae2w64J0Fo25yqP
 qpCNWmu0acWv6KLTbNOtPeo=
X-Google-Smtp-Source: APiQypKLFPW0P7ews0g26VQ1VAHJSlCWTLKsKwNJUPZQRwT1ZhWrWrDunAJ+rJ+hoeml4OFa5XGZlw==
X-Received: by 2002:a1c:4d17:: with SMTP id o23mr4589135wmh.47.1587150521550; 
 Fri, 17 Apr 2020 12:08:41 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q17sm8722220wmj.45.2020.04.17.12.08.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 12:08:41 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, khilman@baylibre.com, narmstrong@baylibre.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 0/4] meson-ee-pwrc: support for Meson8/8b/8m2 and GX
Date: Fri, 17 Apr 2020 21:08:21 +0200
Message-Id: <20200417190825.1363345-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_120842_978501_6BD1C20A 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for all "older" SoCs to the meson-ee-pwrc 
driver. I wanted to compare as much as I could between my Meson8b EC-100
(Endless Mini) and the Le Potato board so I added support for GXBB, GXL
and GXM as well as for the SoCs that I'm actually working on. I will
send the ARM64 dts patches once all of this is reviewed and merged.

I successfully tested the Meson8b part on EC-100 where u-boot does not
initialize the VPU controller. So this the board where I have been
struggling most.


Changes since v1 at [0]:
- rename PWRC_GXBB_ETH_ID to PWRC_GXBB_ETHERNET_MEM_ID. Spotted by
  Neil, thanks!
- update cover-letter since Neil confirmed (thanks!) that the "dvin"
  reset really belongs to the VPU on GXBB, GXL and GXM
- removed RFC status


[0] https://patchwork.kernel.org/cover/11489163/


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
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
