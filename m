Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03DB198710
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 00:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9uR7NDGWkAPYYMdxT0vA4DSTDprkhlIkBqBzn0N4JBA=; b=DN3cX0nEeOJMjj
	VrxW7KNQTyNc6wTOBZo0APnPThFySDeuWe7feJqSV/tEZg7+5dBXAj9liuMVolSaO8So7iOIt3OPm
	72396boPIg04fo2ep7JM87s+XuaU0IR3Z7ezVVd2F9GbY53lLnnj/BQ1EubKipfzdJ25o4dv1wdsZ
	axfL9P/DS6cg8D/4Zi73KB7ySoevX9pxyiiXjBKJzMx8YvgR6l74XKiqpwttJhhad6tw30cxrqJP1
	DZjeD+gStaNaRLRwzSkirhNKh8Yvf7/y1pMolePFOdlDQRETmXy3hHi2yB2+CWlEDwOqUeVOq/93m
	UvHuEdwlnxKulorT3+uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ2dI-0001lZ-JQ; Mon, 30 Mar 2020 22:11:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ2d0-0001jR-5q; Mon, 30 Mar 2020 22:11:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id 65so23611616wrl.1;
 Mon, 30 Mar 2020 15:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2VkoQedczWLBus6tX3n5y4wQRH1ftctG/cF/BNNp5TE=;
 b=rLucE9/RYbxcQsiwyj8s+DMFOnyqScGjogDDQTt/ysPfoWFsvldH4Eb5BFVYuF1K3Y
 Nb0YBeTl4mWGVBP84wku6pbJvTZvSP/br/lx95SLIIWji2b83He3DMHuRnNgM3tmVQgj
 gQBj9BhZyYl9DONJppZ/Cqa71rjlTqM612S3YnpPtokD32kmU7J79ZvVjoHyuuRFZtj0
 c9YVfGzaNMJ0GjNRwAuIsl5RKkfxf4Jc9I42GUpAMvpoDT1RxHhHWb32MdREz/TO2i6s
 i7OJVW5mfJWPrWY3l8xLtUjpDMFMx0q0GV1rzN5I+gztT1PCQ0hPwl1zAG2LfXwX0rG2
 ymZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2VkoQedczWLBus6tX3n5y4wQRH1ftctG/cF/BNNp5TE=;
 b=flv3QJlYTvB3mnGNsaDw1D/lIPpkpGpb7lcjei3R0htpKl0yyEQp15ri0cfUQ0M8rS
 Z1NJcpppcFYCqt0nd1HhksPdIrEtVxhRUpESNW+wTJH5kkE3YkbJGn3+xjYCLytiicxG
 bvySgIERn5UBzpvMFcsQQaA7DkgRJQ+MMQYQObbadqc2/BJLsNvQyWHDxnq32DzroWnI
 Y3EbRSJS103UBOAktHk7yqoQuW3SzyDzZI0j67Mi0oTfEVw6BD/FKL0iRQJgAycAZz4T
 yZB1E/9DvuY74wVCJNvaXcVCokuijzHcx+l/RtWMFBhjj2znJKbi5zIK+kFRGvGX8KsZ
 Y2qQ==
X-Gm-Message-State: ANhLgQ1h4HDmo7fP4nvtGHvqpXHr/W5ldGo/A20NGg9wlzJJmbrHOYm7
 wZX+hxMAvB54uYL25hozQL3imRl5
X-Google-Smtp-Source: ADFU+vt3Xdhd1l9/VCPq5miOEsLgn0jBbyBbBYz0y9zmPaIrN6jUxlNqvubLbBoVAA2/eXbmEAb3mw==
X-Received: by 2002:a5d:4401:: with SMTP id z1mr16739067wrq.259.1585606288271; 
 Mon, 30 Mar 2020 15:11:28 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b187sm1260509wmc.14.2020.03.30.15.11.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:11:27 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 jbrunet@baylibre.com, narmstrong@baylibre.com
Subject: [RFC v1 0/5] GPU DVFS for Meson GXBB/GXL/GXM/G12A/G12B/SM1
Date: Tue, 31 Mar 2020 00:10:59 +0200
Message-Id: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_151130_219474_C5ED7B76 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have GPU DVFS support in lima [0] (queued for Linux 5.7)
and panfrost we can make it work on Amlogic SoCs.

The first two patches update the clock drivers to allow runtime
frequency changes of the mali clock tree. This is similar to what I
have implemented for Meson8b/Meson8m2 already.

The remaining three patches add the GPU OPP tables to the .dtsi files.
I decided to remove code duplication for the Mali-450 GPU on GXBB and
GXL so it will be easier to maintain this. This refactoring is part of
patch #3. Patches #4 (GXM) and #5 (G12A, G12B, SM1) are straight
forward; it replaces the hardcoded clock settings with the the GPU OPP
table.

I used the userspace devfreq governor to cycle through all available
GPU frequency settings on GXL, GXM and G12A (which covers all relevant
GPU driver and clock driver combinations). I have taken the GPU OPP
tables from Amlogic's 4.9 vendor kernel and the voltage settings
(opp-microvolt property) from the public dataseheets for all SoCs.


[0] https://cgit.freedesktop.org/drm-misc/commit/?id=1996970773a323533e1cc1b6b97f00a95d675f32


Martin Blumenstingl (5):
  clk: meson: gxbb: Prepare the GPU clock tree to change at runtime
  clk: meson: g12a: Prepare the GPU clock tree to change at runtime
  arm64: dts: amlogic: meson-gx: add the Mali-450 OPP table and use DVFS
  arm64: dts: amlogic: meson-gxm: add the Mali OPP table and use DVFS
  arm64: dts: amlogic: meson-g12: add the Mali OPP table and use DVFS

 .../boot/dts/amlogic/meson-g12-common.dtsi    | 49 ++++++++++-----
 .../boot/dts/amlogic/meson-gx-mali450.dtsi    | 61 +++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi   | 51 ++++------------
 .../boot/dts/amlogic/meson-gxl-mali.dtsi      | 46 +++-----------
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi    | 45 +++++++++-----
 drivers/clk/meson/g12a.c                      | 30 ++++++---
 drivers/clk/meson/gxbb.c                      | 40 ++++++------
 7 files changed, 189 insertions(+), 133 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gx-mali450.dtsi

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
