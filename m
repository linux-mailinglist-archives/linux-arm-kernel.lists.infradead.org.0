Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ACE13AD7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:21:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yO/JuiktmcV61OgzEIG5hHBEm3+tPtVSunxzMqCNngc=; b=cQDaCwl27vi63b
	2h/rrTq1yYP4VGyjat0q/9Qb56BZ3ITYYPFFoPbxCF7EJ8CTrz5VVx56TzEq4gZq4sPJX3sIOtJVB
	vw5KD2cEo15znttmCY1FD9qK1lvNLI1NNVJZSuu+IKL+3c4B6oPKxPmm9s5zWHTS1D9aXCBTl48Aq
	8ZUf4kEFVmZhIaA2dk5u3uv9Tlaue4VgWnKXp+pDvpWkWo3P44kZKfUx9FElF860w8OiWjI9koJsV
	5ls80wmlqKnZkwzCys2MuK2d0R2C3DDWl2m/4SaL4w0MUU4r3zJAbo0OPD+3Oab6KwS/L0VbHbZg1
	Wi5Uih1aaZIjp/dJVegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irO06-0004lV-Pt; Tue, 14 Jan 2020 15:21:02 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNyf-0002Br-GF
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:19:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id x184so6741222pfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 07:19:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ST7QEf8JaPsIhTPBLpP4peL3yXUV3NDdYF9SiuXeCzg=;
 b=IVlh6j/iSAlzh10qy/FDJ4HvKz7R892wUQuYxOTYHl2N97PS0Wd+wj3Vcue7B+cqjn
 +GUB4l5bI0/Eq5IssJDljQfcYTJ3oOQj4m33wenYcWvcEGIuzPtWFr+seGkEJtifjYEM
 OtOSSexK4L4a64yBYbhtlTy6uLShoG5jR7+VC1c4obRovM2+xRUGWGJiw4B/aVCuMioK
 mNIBgWFyvaKaUu0wWhRdQCyCAl99OH7jU+9lEHb1wEpM2H4qRPUR7G3e13xHve+pUgFB
 Sr3EsDENkZfV3fAXxfr8EULSslN0/W9x3sjP0V1ghY94OGauXGQdzNXH0qSYZ3oX9qdg
 SuGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ST7QEf8JaPsIhTPBLpP4peL3yXUV3NDdYF9SiuXeCzg=;
 b=PWE2qZ3eduAnlUUrj973a7eIpY408HxkKnordoiH2uZQa5sdJuKI5vQz7+JIjMxiDq
 eZyHnERgpc00i07bg18MsR66JbvpEwSAeSzyK9Yhl2G5gn5sFOWMLJDLeV0cbwp/cqYE
 55mouBH6J8hcGIMNZjKuQXto1JkHdMHaTx/Y1h5b5SjLlnQPELze+5NsFf9axKV7+PcZ
 jmZlbShNGN4010URrRfQBItymAgUMHr7nJA6Dj0o9bT3Y65yq72J/tY+aFsoE1ovD+Xm
 600JM6Kk3gs6jzMGViQjQ9f5k895sXrIiWZbvRU+u44FTZJzyqzkXSlIJNG7+Tr+JDxe
 2JKg==
X-Gm-Message-State: APjAAAWvJrYyM8apOAvDKpxBUlJfUoonU0aqACvaLc1G1hkjsNcf4R+q
 mg4LHnwUiPWHXoTiAfnke9CrUiEJ
X-Google-Smtp-Source: APXvYqwJlfdrCgQOUs+s+KcUfryciwUOYLQN9kEOTk43lgOjAPQX3p1bITQdDG6m0bJ77nBU9isuZw==
X-Received: by 2002:a65:6914:: with SMTP id s20mr26982174pgq.44.1579015172492; 
 Tue, 14 Jan 2020 07:19:32 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id 207sm18834425pfu.88.2020.01.14.07.19.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 07:19:31 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/5] ARM: dts: vf610-zii-cfu1: Add voltage monitor DT node
Date: Tue, 14 Jan 2020 07:19:06 -0800
Message-Id: <20200114151906.25491-6-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200114151906.25491-1-andrew.smirnov@gmail.com>
References: <20200114151906.25491-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_071933_572018_F3470FBB 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a DT node for various voltage supply rails connected to SoC's ADC
for voltage monitoring purposes.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-cfu1.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-zii-cfu1.dts b/arch/arm/boot/dts/vf610-zii-cfu1.dts
index 28732249cfc0..ce1920c052fc 100644
--- a/arch/arm/boot/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/boot/dts/vf610-zii-cfu1.dts
@@ -71,6 +71,14 @@
 		los-gpio = <&gpio4 4 GPIO_ACTIVE_HIGH>;
 		tx-disable-gpio = <&gpio3 22 GPIO_ACTIVE_HIGH>;
 	};
+
+	supply-voltage-monitor {
+		compatible = "iio-hwmon";
+		io-channels = <&adc0 8>, /* 28VDC_IN */
+			      <&adc0 9>, /* +3.3V    */
+			      <&adc1 8>, /* VCC_1V5  */
+			      <&adc1 9>; /* VCC_1V2  */
+	};
 };
 
 &adc0 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
