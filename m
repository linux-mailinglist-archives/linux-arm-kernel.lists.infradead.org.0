Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1273EAC813
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9ugYGPtAynHK6XN/4W5pu9dPWZK0Ms4KB+zom71z2Q=; b=pTg9FhxgDmACNe
	Fc02DQ8Owh0DczBQ3ci+Ogm/tuphTJ6axYJ7HohuNSVwwSBadnimqLPtiuFYYOgQy2ESdD4+N2TI+
	HADg5Qoa/0AOV9B+lxGkcVtIn+re6zddpw9Jww2rB71nw7K827y4HAi5ZGAV7KYLsg/uxZ+byi56k
	CKJooRaVAqtHhFpUM8pXwF0SyZVbKLC6QvvQgR6tetMlGYGEjKRUUc3qNoTdFrmyne47IN+0Lq6JW
	leB8rAqWM/zHfgAKO0Z0XZuTtzGmTBEgK1DyYYyzDfqaPXbpYYJ3cg6xDndwdL6wPo+lvLSp7ugMJ
	yVvWXVX5rG3jac2rXf5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6eT0-00081a-5b; Sat, 07 Sep 2019 17:25:42 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6eSa-0007tl-KU
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:25:18 +0000
Received: by mail-oi1-x242.google.com with SMTP id g128so7595184oib.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=rtCJ9oXMvzyqzSO/6+XMP8VFA+c1bypJ2A9Wi4tC2B0=;
 b=YVxuP3Qw60ve+K16OV/2OTXTVXsnZSGiw8yXWOnvCSAPW2RJsbvv9esY2jbVJk+MTd
 gZaFZgeUDSH31cxpn+4ACT+RtrLyEzlpB9CSFSKqcLbBdu5k7zv4t9ddGWWi0TGCGwiu
 gFWbCI/pIFOqwAWmWO0aBRiIEO3n1vCRrqraKqGz8fVFzLWJMKaeT4nkP76nJ9dVqS5M
 mGxpfLI0pp+7NdvVFdGAITNx/Whl+E8KWWUR6DpIaXjDSmYY2Hh+szZWNaDpLgznhs4Y
 DGw/CpIO4ALtMzKoFiREaJMW+0Vo1vWKa+L+gYpEaIJGJWvuU4XIhs/WSIDDM2sUHuCP
 a9dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=rtCJ9oXMvzyqzSO/6+XMP8VFA+c1bypJ2A9Wi4tC2B0=;
 b=mJ5AsY/c14G+JYed7STiZt1ja7L2Wt2T4DhFyY1JtXl6UszwB5aJJzTGxGydZAgrib
 w0eCmf5rHMZkli+t30tzOHN3iLGIlV6AUbJrC8XRoe3/4XbQtzaVDiOf42kw9AqHvz3g
 jK4qeA5JU2F86d0nFcB8bGZBqndw4X/uLuhGbzbTCqu+88dpCvl+uHZyK7+H+V9EHsuy
 HElnkU8w7yXVXzjEfc05ZtMNWDxG086YOkfJWhe1AmwX/ClTX79hFf4cR90MHq87362j
 qfaB8DEIVWTieKwZ3aYztlLer35UTdkq9D9bky8sFnlEmeGtp4jOxmbJ2qy6lrfsmB3c
 5jzA==
X-Gm-Message-State: APjAAAUpCutpxUAHKNkY6WSvLCp6IlUlMckmzs4Xinunj+EHKw76pxnK
 zlNe2WrXyxx4w5Gd/EeLQgI=
X-Google-Smtp-Source: APXvYqx76pbWI8aVf7Yn3gxH+LEAS1HoAzYWQhYG1OYCBkmvO+49isQhgNq9dB292v9n9IEZQlObWg==
X-Received: by 2002:aca:b388:: with SMTP id c130mr12021078oif.27.1567877115467; 
 Sat, 07 Sep 2019 10:25:15 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id h5sm3898728oth.29.2019.09.07.10.25.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 10:25:15 -0700 (PDT)
Subject: [PATCH v9 1/8] mm: Add per-cpu logic to page shuffling
From: Alexander Duyck <alexander.duyck@gmail.com>
To: virtio-dev@lists.oasis-open.org, kvm@vger.kernel.org, mst@redhat.com,
 catalin.marinas@arm.com, david@redhat.com, dave.hansen@intel.com,
 linux-kernel@vger.kernel.org, willy@infradead.org, mhocko@kernel.org,
 linux-mm@kvack.org, akpm@linux-foundation.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Date: Sat, 07 Sep 2019 10:25:12 -0700
Message-ID: <20190907172512.10910.74435.stgit@localhost.localdomain>
In-Reply-To: <20190907172225.10910.34302.stgit@localhost.localdomain>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_102516_721652_A0C3309F 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, riel@surriel.com,
 konrad.wilk@oracle.com, ying.huang@intel.com, lcapitulino@redhat.com,
 wei.w.wang@intel.com, aarcange@redhat.com, nitesh@redhat.com,
 pbonzini@redhat.com, dan.j.williams@intel.com, fengguang.wu@intel.com,
 alexander.h.duyck@linux.intel.com, kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

Change the logic used to generate randomness in the suffle path so that we
can avoid cache line bouncing. The previous logic was sharing the offset
and entropy word between all CPUs. As such this can result in cache line
bouncing and will ultimately hurt performance when enabled.

To resolve this I have moved to a per-cpu logic for maintaining a unsigned
long containing some amount of bits, and an offset value for which bit we
can use for entropy with each call.

Reviewed-by: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 mm/shuffle.c |   33 +++++++++++++++++++++++----------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/mm/shuffle.c b/mm/shuffle.c
index 3ce12481b1dc..9ba542ecf335 100644
--- a/mm/shuffle.c
+++ b/mm/shuffle.c
@@ -183,25 +183,38 @@ void __meminit __shuffle_free_memory(pg_data_t *pgdat)
 		shuffle_zone(z);
 }
 
+struct batched_bit_entropy {
+	unsigned long entropy_bool;
+	int position;
+};
+
+static DEFINE_PER_CPU(struct batched_bit_entropy, batched_entropy_bool);
+
 void add_to_free_area_random(struct page *page, struct free_area *area,
 		int migratetype)
 {
-	static u64 rand;
-	static u8 rand_bits;
+	struct batched_bit_entropy *batch;
+	unsigned long entropy;
+	int position;
 
 	/*
-	 * The lack of locking is deliberate. If 2 threads race to
-	 * update the rand state it just adds to the entropy.
+	 * We shouldn't need to disable IRQs as the only caller is
+	 * __free_one_page and it should only be called with the zone lock
+	 * held and either from IRQ context or with local IRQs disabled.
 	 */
-	if (rand_bits == 0) {
-		rand_bits = 64;
-		rand = get_random_u64();
+	batch = raw_cpu_ptr(&batched_entropy_bool);
+	position = batch->position;
+
+	if (--position < 0) {
+		batch->entropy_bool = get_random_long();
+		position = BITS_PER_LONG - 1;
 	}
 
-	if (rand & 1)
+	batch->position = position;
+	entropy = batch->entropy_bool;
+
+	if (1ul & (entropy >> position))
 		add_to_free_area(page, area, migratetype);
 	else
 		add_to_free_area_tail(page, area, migratetype);
-	rand_bits--;
-	rand >>= 1;
 }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
