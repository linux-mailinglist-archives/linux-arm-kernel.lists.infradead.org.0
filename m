Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D569871EB7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xjDGRska8WxVU1T2PJ5iir4hBptrO+4BVNRh5tFeJPI=; b=Ar0
	G3k7sGiHQPz75VhqQfl3u0UNcQ12cME+o7UJP36D7Bugb/B0iLbxkFLLCPwJEVaelCRH+jDj8EWv6
	AbKyEGRsiOb6/bhEtS2+pHDpFIUBb00ey+qVyR67lbNBFjr1tVXyCLHw/gnTScwTb5HZC+aeU5YLG
	x10kh729ryJrRSd60mg8VW1X8Qye8Z0xnYBEUqPrCCjV2K2tUOpPOcswojUoaHWCHl5Heqau7d7no
	idy8JQN16w1gu9srMuKv5ffYT/HFlnKAPu7dTlIg7uRuFpBM49U1X5kDtNNKA0kGgKEaASZUEanqE
	V2kdS1uRJRjB4PlozbAR9/x2CkTK+0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzCE-0006Ep-0T; Tue, 23 Jul 2019 18:07:30 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz95-00029W-Us
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 18:04:17 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so20939756pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 11:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=W22Qq2bPY3qrM64kZukyezJ6opmW1nSg9IDH0KHGjYY=;
 b=ieN7ALrGo+qukTiJ/0EDWZHC53LrpEzPtPUHgnrXVw3cSaF4EVZii6FL0TMaWI2CPH
 Tfyra7HyWVwGECnEgcZm5dDio8qphNQRWa6OWYl7Wp7oyaDNYCivmh4fo8HP0D0PdAo+
 koemJFrRft8VH2Drz9dTjoXrZ8Rzqz6/5DjS7q+v0D0y5JHJbySlAoZ9LJlVOAvDjxeO
 afuE7lVNL+pygmGm3Pk92/4WvKBZHs9tFgHu/OMfZKYjAxeuF8EwEL9CrjQqOljsQL0K
 j/Ac/UVShhLcTIO5bq70LWzctW2wLgAa8IDwLekvWsCHsO7VdjVhKFr4pxEwf6w0f5k4
 uTVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=W22Qq2bPY3qrM64kZukyezJ6opmW1nSg9IDH0KHGjYY=;
 b=hU0kobKVBQgcEQKAvF9ELqWa13gcIcR0mSz41ARBVBJaHWQAUjGsD5Ys0OeWUWmK5Z
 A22TYDBQqcEnZvRkX0NJNjyanNVW/VppRS6mgDO/T4t54XTeVkNGHv9VjJ8bMxqWWhQm
 +6J2GYPKYrnyB5XgbH8mDN3ruheB3BXUumNM5W7pTe6YDEs751znweaPgbsVRVuPLjdP
 nw9c6xvV32NFbIal79JXmItVuAjGnk8gYb0XPnkIT1QgJweHa4kAFBSiKe781ofVrC7O
 YU4+qZYUIFJuUHOwB2H6fXAOlZRUXk2aPWK8Dlox5mi69n9Ae55X4m/DjQrd9sbUbpIM
 NihA==
X-Gm-Message-State: APjAAAVQm9+RzxAYFlfoDkiKd4sD1JD6I5lGFY2zXSpg+k0xLJXS4oZu
 sxvTXeL/Ojl3/fksFjr4XO6Kvxcc
X-Google-Smtp-Source: APXvYqxFJUFqh/Uy3EEHrNPHKWBcFAHt3Ygo6+oWiO3WjUv0GOJiHS5n1FH6HYyPPOXHnu81GdhUdA==
X-Received: by 2002:a17:902:7887:: with SMTP id
 q7mr82839519pll.129.1563905055358; 
 Tue, 23 Jul 2019 11:04:15 -0700 (PDT)
Received: from localhost.localdomain (KD118155013174.ppp-bb.dion.ne.jp.
 [118.155.13.174])
 by smtp.gmail.com with ESMTPSA id cx22sm36324333pjb.25.2019.07.23.11.04.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 23 Jul 2019 11:04:14 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: ulcb: sort nodes
Date: Wed, 24 Jul 2019 03:04:06 +0900
Message-Id: <1563905046-2949-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_110416_015396_9E098ABA 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes.

If node address is present
   * Sort by node address, grouping all nodes with the same compat string
     and sorting the group alphabetically.
Else
   * Sort alphabetically

This should not have any run-time effect.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the devel branch of Simon Horman's renesas tree.

 arch/arm64/boot/dts/renesas/ulcb.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/ulcb.dtsi b/arch/arm64/boot/dts/renesas/ulcb.dtsi
index 7e498b4..3ef8917 100644
--- a/arch/arm64/boot/dts/renesas/ulcb.dtsi
+++ b/arch/arm64/boot/dts/renesas/ulcb.dtsi
@@ -428,6 +428,11 @@
 	};
 };
 
+&rwdt {
+	timeout-sec = <60>;
+	status = "okay";
+};
+
 &scif2 {
 	pinctrl-0 = <&scif2_pins>;
 	pinctrl-names = "default";
@@ -478,8 +483,3 @@
 
 	status = "okay";
 };
-
-&rwdt {
-	timeout-sec = <60>;
-	status = "okay";
-};
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
