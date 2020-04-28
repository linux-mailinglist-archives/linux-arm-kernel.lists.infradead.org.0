Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF9B1BB4AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 05:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gr663rHKq3ZplWf4AhyRQZG7Ern/qTkwfpBw91Hs3g4=; b=mJdpOP1bUbBU0D
	4iUcJWy39UHLwljoFgEBh3UDaKCAxP6T1BzCmZHGErPE3qJuhiEMOHcCiBWF/PgDUW1s4zwf2M2v5
	M2Z8Wsoiji9O2Vcsxf57LAypK1++lKaPSC0zBgqksZvl/wHVpZNocDI2BfZMIcd203K1M+QTV9phA
	G1bNkJxlTjOk2EW06cvECUDvn3i57JmgG8U7cMgQpLOGxILmdfHXr+3xTFnpcm66797OctnbyJKgO
	jLv3f2ZccMP64XTInEZGxE21GRNaPdMiRixKr2l72fUXotQnjrcfPYg3qktRh/NbM/ANKFFrgG+Ze
	LuCMKmuHt+KepsLmwf3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTGvX-00016R-SK; Tue, 28 Apr 2020 03:28:55 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTGul-0000eF-VB
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 03:28:09 +0000
Received: by mail-qk1-x74a.google.com with SMTP id h186so21824435qkc.22
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 20:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=oz1fQ07v4YKej2hlWP6qWEvyAtsuOx0qHOmBf6H8EEU=;
 b=I3TqNZ+omoMhei62DCjjFhvToBgLQ/mzKXtTiQk26/Z5mE9W3slhueOYb+z8GilAMC
 uJiJnXNo6zMWUJK5fxe8p2Clt0BrANXorqf5ejL3fjOyojaAeijiBitnGvTxkfmUvtk5
 Oo7NlfGIo6V3y/5pocLkkx6t8Ss8qBGDmgrARr+67qmzWEXVLYp/RFVVh/KoqwASWwPE
 LeSD+Oj61O/Z74sMssGhSL5Fu1c3GwuoL3JonPdkpa7ffE2p5AG02vHLj7jS4QiYw7q5
 cGhGmYlwlCMnZ+TzyelO2CkY4EzLolMoho7DCGot0I1FyuWa+tJ3zOEFil++xSYeEETq
 eZBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=oz1fQ07v4YKej2hlWP6qWEvyAtsuOx0qHOmBf6H8EEU=;
 b=JOwYD7eCdJxv0h3wo3DWdK1cfMIarQgObOGwPz/zI8sdzAzwF0Q6CpSm7m5juUYN2s
 xfIjyEQAnlXUtCc97q2cbPccrx5RMpC+lwjzKC3QMioIAxf2XJISgkiHCEL/ZCZQFBfF
 hrX3I8S3KrjnjUOi2VUzySpviJd+GLf40Z26HER3AbbvD4ApEcnBtIw4EV5yv99KwGXG
 RIH84KzY2w4iIN7OKBW3byBuA3kwKOG94KkBet6Frb/w5CbB7Vsqup+dbx0muhVDkYli
 Njwgqy8SNncF1zBXlDJMOQE4K3wDkH9H2SDC2VyxMsu7WpJ1wSQnrrgPeRsIEmdVcryH
 42pQ==
X-Gm-Message-State: AGi0PuZjjYFc9Y57WxHJ1p2dlYzHqtFh2JvJ3OUkmwiuNZBU6RWYFx1T
 PcDTW6/SZHh+4o4WKsZT4ENvaZni3g==
X-Google-Smtp-Source: APiQypJE2oducFJ7QqE/S1GqpExEa0j+XC+oVynygSXLNhNvPC4n0hoqiHIFqgoaUYcyeTNIUgqu5F2EbA==
X-Received: by 2002:a0c:8b48:: with SMTP id d8mr26408306qvc.195.1588044485433; 
 Mon, 27 Apr 2020 20:28:05 -0700 (PDT)
Date: Tue, 28 Apr 2020 05:27:42 +0200
In-Reply-To: <20200428032745.133556-1-jannh@google.com>
Message-Id: <20200428032745.133556-3-jannh@google.com>
Mime-Version: 1.0
References: <20200428032745.133556-1-jannh@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH 2/5] coredump: Fix handling of partial writes in dump_emit()
From: Jann Horn <jannh@google.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_202808_037092_F57FD9BA 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleg Nesterov <oleg@redhat.com>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Mark Salter <msalter@redhat.com>, linux-fsdevel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After a partial write, we have to update the input buffer pointer.

Fixes: 2507a4fbd48a ("make dump_emit() use vfs_write() instead of banging at ->f_op->write directly")
Cc: stable@vger.kernel.org
Signed-off-by: Jann Horn <jannh@google.com>
---
 fs/coredump.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/coredump.c b/fs/coredump.c
index 408418e6aa131..047f5a11dbee7 100644
--- a/fs/coredump.c
+++ b/fs/coredump.c
@@ -833,6 +833,7 @@ int dump_emit(struct coredump_params *cprm, const void *addr, int nr)
 		cprm->written += n;
 		cprm->pos += n;
 		nr -= n;
+		addr += n;
 	}
 	return 1;
 }
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
