Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92799C189
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 06:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lsQf/Bgn60G6JWnhFzaCnmHTVxJlisr2FjAjlyeXAc8=; b=mTd
	U0u+d4Xzrji2RqgFwwoBxCDtjJt83XhCBop+WKXYYQOM153mgoyDA+FdXJIEcU1skPciEvMndsC7m
	u2d/0KUKwwAyC2jXNWLUd2dWEuCX0LqLzMkCrLwCZHMqLHpd8J6RpmqhEmEhW5Uh2fe5olZKOP8GW
	00II349ZpCP9nmL6QaqFGtrgKnHvj46EMmjTD9UOce0lWWPtIU/rw2BmJ7G5pe3VeGeoyz/Ws6HmK
	7VnuL6DY9q3z5ZyW4iykiJ0zxbgM1JZzn9oI2L9ZYHurJ+uhhQmlw68kTmU+MgHNrIeOENFtt7abs
	sCVXe+G5YNJrobMxtQ5Noyh32u0OPnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1jjk-0005g9-0e; Sun, 25 Aug 2019 04:02:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1jjT-0005er-Kn; Sun, 25 Aug 2019 04:02:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so12121884wrt.3;
 Sat, 24 Aug 2019 21:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nWmRqjrC+TU28eDb3UcDIF7I87vLorA/ZMl1z/jnRWg=;
 b=NvpEkAddyUAnizZzJTz3P6sWKPGBsBTDPTnWKQ484X6BBjODpQL5c00mdXFJmw6q8a
 eba+zk4zJx2Mi2VV3QrELx59CX9y89QXI5dn8NuhinT/TIaKrl/7piYUI3pKSfjVtIaG
 N02e/uQkZ2T1go8wZvX2oSbhs/BBUPnhxtkJtEcFt1mbA0qU+3SJ9tv6G0PWDQr0n6xp
 nAS7EuCZC/YUHpK8A0hLD679Jt9kvLOs6TxwFGkRf47NXbSmRGZZ4TwSkXnECkkPMS4Y
 JnnCmTLXdIv0VOIRpW0efZNpSSUOJMpDVnxtdt+naAC7vGYDkPuiaInwWEEDKXzvwIcs
 bUCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nWmRqjrC+TU28eDb3UcDIF7I87vLorA/ZMl1z/jnRWg=;
 b=a79+YkJ7vwUH9PGH3TsTTlBmYqRbKNdg1lUE3yBnLGUKSEni3syyBCfGYLgujH+L5O
 byqjBsOeaV4AEZcFLjDomq2t+CvTh1VSuiLn/YZyCS0axwbFj4TcmbITGO5HXT2Ezj36
 3a4AyaOJ9+G+r1repJme7tnXvfR5zV7ea0UznO+jWYnYYx4LE8jCPyj/5FRiED4F+brF
 S+sA8c0wQ/5dCPc/AM7TuDExAiqsJ7umWJ8ei7eO+mvv4uEoWBEs4861RhRvBJ3uIOGP
 SpU1j3pdrzaWongKrNbsCPbxf/rgcq5+vFnm1961nhH1LlgYV3TAjbxmSprtJ3ZKjvtC
 TyYA==
X-Gm-Message-State: APjAAAVaWyl3dmaS3qu57NgzN7SHuMDzOqN+84L1O7pXh7mcjFUb+0cH
 gZvno+t3bnBnTHbvc7YXOug=
X-Google-Smtp-Source: APXvYqyyGTaMrndxI5ko5zR9b9GuYjLRGxkOVAdm1bHns/2lhqPy7lRlR8gHlGgioXmGtodHRAs/2g==
X-Received: by 2002:a5d:4703:: with SMTP id y3mr14839913wrq.63.1566705739289; 
 Sat, 24 Aug 2019 21:02:19 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id a6sm6820985wmj.15.2019.08.24.21.02.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 24 Aug 2019 21:02:18 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] arm64: dts: meson: ir keymap updates
Date: Sun, 25 Aug 2019 08:01:21 +0400
Message-Id: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_210223_708711_3A0D512E 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds keymaps for several box/board vendor IR remote devices
to respective device-tree files. The keymaps were submitted in [0] and
have been queued for inclusion in Linux 5.4.

The Khadas remote change swaps the rc-geekbox keymap for rc-khadas. The
Geekbox branded remote was only sold for a brief period when VIM(1) was
a new device. The Khadas branded remote that replaced it exchanged the
Geekbox full-screen key for an Android mouse button using a different IR
keycode. The rc-khadas keymap supports the mouse button keycode and maps
it to KEY_MUTE.

[0] https://patchwork.kernel.org/project/linux-media/list/?series=160309

Christian Hewitt (7):
  arm64: dts: meson-g12b-odroid-n2: add rc-odroid keymap
  arm64: dts: meson-g12a-x96-max: add rc-x96max keymap
  arm64: dts: meson-gxbb-wetek-hub: add rc-wetek-hub keymap
  arm64: dts: meson-gxbb-wetek-play2: add rc-wetek-play2 keymap
  arm64: dts: meson-gxl-s905x-khadas-vim: use rc-khadas keymap
  arm64: dts: meson-gxl-s905w-tx3-mini: add rc-tx3mini keymap
  arm64: dts: meson-gxm-khadas-vim2: use rc-khadas keymap

 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts         | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts       | 1 +
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts       | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts     | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxl-s905w-tx3-mini.dts   | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts | 2 +-
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts      | 2 +-
 7 files changed, 16 insertions(+), 2 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
