Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B628F183C8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:33:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vE2mqElLKheVxYYm+IDlSqQWpp15E8lkssvFRv02G3k=; b=L4xZOgCgmzZLQ3
	N0OEzGR/iCfniNPcEYJfvMM/cz0Se5ROEe8xXY/hxDcW9KBZXbtlGDQrHu1vB3azKrdqf+fB6bFj/
	9wu8czUTjz+7MxaUrFPJtfm3ZmnRoHmdMNcoiP0QSe/H99xuK8EYx7ae5Z1QklOQAyMfFb901dppa
	+KVPMZwW1osuigzOBQnmeYkezHfgjOCP1x9eBpxhf8cMdOrjNruWc5z3J6juPpw5mBfeRFFsc374V
	KH5fKmecC6fG4UUgFqLWXKgvhFo6gJn+PatXF3kf6HfilSy1YlbkPpSj24k3agP0W4XY8HarPQBIg
	LJ98ApofJoyyWH+iU7pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWOW-0006z9-Pj; Thu, 12 Mar 2020 22:33:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWO9-0006hN-Jz
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:33:15 +0000
Received: by mail-wr1-x442.google.com with SMTP id v11so9650261wrm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 15:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8cdz1LFOuab0jNRbzTq73NrqK6B+wszwWghkMP0+ST4=;
 b=YSPFRA/Mj5hu1kq6SzfqDihHCyZ3cPjjL2R3uOgcx667Cs8k5bOZQ4keT8vtZBMPs3
 4tC5YK+bcY4lIubGuJ+oZIDqrz8rbNw01mKIEJThYNZMhw6sS2SwXOYk12MLbALHeTwn
 7wkeaigHRRe4wJNdc7SVB/D4erJ2kUxD9SssI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8cdz1LFOuab0jNRbzTq73NrqK6B+wszwWghkMP0+ST4=;
 b=gVJAUsNyhEGlFN72f/gLlucaiL7LwbSE0tAzGJ4l+WvcMUKg/huSvNicutA5D8fxWu
 MCNDwakLNhMgnHLSK/vsXW+HLH8xOOtdj5+Mxa6mcBfpm6VoDC7+/V0KFv7RTUrjWwNX
 +dM3ZRSfrwLGVH3xklR/r0ycE9Ztydw3KISYY2+lkjYXM6jri74tHRoEeAu2f3K7ejoX
 y2NxMTYXQt5QJEm5my/VgPT/dAjvBec+CmygfTz/MB/GKoRRAZhEHcH/abDrjGXS0pKe
 Ec2Xepyk/6hG9UfUqFdppw5MZ0dHHmIilvouPs91N7GP9YDrPaOKxv3fTDXBwt3svuBl
 ZM2Q==
X-Gm-Message-State: ANhLgQ20nSLWNEP0gkA2enB+XZul/VKDfRFVvXrfCqlZgEEGIeFZ6mL4
 9WD+7gScbG6OnjZBgeFWVVcQUQ==
X-Google-Smtp-Source: ADFU+vuNtV0lnm2+jA+dT1T640PomcvSoaj/op5jgEAEK0wuosbYcrQa5xp8y5tBq843mAikSXiPyw==
X-Received: by 2002:adf:f0c8:: with SMTP id x8mr14128631wro.58.1584052391455; 
 Thu, 12 Mar 2020 15:33:11 -0700 (PDT)
Received: from kevin-Precision-Tower-5810.dhcp.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id
 o10sm2964144wrs.65.2020.03.12.15.33.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 12 Mar 2020 15:33:10 -0700 (PDT)
From: Kevin Li <kevin-ke.li@broadcom.com>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 0/2] ASoC: brcm: add dsl and pon chip audio driver
Date: Thu, 12 Mar 2020 15:32:42 -0700
Message-Id: <20200312223242.2843-3-kevin-ke.li@broadcom.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200312223242.2843-1-kevin-ke.li@broadcom.com>
References: <20200312223242.2843-1-kevin-ke.li@broadcom.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_153313_682567_1AA23E54 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Kevin Li <kevin-ke.li@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v2:
 * Make the comment a C++ one for license header
 * Remove all empty functions
 * Change all variable to use kernel coding style
 * Comment chip TX RX block independently generate I2S bus signals

Kevin Li (2):
  ASoC: brcm:  Add DSL/PON SoC audio driver
  ASoC: brcm:  DSL/PON SoC device tree bindings of audio driver

 .../bindings/sound/brcm,bcm63xx-audio.txt     |  29 ++
 sound/soc/bcm/Kconfig                         |   9 +
 sound/soc/bcm/Makefile                        |   4 +
 sound/soc/bcm/bcm63xx-i2s-whistler.c          | 317 ++++++++++++
 sound/soc/bcm/bcm63xx-i2s.h                   |  90 ++++
 sound/soc/bcm/bcm63xx-pcm-whistler.c          | 485 ++++++++++++++++++
 6 files changed, 934 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt
 create mode 100644 sound/soc/bcm/bcm63xx-i2s-whistler.c
 create mode 100644 sound/soc/bcm/bcm63xx-i2s.h
 create mode 100644 sound/soc/bcm/bcm63xx-pcm-whistler.c

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
