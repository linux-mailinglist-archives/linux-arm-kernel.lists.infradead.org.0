Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B33D17473E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 15:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1kQ6BAj1zezD2XQbBshfaanbKM9Trr2qCjqIzb14gRk=; b=Tv6QKojoknq7BUtZKLjQGnj2vm
	szeVvE8lqauaZXYjnjDDCfn/Z8pmkjWW8I+hq5A4df4RDlDRpxo9UndeaDXkc8RpcLclx5bJCCsr7
	/xe4kObgJmapuoGht+PKVV6Pysc5tgW4e2eB/Q+yg2CTEvSSWo6dMW4Vatp6biLtzqKMXWtn8PP/I
	BwB1k3DStlc69F4jWodeGiRMin1v/PWFcxQpXy8pIkhequ0f7ggbUeg7d6RQcamJRb5pJnlmnfKLN
	ucoAu84soyMv2U+CJ2lkLuuyB+8eptYkQH4ECPwAEs9f305x0yCYtQajEUY+eIck9r6Gn/tlHWD8y
	4scbrWEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j82pF-0001Pm-CK; Sat, 29 Feb 2020 14:10:41 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j82oi-0000LS-G6; Sat, 29 Feb 2020 14:10:10 +0000
Received: by mail-lj1-x244.google.com with SMTP id e18so6546827ljn.12;
 Sat, 29 Feb 2020 06:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r/iCABg4UBjB++Fm7IMDHmXpxhSnsF+XLYegHsRByUs=;
 b=h5/pObSF/xkpM2FbDhJrj7JLttJODK8r4OoPMORIZnz/ls4WhVKbLzg9TByoKc36eA
 smr8i+k1W1Ap5S2q4FmE5Xn6GW91Y+Is5GcK8IKAbvVdqBgsyWkaBeXzsWi6lhOgxNoS
 8DmO2/MkQqrm930PT9+eeUNV4y86vb0HArssRz0RU4MV5ZfZp1fFNxVGqMA4CEuE9Rd/
 WjBaGagO7Mns+CO+PctTbrqTNrzJPXLnz6SQVh7A6yvo9Fm1Z9P9nowAyeYxy+eObcS/
 ycfjlL4MtwfRrIEq5WWNC0xLYa2GBsJXlLXailljNq9TRHDSb1bJpJ2vgM6jDZvlf8n+
 PDBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r/iCABg4UBjB++Fm7IMDHmXpxhSnsF+XLYegHsRByUs=;
 b=G/lbtSGzDpC2T/tubzpV7iWUO8jRluSCplKHyp8fbyzvQ+iQBBNtQKqHdyQ+qo1ejV
 HNHER8lu36qpfs3eHMvwEGf52f1Zn/1LOJnro3pw2gD9JdgeDsE3huoYHGeUw7FFdrru
 OqwK6x1WDWCX5Zi/WF8FbS5DpgVn5FLDYGx6ulAvZiN7RLj0Bf0YMk1Lh6OVaEymVqoZ
 g3Ko4jLqYc/qFlk/pNsB943F6eLKtaRA4phv4nu9vMixjZnqYatfhQaHP76fg6DuuFK8
 3Pa3QqhznNHUqkef4xm1B+ZftC7A0wUd77U3N5kN/Rc9NpzIeFl2a7zp+RUmOXjNWpoT
 pJQA==
X-Gm-Message-State: ANhLgQ3nTAj1c0rIthcKSDb8B+F16Pz0ftSFrR9prRTWncC+Pa18SVip
 4WFQrHSaSybZ27EeCvHyASM=
X-Google-Smtp-Source: ADFU+vtZyjptE2moe72CDf/tXaeElIWg7AMBJ4+wkWWAYrOyrnBfvQrLP784TZMKurcmn6gCvOxYhw==
X-Received: by 2002:a2e:7005:: with SMTP id l5mr5781465ljc.230.1582985406655; 
 Sat, 29 Feb 2020 06:10:06 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id j11sm7104124lfb.58.2020.02.29.06.10.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 29 Feb 2020 06:10:06 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: amlogic: add support for the Beelink
 GT-King
Date: Sat, 29 Feb 2020 18:09:12 +0400
Message-Id: <1582985353-83371-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582985353-83371-1-git-send-email-christianshewitt@gmail.com>
References: <1582985353-83371-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_061008_573705_F37EFF41 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
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

The Shenzen AZW (Beelink) GT-King is based on the Amlogic W400 reference
board with an S922X chip.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index f74aba4..6bf9bbc 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -148,6 +148,7 @@ properties:
       - description: Boards with the Amlogic Meson G12B S922X SoC
         items:
           - enum:
+              - azw,gtking
               - hardkernel,odroid-n2
               - khadas,vim3
               - ugoos,am6
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
