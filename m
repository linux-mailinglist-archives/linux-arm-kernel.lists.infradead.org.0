Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FADE254B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 23:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=18IGT9N4v5HXJZm5S/dBTsQFjn58CQ2Qti1yOv5wd7M=; b=Tl3JK1u2GqNpGhC0ynVYp7tPY0
	dfKKskZatOXs616pOf6MuGUKq3FYmS/MoTWZgBSIY0AwHpb6jBRQJ6qBpsMZx3MlK6SeYA3zHWATU
	gNV7oSmRG46RHSiXB0m0hBO4xiSUUY7vuT98+9y97xy9N1ge0dyCD0M86NzpkEnG1p3XcJEzKFEWY
	qUceondm0p17EzA24kGvQZABY4Zt+V3p/TMCZk2iqI+leOwAY5AIi4h39CCqG/3ETgvZykDARYGZM
	y59vbQv+uHr/7dHwdFtVW9NPKYqrSxLjUHzBRh+gPco/3Au9lSqaQt+arFMO8MG/yrdDvN41I2TO/
	CqOsw1uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNOBl-0004fM-43; Wed, 23 Oct 2019 21:29:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNOB9-00044r-Lm
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 21:28:29 +0000
Received: by mail-wm1-x342.google.com with SMTP id g24so453006wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 14:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UfYp8fg1gZxvpsZgW9EAgOA88QFbwxcFjeM55fqeP1s=;
 b=CmnLA1zJISML5QX3X2TBRd5LujvR5pXfOTFHlMM95UrM7O+IQlXAiSY6ib954BNNIg
 QI6p/bsDzrV+xeT4wcG0k3+Y4jYYahyFcl1k/YyeQxChhm0rOrFGY4VJYhUfwG+7wlU/
 QTLH7CRjXLSlm5P8xDvzxdeP3pDpPZJvJs3aQI2q953Xp/iZ9DFxkwHEAMYYlg839BOg
 k+E1us42K8S7YjV1gwPhaJ0y5LCTLp7T7rAEWBLrcOE3PzlCIGX/XI5EZIpSRpYRE0vF
 pPZBZIKnZB8iZbAtTgWDSvKbBIVwEbiXycnuNUyMUN1vv4LgCAtI7EIpynah52Rq+qjL
 rdmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UfYp8fg1gZxvpsZgW9EAgOA88QFbwxcFjeM55fqeP1s=;
 b=A4LLV7e8EM+AMCui/JwMkZ/CSxGlhfNQ1821z3Dnpmyolfn/sNohNsrR5mfWdMXn4z
 Yr2fIzB+zAMGJS7kVzlkqXalvmp4inEhTtzu3csJvHFEHVfUFla70KCZ5gBzHjXU9ziS
 ZjFV8WSOmBSgKxSmooSClTw/JL9Piq5cW0z5/k5YfxQQmqaZ3XNhyt+AL7UbfnQTb49d
 EzcgeZ3oWLYRGtaSrSMRVqYITSBT5z9+JgZHaKBpuZ+1GyHo3f5ut0XZC+R0fzBJu6dw
 oScaF/yrS6tQkTEVit6TmO1Vt4tspnRJIYSyFYsjjxlyJuwbTWHRWvFbxtBamO06nnxw
 CsHQ==
X-Gm-Message-State: APjAAAUNnH81S4d4CCyFBw5ydSM/pblQPk2h2yvHDUw6dgr8vv8dWY2m
 kRSC6Nxu7nmHJhHYo/7hbqBTVal8
X-Google-Smtp-Source: APXvYqwFyQqJMXkM+8CGRHSxKCZssSi/KjhfBlL58eQLY2qidOV5vNDjmHY+Rbvwlq04HwCG/qhL8Q==
X-Received: by 2002:a1c:a68e:: with SMTP id p136mr1704738wme.141.1571866106029; 
 Wed, 23 Oct 2019 14:28:26 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l8sm6493609wru.22.2019.10.23.14.28.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 14:28:25 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 3/4] Broadcom maintainers changes for 5.5
Date: Wed, 23 Oct 2019 14:28:12 -0700
Message-Id: <20191023212814.30622-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023212814.30622-1-f.fainelli@gmail.com>
References: <20191023212814.30622-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_142827_750785_F57B34A4 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, olof@lixom.net,
 Brian Norris <computersforpeace@gmail.com>, Simon Arlott <simon@octiron.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.5/maintainers

for you to fetch changes up to 0d660ffbca1a5f16f6db8f6ccbea5c207ec7e361:

  MAINTAINERS: Remove Gregory and Brian for ARCH_BRCMSTB (2019-10-23 12:02:05 -0700)

----------------------------------------------------------------
This pull request contains MAINTAINERS file updates for Broadcom SoCs
for the 5.5 kernel, please pull the following:

- Simon adds a .mailmap alias for his old email

- Stefan updates the existing BCM2835 with BCM2711 which is the chip
  name for the Raspberry Pi 4

- Florian removes Gregory and Brian from the MAINTAINERS file for
  BRCMSTB SoCs

----------------------------------------------------------------
Florian Fainelli (2):
      Merge tag 'tags/bcm2835-maintainers-next-2019-10-15' into maintainers/next
      MAINTAINERS: Remove Gregory and Brian for ARCH_BRCMSTB

Simon Arlott (1):
      mailmap: Add Simon Arlott (replacement for expired email address)

Stefan Wahren (1):
      MAINTAINERS: Add BCM2711 to BCM2835 ARCH

 .mailmap    | 1 +
 MAINTAINERS | 5 ++---
 2 files changed, 3 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
