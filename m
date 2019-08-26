Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EF49D57A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 20:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QxP2bsut9MF7l7DT/drDzHLZHU2vecs51Y0kLfU5Ds=; b=Zgx6kPyBT53B8C
	o7iESHQquRbzJh0gWNGpqmxbanuBrzLeoIYtcUOVql7+1M1FE7Uh4dJrQS5Pi6Z6syodw42vvC8uT
	lXb5dJVCRbUyApM0VEkTOKYpyU7xuDRHiEoyMk734cToSxcgLDeyWHU3mJwyZgQW8LVh0uStZO3S/
	t+aLRKUCJ+l8MWLIZbdAxRdNOIYeeu1nFjOnElAiQvJm9yxmuGISeoNZ7CpV348BAHuMc4JqL4ivp
	XHgTIzcO9eBWalOPKYsrN2Qs/NGE+wA3/deIg8I4C1THGZpe2aHm+kn2RTVX/uqtCmJztvstmG2mI
	gSnF7RVfcjqiWjKLiUTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JQJ-0004gS-OS; Mon, 26 Aug 2019 18:09:00 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JP4-0003yp-3c
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 18:07:43 +0000
Received: by mail-lf1-x143.google.com with SMTP id o11so3660156lfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 11:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P/7Ac+4X6tEO+jpy2vLz06LyblKHxTeQKnAx8UL/5B8=;
 b=GwyfHcpHh6oCnOObXxprhf+5ZJySN4hhx4pk0Sfe4JaSQbx2PWs9c+R43Ast0qnzoE
 LcwntTn4M3aJIAuL3KYpk9Od3Dg+XmFowEempsIwPBGnd9R/8B30Vox8n2jrJZgNqdjg
 IeR3b/03SRv4FV10zzkl6pBWJbPoGrM/a5yPavLCDNoQKVXQbtep+q0HCzmTc7/G/M+f
 qwC0oLckmd8bIeU/IDJb0jjeN3i9HBL11iHIynCLwl+3mm0L0kpUsXZ6jugjiZAUgniU
 XC/HioTr/phLLSjNCYaqeaJjc+mdMfvR6IOZ/SM7Rqa4jIb5qpIbYLf4JRd972wjeeFZ
 BRmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P/7Ac+4X6tEO+jpy2vLz06LyblKHxTeQKnAx8UL/5B8=;
 b=LvtSHNuxwQo8BIWFfVMQDKShg0ieat05BD8L8DfV8P1vPL82h90ZDnHkkk+1OqjqjE
 DyqCm8zsT6b/2e9he65INl8oZvWr6KUv+6wf5hD5HIffVq4VjzytajfbSGKzEKWRdNH4
 7A8WkV684lFmyzjzuB/HI25rJ9y0vNTo5TV73n5XW6Z1wkPKcF/1Q1vmdSwKm+nVNJ2Z
 k17bgazkFqwuNxdy0iUb7QDcdzsbDOFe5gXWAdrK57BEkbqEhs5MnAYvYeMaj5qW7Y7T
 A1MS4vy/KlVOhklulzVcqZSZhE8eLJq2MLzTL47R7CMNCnY/2TQ2/X72FAh+JHxL1phO
 IoVQ==
X-Gm-Message-State: APjAAAXwgzZGqkGUolEXKR+oyYZtsKMgNdOuum0BGZ8p/s0D6DRl70sh
 UJ1QjYRl2UxPn5ha5OEIN2E=
X-Google-Smtp-Source: APXvYqzMGtg6mqhU7IhdflXEfGSyI6kfm6cUUGMijAWKYBGqX9ttFftleyS3u/IvkUS1sQRh3Ba4Qw==
X-Received: by 2002:ac2:44af:: with SMTP id c15mr12669898lfm.32.1566842860391; 
 Mon, 26 Aug 2019 11:07:40 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id u3sm2215564lfm.16.2019.08.26.11.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:07:39 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 3/3] ASoC: sun4i-i2s: Adjust LRCLK width
Date: Mon, 26 Aug 2019 20:07:34 +0200
Message-Id: <20190826180734.15801-4-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826180734.15801-1-codekipper@gmail.com>
References: <20190826180734.15801-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_110742_146845_C3C185ED 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

Some codecs such as i2s based HDMI audio and the Pine64 DAC require
a different amount of bit clocks per frame than what is calculated
by the sample width. Use the values obtained by the tdm slot bindings
to adjust the LRCLK width accordingly.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 056a299c03fb..0965a97c96e5 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -455,7 +455,10 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
 		break;
 
 	case SND_SOC_DAIFMT_I2S:
-		lrck_period = params_physical_width(params);
+		if (i2s->slot_width)
+			lrck_period = i2s->slot_width;
+		else
+			lrck_period = params_physical_width(params);
 		break;
 
 	default:
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
