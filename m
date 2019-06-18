Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385DF49742
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 04:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kmt/iuFIxxCOz21g8Lm7pruFO82qK52DuDSAePOxdhU=; b=i0kipoLrKKDzRr
	JdJP2j4zk043TX4Z5I3YlPGqdCvrQlQTzB2RkYN3fZbSheq6SommwcA95A5pfrbmI9bczLuF174vT
	aveBgttqxHIoOQojxyln79eT/Knjb6BdL6hbxOzTZ95u//2aye5Lf0RFQGvZJY0jR9W3IuQcuugd8
	RzAr0sQJLh8zFeiwgy09+AKDqdIMoe2a2Oa2eNyHz2eu90g3lrYcKT343ZKB5cHN+2SfXqscOu8mA
	DyXZNkIsk6rZ3EbiXVLs0VHMvMvrLs0HAlMJaSVP7ugiJHA3ltdj/eatFwE7MyDxYTBxOX6sFignS
	J/TOl8yNB3v+dg33lHcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd3TE-0005RS-3e; Tue, 18 Jun 2019 02:03:36 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd3T5-0005Qb-DW
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 02:03:29 +0000
Received: by mail-ed1-x541.google.com with SMTP id p15so19073794eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 19:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9rGyx5MyzqUL3hNOygIg5vXHZRw+5lYUo6VLZDjttNw=;
 b=FuXeWKdL8BGiWJGtyC1PFvRLq9ViMtGSDNMZ/pJDkbqRcio+YVUMdElG6Di7415wdI
 qfxUDnvTcOB6yhMLtyTaser6XGh1uusGV61345rBFjLQ0KP+UxI/IDjZhffIDwigL2VK
 krtnJwix6O7swFlFuLZ9mRI4+x9V0p39n9DPsp3m6kCuNtmufnm+TQnpYJm1YFIJrlwS
 wDuUPeyHGNFoBu5f5zUOODtc1W0httU5ogD0rYvWMSRIKmC5oHgPbkWabGogSgAZYqmg
 yG8JriQByBXHNBj/jg6nC+hV7bEMmt5qqvXWnrjiFgT4ogF4ukZmrE8Iucvh/ROy+n4M
 W10w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9rGyx5MyzqUL3hNOygIg5vXHZRw+5lYUo6VLZDjttNw=;
 b=C4J8/1Wktl/BwKpyAVi4opQFFDtGlT5BMwPi+Zk4VInDu1hCLjg6loO+uW7GFLJ2es
 fzfX1ieTVykajS0z5Mh3pC1DRdkTc97SKw/TnmQ9MQmyltLDUOjqt1heADLuJ54v9KGt
 f4lfDglhUKLKkgAQfLWT9Y0eaRU5qX835Jh+El0fVA2GM/KWZaRBnzrxd7MXdSlLz4ac
 enbNO4ZmWxh97n8Hunw04wuq2EqnO6lpN7e5ubviHJghy3yEIUZ0awf2zRmOFHJU2Id8
 1e7wZlOICwHOQz4y9LJnH5DZQbtou3IC1nytOESmVolp15eKO6fJ7GE7T+6V0EtcZbYW
 g0XQ==
X-Gm-Message-State: APjAAAUYoGU5LSmEDwxe3vHcBhJdVSxtN6gW4ty0Fwq03sDK8tlcFlM8
 O0SixXKpIOVSyxuE6zf97y4=
X-Google-Smtp-Source: APXvYqzDHRpAsPfkhKUBRLTrZfx0UP4jc2Zkvevn7yj3F7lbulQ9X6QesXd9j9EMj7CbXGXPKAwt3g==
X-Received: by 2002:a17:906:52d8:: with SMTP id
 w24mr81993966ejn.269.1560823402807; 
 Mon, 17 Jun 2019 19:03:22 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id m3sm4052155edi.33.2019.06.17.19.03.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 19:03:22 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: iop13xx: Simplify iop13xx_atu{e,x}_pci_status checks
Date: Mon, 17 Jun 2019 19:03:07 -0700
Message-Id: <20190618020307.50917-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_190327_485600_3531CE8E 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

clang warns:

arch/arm/mach-iop13xx/pci.c:292:7: warning: logical not is only applied
to the left hand side of this comparison [-Wlogical-not-parentheses]
                if (!iop13xx_atux_pci_status(1) == 0)
                    ^                           ~~
arch/arm/mach-iop13xx/pci.c:439:7: warning: logical not is only applied
to the left hand side of this comparison [-Wlogical-not-parentheses]
                if (!iop13xx_atue_pci_status(1) == 0)
                    ^                           ~~

!func() == 0 is equivalent to func(), which clears up this warning and
makes the code more readable.

Link: https://github.com/ClangBuiltLinux/linux/issues/543
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm/mach-iop13xx/pci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-iop13xx/pci.c b/arch/arm/mach-iop13xx/pci.c
index 46ea06e906cc..94d30bc7bba1 100644
--- a/arch/arm/mach-iop13xx/pci.c
+++ b/arch/arm/mach-iop13xx/pci.c
@@ -289,7 +289,7 @@ iop13xx_atux_write_config(struct pci_bus *bus, unsigned int devfn, int where,
 
 	if (size != 4) {
 		val = iop13xx_atux_read(addr);
-		if (!iop13xx_atux_pci_status(1) == 0)
+		if (iop13xx_atux_pci_status(1))
 			return PCIBIOS_SUCCESSFUL;
 
 		where = (where & 3) * 8;
@@ -436,7 +436,7 @@ iop13xx_atue_write_config(struct pci_bus *bus, unsigned int devfn, int where,
 
 	if (size != 4) {
 		val = iop13xx_atue_read(addr);
-		if (!iop13xx_atue_pci_status(1) == 0)
+		if (iop13xx_atue_pci_status(1))
 			return PCIBIOS_SUCCESSFUL;
 
 		where = (where & 3) * 8;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
