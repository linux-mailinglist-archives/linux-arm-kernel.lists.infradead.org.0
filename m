Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C05DC9D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xt7ZrUpl7aSNT2r4+MkYwo4ZUtT1j5sZbqcvnJkSAI=; b=UM3p6PE/aNvWU5
	P0S4jKhpcwU1QMaYeiVe2aHxhDBTBCThfmFTwLvILJvJmiTAM6X8PNeU4CHkrhsmPg4dxOTQnRfNs
	YdPYpIBMuiWgroZcxrAtDjhUl2MJgoK27m0ubQBkfbYTlHUq1fcf8fXzQvDXOBj+Il5EGWjDvtICT
	Y0zE7MrRGzELPOVPj6xWEKU+bijtqkg9Md3+1fMrucFChFHC7JPnksFoVRHN5XJlpOpjUT14rXeqr
	w5Nzxiv5GRw2vk2RvChd5RR/3mwB/ZqLMuC2tNx8ABh3lSOVnKOsecMTQvNkQ2LZiapN7jnKCF9y2
	7zUXdDuGDLTxWf6bOsBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUZ5-0002ud-8o; Fri, 18 Oct 2019 15:53:19 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOk-0008Bq-Vs
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:48 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N6bo8-1hyk0j1pkM-0183vP; Fri, 18 Oct 2019 17:42:35 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 42/46] ARM: pxa: remove unused mach/bitfield.h
Date: Fri, 18 Oct 2019 17:41:57 +0200
Message-Id: <20191018154201.1276638-42-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:MawNLkONnTydx3voDjASMOY1YX3Q2HFVw/Zx1i20aZcAxlZEQN3
 PwIvYpFxW385uKg533nwuZQJHTZVOQotsI4pLrM5FSiS2EsTxEFQu6KUaDZVlxVHBuRKj40
 2g6G4rU4ofriBDld+bP1ghms0VKDjH2yfcN4aS+fxyqPRATnboOYEoVWz+uhM4VHQ3ppZul
 62L7T93fEWV3yRyeJ1HHg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dlPhYoGbnPE=:dowJAAvRTybL/BGzSRUYDS
 otpbXyH8f8ZrraQvf4YNp0Y4SQLUuy+oEW6TszPqh/Gh9OtCYCMHRcySuZxAgVNBCazhT+fTc
 UPuvU03Y8pZYxbNCKqvrLQ+rJSc4aGBpW9vHUArv9eVBJ0OcYmKH3Z2wv2qk82sHwrL/oZxzl
 J8VpWJzCEUueo0tfIgtGd7val5Qg5B87BIxk0xnf13XRb/wLtdzJ1OcwfoKORy96OwvMmH99O
 czBV1iKdwQ2SsNcDE5cGZdu0ExatpjlLlpCXcxKblP3NJpG0qbMzzgC3/mGcjXV0gpi+664q9
 JbzFIT6eokQbtfieEVcAu4J4Xr+mJBcrun1WlhdFKrP2CS/CC5tpmlWjUpo64IX0nosxK0zGy
 MJ2fUjjNKvqYJ/UI2AaCSj48juuOIOi8yB4T96rZNdKH2IylrUHatFYLVuLCcq+nVplzBcciE
 Rh1I64NEciPR5ylbCwf9GVD5kuJ/h4bykOJBNRgjRCCQanS+SrjK6B+YsmS5vHg3f/8bBci5I
 8umJjsrwnrJqtsixmUJfECdl5o5KMgrL+8x7yRc+3cv5zFNbXIZ0kwXBuU33W26LxzZFW2uyE
 SbhQHspPaXZ4+mWgsV9tPkFEkOo38If05TLfzmZYlE8MfK3v81wScmDlFnBxQAa4c3qA3xOKm
 2x93cH5hwbxO0vFCG5DKhApChtud7qiSdL4IVIQ/CY/0K3dHfammCmjiEFsOANEXSE+9z9yC5
 MRnpXCA0iChkccbIRJCxjevyfIiHTBaMCAi/1DVgjNQ+g4CA2blahgeeniLyd3unnwFvG20aM
 RvX2ZtPJE9MyF4EIYhGL3KCOtVup4aKKjy+P2I1QlsykGOqdaGEOWXqf+dNtg0OsJWgoVx/l4
 eiMXHgRWL8vILs8HkCWw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084239_393281_644F187A 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sa1111.h header defines some constants using the bitfield
macros, but those are only used on sa1100, not on pxa, and the
users include the bitfield header through mach/hardware.h.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/include/asm/hardware/sa1111.h    |   2 -
 arch/arm/mach-pxa/include/mach/bitfield.h | 114 ----------------------
 2 files changed, 116 deletions(-)
 delete mode 100644 arch/arm/mach-pxa/include/mach/bitfield.h

