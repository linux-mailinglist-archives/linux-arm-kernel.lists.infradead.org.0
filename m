Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E68858DE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 00:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cLY+OBDRtnmB/g9D+SMUb99BTWgW1GA423CIpoExalM=; b=IZQtLNi63fAu8b
	h1WIhbOMqiTcQzAZAPeyCQRKAn0gMqcDjgy2H/LqXSA47XR9s8TzeehHWE8nDMCkmc/SLZXOJXsZR
	uQ9NNDTRpMowNlBWMyfTKm3uLF/RF6jWcjvS1A/EB+/F6u3lqn3JSgULXlJSmIs7eIo0tqCXFHs03
	8+NiUwMsYolgh7W9N/gFSKW1V9sQzIQMHHhvNZuYMsQC9kIAelrtzkql25atbaT6X7b9f5Y7z5IS4
	JgjLZR++dJVLeoeYphtDhrI9B/vrplnKFERwxkClP7144/gzmOUNIYfwo0LutLOUVwonENw1qU7EQ
	aA7Qme7Dvn9cfvbE5D5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgcn1-0003IG-2G; Thu, 27 Jun 2019 22:22:47 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgcmm-0003GQ-Mj
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 22:22:34 +0000
Received: by mail-pg1-x549.google.com with SMTP id b10so2021670pgb.22
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 15:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=oX4nX7Je7bFeJ+xtEsKgjynmAqj73RNM30dvkWhgvsQ=;
 b=u6SlpeiCjQGV5rE4yogrmSSkVZ43A8E5N6bKYKjy5TX4t8pbsrRRF9GSDcsxe+5XzD
 waGb2JTgqg+tTulN5BPPf+VqpjEptpmBs6DdyVgw7RfwK8PF8bmfqu8pLJofZoU5PIEb
 Kj3FKoiC/6L/gkMotLHT4aB/DGPvtBb9jGk8MY+tUS3gOocY4PEemi6MUJKx1H992F5K
 GSVi99x53zSc0+lXP6Fn6Mi7G5UJ+v4x0VjuC3Nw/zsJxN0mgrCZgcSVGvpqvlvYJkGH
 IM3Zt9xGBETZoaCBOmfbhevkuZjxNEaJ0Qm++R6L/06tU/5xVQglwV6olNEjSZMU+Eqr
 I7Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=oX4nX7Je7bFeJ+xtEsKgjynmAqj73RNM30dvkWhgvsQ=;
 b=HUnT+G0+C1it0DtLoIaABz8aM0Nq1NmOvU4DrRqwC+oCzJA89vveShJbhdKyPXi3fy
 Om+hYriwRY1bUquSM/br4EJKFlasVDumMaKRgh6J8r3TpFPl6hR40syWuLCvmBxhbFov
 28NMSbBtqd9Ss6rNRSbD6V4gPGMPBZGigNUk4VFyhllVuh6kB2JlqbsUmBTkiTeJkzRI
 25iKtISAGgNBwju5cQefvM/wx1TUMMOAXFTQUKgeSJAcPF4gxqAE5j7DEAD6vM5j5Sxr
 VwtwPyLKj9HnpwovRqHQag7FWIUF0pfP3hRb38yJ6sPf2+B6LOJPIWikuwtENZXU59Mm
 TTeA==
X-Gm-Message-State: APjAAAW5TGN5xwH4/Fg65Y0mDNBgfVQWWzvnVV+3WlFuU87Hbl6pkgDl
 lu8fKW5YQN8q89Ff9yJGbayvVRz9yQ==
X-Google-Smtp-Source: APXvYqwHdCQ9FmNfXU+U4FhmBmrMgqd++q8o9kCPOcsO7E5yJTw5lhpjjg+JoI0rSKl+FpJ1fCN7HC5W5Q==
X-Received: by 2002:a65:41c6:: with SMTP id b6mr5812268pgq.399.1561674151183; 
 Thu, 27 Jun 2019 15:22:31 -0700 (PDT)
Date: Thu, 27 Jun 2019 15:22:20 -0700
Message-Id: <20190627222220.89175-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH] clk: rockchip: Fix -Wunused-const-variable
From: Nathan Huckleberry <nhuck@google.com>
To: mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de, 
 andy.yan@rock-chips.com, zhangqing@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_152232_739271_F6C24397 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 Nathan Huckleberry <nhuck@google.com>, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang produces the following warning

drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
'mux_pll_src_3plls_p' [-Wunused-const-variable]
PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };

Looks like this variable was never used. Deleting it to remove the
warning.

Cc: clang-built-linux@googlegroups.com
Link: https://github.com/ClangBuiltLinux/linux/issues/524
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 drivers/clk/rockchip/clk-rv1108.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk-rv1108.c
index 96cc6af5632c..5947d3192866 100644
--- a/drivers/clk/rockchip/clk-rv1108.c
+++ b/drivers/clk/rockchip/clk-rv1108.c
@@ -122,7 +122,6 @@ PNAME(mux_usb480m_pre_p)	= { "usbphy", "xin24m" };
 PNAME(mux_hdmiphy_phy_p)	= { "hdmiphy", "xin24m" };
 PNAME(mux_dclk_hdmiphy_pre_p)	= { "dclk_hdmiphy_src_gpll", "dclk_hdmiphy_src_dpll" };
 PNAME(mux_pll_src_4plls_p)	= { "dpll", "gpll", "hdmiphy", "usb480m" };
-PNAME(mux_pll_src_3plls_p)	= { "apll", "gpll", "dpll" };
 PNAME(mux_pll_src_2plls_p)	= { "dpll", "gpll" };
 PNAME(mux_pll_src_apll_gpll_p)	= { "apll", "gpll" };
 PNAME(mux_aclk_peri_src_p)	= { "aclk_peri_src_gpll", "aclk_peri_src_dpll" };
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
