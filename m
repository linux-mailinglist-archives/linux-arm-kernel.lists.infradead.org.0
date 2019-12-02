Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7BD10EBBC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 15:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pHhbNqFaA238cJLsaNoFYG/XuKvRhk0w2O0CzuOCn+s=; b=FmRls6HaFI38hb
	kTdXWf/ANdute220oLjTslnq3vUSje668i0JkCeUW1FVSEf66W9kNT6KXy1KqOOR9gdjS2vxE6HhN
	ZJ93IkH6lo7U1PVh2nVtYS+eQ2NMEOSpvnsMXPFxi6GJiHqFc8Bd6SHBVtBbErAiKWQe+WPUnoYvz
	axaqOYmhfpnXBcNHA8djTUjAHzsbaEh9HKJN7PQ+Udh09rGxNEEkiJpYRH41Nfh1iu6v8XLlbvWrH
	D3G+7y3u9wimWLG0dM/Z4Oey4N4blN+7krXXbo0c+hCAoDYLrYri7lk00Dd4zN+JncFquPYttO00B
	HNnPMiaZ7NUHklC2fr6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibmxV-0004HV-7K; Mon, 02 Dec 2019 14:45:53 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmxN-0004FW-5w
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 14:45:46 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ep17so2522602pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 06:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id;
 bh=Sugnk5s8AM+gRpcFDOitaaXBLUXkujaMG6GBGam+SoQ=;
 b=q6TSowKP2vKrtRNSM2Jt0mPn0lxbCKXz0Dnvt2SjMs+VXj0yVRMq6HFCQhI8kP6q/P
 UetcGxqoPp9PZvB34q+tg2G8qPAsbkQec1x67/TPOMxq0scFxjiFr56PybVisu2c9WsQ
 F+sxqHFPHfiKewcua/WZ3+CVfN3eQDBzjyYmGo5SLkGUuFfwbtXxY4H1IcoBVIx2WKUW
 ITj+EWLU+h+h0HG0BOp9yX7rlW90TyKrbl1pw2+S2UXS13F1NtEDWpH83LZuTRiSvp+2
 QAaRmKk9YqLP43Y0XhJaaMMKK1Tl0rpPGCxGJ3SmRQCnMUlFaTeE+wNYI95TM5nkAjTf
 2aZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=Sugnk5s8AM+gRpcFDOitaaXBLUXkujaMG6GBGam+SoQ=;
 b=LLx+IAXwK3oVh/GT32c8k5gBZn+BNVhsMHhBH5Mt9HuVRDGPex6bT3GYZffVZOw5AO
 N40uPZLIrN8W2ZF+dy+kdI2z6tbITaT/mSFk5ShVoeshlc44kSNpMXjjklMUHyd7Eo6U
 FzXmw5oWAFrrsq7SR8Vqv5xpD85hJUogcfxft8RPpw6b+Wg+KZEqZQOtTfu7NqZo2H4h
 YoIyVQbcKRP0+cUg70wu+iba2MWpMgKqQVUT3WgwadHKo//gpur7e46y8gLQbCzrdJ/P
 MtEg6oEi/ooGR10JnsJbz+iw0lyPgwnVLgq9KskhIFyqvXQD02xBgM9lP4721zn3dXY8
 rZUQ==
X-Gm-Message-State: APjAAAUuu+foJ/QLQPqcrTntkzeWrG0LYBfhj1kXbJVYw+HPreSF8EJ8
 yqDf3Rg9N5SCd33SpDV1dCGLdA==
X-Google-Smtp-Source: APXvYqwqlbxWausIe1KLnupB033HIL8ZxRkO7vmXk4oTSFTr6BGZTbgDtbJ21fR6SsR36oB8ALk4pg==
X-Received: by 2002:a17:902:9891:: with SMTP id
 s17mr27390538plp.101.1575297943776; 
 Mon, 02 Dec 2019 06:45:43 -0800 (PST)
Received: from localhost.localdomain (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id f10sm34347813pfd.28.2019.12.02.06.45.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 06:45:43 -0800 (PST)
From: Jun Nie <jun.nie@linaro.org>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, xuwei5@hisilicon.com, p.zabel@pengutronix.de,
 opensource@jilayne.com, swinslow@gmail.com, jun.nie@linaro.org,
 allison@lohutok.net, yuehaibing@huawei.com, tglx@linutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, xuejiancheng@hisilicon.com
Subject: [PATCH 0/3] Extend Hisilicon reset type
Date: Mon,  2 Dec 2019 22:45:21 +0800
Message-Id: <20191202144524.5391-1-jun.nie@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_064545_232990_425B25A1 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extend Hisilicon reset type to support combination of set/clear,
assert/deassert and poll/non-poll.


Jun Nie (3):
  dt-bindings: clock: Update Hisilicon reset doc
  reset: hisilicon: Extend reset operation type
  ARM: dts: Update reset for hi3519 and hi3798cv200

 .../devicetree/bindings/clock/hisi-crg.txt    | 12 ++--
 arch/arm/boot/dts/hi3519.dtsi                 |  2 +-
 .../arm64/boot/dts/hisilicon/hi3798cv200.dtsi | 47 ++++++++-------
 drivers/clk/hisilicon/reset.c                 | 58 +++++++++++++++++--
 include/dt-bindings/reset/hisilicon-resets.h  | 28 +++++++++
 5 files changed, 116 insertions(+), 31 deletions(-)
 create mode 100644 include/dt-bindings/reset/hisilicon-resets.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
