Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4339090560
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 18:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFJIMQ4xW4AxHVW3x3mSi6lQiGO3XfBsdDKyEPHFpY4=; b=YC1XyPdamAmcLZ
	VpG22P1AnqnKznzwwBnQJXrc4Fs1QhnrDSSOxUMzgwTwWbdhF6TJQLg+zzd85fnRPFaTNXzL3P5EM
	wumLrPgWlVqdczBhECVSBtklirLKDxiGn+mQb+cTowQ7xByAMonkgcIS0ijvA4SUlbc4RmAFfwgAY
	b2XUt5S4KVMtaCdC3Yh3iWTN9kYmTtkFkd1thHwqUaiA+m2IsV6CUQ14wQXoltpNPCGYm0Hnlex3C
	Nuz9wRtU1El3NYlDS/pHBVxsSE5SDg0iphLWVuEKo/abOKUkZZY+L/M3xK3m2nrRSaVpAUUnqZQap
	xBXANpfquUr0Cqvt7rpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyeiJ-0003Rq-GN; Fri, 16 Aug 2019 16:04:27 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyehu-0003ID-B9
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 16:04:03 +0000
Received: by mail-pf1-x441.google.com with SMTP id b24so3361286pfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 09:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r15xV+pSvUz93fe9Op05lhHjyimxUmk5oIduSMlRE+A=;
 b=JdM3jUtPBbQDkLzajaWD6jVE6fQj4gee8v8Eq83IBHgZcKjyPv/AZVq0VfWEMLpYUQ
 ZU6Owvo1J9S2pYWi4Hj7r0IRGchjhlkbrAcRycGcOqE2tSCO2VJDafQFkENFH3S+hr4R
 NaP2/zKhUKJvM0EeoFAuqjvaI7HIkkF261RUkshtsqjDssYHnChk2sytsyKbouE9BDBO
 /IquPJrMBxpMKbqkED5JgbyKa/wIpC3upkER+sd60LpJM16bVxUQx/gvg6t7t5jPTtcE
 NGvPmyicV1wOycLhIfo8UiOvZ2sWmluaFGSD3IVmgPW08p2RJrAOpSsmvKEcFJuDxrHC
 Py5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=r15xV+pSvUz93fe9Op05lhHjyimxUmk5oIduSMlRE+A=;
 b=Dqm4cr0CAsVuioSIb6SDovEQCPi1+lmUmgaEMTQdtut4kwmhY75Y60eprHdsWVJ44q
 U4OQ2ho2S2bQoaU1n/NEEZE0YK2YW5iufMpDgNNjWVAmP+1b2kxegalXb9O9AwnzLGnC
 NBLojwijhyESDy/XcKECWIAvpX2lgxHpIzR9TEwG7MZOifIOEvRDBgTk5ZMA1I4sKOFY
 cpG0062q7riaRCtZma33d958F4dZeo0cmZgs+kpEiG2PybEGj+gX/YPMoPyTXgTZWwNV
 xjPXtemS/cbYgJrVnLVCY2q8/5G/XDOdfVI1B96T5oTY4mCryRj2iHdT3s5FpKIIPnN4
 UclQ==
X-Gm-Message-State: APjAAAVc0EX9f/sEimvRFKrCI4hSUxD5bVDQnLCooTrSRZX1SHRzhLEe
 C7RpZimnUWr6Z57FhzHklIBaxPX7
X-Google-Smtp-Source: APXvYqw434z92KZltolLhjc/SLek9lgPRJMm0aZV+vDRBoG/RmT4CDXtcqHryvIT64ugBYXHYnqTuQ==
X-Received: by 2002:a65:64c6:: with SMTP id t6mr8608739pgv.323.1565971441742; 
 Fri, 16 Aug 2019 09:04:01 -0700 (PDT)
Received: from localhost.localdomain ([45.124.203.19])
 by smtp.gmail.com with ESMTPSA id m20sm7578607pff.79.2019.08.16.09.03.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 09:04:01 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/2] dt-bindings: watchdog: Add ast2600 compatible
Date: Sat, 17 Aug 2019 01:33:46 +0930
Message-Id: <20190816160347.23393-2-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190816160347.23393-1-joel@jms.id.au>
References: <20190816160347.23393-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_090402_671178_BF1FFC7B 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
