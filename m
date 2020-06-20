Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35681202404
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 15:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KWkHtbdCWGiZGYbSDsBPVgGFHQ96jDN0sS+HcLNRVmA=; b=fcC
	F4gkg2Kx112HCUNLZ06463LPAK4sevrEUqBzC/D21ioKJRcSQEv3O2pcOwrlcqt1bKGXx0UDg4jMg
	TZ0EXmirx9Ckmr7iHC9NfFzxgU3nOzrCR+77aHVwNUvTUq4sAwis4WoOZ76N6wjJKZ47njQ3yQ7dQ
	l8MuLVNifNQBeeOUQFB7mspUd3US2EjaOyJt/oFy3vKgCVL4Tc0SRfHcGuBoZcVy+N6fJFM+azh7C
	20uJf+hCoXv8Ix1r1qh+EZsGxQvaRnNfaFYoXkVHkdpBzS3ZcbKFl5bgTuHempq8kTzcYx228SIFs
	HLECqF7Hu0BRGeS2s4dWABMQkdO91sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmdq2-0003hc-Ev; Sat, 20 Jun 2020 13:47:18 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmdpu-0003gh-Uo; Sat, 20 Jun 2020 13:47:12 +0000
Received: by mail-ed1-x543.google.com with SMTP id d15so9951073edm.10;
 Sat, 20 Jun 2020 06:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dMDIomqXv2PTVyT9EN/dRr3Itv33Vi1WIexGpatW+rc=;
 b=Xj3ImcILvx9GAiiJQWsnB45W4oGoeWEalrMVRSj2HHOHHu2oNF3+q2P+c85THB9vgy
 9nZyXZuqSYBle1jgVVyd4Hq84Y6qs1h75lAxpIHTj4dwPolqOdvC6WxGsBXKhrPFwAlu
 0RnPaSkQ4tLReSX8916iPoo55kKQ177hYLg+a3zXu+KfWr2j2QDAtZvMhJZMmTnbk11Y
 PRzCmcSV/E2UJS7tCYr9FFJjDrmCkj+XRVt+1SY9iZMz3jzwyBn4nzRVIh2foS4lANKV
 zYR5lEJB97HMrHy2NYxd98t3oZTGcnAhaV5MuIrogGMk0XdS+p7vriFC8sJU8QY4Y5e3
 BxAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dMDIomqXv2PTVyT9EN/dRr3Itv33Vi1WIexGpatW+rc=;
 b=GQM+JogCCgb4jHHMyi4DcI3tf0VJGnh9LfHc9nqcMrtmM3vqA4EMiF/AYjgD6x7hXS
 qEyxA/uTCiA07RsyTbOkOKkq9arQZ0ahKEnN4Po5rDd+3Qlx+0qBqJA5wBQXxv/fTB3T
 L1I7TA+BKzV9DdXqr6Nm5KDCeRFSrnax/UlL1hIYUEW+5Vte3DZMAQ0DaqBrYs8ItPqS
 om4ojGRcSQWYSJgyR2OpMRTdK12h7pFybzMsMfa+fE5iFVGp0sCMq5JfRR0z3uLhR1rY
 J+GqCtjKGY9Kt0jyzALEuQL+wVHqfFp9L9oVBV5veacBBFa6G6QDZtQf8ZnOC6+d9pTa
 QXoQ==
X-Gm-Message-State: AOAM530La39QYbMI2hF64nx2SV2PuycYkhDPsSMTqOIsHPz8YharSzTm
 rs2Q5nw2+Ly2w520lVxRPRQ=
X-Google-Smtp-Source: ABdhPJwNeZBiUhVUKw/ctC7vYh4DW+f6zsqCmplGe0ElvUnjdmpMb5JSw6rySy8qGxCaixXyeOr3JQ==
X-Received: by 2002:aa7:c598:: with SMTP id g24mr8380989edq.132.1592660827295; 
 Sat, 20 Jun 2020 06:47:07 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id s17sm7192368eju.80.2020.06.20.06.47.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 20 Jun 2020 06:47:06 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v1 0/2] rk3318 A95X Z2 board
Date: Sat, 20 Jun 2020 15:46:57 +0200
Message-Id: <20200620134659.4592-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_064710_996785_DADC1740 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

status: EXPERIMENTAL
Use on your own risk.

What works:
 uart2
 mmc
 emmc
 sd card
 usb2

What doesn't work:
 vop
 hdmi
 ethernet

Not tested:
 adc key
 av
 bt
 ir
 spdif
 wifi

No support in mainline:
 usb3
 front display

Problems:
 U-boot only starts on emmc, then loads kernel from sd card.
 Need pd_ignore_unused and clk_ignore_unused in command line
 to prevent a crash. Missing power domains?
 Hdmi hotplug detects DVI modes, but marks them all BAD.
 A fixed display mode in the command line also gives no penguins
 on the screen.
 Etc.

Johan Jonker (2):
  dt-bindings: arm: rockchip: add A95X Z2 description
  arm64: dts: rockchip: add rk3318 A95X Z2 board

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts    | 417 +++++++++++++++++++++
 3 files changed, 423 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts

--
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
