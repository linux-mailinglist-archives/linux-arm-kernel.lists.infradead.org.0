Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDDE3371C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+mU92/hEgLhevrpgG0XEyzzTT11NCaFXqJCtNBMctJw=; b=CJnelhxw0vqHyH
	n+bnzzGbOcR6hBhaoM1T1TtFyTRksDjK/kyNghsqA14Vt0oxoS9HkLhMzJqfl72HORw333IqQjxzf
	Uy7Xja30JY/8ghpH5inR9R1BWNSskL8WzGpaWTr6/MnguVl4HjA0UwnZ/rqcSeteZnfkR4GRufj3m
	zGHVgWIBBesx9m1ddLSx7JqVe1EiXhNFUuzRY8z28eNMoa3aQXXUqWGOOxtrqfDjskMQi6pv3QAed
	rtzUXhFai28Mxye89H9aWdxpQc2QzLz+Fyf7bRTQp7hvWAOldO0k78hPdpIro4W9W0U28Y725dP8s
	q4asaA77IiBE7Wuz54Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr3x-0001xz-LU; Mon, 03 Jun 2019 17:48:01 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr3e-0001mL-Pr
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:47:44 +0000
Received: by mail-lf1-x141.google.com with SMTP id b11so14297979lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f1Dtl9xXT8tEGwrUxBzQBfGddt3tp9MI+UPqkpN1WN0=;
 b=mqTz1839SvTGVA6JMBG6+XjE0xYwF2fSddZ7+seYCgdrXgukg0+NU1E4tXpmGF15Im
 UZJXC+yUDioaBsN6la1dNtjTzmPzvL4teQe+GSwWL7g0C0GQ8xS+7Y5L2BBcCfXp+86x
 wmMcAuVi4hbPPf8Pu4a/f2A02J0NXA367FrEGeAtR7D+OzvyqwIKbnX6pmohPchdxcab
 om1NVhjh5ihdIMLobhgkrDeIrhVafIUwILMNvwzW9QzXJf7xfvMfpFZqOPjCRzZdWpdS
 xCDuNsMcjH7LJDGLtHTp/dy+CwlmAJLQAjPt9FsfMow6RPEaUZ3hCIdNIW31jvDpVBA0
 Et6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f1Dtl9xXT8tEGwrUxBzQBfGddt3tp9MI+UPqkpN1WN0=;
 b=VCE4gd1dYmD9V09rTR1puIsfHuo2jn6niPCBMMw5toXE+GNGzQ9xz2pgZgiQWxZd2f
 4ir1MPQYSEZJY61359BngyBlPsahSXLii8GmgqqqIO9zrfTOKy8h6D2VxrTxP8dYYUcc
 Jp8aykNZGkLz1iclUFt5QIDD9Ery9YMIlIb1WTIh+bgl+XuuxerbNHLEWUatuU8ZcKaA
 L6NvybjLc/mDXFfMVW6uPDbwDS5TwmwEfGvUTjzbiMoW1sJ1F8gGzzOg2W7rIXawfKEI
 NRRgHxM8xBwFeMPAqYFCo3VoYYtUTd8rc9K+SdwnOY8Se8nIJdTdW2sueQlIwmEMWeJp
 fqrA==
X-Gm-Message-State: APjAAAXaNsXqQUCVHwNYJPl0qPyJ1Dd/sRnCAApixNgwtngYL8qsChr5
 gYVUff9QzRzpcndoJPoAUFE=
X-Google-Smtp-Source: APXvYqxCQNjDQHJYWJnJyGea/doMquTKfXFLsAZndtY60a6k8pR2NhL8Rsw2Q/prcSP3U/G6IrOLRg==
X-Received: by 2002:ac2:599b:: with SMTP id w27mr15110769lfn.184.1559584057528; 
 Mon, 03 Jun 2019 10:47:37 -0700 (PDT)
Received: from localhost.localdomain ([188.150.253.81])
 by smtp.gmail.com with ESMTPSA id n7sm2803532lfi.68.2019.06.03.10.47.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:47:36 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v4 0/9]ASoC: sun4i-i2s: Updates to the driver
Date: Mon,  3 Jun 2019 19:47:26 +0200
Message-Id: <20190603174735.21002-1-codekipper@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_104742_849475_FD8A9C29 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, Marcus Cooper <codekipper@gmail.com>,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, be17068@iperbole.bo.it,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcus Cooper <codekipper@gmail.com>

Hi All,

here is a patch series to add some improvements to the sun4i-i2s driver
found whilst getting slave clocking and hdmi audio working on the newer
SoCs. As the LibreELEC project is progressing extremely well then there
has been some activity getting surround sound working and this is included.

The functionality included with the new patch set has been extended to
cover more sample resolutions, multi-lane data output for HDMI audio
and some bug fixes that have been discovered along the way.

I can see more usage of the tdm property since I last attempted to push
these patches and the examples currently in mainline sort of the opposite
to what I'm trying to achieve. When we first started looking at the i2s
driver, the codecs that we were using allowed for the frame width to be
determined based on the sampling resolution but in most use cases it
seems that a fixed width is required(my highest priority should be to get
HDMI audio support in). We're using the tdm property to override the old
way to calculate the frame width. What I've seen in what has already been
mainlined is that the i2s driver has a frame width that is fixed to 32
bits and this can be overridden using the tdm property.

I still need to investigate the FIFO syncing issues which i've not had a 
chance to change or address the concerns that broonie and wens brought up.
This change has been moved to the top of the patch stack.

BR,
CK

---
v4 changes compared to v3 are:
- Moved patches around so that the more controversial of patches are
  at the top of the stack.
- Added more details to commit messages.
- Fixed 20bit audio PCM format to use 4 bytes.
- Reduced number of flags used to indicate a new SoC.

v3 changes compared to v2 are:
 - added back slave mode changes
 - added back the use of tdm properties
 - changes to regmap and caching
 - removed loopback functionality
 - fixes to the channel offset mask

v2 changes compared to v1 are:
 - removed slave mode changes which didn't set mclk and bclk div.
 - removed use of tdm and now use a dedicated property.
 - fix commit message to better explain reason for sign extending
 - add divider calculations for newer SoCs.
 - add support for multi-lane i2s data output.
 - add support for 20, 24 and 32 bit samples.
 - add loopback property so blocks can be tested without a codec.


Marcus Cooper (9):
  ASoC: sun4i-i2s: Fix sun8i tx channel offset mask
  ASoC: sun4i-i2s: Add offset to RX channel select
  ASoC: sun4i-i2s: Add regmap field to sign extend sample
  ASoC: sun4i-i2s: Reduce quirks for sun8i-h3
  ASoC: sun4i-i2s: Add set_tdm_slot functionality
  ASoC: sun4i-i2s: Add multi-lane functionality
  ASoC: sun4i-i2s: Add multichannel functionality
  ASoc: sun4i-i2s: Add 20, 24 and 32 bit support
  ASoC: sun4i-i2s: Adjust regmap settings

 sound/soc/sunxi/sun4i-i2s.c | 242 ++++++++++++++++++++++++------------
 1 file changed, 164 insertions(+), 78 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
