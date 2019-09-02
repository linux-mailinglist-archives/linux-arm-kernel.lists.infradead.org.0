Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029C3A4EF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 07:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qe5BBjA932WoFLsossog93ay+aj66nmyy5dwilf6MPU=; b=GXPQFYJ8OwcnGx
	R3vbezISaa+vX3GztP6e08VWpKM0+J+oXtDUcW/Yz2lcYk6yzFUyzB+g/Ydkk6VjbFaqRI/pCIUUi
	CelNibDYQWgZCf0aQFU3wonX4yyU2SO1xmLjaPXKst3YeukNwvn6YQ+LBc8Qt+fQs/h8RHUcfhVCR
	7qsoKaK9OH/lNcc+ECCWso/Li2YbTl3/fuL0h5mDPDO4XzBz3TtYJ996AugG4HhW/fK5lubdXLJaT
	6ZXL1eQrhfnFb/D+tuPBKom8w/2IOKuo5ooK1ZcdrQVLPod4NWO8ykeV6tD9O7s/qw0j3AoOsAXy+
	g/6Jy9XNTXhnIrcVKQ7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4fE0-00018S-JE; Mon, 02 Sep 2019 05:50:00 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4fDm-00017b-DV; Mon, 02 Sep 2019 05:49:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id n190so6903632pgn.0;
 Sun, 01 Sep 2019 22:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MHdxKsFqjn9JIHizAHLjgVQgY6D3oHhQhJ6Mqn2/Qis=;
 b=gTxwNe230a+264cG9c+8Feyt1MMUrqIZtlpV2gNcUSLYb9cGMxCXEDMCXl+5tiMyd7
 eUa/FrxSb3adsoXpZ3KxcgExKHRp+/hvRpiAZAxjenPJkjOYsUoRdTRILyEkmug4+JE2
 j7fCV8+2/+6M8w8pXHBB4FH11+PT9DpxczyrJ9TErw6BrQhiT9rQ071e82EHNCDawVrP
 260yQtXj7stBkcZtNNv0f8vUSfhlWQ9+vGNJuCK6il9nb8jb6d7MeBvK6yDblE353vUj
 3Fcz2nQzuhtim8yXoBxjdue88BRauI+qfekOrrHgbejP1bkdfe9VzvnN8/TmFSoHFjQM
 dqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MHdxKsFqjn9JIHizAHLjgVQgY6D3oHhQhJ6Mqn2/Qis=;
 b=jXXtSAM0YjUqD5/SYUK+A8b8a0XI4wlWqltP7bEStuwmr4SFal0Jio/i9MZevHBUCH
 qWeVRG9c9tXr76YkLRWXG5omQRQj1NWTFIgtAbtGI4AYDb3PktVxaPqX+jwOFR6tc0Sm
 skLrKAGXLsapWce5gWd2VTIgZG7NV3Mv2+W6ZPQD8lwR8koz38UVun8rO18trpQIbzXk
 xSY9mnzhKzf3RpWfjzAyVeASsg11xdoB1gS3d8UGXz1o0lqjjCP6V/LufVLRQwY6fLfk
 4fBX9g1mABPVnDoOnJQl8chSt5YKq3nJIaqgN4d0apQXuRFr877Tt07H+EOUC0BfjJxz
 hfZQ==
X-Gm-Message-State: APjAAAUwtUXnud0sK2s7dLtna3xEcCy+mEsFasPMEffa3MhFxJONblzg
 LfA2GeFFujiHA86sp5Qv4Hk=
X-Google-Smtp-Source: APXvYqxMMBohwzZ+xCjsgq6JKN2mBCiIwV8Sg2mHwLWuAJb5J6RTlHaoYhCkAJ03i20k7n9FGw3M1w==
X-Received: by 2002:a62:1808:: with SMTP id 8mr32564790pfy.177.1567403383986; 
 Sun, 01 Sep 2019 22:49:43 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id 136sm16533912pfz.123.2019.09.01.22.49.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Sep 2019 22:49:43 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv4-next 0/3] Odroid c2 usb fixs rebase on linux-next
Date: Mon,  2 Sep 2019 05:49:32 +0000
Message-Id: <20190902054935.4899-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_224946_489132_93E9533F 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some time ago I had tired to enable usb bus 1 for Odroid C2/C1
but it's look like some more work is needed to u-boot and
usb_phy driver to initialize this port.

Below patches tries to address the issue regarding usb bus 2 (4 port)
while disable the usb bus 1 on this board.

Previous patch
[0] https://lkml.org/lkml/2019/1/29/325

Re send below series based re based on linux-next-20190830.
For review and testing.

[1] https://patchwork.kernel.org/cover/11113091/

Small changes from previous series.
Fix the commit message for patch 1

Best Regards
-Anand

Anand Moon (3):
  arm64: dts: meson: odroid-c2: p5v0 is the main 5V power input
  arm64: dts: meson: odroid-c2: Add missing linking regulator to usb bus
  arm64: dts: meson: odroid-c2: Disable usb_otg bus to avoid power
    failed warning

 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  | 20 +++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
