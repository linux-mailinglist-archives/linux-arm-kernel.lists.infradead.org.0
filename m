Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45567AF52C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 06:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LHtm6d0+V/bjn3qp+i4ibjHTf30uCav7tJLpfrXp4Vs=; b=sOHXqKYgcZyYNG
	stU0Fi041OGz/Xh8Xbca1Bp0+rPrk0PK9rUADJbRkF5iOSIbjnJvWTj8YaFTDy/smzry4WzLaAwG4
	/0Ddgy21RR5KQBBouVNBaY89JvVdd6JB5LzTZbNwI4V8A2gXTrihpjW6og2FB3R+HGX8IA2Cf6upy
	qvtOFW6sqO4h5FuGn3u85BaWKjfYTB5QSgkpoHBFYDQc3eG/fIhuhhukhi2fAqWV/BcdLzs6jvzAQ
	BaYnS1tkozB765ZUw73tVpAxCeTLAyqRc5DU7OwIFfn9irKEtJseRvw1fWHEYyOc/DHRmDVUZ1DU5
	TwNJSiOySlPfXzUCiAfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ueD-0001UH-Iv; Wed, 11 Sep 2019 04:54:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7udz-0001Td-Ci
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 04:54:16 +0000
Received: by mail-pl1-x641.google.com with SMTP id s17so4696430plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 21:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=5gcsHX1jM73NrhKsXACQeSTphDjoPn7GsPpfGO2Qoek=;
 b=GJdFUC3yNvSWX58n2jkWy5f1Y/EheqUE8tLAB1NUkxjQpa6GRAgCQHlFRmINhLM5hL
 Ww6LUqH4F9EdY9DxaWKX7fjpG0u93sLSZQXj+tftl99JYdFH9N3ixuQRkngP15Fk1w18
 WsFhfuEfCz3TSweZ8YZ3yJgVXv6QHwhFWpLA3Jmm6dtQ0W4IVhrKVtk2KsueNC1XGbxX
 zqxzj+cf6gxTztp1d5sS6Awnz023Y9YhgS13/4vbX6ReYOJOV3A/AzwHrB3F2C5n6tgY
 HKsXAnKDz1mU/mLeALbgdJFgTFV2gIjUxkCPyHDf6KHSE11EOffWbAqZ/3I1poWZREN9
 215g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=5gcsHX1jM73NrhKsXACQeSTphDjoPn7GsPpfGO2Qoek=;
 b=Vf5x3v+t/jDmOn94Y2bcJKa4B3Ag53FFcurxu6QIjX93OdWkPtUTdiprSjh+iPI4PL
 rnnOEcJ8ZAX1Meq8+YIj9pbEl4F54ctQyY/9R/jv8HcJ3RD2tyra7D+fC0ApG3TgUKGa
 378wsnYjVs2J8xvz5ZYhoJtJgvy4oPObqVb/Fr+EXU7B3a8hM1hO0oec20uIaTGfE1Fq
 O3JBx2/gH9Q005Ag5dI9z4O0c5x7uozcMqvfTPopVzmWzfH0JjwbYPDBz9o0MUrgFE+T
 ItrUznPkUSgXRbQd5ru7DZklIpKQDPGKwpvdZZu2RPQFznEPz+M/y6keaLoaePpX/caf
 mLmQ==
X-Gm-Message-State: APjAAAXJYLt2+eG2AeLw+LDiKl9HzB3WAyLNOvD5Jkq5j02iBJyTGTGf
 2eDEbO3/AtVZZNxFCnPoqU8=
X-Google-Smtp-Source: APXvYqx+WwrQ59WbRKhxTrX038bhtsCNOaRLTsvfuuiIzJUW1ROpG1neMcP2+anS++fR5Cmt/auYPg==
X-Received: by 2002:a17:902:36e:: with SMTP id
 101mr33406340pld.51.1568177653661; 
 Tue, 10 Sep 2019 21:54:13 -0700 (PDT)
Received: from LGEARND20B15 ([27.122.242.75])
 by smtp.gmail.com with ESMTPSA id v23sm610304pfe.85.2019.09.10.21.54.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Sep 2019 21:54:13 -0700 (PDT)
Date: Wed, 11 Sep 2019 13:54:08 +0900
From: Austin Kim <austindh.kim@gmail.com>
To: linux@armlinux.org.uk, allison@lohutok.net, info@metux.net,
 matthias.schiffer@ew.tq-group.com
Subject: [PATCH] ARM: module: Drop 'rel->r_offset < 0' always false statement
Message-ID: <20190911045408.GA62424@LGEARND20B15>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_215415_458829_51FE7EDE 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (austindh.kim[at]gmail.com)
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
Cc: austindh.kim@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since rel->r_offset is declared as Elf32_Addr,
this value is always non-negative.
typedef struct elf32_rel {
	  Elf32_Addr	r_offset;
	    Elf32_Word	r_info;
} Elf32_Rel;

typedef __u32	Elf32_Addr;
typedef unsigned int __u32;

Drop 'rel->r_offset < 0' statement which is always false.

Signed-off-by: Austin Kim <austindh.kim@gmail.com>
---
 arch/arm/kernel/module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/module.c b/arch/arm/kernel/module.c
index deef17f..0921ce7 100644
--- a/arch/arm/kernel/module.c
+++ b/arch/arm/kernel/module.c
@@ -92,7 +92,7 @@ apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
 		sym = ((Elf32_Sym *)symsec->sh_addr) + offset;
 		symname = strtab + sym->st_name;
 
-		if (rel->r_offset < 0 || rel->r_offset > dstsec->sh_size - sizeof(u32)) {
+		if (rel->r_offset > dstsec->sh_size - sizeof(u32)) {
 			pr_err("%s: section %u reloc %u sym '%s': out of bounds relocation, offset %d size %u\n",
 			       module->name, relindex, i, symname,
 			       rel->r_offset, dstsec->sh_size);
-- 
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
