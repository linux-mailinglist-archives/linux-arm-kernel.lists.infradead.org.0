Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2DB11FB51
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 22:02:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ysn3JNrEOdtw/xF1xYrkBbMPZmsmJ5bMMs2PhvdlGEg=; b=INHOJJJBFukFE2
	wYre7xCFwkNmrZdkPqwrXj35f4LEFXvo5FsHcjosE/E5L3DTXorsYqf7dfPouEE4j7oErSbY8Z293
	RpTrr9yu18OQQiAVrxKS3iwOpYSa6fNoDVwItl29qkD00OIuAW/UedXh1ty0HGNlW0AR+jj+nCYKA
	rMlkJRA9WQbzHbtDj7KK/JGW9HDnxfDfxxfSBKVaXhJcwhucZQmaYnAFbcMl8qwQPSwjQrFOitazo
	CaAE0j3HH4WrmJCzJWB5ana9ar60rX575/oA9GM59IzTOPcx1C7wBTIJO6Z+YNxB0H1fkrwBg5mri
	XyIDItuNvGeySbSJJsFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igb22-0007ou-UQ; Sun, 15 Dec 2019 21:02:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igb1q-0007nR-Hw; Sun, 15 Dec 2019 21:02:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id b19so4529418wmj.4;
 Sun, 15 Dec 2019 13:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ev5ncFOZ6pn1RKGaLQHfd+wzEPLZWc48NhzIDiNBMKc=;
 b=mbTNiwGcGxLE8/AdKDrOeX57Uprrn9eqyB81r57F+OM3HGhuGvrgA36mxHrmlPRJba
 /X14+icOF2sMXk5Mqv6TthEzJrFbUyTbSvMh8DuRy7YeVKuBYTM67UNLMaODykgVD+CU
 92nj1crd5sSqmkJ48fbBs0Yt+R0zSa6cV4SSEbM/07aqpwAkn4hi11KoFOuV2knaFyOK
 A2QEgkmo6As7ho30gQBmWD3kTyRqXf9B3O9y+KyG3RffpFc1T0DMLCJ4bSQqNAMGyQhv
 g0egWnkhevjUEaPsbvLV84h5+D5HZboktSorhwu1x0BVMV1/LliPL0ozW4jX96DuOCF0
 oljg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ev5ncFOZ6pn1RKGaLQHfd+wzEPLZWc48NhzIDiNBMKc=;
 b=YvxtQkOyc0Dy8gVagAMu9EivjFV611XYGloEIKsh8BDO7mv+5JxIUpy22QHPKCKWjq
 9w6ngHKsY7JGAiL8MUeQssBk79CWSM0dHVCM3TLSr0HqMytbxS0x3i4efKX8iwuDy2Gr
 FgX7PxaJVOhOUJUuw3NcHo1jykkxR3Ma+Y8AYaiUVB96oJ+OaD3GLlJjWnMDVHhCD5hd
 RbQla7LRlYImlmu+Q0ulSWMn8niGxS8R3SecE68poA0wUK1BTcTDv/0kvlfXMyz0NCR/
 JT2ZuI5jrL9cCOLTSd9UQvac5BUWiaolZinCjD+wff948v3a7VRv9sTfkZ/npMlLZVS1
 WlGg==
X-Gm-Message-State: APjAAAUIXnpT7bLwTkcpRjCBbsbNrd9eO0e3AykUQuT5VCkrTS21MOUf
 BH6tAFNNLsF7EKkA3IKZ0JPd2kne
X-Google-Smtp-Source: APXvYqy4zElZG4fJVBRHzoUncu70+64m8M5QJ/eiHjlk/oa09t06tGUW1wwLeUN7ztldupMxZzQZgw==
X-Received: by 2002:a7b:c5d8:: with SMTP id n24mr25825846wmk.50.1576443732500; 
 Sun, 15 Dec 2019 13:02:12 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1370FCC00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:370f:cc00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f1sm19565645wrp.93.2019.12.15.13.02.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 13:02:11 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, jbrunet@baylibre.com,
 narmstrong@baylibre.com
Subject: [PATCH 0/1] clk: Meson8/8b/8m2: fix the mali clock flags
Date: Sun, 15 Dec 2019 22:01:52 +0100
Message-Id: <20191215210153.1449067-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_130214_616363_722F89C1 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While playing with devfreq support for the lima driver I experienced
sporadic (random) system lockups. It turned out that this was in
certain cases when changing the mali clock.

The Amlogic vendor GPU platform driver (which is responsible for
changing the clock frequency) uses the following pattern when updating
the mali clock rate:
- at initialization: initialize the two mali_0 and mali_1 clock trees
  with a default setting and enable both clocks
- when changing the clock frequency:
-- set HHI_MALI_CLK_CNTL[31] to temporarily use the mali_1 clock output
-- update the mali_0 clock tree (set the mux, divider, etc.)
-- clear HHI_MALI_CLK_CNTL[31] to temporarily use the mali_0 clock
   output again

With the common clock framework we can even do better:
by setting CLK_SET_RATE_PARENT for the mali_0 and mali_1 output gates
we can force the common clock framework to update the "inactive" clock
and then switch to it's output.

I only tested this patch for a limited time only (approx. 2 hours).
So far I couldn't reproduce the sporadic system lockups with it.
However, broader testing would be great so I would like this to be
applied for -next.


Martin Blumenstingl (1):
  clk: meson: meson8b: make the CCF use the glitch-free "mali" mux

 drivers/clk/meson/meson8b.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
