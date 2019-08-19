Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4568391C5D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 07:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RuBOJJvcY7OkPM8yDplOE/8rn82wIOUybHagMp8A9c8=; b=kybByXrVas8AD8
	01GehiW3Hi7PNZ8yKQ1fBjsYUPvJoqHWvnaSw0BDSAwOGcdUiha9K704n7TcGIUQKa0alF35k0O64
	tYbgbc2+Up3Sf29BEwX/bAKibmQ8BhI3EfqX1KRlkOne/qbw5NJMM58O/FEssnqKoromC1Ztiw4qY
	BmZ5LfNtkN+dGHwF6BDy6HuNl/W4KS8QmzsqonnpztA680S9/HFMd3XUTA8AohRBN+X1mlqJCxGAF
	iCuAJQERzllgcBLGDiMVJ5Us+X8dJCLRJIkHgEl0l9N31/Z5I1NVgjcMRnRHCcCisiimJ3hNaHkSp
	CYSj5O0oT6dEDYuV/Yrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hza3z-0002rw-HP; Mon, 19 Aug 2019 05:18:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hza3E-0002hY-RU
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 05:17:54 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so484999pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 22:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=POHZpkPS//I34g8k/kk1/SY7LDbqKnT8nCOMJuIUBXw=;
 b=WtevONa4TaRG1SGxKo/EbUBePcgV7qdbDsZVbPt+gX0TR7SyAOHFQCmO1MUpuucFa6
 TEJ5/9ZywOrayfT8oTxrLOu5X/U4s2fKDA7gFzsQbzXzCyeiDYFOGMk5EAtIy7Tn0lai
 5Ah4eHo5QIJlnY3qsAeRMtcfubHa/DEhdAClxLSe9wPQdxTeJRGeZ5SnYAuVTE8eTuBh
 LCdwmMygIKcdcP+qL2BIfmHYU6O/Om3aS9tdOfKT6FCeVkPdEQ1RhM1DEszu7Syrk9/2
 M281Ewo3LADwRtWHC+BXJDJg/vE4RupoTKtfDFdYdUkz5pLMpApYO5FFTZ9vQXvJ+UJB
 FLXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=POHZpkPS//I34g8k/kk1/SY7LDbqKnT8nCOMJuIUBXw=;
 b=mPu9rIvtx2LdgAHAJB+a+oZRnM5sTiPEv50LSed9S5vzS476OwQSaQ7Gn+O7hyAS6R
 UmeR313nXfpBNJ0hg6NKZTp+HRBmsYadHISnYQ46IHDrOGe27aT3qzspAwRTtW2hkfl4
 vnVHtYx9KCNtGmi3UY7Zln9cxGcjql7DrTsOlT4MfWiJKPlWKSkA25NoIpaySK+ITthr
 7XSUrz6NDb9AJT1zWAz09e4hPzztPg3eVhRMkKZbqovk94wc6Cm7Y1gTzGlkpPIfdp1S
 oyEI6oSCwNecO1GdtqCEPtLs6Ex8vYyvFSIox7+CV09qwQKazxQGCH5GkZ1YKX0RdDyQ
 Drhg==
X-Gm-Message-State: APjAAAXNFrlbTOSdbvXAKc1rtb6wrzWGpjPNJ7QNqzTpomowPl0xWM7x
 5KKg+Onc+P1R+1w5ts7bQ5s=
X-Google-Smtp-Source: APXvYqx6I6EneoR0da6GR47cQfcPZWPNtpv7IgXI6pONXzKvyKww67S/CudJMaSqD+o3Gg0Lox1VzQ==
X-Received: by 2002:a17:90a:bb0c:: with SMTP id
 u12mr19430107pjr.132.1566191872230; 
 Sun, 18 Aug 2019 22:17:52 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id o3sm19010087pje.1.2019.08.18.22.17.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2019 22:17:51 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: watchdog: Add ast2600 compatible
Date: Mon, 19 Aug 2019 14:47:37 +0930
Message-Id: <20190819051738.17370-2-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190819051738.17370-1-joel@jms.id.au>
References: <20190819051738.17370-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_221752_896644_0F61E04B 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a compatible for the ast2600, a new ASPEED SoC.

Signed-off-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
---
v2:
 - Add Andrew's r-b
---
 Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
index c5077a1f5cb3..d78d4a8fb868 100644
--- a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
@@ -4,6 +4,7 @@ Required properties:
  - compatible: must be one of:
 	- "aspeed,ast2400-wdt"
 	- "aspeed,ast2500-wdt"
+	- "aspeed,ast2600-wdt"
 
  - reg: physical base address of the controller and length of memory mapped
    region
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
