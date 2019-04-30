Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0748CFA23
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbH/wbMt8JH07H+6wK4qaBFHINQgIfTXXcj2cd8nV40=; b=hDLOfGJrdblI1a
	+jcflHmIvUtfM+kVUC6OfJ22hiDcxHYeS8/tAHtZieamAS53HWH6DpnzfXLgyQKiEkEsmPWw4TT5T
	XBJzNstPWzVGb7kfW82b06U5R9XFYXnbblCy4iSy4j5GQQ/bB5z+kF1cbnfqEwCPcX+CAS/sF9DhR
	Yee6B8JTETETbdrtHRLQXBmZAa2Y8AUtKbhBvlXut13bwfeMstiJ2J7RHDDtCdvIncx2YjciREbrZ
	EtuYF/sGy1fg5rdsZKiI19R0GtmIIiy6uQlEvQsGkOYAP66zVd/M66j3W1uNkcepZfDpxbZVf6MEk
	fwOmxeaB6gQYkK7Ale0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSn9-0003Nt-DX; Tue, 30 Apr 2019 13:27:27 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSlO-0001k7-3D
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:25:39 +0000
Received: by mail-vk1-xa49.google.com with SMTP id b75so6334955vke.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=CVV6psz/Vns5azsm7jZt0BKocrzPfr2CsD5f51mITmQ=;
 b=pHAUFUPIK00HUvs8fYzbfMDhOtYuRZOYj18jl6SUOemiz8hMuVoEwpyBcBFZsdPfRy
 CP69mD/DWkxSBrhRr7+Ao/OQBLtynTBk0B9gn31tW8yWHjU69Q7PB4ZDpgvtdnhUTEzK
 8CbwpHg2uux/P91ru8mr0G2/NpJ+DVwloVARu7ft7n27vA6hkWJDGMY1mugB3YmYuyhT
 OwmXeDxT9woV4yHQlsAA+KWTEq0dG80iCwsoH+0J1dhKu1C33LiknxZR75he7h2J78XE
 ZKdvpYjQpomJrWqZzF9raVXk6z/lSdaqbAYdD0YzglrS0vRmztdJidedrkfiqCqRVd3N
 hnSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=CVV6psz/Vns5azsm7jZt0BKocrzPfr2CsD5f51mITmQ=;
 b=Fnj5mzzOo7fLVeGfbIG5yWo8maJZmSDvpNjEjVnvdkKPf9wIQD+QExsC+kv6bGEvQ5
 xoTN+/j40Em2+/eLYjgcMQJBIJpgBJ64QxoxMCDbAJF++EOwVYEwetllwHMKVT/Stpjj
 kT5J78jLukm1z2DLzjNU2OmPJiJJiY1QFVZYdEw7Fb7fYPTPqQidGmZPXZLOoojJYUIW
 +pcdXQ8kq2e7Fq4B2Zk4EhCaijjQcEEWDGiNIyJuX82HbgIyTXgLfDJ4+WfagNVvRVbq
 +foyJBUAD/90zpADm8IwgWBbF4dQU3qhJISURW52ITbriNDiF3p5GEEpMnewb2hFYLnM
 z75Q==
X-Gm-Message-State: APjAAAXqnwq0lXTVdcDM4T30e6LDsES9cgPCceCDbrcI9hqQMWfEec5H
 0/yQfM9QzprSmecRgoINnx8uBRPlTo09N2IXc76ZUvC5wWT+2IWAcF+cJeTpRP78Om9opo8ctWb
 zUDfxfgjLUaNh5NZsBZkHM8x/2KBVExNaQcgsPlWTjb9uTC94Xfv7YLOFL2TWzDFePLqqAgmbo4
 8n4Il3FcVcpQr3JfQ=
X-Google-Smtp-Source: APXvYqxbH0hW8IUGPJRsH+MKg4I9yJOI2DrUXBayHbDSUEVQsqLwVaAkxsd+/0KcP5RvItcIqz2adgVjyHXkB8kF
X-Received: by 2002:a67:dd01:: with SMTP id y1mr18718014vsj.39.1556630736057; 
 Tue, 30 Apr 2019 06:25:36 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:25:02 +0200
In-Reply-To: <cover.1556630205.git.andreyknvl@google.com>
Message-Id: <80f7d6a2f68adb1c41ef5baf8973537380c681b0.1556630205.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v14 06/17] mm: untag user pointers in do_pages_move
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_062538_146050_CA44B891 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Koenig@google.com,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Chintan Pandya <cpandya@codeaurora.org>,
 Felix <Felix.Kuehling@amd.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Kuehling@google.com, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>, Deucher@google.com,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is a part of a series that extends arm64 kernel ABI to allow to
pass tagged user pointers (with the top byte set to something else other
than 0x00) as syscall arguments.

do_pages_move() is used in the implementation of the move_pages syscall.

Untag user pointers in this function.

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 mm/migrate.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/mm/migrate.c b/mm/migrate.c
index 663a5449367a..c014a07135f0 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -1617,6 +1617,7 @@ static int do_pages_move(struct mm_struct *mm, nodemask_t task_nodes,
 		if (get_user(node, nodes + i))
 			goto out_flush;
 		addr = (unsigned long)p;
+		addr = untagged_addr(addr);
 
 		err = -ENODEV;
 		if (node < 0 || node >= MAX_NUMNODES)
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
