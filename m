Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B6F5B7AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/Ugxz7Ek/EuRqX4tla6d0KErz7xwt6Y8lnJh/Ld0uc=; b=kE4OqQ8S7utlPw
	IUct23EnJY+yHamPCjqaX3P1+LAMclLhlI5DiiAuafF7sSsD1NAtFIdf8zdBXJKfN5cWkU/pIb26y
	xr+n7IdXsNu13C19lk8JhKbTVYJLyJgT/ZBIlw8GJVtsrTG8iB9DMb4INkDsMHazELvUWhsfcya6A
	Bc6HURU0xrimZQ5qICASi5e/DSXkU0qB4FyXDZA0XXskpatvv9gRIS+Z3PbW56E25xK5wNzcAyW/b
	ALnbuRr1vE4JuW49SzT8Nk6NL3kbRt1cnzrxsaqnENpz+h1t8abzh6n0YkmcMLH2pVsUJ9KnYT6WS
	pxNYp7v2mgvHvx/+f10A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsOG-0003z8-VA; Mon, 01 Jul 2019 09:14:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsN8-0003Eo-7i
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:13:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id s3so15004057wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3PBhHywaKoqeEXor4qGKKEbTn6ANfeSg4ls1LrAVLLs=;
 b=HsAPm2yLJUTmVQ7VrhIS3c6633P/oVY1hyXWdRrTSY0DaJFH5bo3iwB4WDLzqoIjFb
 +ofZX4UV7FR6yYxUXONipQWUjI3LKOc/TveJvoc3qP8bVzL0lMb2xqRjT3Aj98RxHlB+
 GpNhcY2zmaGoJcTVbOliiJ6VXhUVfeSD7wO9C2/2prWgE9+Gdr833y2faMoNUxwUOhv4
 Ty6IF1dEIyHgu4lzo46tWct6hPdW3k3KdsfcG0Wy5bOHVMxjZgNe2KVsQXBtDH5beIQX
 zOrKkgH/T2TGdTUlj9ohM0pkt2w+MnhOGAblF+pefLHBIOfNrheg34r/1SMhDhjzwlLK
 yNKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3PBhHywaKoqeEXor4qGKKEbTn6ANfeSg4ls1LrAVLLs=;
 b=BujOXsChADheZYjbXmGAOeIkiOxQQf4MN2EihR0UC9rsQ9ArPldmFY0pHE8HQ38Fds
 spLeQ7fGk+XMwc/wFvpIVyD5W7Tq1sZwUvZtGWQ9EuuW/uwmflcIBLl+RIfNBxr3xLjS
 jDRHE3oA/7TLJ8vk2EvyAX0h3HzBwmKQZuRLXK4cvxY++/vVGuCrnKoqCoZdWPbERUUr
 peDHGZvoIyGPC3PLAkNx2lLCg14sntv07/999woAlvBddeofBF0zCerctfIuHUNplRNp
 nOjQaCtJAVQvk/3+XseV1TeQHEWU3Lr4DmuyXYh5rc61SvUzTYzZLCNTvDUPGIVNwJJa
 73XQ==
X-Gm-Message-State: APjAAAXPLNjanGfq1MIKs2VO7D4JC/rme1QfftQdneOoDNjr2GEobL41
 iBdmBirwV7RE6pF+OTJ61Cwb1g==
X-Google-Smtp-Source: APXvYqwUZnbG+qavm8RsJY6F9HtxkvEbIBbdChezRZVD4NLmW5HAZs5R0eARFRcCFjxg92naHMdEkQ==
X-Received: by 2002:a1c:c14b:: with SMTP id r72mr16534969wmf.166.1561972392885; 
 Mon, 01 Jul 2019 02:13:12 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id i16sm6305659wrm.37.2019.07.01.02.13.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 02:13:12 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v3 02/14] clk: core: introduce clk_hw_set_parent()
Date: Mon,  1 Jul 2019 11:12:46 +0200
Message-Id: <20190701091258.3870-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701091258.3870-1-narmstrong@baylibre.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_021314_274037_11A5D098 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce the clk_hw_set_parent() provider call to change parent of
a clock by using the clk_hw pointers.

This eases the clock reparenting from clock rate notifiers and
implementing DVFS with simpler code avoiding the boilerplates
functions as __clk_lookup(clk_hw_get_name()) then clk_set_parent().

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/clk.c            | 6 ++++++
 include/linux/clk-provider.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index aa51756fd4d6..06e1abe3391c 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -2490,6 +2490,12 @@ static int clk_core_set_parent_nolock(struct clk_core *core,
 	return ret;
 }
 
+int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *parent)
+{
+	return clk_core_set_parent_nolock(hw->core, parent->core);
+}
+EXPORT_SYMBOL_GPL(clk_hw_set_parent);
+
 /**
  * clk_set_parent - switch the parent of a mux clk
  * @clk: the mux clk whose input we are switching
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index bb6118f79784..8a453380f9a4 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -812,6 +812,7 @@ unsigned int clk_hw_get_num_parents(const struct clk_hw *hw);
 struct clk_hw *clk_hw_get_parent(const struct clk_hw *hw);
 struct clk_hw *clk_hw_get_parent_by_index(const struct clk_hw *hw,
 					  unsigned int index);
+int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *new_parent);
 unsigned int __clk_get_enable_count(struct clk *clk);
 unsigned long clk_hw_get_rate(const struct clk_hw *hw);
 unsigned long __clk_get_flags(struct clk *clk);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
