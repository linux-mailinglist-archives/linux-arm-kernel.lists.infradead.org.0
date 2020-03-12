Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B9F1827DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 05:39:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NexCRdCAwhs/KvBaTzO2XWqKaMDxyrPV1jf8aY0JIyg=; b=WNY
	g4DZcEQ8OhEV9jM2TaWu0mg8GIc5uuvPP5Ju0ZyeRWfxV2W9ljXw1fLcTSJcAYHiDqXwtcaIfy9OH
	5GananetdhDXMPcePYlEDKnLUXjRnCgyrqGDSsSzYYt0PXU3Xg4HSxMrNRtNFQsim15momghmffou
	a5j00GaV5/bN9K5fzULSUMpMV/C5swPvynl84JF1Jbh7FtBQa5KRm1XsylXqu08BSFnja8g6S8BtE
	ve8pnl1KtrYp90mIfM2n5MnK7QtXkrAxVavVE1+wjU67Z0wwvCnvLkybepH6C+1KKpBUKIJjn8Xk8
	BzJjZSmYNfh6Nv6YV8TAr+BpOX+9JIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCFcp-0003m6-TG; Thu, 12 Mar 2020 04:39:15 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCFcc-0003kv-68; Thu, 12 Mar 2020 04:39:03 +0000
Received: by mail-lj1-x241.google.com with SMTP id d23so4790845ljg.13;
 Wed, 11 Mar 2020 21:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BjPdSfl+t8YwAch/qVVID02ShhhB89UbCThPW66gWLQ=;
 b=J3ats9uK0YN0GDUacQWNhZ9Q+7kDlCcWnN2vo0ccfIY/D3nP6F87eOqtg56zTZKdyv
 CIPDgyovCi42xIbwEjbJptkhrFt6J1VIDK0K8sgS4/uyGJnteNpmeleMaQXBP/kLznr2
 NjAXhin+/hMJlRmbULU6cMXlgpXagldRgTBye+Sly4TOUII2c4u2Li3K9LlqxJwceFG6
 JcIAR4YpMPOfMRSY4M10O0dMCwd9Y1ayWRsbdwOY/rx0tlSZepQKKpO3+mwTC09NaC8J
 y716+pTEZsxs26RxQeajI2AO4rO5xD2z2F2kpmE58X655V2354h59GHVVZQ4hGTYLRhv
 5CrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BjPdSfl+t8YwAch/qVVID02ShhhB89UbCThPW66gWLQ=;
 b=R3xBT/4dME23qrzLYKIQ9PQeFOXdazPBDqSRbf5rc9PBHlDTXSarWrqYacaN5PjGrz
 X0wHxFG6nOXZfU0NfRnSyukcimWWp10q9KGomLQz9pqQtm18AGgqQxTyK0StY9RcxJkL
 KZSn/9jAqgjFm1pvxm7gf4IxVeEAWbb383BUeD0EPlIVBvDCsK5B3iUedAsh+x7y2a/S
 eGHpDbvyyNmSo19M5ocDq7oEelig24gLua2o3WDZ21oPjlyERFaAwEH1BpnRG8P1Os8T
 FfQu07CAG+CpJEqZbq/Y7KLwQ7ZOUKjEo3qW8ypLgHCLB2/DVI/wqmIglV2L/zGp+Rvh
 WNug==
X-Gm-Message-State: ANhLgQ2eyebZh5c9BozJWPf38qf/rzpRUWPWKa0QbzpVplf2ST0u5UQC
 HyPgdjnIFVbVpsoMmSx/5PI=
X-Google-Smtp-Source: ADFU+vu2LZt4dQBS1XvD9C73vqG+rDKvlOnUkwd2xy1BWVo1NQdNEU4cWSfzVugfz8Nv6UzykF9sbA==
X-Received: by 2002:a2e:9b94:: with SMTP id z20mr3926494lji.147.1583987937218; 
 Wed, 11 Mar 2020 21:38:57 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id u2sm8872866lfu.3.2020.03.11.21.38.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 21:38:56 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/3] arm64: dts: meson: add dts/bindings for SmartLabs
 SML-5442TW
Date: Thu, 12 Mar 2020 08:38:03 +0400
Message-Id: <1583987886-6288-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_213902_254289_C3841794 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 =?UTF-8?q?Jer=C3=B4me=20Brunet?= <jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds new bindings and a device-tree file for the Smartlabs
SML-5442TW set-top box. The original attempt [1] was 15-months ago but
nothing has really changed apart from a change to yaml bindings.

The QCA9377 BT device does not have bindings and early experiments to add
them are partially successful but need further work. I have dropped the
gpio-hog from the device-tree and will submit changes to add BT once the
supporting bits exist elsewhere in the kernel.

v7 - update gpio-led nodes
   - remove gpio-hog for BT enable
   - add bindings acks from Rob

v6 - removed audio nodes again

v5 - typo in card name

v4 - typos/corrections from Andreas
   - convert to yaml bindings
   - add sound node back
   - confirmed gpio-hog is necessary

v3 - change to Smartlabs LLC
   - removed sound node

v2 - removed audio nodes
   - changes soundcard name to "meson-gx-audio"
   - added missing uart-has-rtscts;

[1] https://patchwork.kernel.org/cover/10674939/

Christian Hewitt (3):
  dt-bindings: add vendor prefix for SmartLabs LLC
  dt-bindings: arm: amlogic: add support for the SmartLabs SML-5442TW
  arm64: dts: meson: add support for the SmartLabs SML-5442TW

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts | 284 +++++++++++++++++++++
 4 files changed, 288 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
