Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF0B1C748B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pOhoM0wNchQ/sxu2htatowGTORufva+bbYM3PPlx/Sc=; b=qqNNQr31TtDZp3
	3nOnJ26dgO0APwiim11ymZRGCdHtIeV2YM6itjQq8JX/iOuuWAjhTAPwWZgncLX1o2xefwDJbW5S+
	q8RN/Z8zO+9Xh0lzz6oBSz+xXcoeWqr2B+tRBqU9NFF60tGf3fUPvq7yJq1kugwvwf/ST2GUKThdp
	gbXmKFa9soQcY2mwrcErOeWTR8jVeTGmK7z1OPS/nceNYHWCt7i5gvsc+Nity9hi867Vx7PgP4NML
	dWPiMqr+kGkBWMIBpU9djQaoonVuC8nZe6eYLJHKfZNnALa9QD8n0f3uOpvJzo5lNnP7PcZSx/TGw
	Ylwg2hoXtEPvTLo74ysw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLwG-0007jN-1M; Wed, 06 May 2020 15:26:24 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLvj-000793-Hw
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:25:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=2609; q=dns/txt; s=axis-central1;
 t=1588778751; x=1620314751;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O3zZXkaxPHeAY/TBjlQEWSHvqpGeNBw93CZThIyniZI=;
 b=HX1d1HR5BSLQbNOD+NYjXv4aVBbAhmQSePlTaitXTtBef4FFuWYPesQH
 6YaoexPAqPZLjSlt9yTAoCkauZDC4Zdc9L7EA5u33CPOIjJbsEaHdkkwW
 f8h/kwo6IBJldestz5tK1CkgFzxeZ7pBlJuAbYB7HXFiaPc6XKwgP4GR/
 dEo/NlK5du/4MpPSXIw+iwwrBEzx2+/dsFTeNsRJkFlp1ILdbQdtFLLW9
 XTZWMXDa1bitCa4R9gBXm9faOzhQeSPSohUj0aDUaesWTQ4M9oXi8fQHB
 POUrELf8weOY4IfV9Wqrgl9KN42nwMVM0f+gG/AVky8GSFGuLfFB3zNxy Q==;
IronPort-SDR: J8buDQ1P7x0El2fjyKL8g2YP8RC//BKjDSHr2nfNC3kJ4pY+gEB8kkY7IuGWzKvemotBhBO/wj
 BKVIeO0yfqDHt3Y78bC94BJDQVXowDJgFUGKO//+MmbGuSNPPuPLU/GfbWco/INACk9vK3kGgj
 7sNYuD9aHKC9oTn8X0XMn9h53dLwbntWmrLfxKCcqDLp0YCoLjYaCp/evAUije215ZohFxuCgN
 aLLy+BwideKkwZ/1ynFaour1kzp7qJhhJjvepVjgaAnfY0jr/sP1zS8lW+YlYDjDBAncgpzBBs
 bOU=
X-IronPort-AV: E=Sophos;i="5.73,359,1583190000"; 
   d="scan'208";a="8454940"
From: Vincent Whitchurch <vincent.whitchurch@axis.com>
To: <linux@armlinux.org.uk>, <jeyu@kernel.org>
Subject: [PATCH 1/2] module: allow arch overrides for .init section names
Date: Wed, 6 May 2020 17:25:32 +0200
Message-ID: <20200506152533.31286-1-vincent.whitchurch@axis.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_082552_887276_094F37C0 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Whitchurch <vincent.whitchurch@axis.com>, kernel@axis.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARM stores unwind information for .init.text in sections named
.ARM.extab.init.text and .ARM.exidx.init.text.  Since those aren't
currently recognized as init sections, they're allocated along with the
core section, and relocation fails if the core and the init section are
allocated from different regions and can't reach other.

  final section addresses:
        ...
        0x7f800000 .init.text
        ..
        0xcbb54078 .ARM.exidx.init.text
        ..

 section 16 reloc 0 sym '': relocation 42 out of range (0xcbb54078 ->
 0x7f800000)

Allow architectures to override the section name so that ARM can fix
this.

Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>
---
 include/linux/moduleloader.h | 2 ++
 kernel/module.c              | 9 +++++++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/include/linux/moduleloader.h b/include/linux/moduleloader.h
index ca92aea8a6bd..07d079085f11 100644
--- a/include/linux/moduleloader.h
+++ b/include/linux/moduleloader.h
@@ -29,6 +29,8 @@ void *module_alloc(unsigned long size);
 /* Free memory returned from module_alloc. */
 void module_memfree(void *module_region);
 
+bool module_init_section(const char *name);
+
 /* Determines if the section name is an exit section (that is only used during
  * module unloading)
  */
diff --git a/kernel/module.c b/kernel/module.c
index 33569a01d6e1..a5f2b4e1ef53 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2370,6 +2370,11 @@ static long get_offset(struct module *mod, unsigned int *size,
 	return ret;
 }
 
+bool __weak module_init_section(const char *name)
+{
+	return strstarts(name, ".init");
+}
+
 /* Lay out the SHF_ALLOC sections in a way not dissimilar to how ld
    might -- code, read-only data, read-write data, small data.  Tally
    sizes, and place the offsets into sh_entsize fields: high bit means it
@@ -2400,7 +2405,7 @@ static void layout_sections(struct module *mod, struct load_info *info)
 			if ((s->sh_flags & masks[m][0]) != masks[m][0]
 			    || (s->sh_flags & masks[m][1])
 			    || s->sh_entsize != ~0UL
-			    || strstarts(sname, ".init"))
+			    || module_init_section(sname))
 				continue;
 			s->sh_entsize = get_offset(mod, &mod->core_layout.size, s, i);
 			pr_debug("\t%s\n", sname);
@@ -2433,7 +2438,7 @@ static void layout_sections(struct module *mod, struct load_info *info)
 			if ((s->sh_flags & masks[m][0]) != masks[m][0]
 			    || (s->sh_flags & masks[m][1])
 			    || s->sh_entsize != ~0UL
-			    || !strstarts(sname, ".init"))
+			    || !module_init_section(sname))
 				continue;
 			s->sh_entsize = (get_offset(mod, &mod->init_layout.size, s, i)
 					 | INIT_OFFSET_MASK);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
