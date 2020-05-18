Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2261D6EDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 04:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RsExzALZPCBgLxOuBvRBrllkvxlOhnylDVVFawsLnuY=; b=l6FdvhOy+YX7u6kbtKD8uik8wq
	rhpLR1kXoXD3qEa1LXJK5//dJmeObXRbOGCA/a9l9RXa/5CRyEUGwWuKcqgid+658b0dvl7KKwQl0
	b7e3cBqNBtwuH13DFtboXthLv7k88oJ3lwKKwRnOk5vNBmQy5N8+JSasWYykVxfIKT3McasQ7Sid2
	Z5W6zlt5LEb3M+y25/SpZQVnL8JByydJnsDHzkXkglt+UW3tYM1NgnCEEeOJSDSjFz5H3sgtxWVGe
	aSTGZptT6Rx5L/Bx+H2KaFwzYwEyZG3CIaDOgqWG3UjO/IKG7VzDl9cFKVsnV2QsUrxfDgItDCmw8
	wz/gROkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaVUZ-0003Jw-Pw; Mon, 18 May 2020 02:26:59 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaVTR-0002J5-GO; Mon, 18 May 2020 02:25:50 +0000
Received: by mail-lf1-x142.google.com with SMTP id h26so6647969lfg.6;
 Sun, 17 May 2020 19:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JIjdRX9A90RloyzWddQMSNfv9XohduT/lwJH2Xd4NPE=;
 b=hg/p6GayJFU+ZVAwJYdVWfyBACACu4dR7Hi4P+BWc9bzx7eXm8Ef5zA3AMtPFZweeE
 9PJ03qZ8pcJ3Goyx6bDhaS0qjSO5vzhdM+LJDEmV3uRVYuVKUYTCDmJTa2dEPn+XMf+Q
 Blncly+LimtWzaO9H8zge7bUYAXoVvBLgwq5iZV64EUY21FB03yuwmg77nn6mCVm3Fzy
 vMsAdhzKphnLPvhpShDpajPjQJXYzl9pxiwZ1al73/Iw3grDXFDvuINc6SDRPydd3qrM
 ZMxfFZ2zmVbIjDoa7URpJbckZ4jGWVsC6Rp60FMWloICMEoHRHClv/wgbUq/Hvsq7oUc
 2FHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JIjdRX9A90RloyzWddQMSNfv9XohduT/lwJH2Xd4NPE=;
 b=Sys3qe/gwjpElK6hjOpZSlFZi76c854diM/tseuhPjwojJATwcta5nL2YuXDofEyP7
 ea1a78/4kzQt8oze0rtmPBPXuhaNnVMn7XMaT9LM/NmM3evjh0u3kJyqebYCLs+VjK2/
 jkyKtT6U1DIHdOrqkZE/FUJf58SBkMP/u68Cyew1yyBUn0dI++jZsGACN0CQ/oluWNrP
 Ql+CtH0d8iWrep9L+FS5YvTmFbBhI1pBcKy7RdgE0P1FOass7ILsIZzD/GHvgz/+GFh6
 FhJhlD287ulChg6fMK+rQOsJdQi2QoKyc8LTu+XQwHkl5Sg6c6wByhhjbeSBwNq3cHDH
 vjpg==
X-Gm-Message-State: AOAM532UoIbe6mEdBqmGBH+O6WqU9te8bTtFg8zNsGQ7yu3/55z9MBLI
 ysJvGU2tNzZjWJcjamsk1VE=
X-Google-Smtp-Source: ABdhPJxas+MEYizfzoXy8rTxcFyX8DDflGkqsjaLHe97SIOwVyVAqTtXEHKVJvYMbEAv0FEk756ljg==
X-Received: by 2002:a19:6141:: with SMTP id m1mr10214988lfk.7.1589768747784;
 Sun, 17 May 2020 19:25:47 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id m13sm5997306lfk.12.2020.05.17.19.25.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 19:25:47 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/5] dt-bindings: arm: amlogic: add support for the Beelink
 GT-King Pro
Date: Mon, 18 May 2020 02:25:30 +0000
Message-Id: <20200518022531.14739-5-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200518022531.14739-1-christianshewitt@gmail.com>
References: <20200518022531.14739-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_192549_561069_214377AD 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: chewitt <christianshewitt@gmail.com>

The Shenzen AZW (Beelink) GT-King Pro is based on the Amlogic W400 reference
board with an S922X chip.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 25e118b8a97b..46cb6359f530 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -152,6 +152,7 @@ properties:
         items:
           - enum:
               - azw,gtking
+              - azw,gtking-pro
               - hardkernel,odroid-n2
               - khadas,vim3
               - ugoos,am6
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
