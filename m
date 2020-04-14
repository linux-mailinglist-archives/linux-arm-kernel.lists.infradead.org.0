Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B901A8BC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FEnmOG074wTG8eygn4DixaMS+HbO9puK+jBYDRS+t50=; b=ogTT2vZsX2MaiI
	VvQbK7aLFeadi1A7QF5iV26mm3HpmxiJuY/bO5PYKs7yC2+7HNyamPKC+r5m4TOvxBM+xQGjdO54z
	ckWNpxz3ZgAltcCqi03A5Au7Em4gL3XCRIX07xvtev0oHxiLkoDUNHfpAizUp8FtpCJRYu39X3Vzz
	3LuIrwePnA9qHApkId0ctNStXmRDYQWH0LmVRrOqxJ7MAhuyzLXNPhJDboCg7gP6AhSLHsDQFpbA6
	nOceJxmyzHDZbP4ivYBOzn0RdI4+8B0n1GvvWd433b3zBifLKcrRfN7306vQFLhWd7u/pFMAb6HqZ
	08Va0ul3yZlPNS+C6W4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jORje-0005Sb-Ah; Tue, 14 Apr 2020 20:00:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jORjQ-0005Po-UU; Tue, 14 Apr 2020 20:00:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id a201so15348166wme.1;
 Tue, 14 Apr 2020 13:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MbzRA+liOSzspvRs73OjMhTVcZqxUfZ8JGqRb1at2eo=;
 b=usV8Cm+MW1Z553yH7mGfuCKt4JU0Fhq3xzICPmxArO3E+urQeBT1EyrZWPC5ZBDm/g
 R/MvcnhU5fUc6mVz4zsAjdiEWv8wCeJnrOeThXvKyO2jYb9TC0ropp/VHimX8zhadP5N
 fHaHB/Q4ksh0GbpSQdY3kmeMGWzzifgG2v3V+5G89DAmT2jFRvEXNEBMq6ulr9H/SIwX
 FC7WLLlB/BmPFrTtCUtpzWSguI3s4UclTDRm2RwvYVjrxPGrr5Q1h/9pW66K6Cxz0KLC
 uW5Lw1+SIUHqcYEaf0pDNdVoVO4+jeqIz5K5tYn9K0jjO2HEywhQi7JwLag6Bu0m9hCw
 KAUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MbzRA+liOSzspvRs73OjMhTVcZqxUfZ8JGqRb1at2eo=;
 b=R9g4PwJvRmvvlnNrUqoX9F3s2jXaN76MYVyFggg9/rPV6VmzkqK6cU/QyxLSskQ+ZG
 1wL/DKDX4SLbKGVtK26iqE62Uw31qjpP1OuSkOakzbl0WSUGkYeqdoNT1pvAVtinGRLm
 kJkIPMHEGScsXXoedcQPdKP3Pic3x+gVp6SnNojlqlBTXCPuwbsM9Z8p9xZK6FpTXBmF
 3wZ3VhNEOgnm9GVzronmx7m9vHIk6HzZApAhj+P5KQsmiumnUTkOuLZfThg1MdcgWgn6
 ZYxr5xax+zVnjHZKKtUaW9TAW3RPwSOiEnnMmK6/7CSsQSYYojgfdDNtfz0VdjxyPO1a
 weQw==
X-Gm-Message-State: AGi0PuYjfuQMdCUW6Du9JxU9L0afLMzJKdx9izqRNwXqFdRLFFTHlk+C
 fKf4wHSGgVodoiK8lIKY5os=
X-Google-Smtp-Source: APiQypJeEMY/H6VtUp7hGwSmUSJjjoRxaD3Z9HIbNZuaQuy98pOr+YMQ2RGA7ApjNpibPM4CdxN5QQ==
X-Received: by 2002:a1c:dc0a:: with SMTP id t10mr1400936wmg.113.1586894427232; 
 Tue, 14 Apr 2020 13:00:27 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13717DF00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3717:df00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b4sm15540253wrv.42.2020.04.14.13.00.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 13:00:26 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: jbrunet@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH 0/4] clk: meson8b: updates for video clocks / resets
Date: Tue, 14 Apr 2020 22:00:13 +0200
Message-Id: <20200414200017.226136-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_130029_012602_1DF6CFA8 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the first batch of fixes and updates for the Meson8/8b/8m2
clock controller driver.

The first patch fixes the video clock hierarchy. Special thanks to
Neil for providing a lot of details about the video clock tree!

The second and third came up while testing video output on my EC-100
(Endless Mini). This board is special because u-boot does not enable
the video outputs like most other u-boot versions do. However, this
is very useful for development because it shows (the hard way ;))
where the existing code is buggy.

The last patch is a small improvement for the VPU clock so we
utilize the glitch-free mux (on SoCs which support it) and avoid
problems by changing the "live" clock tree at runtime (with the mali
clock this resulted in system hangs/freezes).

In my opinion all of these patches - including the fixes - can go to
"next" because the relevant clock trees are still read-only.


Martin Blumenstingl (4):
  clk: meson: meson8b: Fix the first parent of vid_pll_in_sel
  clk: meson: meson8b: Fix the polarity of the RESET_N lines
  clk: meson: meson8b: Fix the vclk_div{1,2,4,6,12}_en gate bits
  clk: meson: meson8b: Make the CCF use the glitch-free VPU mux

 drivers/clk/meson/meson8b.c | 107 +++++++++++++++++++++++++-----------
 1 file changed, 75 insertions(+), 32 deletions(-)

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
