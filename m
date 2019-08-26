Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE08F9D574
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 20:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d3wFHCl7ndbJq64myuJHXFRZc/v7dBVo2ZFEXXmVKf8=; b=CIPGXrJoB1EUN6
	ErHgPXszzv1twmK1FK0P8JyOIR3z4zy+qDzM9RdKNXqeywk6VOCDfn7n+uP4JT6VY1daPtPb8hV7C
	pQbctc34vLa7avNHcmjwDDx03aduOiZ94UfmaiLOGCOsh2VS63fMnqkSIEcvM3xWc2v3auKChJUNE
	cQj7JLVaqHDS+xWyl8GF0zVm9lopudXm/iSP9ElFTKapqzeiyczeael4T0IsviKp/PhQCfRcOiGPz
	/pQXJAQ9UITvAnXf/j1Vos7zqLdOX8n1R9UpuYWpyc5GPKgQTmdI/oZLULf7btYeCrTeBVWB/F5Av
	JkxWLEqpAqNeOMx37SAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JPG-0003zn-Qm; Mon, 26 Aug 2019 18:07:54 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JP2-0003y4-3w
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 18:07:41 +0000
Received: by mail-lf1-x144.google.com with SMTP id r5so7494085lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 11:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0ZhbVTTAhELTpK9khEQbzX5xO6vbVG1SPvOTB99Q+OI=;
 b=jcuZpF/kXVwnEwcdZZ+XnmGDbebmISf1OOdd8xcPrfviFFqjWIK1rsoOScOKksNso9
 bCXRagueJdLy0jSCwO0nqUk8F7/peUhgAaYhfvpOSYer0aXKD6poVhN5EaCWQXLVZNAB
 0L9XZsl31CtoRjoRvw257ge9D2O1b6Tslqp52qCLFSMXLKVK1a4BUyJiMRkZMh6HG/3X
 rinB0UOC6BJtIFqfZgUwgmR0nYGmFA6dbIn2f91U4DIde+H3vl/FP84JxWJbhY6lHJAx
 PA6y6uEXfM0XVjT3CUxLuTNQSxEul3GCMMItjBvyw15MpABL2keyRdErEmj9TsLtqvn5
 Xa1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0ZhbVTTAhELTpK9khEQbzX5xO6vbVG1SPvOTB99Q+OI=;
 b=f/RRO6qDK6HxJBay0hHq7zIkO56qLeXkTnuwdkygFhOL+ncoRo5kGSwRZsmB7Ll/WH
 xaayReq5r+c3KPshDnn4qgNTQN/IEgb9VNQ2uRjYy+hltRlr9EbIbOd5jPhQnnXwEJeQ
 sdz98UABfbPa+IahzCjrzFMwSE/+98a5uc868duZIyJk65/J+lNwNZ/PycAyUhePmQKf
 QRf6dOLC89Oz5D58j1KQv3Lwi2uXha0i6mMf0a4jFhWGDmqTqQMBgfsyUAwtIAbWCJvw
 17W1GBkkRYNW4by1KVcYbPhXaZFV46K7se8E1wavxUS3icSj4alnZtihFe3rkvNS7VJL
 /VTQ==
X-Gm-Message-State: APjAAAUlm1ygzrpS77PRPtslQYvyLN0i75DQTvgyxWbZPwFU+yrOdx4w
 l+ZDKwDabSl2AcO65j8h6CU=
X-Google-Smtp-Source: APXvYqwlKQ3vF5aBWkClkQ0SKJJhrLTfbv5xkLecYvruosChOjV23gpdsyMuOCHHHcpFh/3pKBCfEw==
X-Received: by 2002:a19:f007:: with SMTP id p7mr11474484lfc.24.1566842857231; 
 Mon, 26 Aug 2019 11:07:37 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id u3sm2215564lfm.16.2019.08.26.11.07.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:07:36 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 0/3] ASoC: sun4i-i2s: Updates to the driver
Date: Mon, 26 Aug 2019 20:07:31 +0200
Message-Id: <20190826180734.15801-1-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_110740_166666_9C7DDC28 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

here is a patch series to add some improvements to the sun4i-i2s driver
which is enough to get HDMI audio working on the A83T, A64, H3 and
H5 platforms.

I've dropped a lot of the functionality that was presented earlier in favour
of getting initial HDMI audio delivered. H6 and multi-channel HDMI will
follow shortly.

My test branch for this can be found at
https://github.com/codekipper/linux-sunxi/commits/upstream-i2s , I've been
using a Pine64 to test with; validating the new SoC block with HDMI audio
and ensuring that I've not broken the old block by making sure that the audio
codec still works.

BR,
CK

---
v6 changes compared to v5 are:
- removed patches for multi-channel and H6 HDMI audio.
- removed patch for 20, 24 and 32 bit (will push support for just 20 and 24bit)
- ditched tdm patches as support has already been added.
- added fix for A83T reg map.

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

Marcus Cooper (3):
  ASoC: sun4i-i2s: incorrect regmap for A83T
  ASoC: sun4i-i2s: Add regmap field to sign extend sample
  ASoC: sun4i-i2s: Adjust LRCLK width

 sound/soc/sunxi/sun4i-i2s.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
