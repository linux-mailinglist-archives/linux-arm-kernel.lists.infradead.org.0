Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AEAFA46
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nK3S9b84h9u61hYVS550wzCZQHXkDRy0TWgg2S0AgUE=; b=aBXQRd4gfGCutO
	i2tAlnjSImjCLvPUr1HV0MuSA6JtkK121U1HStoKoSLwCpSH2syishXB2B2PadR+jPXAx0AaaODX1
	Rg2W7LJXlnFRYQDZSdJjsKowqmkS37bwh0gK+PyhbT4Zf75NsRrNEBgYA/z3Xfxc1EXeKRtJpETT3
	NXVT86Mi1iXAlflHOAm4n6m5kW/k58qQVGiVIKU3Ut+cPeM7SjlFEZPWU6fja4aRHtFzQ9wCGB0Bw
	UuKKUn74HUpPstEpmdVJOZno35jxssH5r/s+XxE3v/jjg4NpxprE/DtA6FjzxUJBT4v1E+ov8JzIL
	wqiLTtFdDUdp6gJKzeZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSnp-0004QR-RA; Tue, 30 Apr 2019 13:28:09 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSla-0001z1-CU
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:25:56 +0000
Received: by mail-qt1-x84a.google.com with SMTP id g28so13049276qtk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=pQaENO1QgY/e9MwQ0ENVfJipTlkpkaPmrD1twTVYLJ0=;
 b=DQlymDAakXGN/s4aLv8FvnKDxFM3vFWe0ntwkbEht00uRZJyqzxLv2z+v+0YWcHIgB
 sKEjfbgI8NGPishfLFVkzFtit1j8To4k9tOzAqlClb7eaOmN2puCzEFRoWDOow3x6abM
 kF5rtq7WeiaNC1bvr93O8cSv4wiLQYr7p1i1gibkW3E+uyrFOpeeQawgxMfeq7+k8NA+
 lhqPJjcIYupZYzc0GZblGzb4ejeI2t/6j/U8CyZxFUtArO4WewVdwtuEJHeP7D/0QDFm
 3J0WxXCQ6Yi/AJW67UTm3sBwIOkc0wcf7BPZUgJdkZ1LyiC4qY/JaOc6zgNq+gGsc78b
 WDtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=pQaENO1QgY/e9MwQ0ENVfJipTlkpkaPmrD1twTVYLJ0=;
 b=OXyTLQzaYjxEzFqo1E4u2lwGPFoVbei64H8BC6+lxYFIjqA/TRrKgqWyJJMSGTxP1f
 PADwhDeQ62htHJ59gtPpz3Cr41LI3mSmbRCCAJobpoRmxCPkY8o0CMUE9VCHZTp08JT/
 Q3ll320OkLwIWC2nBn/AiT4fCBjDzI31HYl7MLHYgx2l73cnyjqrO7v64L45+onD1Z5+
 FaOA0/U/q4G35etPBvb2+Vq/Nt8R4C/viF0bV6o+42zD5434dzpXOc0dy7zxp4WiVt8n
 q6hhN7//cnlKDC0ATX3+v/lj2I9RRwqHNhE4IAKacjbPl15bakmaJM2TLlVrpXnDTbrW
 9yBA==
X-Gm-Message-State: APjAAAXiM2FQQQSSXuz4px8GMt364ELnU3VxZr+PC0A7jyC6h5SrnzVQ
 JM3UuTayWWvKTf2iSQQ0bbapcKrCrt4oOxBKGGH607OQHbMKpIwIOyR9sonBp48pNkIo0x8P8cg
 Gv6RiDB3thxEnfjZ9KIwmEl/fNYXfnGRArDmZRPNSpGivd0Utyx1MIKV2b214BdKi/Oo11yuRMX
 5+Y4G8Hn39WgV6kvA=
X-Google-Smtp-Source: APXvYqzXVakUsCoJZt28GHuUY2fVSxrYrmmdkh7uTay5rLBg9HnfxGjKEfUnDj0v5eIkWQX2umWuPHIlib2dmYL6
X-Received: by 2002:aed:2a0c:: with SMTP id c12mr9957100qtd.232.1556630748252; 
 Tue, 30 Apr 2019 06:25:48 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:25:06 +0200
In-Reply-To: <cover.1556630205.git.andreyknvl@google.com>
Message-Id: <7d3b28689d47c0fa1b80628f248dbf78548da25f.1556630205.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v14 10/17] fs, arm64: untag user pointers in fs/userfaultfd.c
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_062551_261033_6B359F3C 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
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

userfaultfd_register() and userfaultfd_unregister() use provided user
pointers for vma lookups, which can only by done with untagged pointers.

Untag user pointers in these functions.

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 fs/userfaultfd.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/userfaultfd.c b/fs/userfaultfd.c
index f5de1e726356..fdee0db0e847 100644
--- a/fs/userfaultfd.c
+++ b/fs/userfaultfd.c
@@ -1325,6 +1325,9 @@ static int userfaultfd_register(struct userfaultfd_ctx *ctx,
 		goto out;
 	}
 
+	uffdio_register.range.start =
+		untagged_addr(uffdio_register.range.start);
+
 	ret = validate_range(mm, uffdio_register.range.start,
 			     uffdio_register.range.len);
 	if (ret)
@@ -1514,6 +1517,8 @@ static int userfaultfd_unregister(struct userfaultfd_ctx *ctx,
 	if (copy_from_user(&uffdio_unregister, buf, sizeof(uffdio_unregister)))
 		goto out;
 
+	uffdio_unregister.start = untagged_addr(uffdio_unregister.start);
+
 	ret = validate_range(mm, uffdio_unregister.start,
 			     uffdio_unregister.len);
 	if (ret)
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
