Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBB39C191
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 06:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J09B6psE20qQxT0rWtFyVazPcZavAWMbQDc/Es7uEwo=; b=K7oHF9/+k8kCgmX6akTo6Jbj3S
	TQAd8J2tqbusVrySScRPDcVlzpAkaDCqom1hFjti415Y0+Hg0NzOPIBzr9uqFu7m668AvqaayyYoj
	xYwBsyLvqOqhPxiAGswxOeIi42DdADa605PYEDFIDHktEudVi5RGcb0gUXLs0QFauMN7x8LWHOvCc
	VnjbdF+h9N0O9waIAZ1Z3KVZdiJTBWa64vToKN0hKOcvAZtoa4MZD+UyNJ2y4Kr3Ra1wC9uvGXac+
	gG1VjUMNEuzEmK+mXTwIHXCmgJWFIPL9UeXYlDYQBrXo+iy8HfG4nsSRGL0vJbDspCLdsZaxehAd5
	QfOTtUFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1jlD-0006lj-8k; Sun, 25 Aug 2019 04:04:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1jja-0005j7-L7; Sun, 25 Aug 2019 04:02:32 +0000
Received: by mail-wr1-x444.google.com with SMTP id s18so12145074wrn.1;
 Sat, 24 Aug 2019 21:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zA4JW/hg+wx6CJsdzmqfZbE0PagO6sXNIEqF5lUUdjU=;
 b=NNtOikS18WU6T3gIKJEnRf8jbT7LMki9B8UG3870rXW0i05gDzzFcTZ+G7aKEZRrG4
 5Egd6B1CDenIiIjCYMQkL78+LgBx+A8ur0hNUS1EY2KA7o1P42lpk1t6hpz+S/ytCYzJ
 kW6fRvNd56jhbdBW9zTMktQKpk3JFfjFnnPeZIxPPwp5I202Ktj1lc9yMsi7OncHSlUq
 lvWhD6ydLALH3CxZb4+Y41F12Z6mXz/JRZUfDbLPA82fQiwzRwMKu2CiLRrX/UM2/Fb1
 26TmWcUvQAS3vNh7CsFggwVVLDzA6R+tRtUuT1h5gET5EbsyLhojyihgJgVr5ofgnkb+
 nb/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zA4JW/hg+wx6CJsdzmqfZbE0PagO6sXNIEqF5lUUdjU=;
 b=BEh2pYzIb+AsxPx/Tqxlwff40YkUVtqt88wtH+zJvWEhRMIBtsw7pBHwVf6vSixGz4
 HHajzEXXWVkH65yV4C/XSHVcrtMdFa7eBc5GWlRqjei+n/jawyitevZ0nqkK8jlAOlNG
 wq07i2NVzTL3WZR09400y2Tlhc9w9tZQ6IA/eXmnjCZs2l0UeuOWQOop3WU2YjOb0Ggs
 ubHqPWiZa9kwDj/Rj24wLW7ibTicmoof3mVrhymquLI9W106odtozar2Yqw6rjKzZRUB
 wBxMgHqT3VmEA2XKIq2COlXGYBi2jSHCi0fvN1qEjr7U/cTACyaDE/lsBXVKuXFioQ1D
 P0NQ==
X-Gm-Message-State: APjAAAWDQiF/rY+EmMxULzXTo8TP0OskagjBD8JL8uDp9sQvjWqAS3Yv
 2sLSpnsfzMfGGRBPesT5gxM=
X-Google-Smtp-Source: APXvYqytpsaH+5s4MR9HODR+t+2siNqosgJSnzuzUa0mwtEnEkV1Q/JdbO8154er/EIwX3efOJM1dw==
X-Received: by 2002:adf:dfc5:: with SMTP id q5mr14714925wrn.142.1566705748885; 
 Sat, 24 Aug 2019 21:02:28 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id a6sm6820985wmj.15.2019.08.24.21.02.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 24 Aug 2019 21:02:28 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] arm64: dts: meson-gxbb-wetek-play2: add rc-wetek-play2
 keymap
Date: Sun, 25 Aug 2019 08:01:25 +0400
Message-Id: <1566705688-18442-5-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
References: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_210230_757676_6111A42B 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

add the rc-wetek-play2 keymap to the ir node

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
index 0038522..1d32d1f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
@@ -54,3 +54,7 @@
 &usb1 {
 	status = "okay";
 };
+
+&ir {
+	linux,rc-map-name = "rc-wetek-play2";
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
