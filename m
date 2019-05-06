Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E12D15183
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtNuht5RIEWgru+IaM6mRwRZFVueG3QZ3wwemq9P7rw=; b=uPp4kaTytwtEEN
	XoMbj8yIKD2kahVPThNP9xf2q5O1+DQRmCNGzzTfcvuT4hVdVmt9jdMyI7nNfKjaB57efg9EW1zKl
	xDkkpKZlbomvQfNQH3tpS97P29GfWUOmpxVf28z+5K1fvMSEQjtoxUEKHlUIy06IlRerMpCMm6vwu
	1AEHJj7ZQuqEIPujnZ4bKYG55HgRcZrarjzz5d/eqktsLkgMeaotrVszSViFLAOMvCSLKYW7yXMi8
	VYKWUhvomnmMVeDwlMpzZ7WTHN+Md3lNTZJWbDcFd7Y6ipnMVDayGlMqOutfmmo5f7cJY5WsaS719
	UZj2FE8RiNU9/dV7e2wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgXq-0008O7-Lj; Mon, 06 May 2019 16:32:50 +0000
Received: from mail-vs1-xe49.google.com ([2607:f8b0:4864:20::e49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWV-0006ra-UT
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:31:43 +0000
Received: by mail-vs1-xe49.google.com with SMTP id b26so2725443vsl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ngD1QIqwofb3Y9K5MW1PYIryx3q7PiTEQfc6RhUnaA4=;
 b=MxkQGAhZKcdMVO3IoBudATPab8TcsjZXX55HRiAN6IeYJiwC1j+iSqld+LLo8qyTyU
 J83cHqvwCOHlnCBK8LZqFG9H1aqF9NgW/OCa1+Ffyx8ZPU7n9taYd+4siYtOtJGSGqfL
 2bs1HGMZCs+84KfkjQ03uml4i8KyBdYF3wjbHGyt6HNd/mpMm+1Qp1No+KcUfeHVzCH2
 4161opexQWrAtxUlTCrivmQSMNxZ99d5aHCBZ5OmsHW7nAo6evlOzv9F19PFlipvMxI4
 C4R/T1FLs15dBoQSeJwhzGqmh+Swz0oYJVhSbKReuunpnwRMPL8ZC0ZS5QHAp3xWLkRd
 Hr1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ngD1QIqwofb3Y9K5MW1PYIryx3q7PiTEQfc6RhUnaA4=;
 b=s1WL9EqOk7gCqtm6LIL4oakDgyKY/GaUepC741vpEa9wJvjlQOLV9kr0LtDa3H7YZN
 3CFHFxfOnNo/8TPCR6HCHe8VCrgnlm/lyyvMmxYUM3qZqPWBvMAsezJX6yNBt+4eAMwg
 0VrcdZi9LBg2KN8yQoICmNW4An65eQYzox9i625kD/DRiHM0CL9XXW4YoxTG2c8hvQpF
 QtfAfgXpdKPaeg0jvb9PotliQR+LEmwYYAEweRwWGJ4ezz1vfFeW7EQsGyZQ7Le4yTJp
 l5cXR4C9U2Vibt6cb/5x5vhbtELxMOJAeJO79LsRZRqDWXcPIRv7Q9bZj/y6+1plpgZJ
 cfXg==
X-Gm-Message-State: APjAAAX8qA2YtwJdOFCbf1qwu3ExmHId4Fm5pCAl/LwsLjv7RM0T3+c3
 6jH8aCgr+rv0P5gk56bgUHs8D0woI/mHHTqHDACmAjR5OyW0361US0EBmQCW/tEQO1iwLe/XUCv
 ZjRNE5xfJ+75poM05w/1TkP0UKvzZpxxwj/ELhP8px2V2O9ZICkBmKzKochbJuJdrAz4mELvesr
 poH2rDE7dL4fbFzx8=
X-Google-Smtp-Source: APXvYqwpCSWnm5qxXyuaWGAqRu95+6gB9zDmbHbxq+0Vb45FEs/ziN6+T3PbyTnxcvdIphfk21MnSe6Qp4R1y+WG
X-Received: by 2002:a1f:b45:: with SMTP id 66mr13881567vkl.38.1557160285529;
 Mon, 06 May 2019 09:31:25 -0700 (PDT)
Date: Mon,  6 May 2019 18:30:52 +0200
In-Reply-To: <cover.1557160186.git.andreyknvl@google.com>
Message-Id: <474b3c113edae1f2fa679dc7237ec070ff4efb70.1557160186.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v15 06/17] mm: untag user pointers in do_pages_move
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_093128_646464_F237B876 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Lee Smith <Lee.Smith@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
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
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
