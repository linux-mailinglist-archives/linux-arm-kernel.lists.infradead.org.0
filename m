Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04BD13568A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fAqL7TVkHpC86iTfAXAtdg/rJw+UNF0DowH/Ek4PgVw=; b=lg/W//o0mJ1DR2
	2toxgt/DCkYb9ULXuLzudhjWBzc1brbz5sziBaMpu5Y7ATlQ5q4oaJYdKfu4ekuhrvXg66k3E8+OJ
	z/LtbVNbujsWyJvj+6gPy+fY7d3quLtSOKjqWrk+DXddnpo5wvMR3SzfhTmfLaCNfRCYYkO9IfsFu
	Of8hswtf7IO2kFhGNj9y/F4JhHlTw+DJ8O5xfhnhMMoGgHiJ9GHP6uw4TIhj2TSWKQ04WIumzE75R
	e2bzIhpZOp1ALlVvaPMMnbm/3oK07PSG/AnViudYu8RBVSxyCjA7aAVCvc+dUdR9xzaYlzqwNlUSY
	PGwH1L46LxIdmG9mnkRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUmL-0005No-Id; Thu, 09 Jan 2020 10:11:01 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUmD-0005MI-E3
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:10:54 +0000
Received: by mail-pf1-x435.google.com with SMTP id n9so3133079pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 02:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oYLObm1EH6YdnVAuxH4HhWVzCuwo//V40I0Zoh1cRWA=;
 b=e7tdu/FMMGGPPVjoNEmiQCT1rQIRQsa/DcyBNt3Kcufdm6iA+2yEHtlK700c7XSip5
 29foJIQjO1Ux894Sx6t0T47Q++Fb59S2z9PWL0iPs5xFkNi6dt0Nz2HifhwCl5N6cPLo
 pjodAHyNp6UXTwVz31UGyLFgqRpjy0RIlSYPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oYLObm1EH6YdnVAuxH4HhWVzCuwo//V40I0Zoh1cRWA=;
 b=isYpq6oJJTa/9oPvTjdFvmNPEgpbtvybuBVroekE5fj7yTLfRpMLu4SBGtW8W+cB4x
 J9NwiWNULtZw3sLtBBi7mTkdUkr+khnmInYDyZUeGg5ylXCaezwrMVzlyK9MhEvPsdpg
 eShJT5TsrGsDtb+B3TsjhdmlOxfSNYjYNCZR+FMpyYYRM7dx3WNwvhKqW0ys/ddcRybt
 Y24bX0hNRz3cga0WkSfZ546Oyw7Vrm4Q0ZkL0teKZYeRoisrTJUFQ31Evl1fQk1CexH0
 p36tTc/zUuxFkCT6jljcrzB0pNxRVOQlPck6fXG+HA5NJNalQzi1PoPRjFp6lDsmsDBo
 b4HQ==
X-Gm-Message-State: APjAAAWWGQR1D6sszP4XMe3rjx0qlAfK0wrNYKtGhs2xHm3CL5DaEU5I
 zJGa6WSQQJjuhV67FAqWOXJ1DHL47iE=
X-Google-Smtp-Source: APXvYqwebhIZMzghd1qDG5V69TQUhXnikGS2NCAn7B1nL1eqOptwbKauGF29YAc5NlySDTXQg5M0/w==
X-Received: by 2002:a63:358a:: with SMTP id
 c132mr10552106pga.286.1578564651804; 
 Thu, 09 Jan 2020 02:10:51 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id s11sm6518713pgp.1.2020.01.09.02.10.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 02:10:51 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] Add mt8173 elm and hana board
Date: Thu,  9 Jan 2020 18:10:40 +0800
Message-Id: <20200109101042.201500-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_021053_479341_8846CA1F 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Mars Cheng <mars.cheng@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds devicetree and binding document for Acer Chromebook R13 (elm)
and Lenovo Chromebook (hana), which are using mt8173 as SoC.


Hsin-Yi Wang (2):
  dt-bindings: arm64: dts: mediatek: Add mt8173 elm and hana
  arm64: dts: mediatek: add mt8173 elm and hana board

 .../devicetree/bindings/arm/mediatek.yaml     |   18 +
 arch/arm64/boot/dts/mediatek/Makefile         |    3 +
 .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
 .../boot/dts/mediatek/mt8173-elm-hana.dts     |   16 +
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   53 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   15 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1069 +++++++++++++++++
 7 files changed, 1201 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi

-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
