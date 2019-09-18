Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50F7B6A09
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 19:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RchxfwMUltqY5P/W0xGvk44QSuB8aFu/zAe3ztw+WjI=; b=IyBFAN/T9RnQDC
	4Mx/AFRTWkP0Y/DpqYE2eyvwEtJ2z9DgH4vMOoCLyG87PmcyKSrfJwXLa5jzBf/wC+qApeC4iUxjE
	0c38/IE0WF2BTwumY+YcJcesSoTwVv17OzqmhE+CUDaUdcna7iGrQQNA8Dnd+mHCeMcyak6a8+VpT
	boMlV69irKm+uP7Dj6r9NQgabi7toMkLQzrrqyQwEyVMkW8+JZqFr7LJ3yWgJi2CUdbhLFuynBOJb
	INjwt2/zNktdu0ilE51E6k1euOVy3/2ALSWNK5HDpsSClqnM/nTqK01xZoDBd5QB3T00IxN27xUJt
	2Xd2jAbqcBE6fi1+b/Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAeAY-0000BP-5e; Wed, 18 Sep 2019 17:55:10 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAe9J-0007YO-TW
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 17:53:55 +0000
Received: by mail-oi1-x241.google.com with SMTP id i185so331322oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=VitjQQFQG7H0A5JYqbYhHy/YWDiYO6QESupJyX3H62U=;
 b=H3wKs22GCSuuo47NHL84cjAcqIxVWe5raJSaPJYEEjR4SjLfOrFfKt6MqETcP09nzp
 mQwVOuGJiDyTUO34zz/FxTfyeK93Ym+rSqbDgLoT/Du3oNzP1D0AIlwxjhzYcrzwwKIs
 xtuGXJ2uADX6hCimeVVU5uKTm/0RBb5zaza/2xkqpEofa5+pRdcP/FX/pDjy6nqeQhrz
 wjIwWTS1OwEhcVqKPV+UX49i5jyRIkdBII/ejcvGqW6cFvW/aBaQMvKszzUiDF4oubCx
 FgrHvJ+7pmJW4fOmM+9tKSwU3cS7m7q8ml0xlT15/H7ej/2b2YhZqe7ipz773fsTquBb
 b4Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=VitjQQFQG7H0A5JYqbYhHy/YWDiYO6QESupJyX3H62U=;
 b=mcN2dTNnR3ItpWiONIbgaoYsQ+lU/RUiXDK5EoZ3tZynIxZrxuDJO+fIWjLHTyVL1w
 6vpdiQhFxye58/4OxC9B6DHzwumq8h8lasq3zSmtE/MlPXBQeqDPN4lnglhRNvp3z9mB
 JxIb1k6mNgc6PsIDV/ogIUKoILXokK0BFc7M3MVAq+LFjS/Ad/KInhUp7mML4iZsXppl
 e8WNUuVhfxL/jqxuTN5TvUMEBW0ph2WQ7DoKlSzZf6StRuTEPHLm1XQT3E2mlx2RDlAv
 TBRZHdVj7xZdFC8FsJUlNzzswwkUk7zpdlIJrTVGHo/LLQtaURHlZnN+CYEqWx4hkDnV
 xZTg==
X-Gm-Message-State: APjAAAURV3n5nLZIbthIByjfZYRYkZ06N94ysJxMQZDxz5JduGSC8zUV
 0dsgQN/egoPpxWb9NC7u5MU=
X-Google-Smtp-Source: APXvYqx0/em4LyihxJp1UfPCVlfU74a3jjEiza4M/rCWhu2/BqxunUOAE7tRJ9fzvgWCTQRlNSJFbA==
X-Received: by 2002:aca:dcd5:: with SMTP id t204mr3293467oig.138.1568829232972; 
 Wed, 18 Sep 2019 10:53:52 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id o184sm1837530oia.28.2019.09.18.10.53.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 10:53:52 -0700 (PDT)
Subject: [PATCH v10 QEMU 2/3] virtio-balloon: Add bit to notify guest of
 unused page reporting
From: Alexander Duyck <alexander.duyck@gmail.com>
To: virtio-dev@lists.oasis-open.org, kvm@vger.kernel.org, mst@redhat.com,
 david@redhat.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 willy@infradead.org, mhocko@kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 akpm@linux-foundation.org, mgorman@techsingularity.net,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Date: Wed, 18 Sep 2019 10:53:50 -0700
Message-ID: <20190918175350.23606.70808.stgit@localhost.localdomain>
In-Reply-To: <20190918175109.23474.67039.stgit@localhost.localdomain>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_105353_974055_ACC428FC 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, riel@surriel.com,
 konrad.wilk@oracle.com, lcapitulino@redhat.com, wei.w.wang@intel.com,
 aarcange@redhat.com, nitesh@redhat.com, pbonzini@redhat.com,
 dan.j.williams@intel.com, alexander.h.duyck@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

Add a bit for the page reporting feature provided by virtio-balloon.

This patch should be replaced once the feature is added to the Linux kernel
and the bit is backported into this exported kernel header.

Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 include/standard-headers/linux/virtio_balloon.h |    1 +
 1 file changed, 1 insertion(+)

diff --git a/include/standard-headers/linux/virtio_balloon.h b/include/standard-headers/linux/virtio_balloon.h
index 9375ca2a70de..1c5f6d6f2de6 100644
--- a/include/standard-headers/linux/virtio_balloon.h
+++ b/include/standard-headers/linux/virtio_balloon.h
@@ -36,6 +36,7 @@
 #define VIRTIO_BALLOON_F_DEFLATE_ON_OOM	2 /* Deflate balloon on OOM */
 #define VIRTIO_BALLOON_F_FREE_PAGE_HINT	3 /* VQ to report free pages */
 #define VIRTIO_BALLOON_F_PAGE_POISON	4 /* Guest is using page poisoning */
+#define VIRTIO_BALLOON_F_REPORTING	5 /* Page reporting virtqueue */
 
 /* Size of a PFN in the balloon interface. */
 #define VIRTIO_BALLOON_PFN_SHIFT 12


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
