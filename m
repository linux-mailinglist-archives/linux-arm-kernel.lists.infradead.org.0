Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46634119F7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 00:35:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tjm511Vn0Fzr9IWIjArlzb9gqgus26gn7wCecJskwIk=; b=TZU
	HXBrGnqFeiRIoINZSDXwWL9cn3K2X54la4/NDJuq++aZE1ad9r3Ynk3T6qmmUQQrPaR5wt6pFKPuX
	603P8IWsNMUFLLPBUXUo0MfFwGujHe3+Ie/87EggdBTo0rzZOId1dJEUhhXWV4MxkyIpHMBJFmsLx
	KJIJMGJqPASpT1xY3Y7wGjc5TZ1TvEID//T85NwKIZ8nClSUZG9MA2/ulayI2w/nTD+YCpvgK6PGp
	bdaz351G87+hYdhmHUEFaiz0Ntboz1cVQl6y2thSPAhRxp2p/9eaU+GLgNyKDVRc/RhukM+NTwH6U
	tTKZ709CZ08LvWcDq3YRbjelNVnvSgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iep2S-00031r-1u; Tue, 10 Dec 2019 23:35:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iep2G-00030Q-3V
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 23:35:21 +0000
Received: by mail-wm1-x344.google.com with SMTP id d5so3521428wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 15:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=aPVFdQIWNj16ZK5RdjBKbqDPawIqCxaDmrjeIuzNinU=;
 b=adPF2rXzMF8gO757e5fLYqNf/NWfsMRveDYLbZkuTCkMirY9OWNWSontRZyC2R75eI
 wNd2hHSyTgz6mMFoW1mcQcjch/WjkWGndnjPV4RHaOlukq8MDxL0eSelvQT92CXnve4R
 oZ/XdQOoceuTnnMnGlswiJiP7Mj85DOuBAnr/1LE3xvVosSTeST0eRfA1MSxxnhKilEJ
 557jja9A+qKYnGrcFE7FBKawYUjsjTEnd7O1KfRTyTMpPgAmCnv/oRLerMKQi9pEKcyd
 1wd+y4izFFTi1tzuQ5bQmXi7XFBUxDb1wcnd9yyoAnY2C6x3hYHmefS8Vb6DyDsMS2hj
 uLTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aPVFdQIWNj16ZK5RdjBKbqDPawIqCxaDmrjeIuzNinU=;
 b=ZGXwnLPs496DlH4ilEITfzkqJ9i4VHO2hhroLDZYwIL5nuPgIf5OCu7SyrKH8Cdden
 tM5VumFKJ3NE1jGBTduYU2WWk2WZfyoohp3hLmg3R9a4S3b+svbguZx6MwXajEdQ7OIc
 U8uX2E7hz15lI3x5k4Hj/Us54Pm8/Lm3Zl2srndAxJg+HG0s8gaOaecN3vsmj+CTPmF0
 B1Zh9iuC0NcjNSIq4Q7XaiRd4U+ykKxtyKAAIXRADZ6mr+E/BLlpIqnoKurjT8QiOwUZ
 3Ybn6DaBfRqb7EbeO3x+bR6+Eyv3/pkl4FPB8PwRXuV9jCG+pjNLOwiep0OVbVYm3boq
 Dcjw==
X-Gm-Message-State: APjAAAXM6G7/bd5F0VXigzTpfBc+yrihxWh2N2wDd3OcQCBRQvdDiwzA
 lJ7EQloRBj+Tl0hMDx8v6MF3Oorm
X-Google-Smtp-Source: APXvYqy8Ksgy0PPntHDhclphM607VPHVR5PA0lJyIgfy7XCtzEZHiOuGylmR1rQ3R47lf1vDApknGA==
X-Received: by 2002:a1c:a9c2:: with SMTP id s185mr1046723wme.119.1576020917919; 
 Tue, 10 Dec 2019 15:35:17 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n16sm59478wro.88.2019.12.10.15.35.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 15:35:17 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] soc: bcm: brcmstb: biuctrl updates
Date: Tue, 10 Dec 2019 15:30:39 -0800
Message-Id: <20191210233043.15193-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_153520_185906_662CE721 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This patch series updates the Broadcom STB BIUCTRL register code to
support the latest and greatest chips (7255, 7216, 7211) and also fixes
the 7260A0 and B0 chips to use the correct tuning parameters.

Florian Fainelli (4):
  soc: bcm: brcmstb: biuctrl: Tune 7260 BIU interface
  soc: bcm: brcmstb: biuctrl: Tune interface for 7255 and 7216
  soc: bcm: brcmstb: biuctrl: Update layout for A72 on 7211
  soc: bcm: brcmstb: biuctrl: Update programming for 7211

 drivers/soc/bcm/brcmstb/biuctrl.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
