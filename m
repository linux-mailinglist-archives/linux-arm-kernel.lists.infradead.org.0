Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30CC1CD8D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JXakJnhbF+6rNLrx+rXOdpMUa17vYQEq7ep1H6Fsb18=; b=esu9C23z+dmNpX
	CT2iAcFlDHNi2D5nRoVuwks8lBFxneIuhw2I+GDhWaY4LDMiuppVC0MKAriN9vyRopzolYxrfzpcv
	cCtYo7onEuq7lUFZ3HMIoTeWvrSLw9xepqstvDJHyPK4qXCMCyrbaA+JJjoyl7OUDubDUcEjkev8n
	GrH9e6Z7TPOCUoca8WEaS1Dqw0hkCrl7KLW1ffGE8xxtRO9sdg0wHihhR3jHZowCm5LX4X5du8MbM
	9mAMLX6vKdLSQNVmK+GEgmAy21MwZrMnzWdhODR1YILW9PYZmPOoX16PWgLvxnXVcbz0tZlpy1l+A
	u5bMJ83wAEGPFQQPi8Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6vD-0005e2-Ph; Mon, 11 May 2020 11:48:35 +0000
Received: from smtp2.axis.com ([195.60.68.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6up-0005UE-HA
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:48:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=2683; q=dns/txt; s=axis-central1;
 t=1589197691; x=1620733691;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nJ1qTOy5LEl+3ghrdE6ayVo+QTlImTiM42UK10R/CO0=;
 b=AUhNVz39PfUReg7loaKOLYw+MRYeeYpcOVEuP+MazkAQQy3ZUjCZ9Usd
 Zd10Yt3T/6cm6vPpfE7ZQZsWKdQiKURFOPNoDGR84JneGUXwJug//Bf8A
 2RDQcdY8IdZmaPSjLVjB1XLeJB2gUAYHSDv4WnR5Td+F1soNImwS4xN36
 V4WPwKVo+criaI5CUyH6mNmbRcSaAq2nTjusuvsNITumA2jsKcX4dXCky
 DqRZqu9qtb9GIHlJpXDMesvrpzIxnHUhsdcJOpYsU0htg6u7Cf1WOhif9
 MDqJ3WwTTelld3hlrGDeL1Y2/6Ec0YkPcJlelKWrKtrFbL5Z+wy3FVuwS Q==;
IronPort-SDR: eWZuRw32j5JYJgOi5OmGwaaj8bk7KszfEuOPpxP4bH8Wi8itNv+fizjpxYs2CA1SNITyHvwDyy
 qF5XgZsbtYDgaXmRoOUZPIQjDvnmgDdVFNOj+YUImbRBZMNyhpfwCzvty6IclSGzLL0wn4Ylkg
 NMSpihDcfR3G7ROq4TYzqOCAX+eMijiP9tOhd2iSgF4dLKYOfzCfwuCXkzHJvihLExksYRL8+y
 icIrmdn+FfpXtULH6nfG6NJs0t6kxPaR7E/bKSLsZ87dQvssdR9LdF0N5Ld/GlMxn9zZsK4lbm
 7jI=
X-IronPort-AV: E=Sophos;i="5.73,379,1583190000"; 
   d="scan'208";a="8358766"
From: Vincent Whitchurch <vincent.whitchurch@axis.com>
To: <linux@armlinux.org.uk>, <jeyu@kernel.org>
Subject: [PATCH v2 1/2] module: allow arch overrides for .init section names
Date: Mon, 11 May 2020 13:48:02 +0200
Message-ID: <20200511114803.4475-1-vincent.whitchurch@axis.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_044812_074784_25C45E74 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
v2: Add comment and move module_init_section() next to module_exit_section().

 include/linux/moduleloader.h | 5 +++++
 kernel/module.c              | 9 +++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/include/linux/moduleloader.h b/include/linux/moduleloader.h
index ca92aea8a6bd..4fa67a8b2265 100644
--- a/include/linux/moduleloader.h
+++ b/include/linux/moduleloader.h
@@ -29,6 +29,11 @@ void *module_alloc(unsigned long size);
 /* Free memory returned from module_alloc. */
 void module_memfree(void *module_region);
 
+/* Determines if the section name is an init section (that is only used during
+ * module loading).
+ */
+bool module_init_section(const char *name);
+
 /* Determines if the section name is an exit section (that is only used during
  * module unloading)
  */
diff --git a/kernel/module.c b/kernel/module.c
index 33569a01d6e1..84d0c455fb44 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2400,7 +2400,7 @@ static void layout_sections(struct module *mod, struct load_info *info)
 			if ((s->sh_flags & masks[m][0]) != masks[m][0]
 			    || (s->sh_flags & masks[m][1])
 			    || s->sh_entsize != ~0UL
-			    || strstarts(sname, ".init"))
+			    || module_init_section(sname))
 				continue;
 			s->sh_entsize = get_offset(mod, &mod->core_layout.size, s, i);
 			pr_debug("\t%s\n", sname);
@@ -2433,7 +2433,7 @@ static void layout_sections(struct module *mod, struct load_info *info)
 			if ((s->sh_flags & masks[m][0]) != masks[m][0]
 			    || (s->sh_flags & masks[m][1])
 			    || s->sh_entsize != ~0UL
-			    || !strstarts(sname, ".init"))
+			    || !module_init_section(sname))
 				continue;
 			s->sh_entsize = (get_offset(mod, &mod->init_layout.size, s, i)
 					 | INIT_OFFSET_MASK);
@@ -2768,6 +2768,11 @@ void * __weak module_alloc(unsigned long size)
 	return vmalloc_exec(size);
 }
 
+bool __weak module_init_section(const char *name)
+{
+	return strstarts(name, ".init");
+}
+
 bool __weak module_exit_section(const char *name)
 {
 	return strstarts(name, ".exit");
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
