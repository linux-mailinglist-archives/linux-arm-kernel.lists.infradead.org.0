Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A9BAFE7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 16:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4CmMehvz4Win2YFrinwRSq24KbpMQYVgpQdYaWtz24g=; b=m4jcjC6LP+l17e
	QUaR0vhvYYElP37M+lEAoc8qxqckj+v3RaPvEkZC7ZtcDxEpH+v/mZ5oEekZV1c+SaQ7NTn6tYq9W
	TMR79F3955c6w+38q4Pfq8CDmrwcQq3Np43holMzkbsmfr5R2ZCZYFgm4Ymo70pChNmUeFtuo23AU
	3MH8Qh2gbJhmH7h4EWj67RLRKPlzXl3krgKC+F+cHTZDybOsnj5xRB24AnHBxpgFjaRBGhcd2B1+P
	+aZ52WVTDh35LxpiTjhezfYwtgJWMFDf0HpJUkRQGlggFalc0LQi1yKBKygHUEhDX3q7BhWbcWau+
	5eexknAvmgPh6myhbr+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83Pr-00027Y-AW; Wed, 11 Sep 2019 14:16:15 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83Pf-000278-6j
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:16:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id r12so13785961pfh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 07:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=pwI9Nj5vtGdzn5MvkjXpV83BoYE5sMntyDtos1t7hrk=;
 b=MiDNR8b5UQcE1rhM2uCd+Ka3gMWU2mmQI3g2DJQitzSEzCa3o69gPLwbEV4gi5T6Ci
 DKGVUEN1MPAqhyT22ldAeym832I0wB5sS0q3nq6kMoHqxbhJQv3PeOxASPkIQn8QBDOy
 u24zd3weX7xY/4kFfPk5R8bLtZDL7WU8/78TQifzn1tAi89M9r2m4C4KP/Q4FyD4wvRD
 QVoJE5Jfkbb9tx+uRV1ZxtD3GpQeSPx4pGzPP/8vG2EwfD4drfaMPxW9b7wdXUFkxoKL
 wGG+tdDcIq+9T9x5CvAjLEdndm9y2y65YlgrPD05+ZXStDrhdSP0WYw9rrI0DFN8hkwH
 jBWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=pwI9Nj5vtGdzn5MvkjXpV83BoYE5sMntyDtos1t7hrk=;
 b=GSmqey7cv66iDfZOdhtzobD6tTIcTlpEwJpRKkgb77N0/v0m/L7Qtq5DwcMnXGSCGJ
 dgKj/lPXl0REQfUzRsVsEXvR+IeBaklFQp7TW73B01oV2FydPnDZ9ujfyVKXoFWoSt0q
 UXmZ4TOU1JDOY68QFdB1iqvHFyHZi5X4QxksiMsm8lN8EIWy2fI9f5lpfNtbaBpJpGNW
 D0IeiXs/q2/snH+BGbV8u+ypBoHQDPDi/zg2wRQws0RPX11ycqrLXZSVOIYMb9mZxVF1
 xzWi8f5Sn6+GSs8Gm63yzQB93Dcj6cqJCMVwov98zbRqKrymzCFMOABr6aX1L4l944H2
 PtlA==
X-Gm-Message-State: APjAAAWPf6YnYmzr1uY3JVdFaak1aPad+4r/b9Qra0X8BCkVH9XwbS5z
 3cxqswC2G9qonWZ32tt/aHM=
X-Google-Smtp-Source: APXvYqxoFjgTMSHcF44EumRFFrggEjZ7D4/eizzE8mBrEw4K/LE8gZAeoQzVxY5OLRmUt8D4UlDoKQ==
X-Received: by 2002:a17:90a:ae15:: with SMTP id
 t21mr5781382pjq.50.1568211362448; 
 Wed, 11 Sep 2019 07:16:02 -0700 (PDT)
Received: from raspberrypi ([210.183.35.47])
 by smtp.gmail.com with ESMTPSA id w13sm23185858pfi.30.2019.09.11.07.16.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Sep 2019 07:16:01 -0700 (PDT)
Date: Wed, 11 Sep 2019 23:15:55 +0900
From: Austin Kim <austindh.kim@gmail.com>
To: linux@armlinux.org.uk, allison@lohutok.net, info@metux.net,
 matthias.schiffer@ew.tq-group.com
Subject: [RESEND PATCH] ARM: module: Drop 'rel->r_offset < 0' statement
Message-ID: <20190911141552.rtpdazx3ekfgsh3v@raspberrypi>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_071603_267980_8823C022 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (austindh.kim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
  Elf32_Addr    r_offset;
  Elf32_Word  r_info;
} Elf32_Rel;

typedef __u32   Elf32_Addr;
typedef unsigned int __u32;

Drop 'rel->r_offset < 0' statement which is always false.
Also change %u to %d in pr_err() for rel->r_offset.

Signed-off-by: Austin Kim <austindh.kim@gmail.com>
---
 arch/arm/kernel/module.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/module.c b/arch/arm/kernel/module.c
index deef17f34..f805bcbda 100644
--- a/arch/arm/kernel/module.c
+++ b/arch/arm/kernel/module.c
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
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
