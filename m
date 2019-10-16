Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4E9D88F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Vib+pQZ0Qu2Te42DKCH11VH51y2wt9xS2uXPwlI+G8=; b=IxnIctA/wq2Vq1
	MPLiuImaN29HQlD+nqfSS/fQH6ugyHNddZr5Y7GSv5OMdoBv1JAOODjgFL8UG8+ER1jnZOLlGVC8E
	+3cz3x/ZYt+B/J+512W2+lOF94WbBrGgc8tZFp87rAfkKBlNwXlFXGk8PUTYVkP2A0QEAEUXzOi2f
	LBSayM+vjq15b7la/01UaOkEP8AllWaa1/loCYh3JwtemBBCaskBNHSno/QCmYWtkpoRtvuc2shBR
	29qKRWSVfiedUXJLuFAsRegI35LqQ8wI0s1H/UEaHZI4Cy/YBR4q5B/fGDi5LY2RFk163dEzS7KCq
	m9/L8uqMNagE4rh5IgOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdPg-0008Ki-R6; Wed, 16 Oct 2019 07:08:04 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdPM-0008J9-SD
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:07:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id a22so22829621ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZhTgNjpKNQusZyPVoOQIc1FXI/m0QRLJulVFef76XX8=;
 b=Do+e/YaGZ/1kWMOZw1D1T1VnuBALKM+/iodChqull8q+46Lag2kJ3nIo7vEhP38y5z
 Yx/BSyBkRCVuh2n96BV0wQa7eiQhZ5cUKWivQV2hY6S4HKkKx/H/d/PUMMWgG3ijMTkd
 FYzGq1f2k8UALpZUFtbNZnLTwxCcUN7lHYIXoZNUxbO8KeQaEDMPbhl+j0zXHFiR6+rE
 7uH3DeWFbEeiHiVkSfzGwUCsOhj4OVpiJIsw+y6VTfTeBUUl9E3FK8ZI3X8d0ynXfjnA
 3ieluyI+90fOxZE3q2V+qrlN/M0gdWB2+7TCVXM8WXSwLy8VbfZTLXMEAVgGe7ZaYvii
 SU+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZhTgNjpKNQusZyPVoOQIc1FXI/m0QRLJulVFef76XX8=;
 b=pLN/4V1ptu4AjQWyRauNBgXjKMHwtpFZg+AGpF9XfpCAVx+mWkkxQpmyIVeDBrwE90
 XAAbplFNnr5fnmTk3ndGUS2TuBcbGVW2CuRxcK/iI45hxPuQJH8qMRbbOSVK8tXTipaM
 m5riZSKiRH3VyOSMXWMQyKlbneQ1Qn6GRacxZMVMpo5aiJmYaeV4ChRMJpHReqxsqKpL
 r27veG8Dg8VTPJNf/XlL6Ggkr1Bqf/2krKsBD82B6QvcdE48bVx9UUfTkXPIxGEJwc0W
 xNyba5jqhD9cnWiy1Wu+TArTJc0W6aY5NEewFacn8WL1GNhpVZ6VZzuxaWMXsBUt/wTm
 zYkw==
X-Gm-Message-State: APjAAAW+IA464NyWqCcJrMNconEX21MxYJN+xpc0JSbC4U/DDDeQnStB
 D9miiDiZJtlp721w58aBXz8=
X-Google-Smtp-Source: APXvYqwClC2cQSENX+/5tnSvwIw58bgtoluNV+WC1Z1QqCdducKDlTv9sD/34p2DOfggOz109aI5SQ==
X-Received: by 2002:a2e:957:: with SMTP id 84mr25058609ljj.23.1571209662571;
 Wed, 16 Oct 2019 00:07:42 -0700 (PDT)
Received: from localhost.localdomain (c213-102-65-51.bredband.comhem.se.
 [213.102.65.51])
 by smtp.gmail.com with ESMTPSA id j191sm1361493lfj.49.2019.10.16.00.07.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:07:41 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 0/7] ASoC: sun4i-i2s: Updates to the driver
Date: Wed, 16 Oct 2019 09:07:33 +0200
Message-Id: <20191016070740.121435-1-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_000744_911938_7479ABF1 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, Marcus Cooper <codekipper@gmail.com>,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, be17068@iperbole.bo.it,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcus Cooper <codekipper@gmail.com>

Hi All,
To be able to add support for the Allwinner H6 I've changed some of the
original reg fields into function calls as this made it easier to setup
for multi-channel audio especially across different SoCs. I've also
stripped out all the other patches unrelated to this which I will deliver
after support for the H6 has gone in.

These other patches are required for HDMI audio which is driving this
patchset and they can be found here
https://github.com/codekipper/linux-sunxi/commits/upstream-i2s
BR,
CK

---
v6 changes compared to v5 are:
- rebased onto the recent tdm delivery
- stripped out patches not required for the H6 delivery

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
Jernej Skrabec (2):
  dt-bindings: ASoC: sun4i-i2s: Add H6 compatible
  ASoC: sun4i-i2s: Add support for H6 I2S

Marcus Cooper (5):
  ASoC: sun4i-i2s: Move channel select offset
  ASoC: sun4i-i2s: Add functions for RX and TX channel offsets
  ASoC: sun4i-i2s: Add functions for RX and TX channel enables
  ASoC: sun4i-i2s: Add functions for RX and TX channel selects
  ASoC: sun4i-i2s: Add functions for RX and TX channel mapping

 .../sound/allwinner,sun4i-a10-i2s.yaml        |   2 +
 sound/soc/sunxi/sun4i-i2s.c                   | 337 ++++++++++++++++--
 2 files changed, 305 insertions(+), 34 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
