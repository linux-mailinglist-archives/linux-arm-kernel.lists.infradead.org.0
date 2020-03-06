Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EC017B53F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 05:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9+gW4JePRytovvpSAl1BLOxkZ3fnOcsGRAsZLyLiKEA=; b=rphwU0vRLNIM+o
	+8wsd56zbuS2ZS6Y4QGUKfombpLnOvkYoYb3Pw4w4U+EzKgXPwQ9JwGN3w6Ac/nK4nDcGlAYOKi0o
	4QJa9mQfv8wNlGZC8yFZA4JUXh1FeciRyZcXRe9B5g3BOqagK4GvLtkaE+3xZNH9IrywJ3yUs0+CK
	NRXVHWk63UfEEMp2CDx/Q2w2yP+D7TFJ1Kg6SGDYm4vC9KkyhsLMZLT9jiHNAwXdli3W2gmOjamfr
	0faydcbZr2opPxMLWeYn/RjiCO83c5OfA2WeIjvtdq3IZUzPFoBP3zt0tvLzV2Ev92uqvRdD5/5Pb
	oT/+8UrAD6T1R4F7JmeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA4NJ-0004ym-H0; Fri, 06 Mar 2020 04:14:13 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA4N4-0004w7-VI
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 04:14:00 +0000
Received: by mail-pj1-x1042.google.com with SMTP id lt1so504725pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 20:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NGpha79Xw/kyrpH0KRykBURmEGjSa5ilFJNdTDuhavo=;
 b=UBFJfk7m2rjCNVc4mkH8nMfqbKNiiahjGDbTAxb6n6L3W7Pm2HZ2sPakIgBp1lURAp
 wCEx2AOH+h168RFpbM4kCfC0Bl2UTfPV+8xRkoukQQU1Xobx6M1BG8uUQvmOfTE3yk4+
 UBcROZ8vF9c7L9/DPrmxZxWKgxx6AwppH4XvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NGpha79Xw/kyrpH0KRykBURmEGjSa5ilFJNdTDuhavo=;
 b=dAQNfZmydYdk9OP7w2sAmkS5cDo63N7KDPc5jQDrV6DEyijm9tnWONPCT8i1uxZ9R2
 xlOv2Y7LHGG4pT0AVYKMmmZ/Q+aCSEbdQfVGZ9L4Aq4K/wl6L1aJTrOfm7IK8JhD0QpH
 cKaVaEY7BBBMpdfn1bYUc9etVUPyMsmWpkwW680JqQP6MwG13hrdInA7D2bmA6lGNdte
 IpuRzxzyBoYiX2IgUv+BinAJVuf8Kg0GIfMasK/mAj0IArPP2RhIPz/5+c28a2SOHXw1
 ToU/reP1eCXFMUpQbAoX8lgmA0NGept9b19ghqpFqFpIpj2+TGKSbc9bGiNtb0QCFbTZ
 UkAQ==
X-Gm-Message-State: ANhLgQ2uQ/KuR4DZCP72AbdFQCGkw+XKNO+Z29ogZtSgUB37PSI1p1vp
 mFeVi/twCvPW400orPfTa8TnOA==
X-Google-Smtp-Source: ADFU+vu3QozVC0yE6LU6QscNhoRjHqPVAaBn/u3r6arshufaf8EPEK3BnFSFTzSCvpBiTDYG84+h2Q==
X-Received: by 2002:a17:902:b485:: with SMTP id y5mr1125061plr.4.1583468035448; 
 Thu, 05 Mar 2020 20:13:55 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id q97sm6295025pja.9.2020.03.05.20.13.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 20:13:54 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 0/4] Add dts for mt8183 GPU (and misc panfrost patches)
Date: Fri,  6 Mar 2020 12:13:41 +0800
Message-Id: <20200306041345.259332-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_201359_022700_4C5FEE91 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Nick Fan <nick.fan@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Follow-up on the v4: https://patchwork.kernel.org/cover/11369777/, some
of the core patches got merged already (thanks Rob!).

The main purpose of this series is to upstream the dts change and the
binding document, but I wanted to see how far I could probe the GPU, to
check that the binding is indeed correct. The rest of the patches are
RFC/work-in-progress.

So this is tested on MT8183 with a chromeos-4.19 kernel, and a ton of
backports to get the latest panfrost driver (I should probably try on
linux-next at some point but this was the path of least resistance).

I tested it as a module as it's more challenging (originally probing would
work built-in, on boot, but not as a module, as I didn't have the power
domain changes, and all power domains are on by default during boot).

Probing logs looks like this, currently. They look sane.
[  501.319728] panfrost 13040000.gpu: clock rate = 511999970
[  501.320041] panfrost 13040000.gpu: Linked as a consumer to regulator.14
[  501.320102] panfrost 13040000.gpu: Linked as a consumer to regulator.31
[  501.320651] panfrost 13040000.gpu: Linked as a consumer to genpd:0:13040000.gpu
[  501.320954] panfrost 13040000.gpu: Linked as a consumer to genpd:1:13040000.gpu
[  501.321062] panfrost 13040000.gpu: Linked as a consumer to genpd:2:13040000.gpu
[  501.321734] panfrost 13040000.gpu: mali-g72 id 0x6221 major 0x0 minor 0x3 status 0x0
[  501.321741] panfrost 13040000.gpu: features: 00000000,13de77ff, issues: 00000000,00000400
[  501.321747] panfrost 13040000.gpu: Features: L2:0x07120206 Shader:0x00000000 Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff JS:0x7
[  501.321752] panfrost 13040000.gpu: shader_present=0x7 l2_present=0x1
[  501.324951] [drm] Initialized panfrost 1.1.0 20180908 for 13040000.gpu on minor 2

Some more changes are still required to get devfreq working, and of course
I do not have a userspace driver to test this with.

I believe at least patches 1 & 2 can be merged (2 depends on another
patch series, so maybe we could start with 1 only for now...).

Thanks!

Nicolas Boichat (4):
  dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
  arm64: dts: mt8183: Add node for the Mali GPU
  RFC: drm/panfrost: Add mt8183-mali compatible string
  RFC: drm/panfrost: devfreq: Add support for 2 regulators

 .../bindings/gpu/arm,mali-bifrost.yaml        |  25 +++++
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   7 ++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 105 ++++++++++++++++++
 drivers/gpu/drm/panfrost/panfrost_devfreq.c   |  17 +++
 drivers/gpu/drm/panfrost/panfrost_device.h    |   1 +
 drivers/gpu/drm/panfrost/panfrost_drv.c       |  11 ++
 6 files changed, 166 insertions(+)

-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