diff --git a/arch/arm/include/asm/hardware/sa1111.h b/arch/arm/include/asm/hardware/sa1111.h
index d134b9a5ff94..dc8850238e2b 100644
--- a/arch/arm/include/asm/hardware/sa1111.h
+++ b/arch/arm/include/asm/hardware/sa1111.h
@@ -13,8 +13,6 @@
 #ifndef _ASM_ARCH_SA1111
 #define _ASM_ARCH_SA1111
 
-#include <mach/bitfield.h>
-
 /*
  * Don't ask the (SAC) DMA engines to move less than this amount.
  */
diff --git a/arch/arm/mach-pxa/include/mach/bitfield.h b/arch/arm/mach-pxa/include/mach/bitfield.h
deleted file mode 100644
index fe2ca441bc0a..000000000000
--- a/arch/arm/mach-pxa/include/mach/bitfield.h
+++ /dev/null
@@ -1,114 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- *	FILE    	bitfield.h
- *
- *	Version 	1.1
- *	Author  	Copyright (c) Marc A. Viredaz, 1998
- *	        	DEC Western Research Laboratory, Palo Alto, CA
- *	Date    	April 1998 (April 1997)
- *	System  	Advanced RISC Machine (ARM)
- *	Language	C or ARM Assembly
- *	Purpose 	Definition of macros to operate on bit fields.
- */
-
-
-
-#ifndef __BITFIELD_H
-#define __BITFIELD_H
-
-#ifndef __ASSEMBLY__
-#define UData(Data)	((unsigned long) (Data))
-#else
-#define UData(Data)	(Data)
-#endif
-
-
-/*
- * MACRO: Fld
- *
- * Purpose
- *    The macro "Fld" encodes a bit field, given its size and its shift value
- *    with respect to bit 0.
- *
- * Note
- *    A more intuitive way to encode bit fields would have been to use their
- *    mask. However, extracting size and shift value information from a bit
- *    field's mask is cumbersome and might break the assembler (255-character
- *    line-size limit).
- *
- * Input
- *    Size      	Size of the bit field, in number of bits.
- *    Shft      	Shift value of the bit field with respect to bit 0.
- *
- * Output
- *    Fld       	Encoded bit field.
- */
-
-#define Fld(Size, Shft)	(((Size) << 16) + (Shft))
-
-
-/*
- * MACROS: FSize, FShft, FMsk, FAlnMsk, F1stBit
- *
- * Purpose
- *    The macros "FSize", "FShft", "FMsk", "FAlnMsk", and "F1stBit" return
- *    the size, shift value, mask, aligned mask, and first bit of a
- *    bit field.
- *
- * Input
- *    Field     	Encoded bit field (using the macro "Fld").
- *
- * Output
- *    FSize     	Size of the bit field, in number of bits.
- *    FShft     	Shift value of the bit field with respect to bit 0.
- *    FMsk      	Mask for the bit field.
- *    FAlnMsk   	Mask for the bit field, aligned on bit 0.
- *    F1stBit   	First bit of the bit field.
- */
-
-#define FSize(Field)	((Field) >> 16)
-#define FShft(Field)	((Field) & 0x0000FFFF)
-#define FMsk(Field)	(((UData (1) << FSize (Field)) - 1) << FShft (Field))
-#define FAlnMsk(Field)	((UData (1) << FSize (Field)) - 1)
-#define F1stBit(Field)	(UData (1) << FShft (Field))
-
-
-/*
- * MACRO: FInsrt
- *
- * Purpose
- *    The macro "FInsrt" inserts a value into a bit field by shifting the
- *    former appropriately.
- *
- * Input
- *    Value     	Bit-field value.
- *    Field     	Encoded bit field (using the macro "Fld").
- *
- * Output
- *    FInsrt    	Bit-field value positioned appropriately.
- */
-
-#define FInsrt(Value, Field) \
-                	(UData (Value) << FShft (Field))
-
-
-/*
- * MACRO: FExtr
- *
- * Purpose
- *    The macro "FExtr" extracts the value of a bit field by masking and
- *    shifting it appropriately.
- *
- * Input
- *    Data      	Data containing the bit-field to be extracted.
- *    Field     	Encoded bit field (using the macro "Fld").
- *
- * Output
- *    FExtr     	Bit-field value.
- */
-
-#define FExtr(Data, Field) \
-                	((UData (Data) >> FShft (Field)) & FAlnMsk (Field))
-
-
-#endif /* __BITFIELD_H */
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
