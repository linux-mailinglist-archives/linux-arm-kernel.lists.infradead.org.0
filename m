Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85033135DA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:07:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gt2/6ijDyV+0UoaBWtPr4Z7gc/2qGZzTSgrKnDqv1d0=; b=rnO4GJlfnO79n+
	B/ZGiO5QHVyWUoSc4LaFTVXbSUXvE4BB4QanpZvJICK6fip1v+5gl0ed6B7u2AkX80umwn+dLvEfZ
	Dczb6BlFBbfCsTVTou2KkWHzUlvs0jKqbW4hqoX42zihSmKtzeYGr+BJzKS1eYlsgWXFBZ+JtC2Zg
	fFXDn+DliknB4n9J6Se6PTgfQC+EPU6wFaKGWIQNe92CPgc7Be+b9nQkXhYqJ5adgv6V7q9coOhE3
	saGpm4iRLTu/950A8pNC6fM32DPD4jqaXAoRg7JNTLQo50akIYw73sPErGURRCPukLKLPSfw0vYwo
	QCcDnrybQNJaGxb2GPGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaLI-0000AW-Je; Thu, 09 Jan 2020 16:07:28 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaIX-0005C4-MP
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:04:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585876;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HYifaCqC83E9quo0AQzzkcM5RVW6YOnxLGeWgN1jEgE=;
 b=dJrJERVaQtAMhhQ+p8XBGYf4k3Ho3Y033ijMvS97ECniZTZGN/wOaduB9PgtDdA90iqNJq
 wcmOh/jEbholLcDuQWE1J0VjGaYvXwn1iR9xo2andBeaArb5oQh78vp/EQJw9hNPWLrqdd
 o4cyvABit8TPVMNScY46XUSjLIKXAq0=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-JZk1l24UNHqyWjmq9OkZ5Q-1; Thu, 09 Jan 2020 11:04:34 -0500
Received: by mail-wr1-f69.google.com with SMTP id c17so3034309wrp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:04:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OPBxE4c44VnYWt99R79o8GTHiHVeNVwB4++Qy9Ykboc=;
 b=iptJkwd7WjBzFv2BUxH7WyHNfxc/MbjDizP+NcEMvj6l/zr9nyj8n2TfNibnqRY427
 vREcdeFbogZWTOxELQWA9pT06OKQ8Dzf7HEPd10wvBNUM6h3jdGGwCB0hi0ZCU2wyeOj
 o0pgm/+kxID0ZZ+jbTCfmbCiUzdeiaFhs3XYdEMTAlftxtDpH2LcEaLZtFvR2fcb08Et
 2blHpDuaL2KePgQ2JYH9lODsO0hvGXBRuQJdnX0QFWXDsrTU4N/cADjFymGLhSwXuDlN
 xRdSTsIBEdrrG6oXxEyBhZFeO02hXW+5e9Zkime+Uy15GwDr9ncL6GQphm3FgrtMYfS4
 n6mA==
X-Gm-Message-State: APjAAAVK7wV9AR7snblKicLaUvjaYLScrvOgIMsqU+yCsnVIRoY2LBdR
 cqW3q4oWTvgCASlhPOhllbRxOIcNCWINdAjdT09KJRl5j6BFSlxKparovcCbP2Ht6GnQelXsgCp
 Qc5SI4a6eTsKVuH9lm4F2vAEEC/MQ5NVvB0o=
X-Received: by 2002:adf:d848:: with SMTP id k8mr11316226wrl.328.1578585872138; 
 Thu, 09 Jan 2020 08:04:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqyqcNbetrnQcSOK2+QlGeBEYrCj6Gyr3pvipf9Hu3BWAwzBGYNpp4vh/6MRtMDYbRKorqQdHw==
X-Received: by 2002:adf:d848:: with SMTP id k8mr11316210wrl.328.1578585871917; 
 Thu, 09 Jan 2020 08:04:31 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id b17sm8615898wrp.49.2020.01.09.08.04.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:04:31 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 14/57] objtool: Do not look for STT_NOTYPE symbols
Date: Thu,  9 Jan 2020 16:02:17 +0000
Message-Id: <20200109160300.26150-15-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: JZk1l24UNHqyWjmq9OkZ5Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080437_821490_EB3827DC 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ELF symbols can have type STT_NOTYPE which have no standard semantics.

Arm64 objects will contain STT_NOTYPE symbols at the beginning of each
section which aren't of any use to generic objtool code. Those symbols
unfortunately overlap with the first function of the section.

Skip symbols with type STT_NOTYPE when looking up symbols.

Suggested-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/elf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index edba4745f25a..c6ac0b771b73 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -62,7 +62,8 @@ struct symbol *find_symbol_by_offset(struct section *sec, unsigned long offset)
 	struct symbol *sym;
 
 	list_for_each_entry(sym, &sec->symbol_list, list)
-		if (sym->type != STT_SECTION &&
+		if (sym->type != STT_NOTYPE &&
+		    sym->type != STT_SECTION &&
 		    sym->offset == offset)
 			return sym;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
