Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF898CB99
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZsvHS+9WKzvpQnr+IXPNjPIajkxIoxieU3Ud4152rgc=; b=aQ1zp7bkQdt8zS
	viEUU6lIR4tcv/XWYxewsIiXJ4vhPil8DBFrpeCXFq4l6EE9DEM9VK1r6h0FihU1KJeWCS4vaTqr8
	GJpre3VKERKOCxIHGyte42Nz9OS4AkoXf0i/0FlG/kmorl9OKCDzj7GH6HB5oJKFpEbAAMx/A8w5i
	dztyL+KsUaTH0Afgc8DnMzeEX7R1MJtV5jHeKduBnspT28BRe/b/uuYyA+ZdjdB7N2zqRxSZcdvlE
	p/2ppwSuMsG5vmbfj/tcW6Xroah+3kTHkaynvmwZ8lGFw9iK8HsAYxH1OZ8nwtIEb0ElAT5MhBpw5
	hrUUQSsrckDaam+QFYzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmTY-0008E7-3T; Wed, 14 Aug 2019 06:09:36 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmSx-0008DJ-JH
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:01 +0000
Received: by mail-lf1-x142.google.com with SMTP id b17so78468048lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vSksoEM6AOP7H4nx5slyJOwVx6G+Lfd4yTDhKXFI4kw=;
 b=Of6jkP71r4l9hIWGhjXEn6k3ZQXEbpaIaO3H210UOh4VYtJCUbtF5QhSlMuKHIEWiF
 PPxk4tArZlRxJ4MWvamV/A6gUDEmTLgaMLTAeX+/oeNbUnGIeHxfJcr8CZg2y3Kjad0q
 t9VO5xOqidl9/XWlGmNmmLWvK2UO+1wDsI6BK4jRzJdgbDMFGaGkqmXNF8Ah0De7S8Hk
 tCujzldHtTcr4Se4O1SKV61TCZG7M71GzDoXhDMgIej8v5mywFfBi+LTACNiVPh+3bQh
 OEBwfx0fzGE6wsRVJlcTUy1/fBTbe/L53aY/QPzWikBip14hwF3Eugg4Ng7LW+kA6OCm
 Ebig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vSksoEM6AOP7H4nx5slyJOwVx6G+Lfd4yTDhKXFI4kw=;
 b=daaHmatkfASEFcNnJRLHh0kp5mblclMlb3TZOdQtgSovl4o7iBUO1IciBvq9qKkwpc
 HjlIQ2MHXnOfkRE4gZ0kW2SBsijytLgO3gf5h8BQl48THudANS+ki64CAIORuRSmgtFQ
 wCN5p0jETpvGAyB3YLKRDQMDMaE6rA2el1+Zsj5kKeQEhfDzRp1TLsY9ZME0GEqHtAmz
 fSv46bxjVA21RynBCM6CgCJPBywZ2JzDGdmizH7Tb1Ve5QDUUkRGVAq7o1Jp4RGm8kWt
 g0I8YcsD25A5FJ+ZrG5V1OTxDBBoch23qigxNhQ1Cgy9gFfTBDu9L2Mv7hyeUClh7eAa
 Sx5g==
X-Gm-Message-State: APjAAAXJgz4xZnRHFIkzy/ei+QdDGjcKi1fPeVqTm9PDku9mhxOk/Nrc
 QprXmkQ63rI0aQnH/mEv6Xo=
X-Google-Smtp-Source: APXvYqzDEhoiObAivBRlNhvLf+Jr5rb2KVMNEytoFIqeDJzvNkvCX+VS8HpTMDqFXbrqfHV7pZRBgg==
X-Received: by 2002:a19:c1cc:: with SMTP id r195mr24200422lff.95.1565762936954; 
 Tue, 13 Aug 2019 23:08:56 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.08.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:08:55 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 00/15] ASoC: sun4i-i2s: Updates to the driver
Date: Wed, 14 Aug 2019 08:08:39 +0200
Message-Id: <20190814060854.26345-1-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230859_663559_E8AFFAC3 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
has been some activity getting H6 SoC support with surround sound
working and these changes are also included.

The functionality included with the new patch set has been extended to
cover more sample resolutions, multi-lane data output for HDMI audio
and some bug fixes that have been discovered along the way. I have
changed some of the original reg fields into function calls as this made
it easier to setup for multi-channel audio especially across different
SoCs.

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

My test branch for this can be found at
https://github.com/codekipper/linux-sunxi/commits/upstream-i2s , I've been
using a Pine64 to test with; validating the new SoC block with HDMI audio
and ensuring that I've not broken the old block by making sure that the audio
codec still works. If we able to get the first three patches delivered then
that is enough for HDMI audio support on the newer SoCs(H3, A64 etc).

I still need to investigate the FIFO syncing issues which i've not had a
chance to change or address the concerns that broonie and wens brought up.
This change has been moved to the top of the patch stack. I would also like
to make the multi-channel audio and audio mapping more configurable via the
device tree. Currently what is implemented suites our current needs.

BR,
CK

---
v5 changes compared to v4 are:
- removed delivered patches.
- Added more details to commit messages.
- replaced some reg fields with function calls.
- Added DSP_A and DSP_B support for H3 and later SoCs.
- Added support for the Allwinner H6.

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


---
Jernej Skrabec (3):
  clk: sunxi-ng: h6: Allow I2S to change parent rate
  dt-bindings: ASoC: sun4i-i2s: Add H6 compatible
  ASoC: sun4i-i2s: Add support for H6 I2S

Marcus Cooper (12):
  ASoC: sun4i-i2s: Add regmap field to sign extend sample
  ASoC: sun4i-i2s: Add set_tdm_slot functionality
  ASoC: sun4i-i2s: Correct divider calculations
  ASoC: sun4i-i2s: Support more formats on newer SoCs
  ASoC: sun4i-i2s: Add functions for RX and TX channel offsets
  ASoC: sun4i-i2s: Add functions for RX and TX channel enables
  ASoC: sun4i-i2s: Add functions for RX and TX channel selects
  ASoC: sun4i-i2s: Add functions for channel mapping
  ASoC: sun4i-i2s: Add multi-lane functionality
  ASoC: sun4i-i2s: Add multichannel functionality
  ASoc: sun4i-i2s: Add 20, 24 and 32 bit support
  ASoC: sun4i-i2s: Adjust regmap settings

 .../sound/allwinner,sun4i-a10-i2s.yaml        |   2 +
 drivers/clk/sunxi-ng/ccu-sun50i-h6.c          |   8 +-
 sound/soc/sunxi/sun4i-i2s.c                   | 690 ++++++++++++++----
 3 files changed, 542 insertions(+), 158 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
