Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FE0DAE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 05:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dpJmR4onAz/HzgV8KVDknlT0928R3tWUbelIo9AJBWE=; b=iPQT40RA4spYVQ
	HDrmx/xtc1CZBiUowKpsRQpPRlVisK4yjBf+SP/TLR4juEEPlTunrJRFay1V6B2Z1sxr37tSjIZ9w
	9r6pKT+AxxEYMxd8L7AeWA3adREeXoyw6PSn8IIxm3EakvqgvQOflTibzXieqAT9o3Ca4mm0ambrt
	IyX9wLgS3c+d7PGYj8Xeyuoo+7cDC20eliwMbJ148cwz0ruxmk8gwbf6X1reQ5OAzc9gpDUD0OLNg
	lfa1UNUmo5wF7QJyD2uVd1afU7o449BPnU2xnTnnsvj5fPUBtMJq26JSXi3W41D15MDlUjogoxnxG
	fYKV44VCBpgkboAmll5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKxOC-00065T-9s; Mon, 29 Apr 2019 03:55:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKxO3-00064e-V0
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 03:55:29 +0000
Received: by mail-pl1-x641.google.com with SMTP id f36so4426304plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 20:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bXk34VsYreRCPNz4i6pWPCyTwvp96N833kW5KsYPoLI=;
 b=QA3b1VEMbb59818pXyhhNImtFA59xQ9SCX5WROV+Ul/trmfLt4HCeV030EL6SVf+iL
 N4s8vtOptfY7n0NAMyGYKVz7OOd8lsdVcIlBDOPBEJ/X1a81gLUMzCzapAfpsJkywWNo
 7uLoYVxud71OMLp9bl+NqVQ57Yadzqm9zi1pg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bXk34VsYreRCPNz4i6pWPCyTwvp96N833kW5KsYPoLI=;
 b=YNmTqi74blFP0uquoUq0dXceHmqjyNK1S08uvx/GhnhGxybzS7oQpywge57bWdfIAF
 0xsxOCeu5/iI2QhOkog6xs46ogOf62KR3y3IZxYzyZ1Mznk0dYAf7vBMLhxr6glhNFyQ
 fNG6Cn6wW5ly6p98iqKldSHoUmS2LePqH9UUPE8Q8+G3NfW3Y9lbEUbeCRffHv7EC7sm
 eo0jW+epwdCjuK9HgxtreWEm1dF7VvHNAvVsN4aYA9iRRUZpKuJ8MhvGBBElTV8J4t5l
 18UhaXuCz7MI//Mm20T2k53rlNsIwY+3fWisM/xGo4KrjDk56QEx8Tk+OjEolpk6FeAG
 eTMw==
X-Gm-Message-State: APjAAAVtD/hCjhgwt1nqav/U2ngsifpsShSQw547tMRcIhENjY0kxFBV
 iq5NcObvMxAZwkAwXx17xq+D/A==
X-Google-Smtp-Source: APXvYqzjt4UrpemC6KYvWhVVLUW4VYRT494asAiDQflS3Vl76Sn5i0szake9Oj3w9XgJcvbp9UevSA==
X-Received: by 2002:a17:902:6f17:: with SMTP id
 w23mr39043760plk.29.1556510127299; 
 Sun, 28 Apr 2019 20:55:27 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id x128sm55433585pfx.103.2019.04.28.20.55.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 20:55:26 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH 0/2] pinctrl: mediatek: Fix 2 issues related to resume from
 wake sources.
Date: Mon, 29 Apr 2019 11:55:13 +0800
Message-Id: <20190429035515.73611-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_205528_023062_F465EDBC 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, swboyd@chromium.org,
 linux-gpio@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes 2 issues when resuming from a wake source, especially if these
wake sources are level-sensitive.

Tested on mt8183 with the series in https://patchwork.kernel.org/cover/10921121/,
but this should affect all mediatek platforms.

Nicolas Boichat (2):
  pinctrl: mediatek: Ignore interrupts that are wake only during resume
  pinctrl: mediatek: Update cur_mask in mask/mask ops

 drivers/pinctrl/mediatek/mtk-eint.c | 34 ++++++++++++++++-------------
 1 file changed, 19 insertions(+), 15 deletions(-)

-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
