Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BECFB766F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7YZ+sOd57jBHzzrkM5vfMLjaaTTWl0WFHI4wUMGkyW0=; b=My4OtcAKfjUwpM
	oYyctwdp6FLU7cjWmtswl0n6FPp7FpfcUFl1ReFacPLxZyxTUKGVl8QleXwx72N7T4ibrR1SuvvDz
	UPBshZkEPX/DpO5lAJFz0iuJMZO9PK7zGSX0RYMYQpDle9rD8cf5cstUjPrIwNGRdFpSysWlmsrVX
	veh67orfxslZfzDH1qOXUBVtvYEzay63KXcnXG5FoY2BwkedocoSKUZasVr7P+EwOvPGdC05vW9ZZ
	snbPT07SDaTs9dieRXMhy/PUiuGZUN+Ncm5XTzsynNYRJCiAg8dV/mHLkUlGY75A+WWg0O9dy6mIb
	5bwupf1haPbmzYrSdlsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAssA-00067X-23; Thu, 19 Sep 2019 09:37:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsrY-0005qW-Q0
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:36:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id v17so3116048wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 02:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iI+tkS4PiIp8BCmRgY+UMG+pL+AXGxEv73nrxIiQz5s=;
 b=Eek7UVSEU0ern91R93g8cvieSXZ4myQs3jTIKt8uNgy3UmF7EY3N6zv6hRWuUA3Aqh
 pcaLBQay01dui0oEJH2ylcIuEgiM+gdX0FbSy/6S0n3Bam7ZVmYIHEO82hdL6XAU3EWQ
 moqgrtOEjl41mEsoLXecZ5SSNTBW3e8zElGSSrUEZ4+NACiWB1+1O0jdSRlbSzsflLde
 SuDMzvOn1adnsaPbBO7sjVdchYm2qlmusAeVbEaDIG6oLbotWY8kECrmD5SqvaO+d0q2
 0ajv2GyUCwPVD/iD1LyB9H0isyNQOUiwMYeTX+Wqh/BM6qFTr4kpHdNHLr6wTbyl5RNI
 xDkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iI+tkS4PiIp8BCmRgY+UMG+pL+AXGxEv73nrxIiQz5s=;
 b=Sy1kK+xwpQQPygfaeb9dUDguJEFfa7dq8DJustsy6R70Hf6Q23Rnw+8I5j6zoeNsYv
 qKLamsHDadHbnOXljheBti0y7lp8VGZkD5EqMeH5n0exQhUkucuz3BVTK+hPQs/jp5zX
 04t4cYVBxhTTms6vGK5RfOAqQ5JWcWXcnz1RQ57iw8s8/jKmM4is0lPQJEZJjrn5IL5c
 OwJvgfvJNEGkGRSIkb0U23lhohn5G+CWJcmtaVl+SsCnWlGORJmg8ERMhLOZGB0DorTr
 iBxNR6nYSs1ql7ijAmhmiViSA8ZD+mc1U5JAxJFVZHvqE/3OfAzQD2t/U616I5NzAeKZ
 h6Ww==
X-Gm-Message-State: APjAAAWcdIYpPfoWVv0Wn4yLUBvj915Jn86JCblh7l126bFu4yZ/L7xN
 Z2lAKvMNOlx2hzrQkSitSzaknw==
X-Google-Smtp-Source: APXvYqznJatZccIrCzOBZuDhpnxTn29NEmTv3f2C4wKt2Z2k+sDqXbS3pe8+3Gdr0QAGBoRbyrmgrA==
X-Received: by 2002:a05:600c:2153:: with SMTP id
 v19mr2053035wml.146.1568885789291; 
 Thu, 19 Sep 2019 02:36:29 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id q19sm16701186wra.89.2019.09.19.02.36.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 02:36:28 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 0/3] clk: meson: g12a: fixes for DVFS
Date: Thu, 19 Sep 2019 11:36:24 +0200
Message-Id: <20190919093627.21245-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_023632_852729_F77169E5 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the first serie of fixes for DVFS support on G12a:
- Patch 1 fixes a rebase issue where a CLK_SET_RATE_NO_REPARENT
  appeared on the wrong clock and a SET_RATE_PARENT went missing
- Patch 2 helps CCF use the right clock tree for the sub 1GHz clock range
- Patch 3 fixes an issue when we enter suspend with a non-SYS_PLL CPU clock,
  leading to a SYS_PLL never enabled again

Neil Armstrong (3):
  clk: meson: g12a: fix cpu clock rate setting
  clk: meson: g12a: set CLK_MUX_ROUND_CLOSEST on the cpu clock muxes
  clk: meson: clk-pll: always enable a critical PLL when setting the
    rate

 drivers/clk/meson/clk-pll.c |  2 +-
 drivers/clk/meson/g12a.c    | 13 +++++++++++--
 2 files changed, 12 insertions(+), 3 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
