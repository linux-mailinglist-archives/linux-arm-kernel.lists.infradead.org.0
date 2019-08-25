Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6889C18F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 06:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C/dLxXKBhmaVHdn0Eldv0UO+63rOGHxD/VNh/pWdon4=; b=jTWTj9iFhg+Ood0x3g7yc+eRpF
	TYxKTDrPd/v9pylT4WBb0sc+CyiCzWV3xMRU9rKeqYyfqkyxVHq+T8JerySatXI3PfjkqX2IHCjiw
	FdYVfnpwxOnZTzSUco/Xn8tBsEsLPatw/4kAGNPjJmRFlggyKh7Y7yCr/t0RYSrAg8IqjRJXuckNd
	qca0Q9kJEkfbo5QCdUsKj5Ze8cM/9v4BGgfrca8wtnDvSqc44453ojqMtsIv2pZbmEPsoN3Vjappk
	xD052wIUcZ+Z6kvo/2IqUdNmO5vu/gAYWgDOtV6hscBN4DyChjRALMcZgsfF90ky2FBVmD4inx/bm
	bFVlATqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1jkv-0006X9-Es; Sun, 25 Aug 2019 04:03:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1jjX-0005gd-VM; Sun, 25 Aug 2019 04:02:29 +0000
Received: by mail-wm1-x341.google.com with SMTP id p74so12335332wme.4;
 Sat, 24 Aug 2019 21:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zELEUgSsCN+8CRAOeDo9/h1leFLyd06lkasS5K9oq38=;
 b=adjbLfK8fidX/mMusGXjbEyvbhpLmfP04BYSiiwz0j3ALh42WU/gfYLDnik2D9ViPZ
 Z1601BUxrJD3wVL+8UTRUOcLekPV9VOFO8HA7Lqtixzkxki56TLAgkkcP+EcNytqvfXx
 jWYFLpe1evjM6sYocwV40uE5J6KZZ34WJ8Lz/IZZUUlIkmkb3gmIjNe7B50r9smKqqHs
 DA2TGBkKZIREM6sAZ6Bfb97Jvl8u3Y3PB6o45kjHWEZUoVVrLZ3M8PP+zYXDypq9RpL9
 HfT4NdfnSZMfV/6JGpSKzRFeFmLUXv2U9XjVkQcEUNAEM1wdjhJR4OrKBkIfWDs49D+E
 FZoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zELEUgSsCN+8CRAOeDo9/h1leFLyd06lkasS5K9oq38=;
 b=pnYf4aJygu471TikTcdLsbTL9UCVJdgg+BPQAQ7Vbc0tRtA/u6Kv0/LmouwGy6ng/m
 hcZhUVvDpe80P+naqzaxGrXEmXUYWqeE0p/15gxKeVoEQNgR8ekb8ClzpWzFZgi74Y7i
 LPX9C23Cz2FM25+kVT8rr69VEvGSqwH/Aeg5hn44HIQxgV1hJf329SdDcoVkNJRiehfL
 gDolxyeSKbsqMcSXzZf+o/dEhb5NkKtAXxfY7+iKg/hDuSO7jX5zZirLJkuk/uwAT9em
 p211VTKmrzT1smkAEoRdwKuWuTUxjzqTNScdXanPYtFSm14gj/8C1R81fSM+2iLPLTCB
 Ae1Q==
X-Gm-Message-State: APjAAAUepiiM6aNzutx71FuGrS+OeNT53lUGqLstKWYuFImYYBZhDEho
 OGM5dZONfSS7gF2OAWW0aaA=
X-Google-Smtp-Source: APXvYqx4cizF/w/NxjuQDhehIndoZo3vHd5SzkH1pDdj55nTy14mvcbc2b5y15qoEMJmPp4mbQ91iQ==
X-Received: by 2002:a1c:9a46:: with SMTP id c67mr13836550wme.152.1566705746188; 
 Sat, 24 Aug 2019 21:02:26 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id a6sm6820985wmj.15.2019.08.24.21.02.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 24 Aug 2019 21:02:25 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] arm64: dts: meson-gxbb-wetek-hub: add rc-wetek-hub keymap
Date: Sun, 25 Aug 2019 08:01:24 +0400
Message-Id: <1566705688-18442-4-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
References: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_210228_015392_03C4299C 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add the rc-wetek-hub keymap to the ir node

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts
index 2bfe699..83b985b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts
@@ -12,3 +12,7 @@
 	compatible = "wetek,hub", "amlogic,meson-gxbb";
 	model = "WeTek Hub";
 };
+
+&ir {
+	linux,rc-map-name = "rc-wetek-hub";
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
