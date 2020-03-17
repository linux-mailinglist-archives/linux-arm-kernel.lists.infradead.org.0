Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C15C18902A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 22:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R9kN/wv6ntXD64MFUI7l/BVsAaQEBbbnXFSKyyohmHY=; b=uRkeQpQjyxoYgF
	Svqg5HCUf5Wdqq1Ln/VwiBqcZUok1hkQT5zA8XwwECeTmpqIH4sbxjQPOYemAU+wJyNj1RGWayaGf
	sDawVmtqfig5XNLLAIOZHiRVVlPfk3lYFt5Inj9robhryyJ3Rz/VnFLBFeym5lxw3SptSkmkszIGE
	8KsGH37AccWSGUB1njFGbl/vGuqGahP/ix5jPIX6ko73fh/ACzrI3aKWu8WrJXRG77XR4qgEVrvY7
	maKh+FgElAt5wciUH6m25bydxWmjw+nz7wyRuemzeL3/kNJKH0H1FLGPi71HtYZ3tGSQgqejepePA
	XqzOmdTepTDI9HhDQqZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEJX9-0003Im-OW; Tue, 17 Mar 2020 21:13:55 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEJX1-0003IA-PS
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 21:13:49 +0000
Received: by mail-lj1-x243.google.com with SMTP id s13so24628535ljm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 14:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LARHXuaKUkUDUGOK/jHk/g5Im0xzFquLTlHFxXm0daM=;
 b=t7xU/aenX4xqSWnjdQPZN30yZ/IjtmHuiFKftszZqzwhQWL8TRlOqqDYY2SwOL5+I/
 qQQPKX0PFV/6+99DGDQ6pfyVXCNEvOPtcZ6yIMdxkn3rMT1VonrudSTSx0X8Ckv28ry5
 Fx4Uv/CcSo6k0iskVK3ZsZn33unZQzzGpHKtlOExLnDT3euQjXcSevzg9HxgqysxlxvR
 G17Ikijijdpn/COzDMczpwkds4lCXoH4gXCjOlSwOLEjROcZWM9tshGGpsh0qPbvos/a
 v2i0ZjqJaFpemIEzgTnnWIgKAucfWHQhccIuf8YRJBDNj4kJXvXT1sIkRPDr/hoFkney
 LoHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LARHXuaKUkUDUGOK/jHk/g5Im0xzFquLTlHFxXm0daM=;
 b=DHyI5Zln/8sJ0sAtKGNkWPTjgIKsSAT9nU5jqrwlLYivpf982X2ThX9lZ9kKrNYJ3V
 7MQuZMahujukxqRfGL8a1EZ7OH64cucj8mru4MZnuuHRahZ8+0jz9LJTCBXxJv6cEwdo
 kckWfYuZPt7tOVq2GTQnm3nvJcQwyUIlIkpRk0yuCgbduRKQMv3M7peZg3FcOdHx79FS
 GlbYXpfnwxvlpC9AnWQx6jAyR/B4Sjzqgxn88B4jEvdld50DmMClP2u5vWbdewj4GjPz
 RLv8HQWg3zjtCL9LoeAp99IEBeq5spR1xtmHJdbTmoKCTi4ZHm/2Iq+jqOee4dGNwxo4
 eXSw==
X-Gm-Message-State: ANhLgQ0NSx6Ia+GY1Dka7lbr4zx40OBcE1Vizf4fl7ngFwfZrWGwhT4F
 cZi7/K/RJc9KGAWxigMksHau2oEE8bE=
X-Google-Smtp-Source: ADFU+vuyM49tC3h/AoMvCI49PxDJ6dQ5ze4WGJnrp9JpPJcDjaJwpK77nRLAOABktoWj2YSKBvJ4dA==
X-Received: by 2002:a2e:818e:: with SMTP id e14mr435422ljg.104.1584479625500; 
 Tue, 17 Mar 2020 14:13:45 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-186-78.NA.cust.bahnhof.se.
 [158.174.186.78])
 by smtp.gmail.com with ESMTPSA id 23sm3341652lfa.28.2020.03.17.14.13.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 14:13:44 -0700 (PDT)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: 
Subject: [PATCH RESEND] clk: sunxi: Fix incorrect usage of round_down()
Date: Tue, 17 Mar 2020 22:13:32 +0100
Message-Id: <20200317211333.2597793-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_141347_852308_67E46654 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rikard.falkeborn[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?Emilio=20L=C3=B3pez?= <emilio@elopez.com.ar>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

round_down() can only round to powers of 2. If round_down() is asked
to round to something that is not a power of 2, incorrect results are
produced. The incorrect results can be both too large and too small.

Instead, use rounddown() which can round to any number.

Fixes: 6a721db180a2 ("clk: sunxi: Add A31 clocks support")
Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
Resend to include lists, appologies for missing that.

Patch has only been compile tested, I don't have the hardware.

 drivers/clk/sunxi/clk-sunxi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi/clk-sunxi.c b/drivers/clk/sunxi/clk-sunxi.c
index 27201fd26e44..e1aa1fbac48a 100644
--- a/drivers/clk/sunxi/clk-sunxi.c
+++ b/drivers/clk/sunxi/clk-sunxi.c
@@ -90,7 +90,7 @@ static void sun6i_a31_get_pll1_factors(struct factors_request *req)
 	 * Round down the frequency to the closest multiple of either
 	 * 6 or 16
 	 */
-	u32 round_freq_6 = round_down(freq_mhz, 6);
+	u32 round_freq_6 = rounddown(freq_mhz, 6);
 	u32 round_freq_16 = round_down(freq_mhz, 16);
 
 	if (round_freq_6 > round_freq_16)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
