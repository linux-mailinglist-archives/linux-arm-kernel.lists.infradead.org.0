Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD50C1B1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 07:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pG8lzGr5Hw9e6Sogvdnb0YiCmHcrfJoPpXVoryRcRxE=; b=RpEIN52RmO1dId
	AweNqW9Ghq9+LlomU8mTljfydbzBRhSF++RPJ0HyzsLX2yuCzDJdjQVyvlHc99RK3w/FFyIDtBynF
	74l4qhc131m0iUmXLUUqA6p4cXo+xxiGwhDpCd+lwqZaYcnHx02HUrIWzEvf3ShF38vLheOADGWq0
	ADSav7PWH6buXGkvO+tVaTvb4TdJ9ogVSN3Zdg+rWK4zNsVzRoIWG8R2Suri5Fp1D+7M40nAyynHF
	obLua+VVF3Vrvoe3bylIDiI0IPgujD+79XzFJ+La8H8vE3RXxaZr3TqpMv9lby8GNGvl5ylcKiyzV
	/PyrX3lAcm/pHkNUu8aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEoYi-0006rf-Ty; Mon, 30 Sep 2019 05:49:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEoYY-0006qt-UI
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 05:49:12 +0000
Received: by mail-pg1-x541.google.com with SMTP id c17so6757340pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 22:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=nTyKTixdmn3fWlZSMKqI+ME67BJO0vwEvb6x4HC5OpA=;
 b=XdzDhpGktBu9KaisAZm5uiKRmQbIqKunbhGVDriAwdnFxah4atpIE4Er5OCMKKjLYg
 cu+dCHuDTPEXhnn8YKSPzHdxUifL9f+2h6ICQ/E+H1r6oc3RlARBPwpIbefwsnnW9IDY
 2+jlmkxJYZ/ldIktJ/rGsLKM3ooTXzDgNebQYKkEWbDUs63PEXYeYwshiyqYP9el9Oqf
 06fBkx4fdllMofVZCZjtI+yjsFYV4/opxtSB33YZuLyw6NniR3mgH7I/hkXpzCcmTD2j
 LYXujFZMYgxDITvP93e5gZxBkLp6ks+AnrGUj0zIA33/mT1AAhCj9RcjocfvBGEbaTaS
 r6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=nTyKTixdmn3fWlZSMKqI+ME67BJO0vwEvb6x4HC5OpA=;
 b=AI2oOOmMCLGltklgWRp8OlD3Qa5QRZU61Uica9T1tFi+yuR6m2XvIP5te30zl0sxJO
 U3HUzc/j1hGY7+wJesk1ArDyWZvRBT9atk0FJ7vj0btmdozy5MvLYaFk1CPTkR9pGUNs
 sP9zfOvFtEZeJLhqvjpI069737Sw4XRc+syJyd1WQQ7xwFSUsHCAkDqU0G90MxSff1uN
 dFOYJS/9sp9d6Y213tbDL07sSllx3nAShk7jROF//c1ubqukOMkLdU/1N9DZD5WC8tV5
 luITZbRMW3c4VBgyYbPQbRh81k1hObO4YMdbE8FyKZ3hXFmSPLAh6ll2flm4legJvMTm
 5H5w==
X-Gm-Message-State: APjAAAVJf5bUtkKVzjc7KT5WYxM9JQjf2DKHWsLyGCMKoBiuBSLP3coM
 XYb2Vryr4TLBbf44j2Ex+zM=
X-Google-Smtp-Source: APXvYqx5LE+8Q6tf7q3Pz7Irou50eygzo6Rc00aYxWABwJWTc90BdC2obPSlpUQzJAiDRqn3Vb92bQ==
X-Received: by 2002:a17:90a:284c:: with SMTP id
 p12mr25077366pjf.87.1569822549796; 
 Sun, 29 Sep 2019 22:49:09 -0700 (PDT)
Received: from LGEARND20B15 ([27.122.242.75])
 by smtp.gmail.com with ESMTPSA id 8sm12551272pgd.87.2019.09.29.22.49.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 29 Sep 2019 22:49:09 -0700 (PDT)
Date: Mon, 30 Sep 2019 14:49:03 +0900
From: Austin Kim <austindh.kim@gmail.com>
To: linux@armlinux.org.uk, info@metux.net, arnd@arndb.de, allison@lohutok.net
Subject: [PATCH] ARM: module: remove 'always false' statement
Message-ID: <20190930054903.GA12163@LGEARND20B15>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_224910_980798_8EA841DD 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (austindh.kim[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: austindh.kim@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The each field of 'struct elf32_rel' is declared as below.
typedef struct elf32_rel {
   Elf32_Addr r_offset;
   Elf32_Word r_info;
} Elf32_Rel;

typedef __u32 Elf32_Addr;
typedef __u32 Elf32_Word;

This means that 'r_offset' and 'r_info' could contain non-negative value.
So 'always false' statement can be dropped.

Signed-off-by: Austin Kim <austindh.kim@gmail.com>
---
 arch/arm/kernel/module.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/kernel/module.c b/arch/arm/kernel/module.c
index deef17f..617de32 100644
--- a/arch/arm/kernel/module.c
+++ b/arch/arm/kernel/module.c
@@ -83,7 +83,7 @@ apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
 #endif
 
 		offset = ELF32_R_SYM(rel->r_info);
-		if (offset < 0 || offset > (symsec->sh_size / sizeof(Elf32_Sym))) {
+		if (offset > (symsec->sh_size / sizeof(Elf32_Sym))) {
 			pr_err("%s: section %u reloc %u: bad relocation sym offset\n",
 				module->name, relindex, i);
 			return -ENOEXEC;
@@ -92,8 +92,8 @@ apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
 		sym = ((Elf32_Sym *)symsec->sh_addr) + offset;
 		symname = strtab + sym->st_name;
 
-		if (rel->r_offset < 0 || rel->r_offset > dstsec->sh_size - sizeof(u32)) {
-			pr_err("%s: section %u reloc %u sym '%s': out of bounds relocation, offset %d size %u\n",
+		if (rel->r_offset > dstsec->sh_size - sizeof(u32)) {
+			pr_err("%s: section %u reloc %u sym '%s': out of bounds relocation, offset %u size %u\n",
 			       module->name, relindex, i, symname,
 			       rel->r_offset, dstsec->sh_size);
 			return -ENOEXEC;
-- 
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
