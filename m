Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036B83371B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtbGtUOkba16O1tOyQTORT9E8UQF3u0yyKNIXZW5pD8=; b=UhNxyWMTyK20bs
	n+iN37DrV9q5zcKmfRsqK/1dZdnAZU9jQE4bPWfxnW3JTq3n3SvdYFHC2PBP+MEHLVtDJJhJYrlmR
	MBzOl+Fq/RCFrKSTh2bOqS9Aok7gUrM4YEg0qiJpMZcO6gxkjqEQT9SXbvGdyyyDOhpOV3aTYc895
	CDFJKzu/VYmz3wAW0wr5jTiAd/u9eRaXp8zLp2GaJFNaR4MvWnlleNVs9UhY8SDlGvlzYPVBfFVZL
	ypaLPWb9SljjD7fzM9iUz71s2TsqnChPnbkSJVNZ5d2cQbOzxxNHxu0pEy1BXIsm05sYw8FpyR0Qb
	qiBV15CYgwEi0RQ7BAnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr3n-0001p7-GW; Mon, 03 Jun 2019 17:47:51 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr3e-0001mY-QD
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:47:44 +0000
Received: by mail-lf1-x143.google.com with SMTP id b11so14298042lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d+gHoaqCUhQT6e1Ym0xN6NiXtzxs58xfZkboy1ldAY4=;
 b=h5dZgeoIw79Kv/1VWSq4u0iUmi8FcFdS5XaGrfJHimMztfcNh7dQVIiKTiQVrkFIDN
 tt/CEWjxMPtIutWCG+Qg+dtaAfT8RTFKodnxjVUm+CTtev6nBWMKe1yR60NbdJEjuLOi
 C+DB7NPOh7+CSv6DMZJCEVsOwd/i3pQcTjpXDt/Wn5ifvBjUm2lbprVhPFw0q4fsoiLr
 TcIXPDhB2iLwZP0At3Jw9MdR5dSfxgLEYObLerFRfewHaFrjRn6FKPzO7wIez3xx1ttZ
 7iqSRQDjsL6B1qv5AlpMCLWBsJs2IKTdBCpAA7J3Uno8uUTSJ1vnaWTAZheT04VtAZED
 0P2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d+gHoaqCUhQT6e1Ym0xN6NiXtzxs58xfZkboy1ldAY4=;
 b=QaxolqCW0EKQ65KISvye14dOjbbhIUa8utkHg7MtxN7Lkx9qvIY/wg/QNrotrR5s+Z
 B0JV2EY5RNYbZ4jngBZWevet/J+MxlM9oWl2agcUfglg4UifXq0fsKdHnEQvmIJS4/8K
 b+HzyGVOtAmdZnK6uSM+M3tHJqpBFdcXo82Jzdh/UcJ2VE26MswbRtancEMoyljKkhPw
 cNjO4NPwGsQg3S8eeIM8DQwR1NZzXm6bBxeeEKz8G71jlx0fGj8RFR0o5k6Pb/YDIfgF
 6Uu62B1A1/ZsDeyOVIfhTPGMfOkoTrmOfAhOjeyF9AngLyWxsUbIa4jNSH5gRs8P+jBm
 h9sA==
X-Gm-Message-State: APjAAAWSTltNSNnowAtVN5riw3A72qPmZHFtVe3DTDnC5Gam3vfBC+fM
 5o2s7cHgE4d4bFY+5ktWyms=
X-Google-Smtp-Source: APXvYqwSvyGLQCwtw23kykXSMCtNcYtakfcNcaj9YVYmjqtrKle0F/xUggVT07pnNTUG4U0Miv6MBA==
X-Received: by 2002:ac2:5938:: with SMTP id v24mr4108075lfi.161.1559584059490; 
 Mon, 03 Jun 2019 10:47:39 -0700 (PDT)
Received: from localhost.localdomain ([188.150.253.81])
 by smtp.gmail.com with ESMTPSA id n7sm2803532lfi.68.2019.06.03.10.47.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:47:38 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v4 2/9] ASoC: sun4i-i2s: Add offset to RX channel select
Date: Mon,  3 Jun 2019 19:47:28 +0200
Message-Id: <20190603174735.21002-3-codekipper@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603174735.21002-1-codekipper@gmail.com>
References: <20190603174735.21002-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_104742_853518_6F1A04B2 
X-CRM114-Status: GOOD (  11.93  )
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

Whilst testing the capture functionality of the i2s on the newer
SoCs it was noticed that the recording was somewhat distorted.
This was due to the offset not being set correctly on the receiver
side.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 90bd3963d8ae..fd7c37596f21 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -456,6 +456,10 @@ static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 		regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
 				   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
 				   SUN8I_I2S_TX_CHAN_OFFSET(offset));
+
+		regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
+				   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
+				   SUN8I_I2S_TX_CHAN_OFFSET(offset));
 	}
 
 	regmap_field_write(i2s->field_fmt_mode, val);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
