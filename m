Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6437A1A666
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 05:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gAlguj24pteQkoXKoRLJV+DYWG3Taxxa+1pM0oAiCBk=; b=spkQXqEkqFV3hZ
	/m3GzaRZJlDXnwrjk9UTqdtgrvG2f+bIni/3AiFzs9r9dwtjc3MmahbfIaKgTZUHdBQCuOeEBZMkr
	lvQ9tsEV31R6BAEirrggzjrGnrUVsfX7XTjJWaCw1oHJe+elhIzVOjp2esSqZPtBYBLjtVu47LDoX
	318H7290m/JOgQSltyOBsspdwLsgcD53C4Q2yUom10047uEtoHAAOlrTkIhUOQyp/7/wmOOHnWE3r
	WbJ+pFiyKw/oKQITYKBBlmqBU70h5vVddCuiCG6LTPQGHvHhQrPclPjtbqbHjGNOZSmm5toFUuWi2
	NWO4pow9FlJ6HXjhh44Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPImz-0000dX-04; Sat, 11 May 2019 03:35:09 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPImp-0000Yq-5q
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 03:35:00 +0000
Received: by mail-pl1-x644.google.com with SMTP id w7so3703350plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 20:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:to:cc:subject:mime-version:content-disposition
 :user-agent; bh=LDc7rNdw62w/seke1MS8uCzmq10Ut2jeFbOZTp/I/g0=;
 b=uEFPwcEAzl3OyLKOZVjvUMfB0VPWcdQksFusopwojrvwDdk2xOIM3Y/FL24LT+U5/0
 qpnGB5nBmdJwKQ09pKm9dGSd1ndjnf111Y7Q0xczQJBT4zfaUrCVTWCKyoUKfJRfV0eS
 3MqED+rBGdCiuxoKnxgQ+bDm2bERhYnw9uCZsvRFL4aFTScYJpKAkBdGwJ2dfBbcrdPA
 VVfGp8Q/VqZDGXeUGCTBDhm1ltbzYyaGmYEuyhX49P8SAWjmVdAH1IrrznSC1VmabSBH
 0Zc/Q0x++7O9Di4QrozzI0mGO5zS4vQsEPeTIYjoji2sTfvE4tFxjVuTwkyIsRH3Fmff
 0FFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
 :content-disposition:user-agent;
 bh=LDc7rNdw62w/seke1MS8uCzmq10Ut2jeFbOZTp/I/g0=;
 b=KUlu2xDLcyEUyIFN1ZVunRDtahyXXAHujP7Td+0eXujWNf7qM5aLJiSE7fNEsZZ4uy
 Mu+X6SfFf8nmFXZrJ1UPHWgX/hdGr4PWnodwK6v0flF6UxKPruA6+nqFI2fWiAjJsvtX
 AEyxRSHPGqR8hapaaGhvBCybUQIF0NCXrYpj+g0qkN0ByGpzefuzHhIn/HI0zkmhNt2s
 v3a6pgMyVyINOh1h/90vVZNPvMk8CbU3c91NwCXPd1xI+lO6V5qC4+F/5hAltAvrG5Vp
 acADLqaAb0O1UPqpqgrnccU7ddtbPZZV0mRY3lxUtVnibBPYfxtmEqrhb5dFl2r4R2+9
 Xv4g==
X-Gm-Message-State: APjAAAVAcz6KnErmpTGEE0PlQoepJd/7oZlxYgrrcRZErcVQ4U/GyQvM
 n8pvIB2rjPBOH/yhGvlaEDY=
X-Google-Smtp-Source: APXvYqzy2WoxWCz1Vm6unYTT1LzLCRqW+x4Zw/BP8g15+4R82vnJfaOGMAxc9GxrU7g6acOeQreO+w==
X-Received: by 2002:a17:902:a614:: with SMTP id
 u20mr17106340plq.117.1557545698049; 
 Fri, 10 May 2019 20:34:58 -0700 (PDT)
Received: from sabyasachi ([2405:205:6182:13c5:d90f:fd61:4614:86da])
 by smtp.gmail.com with ESMTPSA id r5sm6495335pgv.52.2019.05.10.20.34.56
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 10 May 2019 20:34:57 -0700 (PDT)
Message-ID: <5cd642e1.1c69fb81.4ee83.327d@mx.google.com>
X-Google-Original-Message-ID: <20190511033453.GA5696@sabyasachi.linux@gmail.com>
Date: Sat, 11 May 2019 09:04:53 +0530
From: Sabyasachi Gupta <sabyasachi.linux@gmail.com>
To: linux@armlinux.org.uk, rppt@linux.vnet.ibm.com,
 akpm@linux-foundation.org, rostedt@goodmis.org,
 changbin.du@gmail.com, sfr@canb.auug.org.au
Subject: [PATCH] mm: Remove duplicate headers
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_203459_243510_6401B377 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sabyasachi.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jrdr.linux@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove asm/sections.h and asm/fixmap.h which are included more than once

Signed-off-by: Sabyasachi Gupta <sabyasachi.linux@gmail.com>
---
 arch/arm/mm/mmu.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index fcded2c..29035f4 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -23,7 +23,6 @@
 #include <asm/sections.h>
 #include <asm/cachetype.h>
 #include <asm/fixmap.h>
-#include <asm/sections.h>
 #include <asm/setup.h>
 #include <asm/smp_plat.h>
 #include <asm/tlb.h>
@@ -36,7 +35,6 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 #include <asm/mach/pci.h>
-#include <asm/fixmap.h>
 
 #include "fault.h"
 #include "mm.h"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
