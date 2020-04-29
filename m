Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF24E1BEA47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAbqfj1QX/j+uHyIYW/r7iS/4flLHndfE8Dcya81y8c=; b=hJ4oUQgwpsGA8E
	iNpbJn8Z0GKzkb+xZzroijZTAM4s2UC+GMwMOzZ5oFBopPopbIKX58AnnTHkuZsFCbhGtMLHR3lNe
	9VwI1HuXIvsSlMaNR1Sm9kgkSRjZbd/Bp8eSVy/B18jsb5dAEY4x+d1zbGStW8mg3UgjC1KZhRRhk
	wm6IWKSLeHBzfi9rot2p1gORmOSMQvMS+qiFp/rrxkriS8xXvJRjg8sv6e8uAdJ890OZwD9AorlgA
	hNbzAu/4BTz30uNFJUhtl3d6sjWZrL/016hsxu5pDlyBu0YEaSXgeIueQ8tJwDbaxpUNoYZMilbyp
	3s6yzZj6p0Nbr0FA7log==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTubl-0000aQ-0D; Wed, 29 Apr 2020 21:51:09 +0000
Received: from mail-qv1-xf4a.google.com ([2607:f8b0:4864:20::f4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuaw-0008TM-Oj
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:50:21 +0000
Received: by mail-qv1-xf4a.google.com with SMTP id v2so4182552qvy.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 14:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=JqiR2vOdqFfBqjhyMGJp8d/qL3dB8+X/PfK7MWBosOQ=;
 b=aiXVr9LW0+RfYp/BGKCZwf2eFb8u9bW41qbryYBrMOTMAxizbTvkyUsj2hMqoewXVA
 EbenkI3pjlj6j3Jz6v58GVbjLsRucPnyBIwyrf/cQxI7QYwEK5k1uOps+KFUBQSyYzSq
 4ScWZwqWRdd/I9EOQCike+A/g8LgBL08ZkugaoTqx2zKcpO0yY7MZeP+Y4VZXfi2opO+
 u0ixT5IVpYsz33tv0SuE/w161GkFjCv2PC0mWH6RqlvaBsCA3Nae7CGPq+IMF6tcDpg/
 xDEfx6+SvCzPkM2Gw22E+XqkcpxanCcgz9Szd+JSjxTdcGi6OboSgHQ79epRcTxfLjBk
 yKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=JqiR2vOdqFfBqjhyMGJp8d/qL3dB8+X/PfK7MWBosOQ=;
 b=D38Qviz5TsV3csoYPg7i129Uv7mWPnpwiWvEtNq9nXTi8bsyBc0E8QHQgO5hGpZKA3
 GlAvbwhJlwfJreN68uFlD7kqMnulgMZ817HfUMimIg8MWUO2F0ULdkfkHkCwQSpUOSDH
 iWyD9N8FiLzyo4/6Jt+cFJK8TJX5B+gDlD9+PJGnXdm158OCgnqGVE2xlCrNYNh3RphT
 1IkALdrVZmgGpuS7QFM7fxm3ZSdOve2ecJkHbs7kqg9Jii4UI17oKISzQnVdyLFbrwUd
 5lGhewd2l6HAVUygM2IvrPsVH5g7HSguw2+PkqxIgsFMYIBcaUdptNACgIN2EdmCyOBY
 56ng==
X-Gm-Message-State: AGi0Pua045RFB8uaParRaYHro7TjuqsqGufUzt+oPGxKQZ1Oa1b2wzPx
 edAlbVW33UiFTBJHV/YjLEzEYBI25g==
X-Google-Smtp-Source: APiQypIhYRdYrJfvjviu8u64QDDNe2LAeKB+wfqrsyuISOkwKNnezPoPTQS28YSpGgdHWAPJujbNXC6IaA==
X-Received: by 2002:ad4:49d3:: with SMTP id j19mr34024184qvy.78.1588197016281; 
 Wed, 29 Apr 2020 14:50:16 -0700 (PDT)
Date: Wed, 29 Apr 2020 23:49:51 +0200
In-Reply-To: <20200429214954.44866-1-jannh@google.com>
Message-Id: <20200429214954.44866-3-jannh@google.com>
Mime-Version: 1.0
References: <20200429214954.44866-1-jannh@google.com>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
Subject: [PATCH v2 2/5] coredump: Let dump_emit() bail out on short writes
From: Jann Horn <jannh@google.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145019_211831_1A597A02 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

dump_emit() has a retry loop, but there seems to be no way for that retry
logic to actually be used; and it was also buggy, writing the same data
repeatedly after a short write.

Let's just bail out on a short write.

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Jann Horn <jannh@google.com>
---
 fs/coredump.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/fs/coredump.c b/fs/coredump.c
index 408418e6aa131..d6fcc36a7db1f 100644
--- a/fs/coredump.c
+++ b/fs/coredump.c
@@ -823,17 +823,17 @@ int dump_emit(struct coredump_params *cprm, const void *addr, int nr)
 	ssize_t n;
 	if (cprm->written + nr > cprm->limit)
 		return 0;
-	while (nr) {
-		if (dump_interrupted())
-			return 0;
-		n = __kernel_write(file, addr, nr, &pos);
-		if (n <= 0)
-			return 0;
-		file->f_pos = pos;
-		cprm->written += n;
-		cprm->pos += n;
-		nr -= n;
-	}
+
+
+	if (dump_interrupted())
+		return 0;
+	n = __kernel_write(file, addr, nr, &pos);
+	if (n != nr)
+		return 0;
+	file->f_pos = pos;
+	cprm->written += n;
+	cprm->pos += n;
+
 	return 1;
 }
 EXPORT_SYMBOL(dump_emit);
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
