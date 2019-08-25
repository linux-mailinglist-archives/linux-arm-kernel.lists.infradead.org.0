Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 563789C197
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 06:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=luu4HFt8BuCjt7VaQl+evxt6spV4l1XYj5YtKKd3qvM=; b=Cs3tBqBCRJdYoGeE0AcsifQxpx
	PhVRBvQgcHTq0gycoABjwEIYQk/qCuGrpI104BULkye0eTotUu0U5xREmWwH1IldxRYu7mYTYQ9ZD
	5aqik/XcJ7JEXZkPKLflgcSCHdTrfgu98ER5DT9lAx5ezjBGtQnwznTFvhl+r2CR3yputuJcH3/h9
	JDsWSR2267PPh3L7lEUsnmMGgbDWGzBJUICIHC8a8pECqHbfNTxyZOJqJBJmEJb42t3KYBI+ikkSn
	4JI5w03nG1rrC68B6ONi5peWLtATuGSMiRvwPA13k00f6gxvVUXPuFnUqVMFvIyoy1NQXra9M08gr
	l2pzVFQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1jmD-0007dL-Io; Sun, 25 Aug 2019 04:05:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1jjk-0005oq-MX; Sun, 25 Aug 2019 04:02:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id m125so12674391wmm.3;
 Sat, 24 Aug 2019 21:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VN2qLUPJ6VKX1aGIcYVhw809Zd7AJNllVKXjslGw4q8=;
 b=Za5I32pq80QeFA2QlN9eNKTZqMy9Qq+vvcZe1pjeZeVPbi+hviAcNBkYso27Y/MR2w
 7uOIlNBNpassE2uey3INI3QPwcqkDYcQB7MKtV2yDT04Yo+3hHKvVb+z2uAFJyP+NEXQ
 kJ0E+sBtK/ejAjxNZ8KbgHKKzsKWepT+aZEhdW/pyN6L730ApJ7A+CwHo3zaLk5Jyb6q
 /eJqJp2BJvM94F44X/oH/gRhoWS93g/sKhMv6RGir/BkTgb1kaVJAsR3NSw+ffVoLUyh
 /m1x4nPrNL7vEW04O2CAcLqldC6R+AZAWybCvetqE7qhOs00gkPNLnn3obziGzOfCzHN
 3knQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VN2qLUPJ6VKX1aGIcYVhw809Zd7AJNllVKXjslGw4q8=;
 b=mAAwtF+vIvgFDsL3UB7m5k9t+8n5rCwelV3VaKm+h7RQLvew/xS+XVGzURWigCxEvS
 6EapdQAFpBpf5y9qjZll7EA5Dp08ib7N+zpr43ix4rsNVx2YTrIrYv1/DkRwgtIzPAaR
 MS9FpdsoVW+vB5VT3MJ2KSA+CDF3LlT8OVQIOhsnBZu1/pAC5F9vCUF6RGxH2jN1mqfZ
 jl9CgkYYYdhjxYgYVs8UeEOlHoMobn3Qe7OyWMawF+H45A6fCP9fxt/Ow/ZD0U9+NtgR
 FHTsM6K3b/1BMeD3NJmpB1fY6jtMu37Nk1kAUBDby+run8cmAr6j+bscbyPNrBB4r71+
 ZLAg==
X-Gm-Message-State: APjAAAURGpiJDFIAHJDYzDzNejPxjSRwXHQA9ZZ6HdK/XTG4J38YNlvD
 INSxYyzoIJUD2RXZoIsCpDA=
X-Google-Smtp-Source: APXvYqwE8fQkbgsLZou7MaC4xJa1Tgjho5p7QMokyP/C75xx69LIUugw3ZFA2aH0SNV6nB5N6/xdEg==
X-Received: by 2002:a7b:cf11:: with SMTP id l17mr13425743wmg.158.1566705756007; 
 Sat, 24 Aug 2019 21:02:36 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id a6sm6820985wmj.15.2019.08.24.21.02.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 24 Aug 2019 21:02:35 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] arm64: dts: meson-gxm-khadas-vim2: use rc-khadas keymap
Date: Sun, 25 Aug 2019 08:01:28 +0400
Message-Id: <1566705688-18442-8-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
References: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_210240_992814_936DC4A6 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Swap to the rc-khadas keymap that maps the mouse button to KEY_MUTE.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index 989d33a..f25ddd1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -299,7 +299,7 @@
 	status = "okay";
 	pinctrl-0 = <&remote_input_ao_pins>;
 	pinctrl-names = "default";
-	linux,rc-map-name = "rc-geekbox";
+	linux,rc-map-name = "rc-khadas";
 };
 
 &pwm_AO_ab {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
