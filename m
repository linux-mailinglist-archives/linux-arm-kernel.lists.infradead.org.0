Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306DAF9E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PEZ3KK/nKyXf8eUDtYSzs+Wci2AdoT6VTVEwmrCnsk=; b=KXfCkqfw9N7dHR
	JqyawZnmb7IkJX4l9f9lAGxBtnlxMWX1z2e/RykzNSaZy43NNgi3oaG8C0wW6X4/oW4dja5JaCJp9
	3lDgtjPP3gVLS8bXPUNrQG+kqVXS+PlI+tsdxP/4sImGk1KRvOn/b/PF2h60iwgvlTxBXua3yDT+t
	JI01T87amqBu5f3Majm79myHGIan0DtPNznjmTHwWDrALHtYC/i1kzvxo+rTGpPIa6Clsv3GRH3/m
	AWAIXS1xe4NdAtHbQ6Dbh0V2ziXR59S++qOaB3F2xYJFj8nl0CyG6pSq/QIZE2eSQBNNjLoarOcPQ
	xdXUlSZTkVgmBBJH6axg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSlG-0001UP-1h; Tue, 30 Apr 2019 13:25:30 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSl8-0001T8-1X
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:25:23 +0000
Received: by mail-yw1-xc49.google.com with SMTP id i5so6702891ywc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Yt+PWI13/w7NMYz3zwPrNGqq+ReXtpTWddPqmKmBKgk=;
 b=jG67MQO6uSTq+PQJ7NLS3u3pGPqYxBD6j6Z7zSYau7uP7jvgt3bFEq3faUxv1qOiIb
 Lhjg89Y6A0R/eNow3E4oC26RwU4x5nya0AVoMdWDIBSbYBBhFLCViwOATovkHqYFgw83
 hOVUMM4j6unbJMoC5S4qfPmdZGJuwasxoQN5pLBzNoODYCmMWIdN+DK/0OhTFTFrX99t
 6EDwehqEld5biejrj0QAkLSZAfR6m8nobezuReC4ugk/eXbqiTH4l+ivloQAzM7wUwIe
 NZAar432hbtNkfGtL2tuOjYFn681Ww9UC8SmNz4UpJpUm1tSs7E6peMLsrX4yxW2SbA8
 caHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Yt+PWI13/w7NMYz3zwPrNGqq+ReXtpTWddPqmKmBKgk=;
 b=Y0e3HeiULESXmjfkxJkchFVkkFenm+iQM4qbGoUbEKU+cLdUIi3ssxGzi3qo5IWO9k
 jbno8SlVWaQq9xUZJnMLQ6j0CR7XHEYoN0/uH3b4SZdjiupWckt8qU/SyjDk8t1OsZ5B
 4eZMQavT30Vuhq9RFS9Sly5XEUGjAfk/nOk6fvKNxAFByf5hXaiD/7ZQD+7TFZ6QwlvD
 aBVg0wiTU6sZ1UE32xuY3PrQTp+H9O6pQp5mtkSt2qxtalo6t1bCHWTbQ65OO8UoRg78
 zkg3QZvlqPPazPso7tt8l6wfg4Dq83CRVODV+KGDtClGETUtjTeRymnLNaPXAe8oWgGh
 oEFQ==
X-Gm-Message-State: APjAAAVi26mNgRPR+LyaNeVVGUjTQRwhMoqh+tgJ4tb4c3MUVBW84obA
 SeKKw7Eqs+plIp9PF1Ep+g2KUKVb5nXTfbXhpdI7+zvzGO9qD1uVB6tf3afOYteunyn0qcXoy0K
 pDcnBaM9H3Omo88W6SNa2gxliIgC4S1gej5MTc5Nxac910YrRVNwdxRXqIV8YsMfboSZHF0Z58p
 ayE2ewj3cvyx69ZU4=
X-Google-Smtp-Source: APXvYqzn+VCXcz3/MPYUKI1STEW4oOzSku7o6dMmFF+1zuaxsiuVuMrbdGrvK+1IRDapYK9+TGfb+TbRJGhClYr2
X-Received: by 2002:a81:3d51:: with SMTP id k78mr56599045ywa.106.1556630720203; 
 Tue, 30 Apr 2019 06:25:20 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:24:57 +0200
In-Reply-To: <cover.1556630205.git.andreyknvl@google.com>
Message-Id: <c66c15554ff43b09aa97595907d4231be3fb7b31.1556630205.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v14 01/17] uaccess: add untagged_addr definition for other
 arches
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_062522_092108_72E795F8 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
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

To allow arm64 syscalls to accept tagged pointers from userspace, we must
untag them when they are passed to the kernel. Since untagging is done in
generic parts of the kernel, the untagged_addr macro needs to be defined
for all architectures.

Define it as a noop for architectures other than arm64.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 include/linux/mm.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 6b10c21630f5..44041df804a6 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -99,6 +99,10 @@ extern int mmap_rnd_compat_bits __read_mostly;
 #include <asm/pgtable.h>
 #include <asm/processor.h>
 
+#ifndef untagged_addr
+#define untagged_addr(addr) (addr)
+#endif
+
 #ifndef __pa_symbol
 #define __pa_symbol(x)  __pa(RELOC_HIDE((unsigned long)(x), 0))
 #endif
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
