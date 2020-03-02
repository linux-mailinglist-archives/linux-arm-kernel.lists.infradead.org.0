Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE94175AEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 13:55:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxhQaLdldACxogdjcT3FzFs/5DntyXNbj8EKRRYB2tA=; b=Um3HaoOnIkUCnQ
	wi3APeuf/tHSBR44KBJ1GXawx1iI/Y78DaljSd+Bht+4J2iZ8RyPcpL4wJV+I1HQxXGQMjo5++V2k
	9Nk5nibnPBQqs48Sj9qlBf2HJN8Ee4BBC+nrdS8vdGphWxGE7x8R9yxwNxLaxi9HlRVmX7OjB2wsv
	Dq0hwNGgUajZk521Rcgv/KvnIJcovtnMzBnQTcBGJ1dfhjbBcAS1JUbthbKUyCeIveSAGlxoF3dkj
	gtNMAnruAClzyXsgxK2gDJzRN2SgDtaSxtlCHvdPyi0FjaZiyFzmJjbg99ArmTzLfKDw9FsfPfXqT
	Kdp58zGgemGvnEj05L8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8kb9-00017y-DW; Mon, 02 Mar 2020 12:55:03 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8kai-0000qy-Di; Mon, 02 Mar 2020 12:54:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id i19so5547106pfa.2;
 Mon, 02 Mar 2020 04:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HEh7CqSCXgWfailCBb8Rs+qB5N+bl/4veud+2lfhJ3c=;
 b=kAB4d29/ko/klMw//ZuCCDjxlWJmKBj6aYjBLaaWpXUGa2HrPYNP995nR9WGuqSzEH
 fluQ71pG7wsJkuGZvSsfu9JFGjGYfuE2cE151OiwrNC8PZl9x7XioTn+VbgU4RWQ6Ufw
 GgU3QbFS+76CeEIMQMe0lV0COD1vE8CdUdiRrVXjRz3FrXNwnmW8+QUQN8L4Lafo/5fJ
 BWFDW81BAltxPyU7ZV8VjT9u6VvUnvAjS5i2hgMj2ydh4iKsv9v1Vlqq5jEN1vpvIg0Y
 QdIRXqAXYtyUBZ0QuRW7az7jsrlAdBclNrfA1UDgOlJbuZRMexRIy58eiuYpgu1KVA7m
 xv/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HEh7CqSCXgWfailCBb8Rs+qB5N+bl/4veud+2lfhJ3c=;
 b=WAeg7aMn38jCr9fi9eMBcvwpsfaZnHS67P4kaehhcpT3bGMQOuQiEpAlGfGQVz4KOx
 f1dgl3Jy5D3Irb+w3IKtKjxYTC+riXQtfDuEZE1KmVRtSdfOuMrxyQhDjbRnFg+ij5js
 j3y9YpKUppvAXEmNRViPaWfFrR7dROt17381X6UTSvwLo44G6B1wT8MuyvcZyBa8ZwzQ
 wj/5NmWAAzW07spTV8rVpin77az4vYG+q+Zq3khLPLYX40xF5vuKmWPPaF9UvCWXpZjc
 yfCipG7NbRG/BncbGF7rVTNKwPpL0Mg2ZM2MlnlkbHfD12xzkfvfb39hRKAyWMI0OB0E
 lMbA==
X-Gm-Message-State: APjAAAVj+WnIJNlJftKFBy0sJ9n5fLzfKTOJeZ3TtAFAKX2DSye1lWx+
 mBUyF+U/oTxWv+Zz04SohxU=
X-Google-Smtp-Source: APXvYqzvXVSEfr6bpf3GIPRYKUv7jKl6r8NlwZCenHEBeS4uW+3WkXAE27vkYrNhhLNvUn6R77Ka4w==
X-Received: by 2002:aa7:8299:: with SMTP id s25mr17299604pfm.261.1583153675622; 
 Mon, 02 Mar 2020 04:54:35 -0800 (PST)
Received: from localhost.localdomain ([103.51.74.208])
 by smtp.gmail.com with ESMTPSA id p2sm2138238pfb.41.2020.03.02.04.54.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 04:54:35 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCHv2 2/2] clk: meson: g12a: set cpub_clk flags to CLK_IS_CRITICAL
Date: Mon,  2 Mar 2020 12:53:09 +0000
Message-Id: <20200302125310.742-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200302125310.742-1-linux.amoon@gmail.com>
References: <20200302125310.742-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_045436_479610_AC956FC7 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Odroid n2, cpub_clk is not geting enable, which lead the stalling
at booting of the device, updating flags to CLK_IS_CRITICAL which help
enable all the parent for cpub_clk.

Fixes: ffae8475b90c (clk: meson: g12a: add notifiers to handle cpu clock change);
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Suggested-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Previous changes
	fix the commit $subject and $message as previously I was
        wrong on the my findings.
        Added the Fixed tags to the commit.

Following Neil's suggestion, I have prepared this patch.
https://patchwork.kernel.org/patch/11177441/#22964889
---
 drivers/clk/meson/g12a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index d2760a021301..7237d08b4112 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -681,7 +681,7 @@ static struct clk_regmap g12b_cpub_clk = {
 			&g12a_sys_pll.hw
 		},
 		.num_parents = 2,
-		.flags = CLK_SET_RATE_PARENT,
+		.flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
 	},
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
