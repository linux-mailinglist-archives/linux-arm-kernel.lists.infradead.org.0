Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E72D1386DC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 16:10:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3RMdL6xVj0FFXxSu3az4UAqMovayv1xNNFuLLj1vcus=; b=ngw
	sXOS1y2PGry5kz0VM8TJC+PSAucmUvel7DK1VOSJi/pKgujtIkRpmyAKxig1j3MSeCH1Y5jaAD2zS
	w31tgmMB+TCzc+48br5SOKbCoGD60MmeRbtZYbccLyk7AqbClpzpJSLsEdUjBA5nOLCFaLt5ab16i
	zm146xiwqTxOOJzyXazLEd5X2fG+ykjfb+GZLQj5n0wz7Y79CGUAVqQ+S+k8f4GiNR3ydGidbgbB7
	fWxTSve341L7zACG5/yjc5mrxVRGmLgZvgJqyUW2H1c9uz4dgYvgRNMVKty4LpDmFcQlIqmJgEs5E
	hgIjC9LDhSLhg/Z4yrlZudFUo1AyINQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqeso-0006Wr-FP; Sun, 12 Jan 2020 15:10:30 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqesi-0006WP-CN
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 15:10:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id d73so6919737wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 07:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8TRUc/6qxbRonZeyu/eHrwf3zVnyXzkArPwmJIDUMtM=;
 b=faGaNLeEsi9zRIq0pP/293K60JMkZuUkjdss4WXSVGjHEm1hIrRXBizUiSuOpa+dHk
 sTw/O7EBXcWCOMxzh/DImX2Odsm3BUK3BeS17Txe2lTZHBwSsr+57DI2p/sEpYwHtgPc
 uSUaHs4/Ox0yLu0z4+8m0wMQSHLJtRBqE6DpB73K3DPcNpGyamxXjVvenOwwbfIdluKz
 6s0JW03Ojnf+ZWla6FQu995wsqrCXNbgm4aPF8Eo54RJaWwOEme2mx5en4Y42uhIYUml
 eDmog5p6uj5Cw2kq7hRU2+ffPArXZTA74kB0u3vO6pAwK//yeGr0IoAolygxacpA5Swc
 k9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8TRUc/6qxbRonZeyu/eHrwf3zVnyXzkArPwmJIDUMtM=;
 b=Ug5RGs3GOpaf679UEn63Rq0P1sL7v9TZDl0Ea+msHgxEV+b/7btpb4fCxPQrJdWi3g
 yIYMIcSaBabcRyBXukimfeuLIzoR893B+nSi7vE0Lkm1jmkAAgz9NluY0vBzC3BKTwpd
 e041lEdjlEWQhaxDGTMUgRqxcR2D5dk8D2bdjU8CVDFCN2eJwOWbkmAnbiEQ+auJzer8
 XzO5UsUcttgkcqXPNN3XV80c18Z4KWT6UCkC3TLpovqBa/mDO0CVNU4iETY3zaC2Ft4t
 tupRGJDTezhJNebbAQ3V114Dk7fj2w9Zj/JrLkYodOetRCmejR9Iggler8AcpTWqAuln
 vgzw==
X-Gm-Message-State: APjAAAXci8EDOjzjdehkjkqK2WbWE/0tOTLpsr3N3+qUk0w0cjIxP855
 Q+ilR5APGIjFX5dGsr7C6qo=
X-Google-Smtp-Source: APXvYqzuRX2BbB5bKpbltjPVNZNf254isGsSnnHbYaWxVaOrFk33bGcEzQ0YZE+p5H3Hk4FdweBwLg==
X-Received: by 2002:a1c:81ce:: with SMTP id c197mr15433901wmd.96.1578841822489; 
 Sun, 12 Jan 2020 07:10:22 -0800 (PST)
Received: from localhost.localdomain (h-213.61.242.164.host.de.colt.net.
 [213.61.242.164])
 by smtp.gmail.com with ESMTPSA id b17sm10887885wrp.49.2020.01.12.07.10.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jan 2020 07:10:21 -0800 (PST)
From: Chanho Park <parkch98@gmail.com>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm64: add Cortex-A76 to spectre v2 safe-list
Date: Sun, 12 Jan 2020 16:10:14 +0100
Message-Id: <20200112151014.2593-1-parkch98@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_071024_446820_D1F20753 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (parkch98[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (parkch98[at]gmail.com)
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
Cc: maz@kernel.org, linux-arm-kernel@lists.infradead.org,
 Chanho Park <parkch98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cortex A76(Enyo) core can be added in spectre v2(CVE-2017-5715 (Spectre,
Variant 2, Branch Target Injection) safe list.

Signed-off-by: Chanho Park <parkch98@gmail.com>
---
 arch/arm64/kernel/cpu_errata.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 85f4bec22f6d..9895d56bf5ac 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -546,6 +546,7 @@ static const struct midr_range spectre_v2_safe_list[] = {
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A35),
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A53),
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A55),
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A76),
 	MIDR_ALL_VERSIONS(MIDR_BRAHMA_B53),
 	MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
 	{ /* sentinel */ }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
