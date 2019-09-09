Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 780F1ADE93
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVBdMIQCoWH5sAwArbaPSwzHuoeqmPbengYFqIKFdoA=; b=ZGp55+Oak+kuuQ
	ipvkSsDzrRuLbqAG93ElsMYk0PvCoeaChTtWihhHqHj17G+jUCAuUPistLI70WPOxUqrgFgyUjMgt
	tZjpFJQQ0AvaC5j8eXjG5IKtPfTkWCsDETMTQEbss7NALYobpzVK8SSxP84Czd97r8u8HZotlbQm6
	SJpbFZFRc3csOu7ofwshEgNiDYcd4agRWNG69JrEdDKve6EVSz/AV7KB+LoQl/YuUyhQVEn0RH67b
	ftrZRBlMV4tmmb1XK5CVVJKGm+s8CcgY/e8T4Vd/oUJnJRCvZevOy+pYjFhxWFh6hYSEXzVwm2NMa
	9cJckB1RKbEPvhoJg1/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OAh-0001Er-Ie; Mon, 09 Sep 2019 18:13:51 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9N-0008Ik-27
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:12:31 +0000
Received: by mail-qt1-x844.google.com with SMTP id k10so17313035qth.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=hIvv7JZmNGiFtMsjwPiXKldWZ14j/ed2TQl7Sv/FusU=;
 b=lGvVtaczZepcY3pVB902EwUXMLPY+wfRloMScgteToa6kMFSBvVkWpsD7vtQgvSnpb
 n/a54fuNHqwxUvxcFSzx0cdrSI3mvLlUG+wIbjNeDvCSbMpPXxVZiNC3frr/K8fEKaC5
 CexW4Wn3gLJtqbiGVGh4QhuREdkhbMZJsiQpyIH2GbgbDZWnUIFdVP9M4rfJSr+W/OqJ
 xfYnNoOEc6u+Yyu9eBmybePWEGSyM+5bPWq/2wFa59phJZztRB4Lcn61oUtH4Zxxm7uW
 hyvJXiag0PQpx5U2WS0yHf8InIp947VYjVgAUFFyWL9SJvJ/5W880Im12Kt7v3afQCVJ
 EQbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hIvv7JZmNGiFtMsjwPiXKldWZ14j/ed2TQl7Sv/FusU=;
 b=IcTphvTbKlG9o5Ou9pYgZ5v4AsfHZjNZEkofIAbuDHcTmDUgA9zL0W/SlRDft92lY9
 KO/jBX/fT9fjQiSu9/ZpywBVBEGHESJhmKPVkR7TfmyEIQb4GRQANKjsYNXkFGyvwV2q
 QU/cJBivpq8lun5XLoJ1hS6oQmhxjiS28N7S+5yCkJF0giVCOkcJD9V0itk0Lt/J5EnJ
 +Bq7IqNl3s8y4XWRZFdJ3OmAqGMslfFIUkLwkDCTGN2B/sBCubMHB7svyHUKaXxUzkcO
 IwqTEiagUXCHxrGLPFmN8S7SzQ7BYXtw2stjeGdrDfmJbJ5NY4RJx7N/clLJNzmg2APL
 Bamw==
X-Gm-Message-State: APjAAAV9BhhqnOEo9dYqgTlnQqu6m2WyMtzOdsaUt9EFQZoc5G6TP2an
 JZc0v9vXA8UHpFGtpIEpW+YDTQ==
X-Google-Smtp-Source: APXvYqzqCGrV++beTKTDQJdhdQgon7XutZsT6/j1WY0FvUCkwan7YuQ95/1EShbY3LwmpFjAnArpdw==
X-Received: by 2002:a0c:a0e6:: with SMTP id c93mr15594165qva.109.1568052748291; 
 Mon, 09 Sep 2019 11:12:28 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:27 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 03/17] arm64: hibernate: check pgd table allocation
Date: Mon,  9 Sep 2019 14:12:07 -0400
Message-Id: <20190909181221.309510-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111229_110513_5435B974 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a bug in create_safe_exec_page(), when page table is allocated
it is not checked that table is allocated successfully:

But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).  Check that
allocation was successful.

Fixes: 82869ac57b5d ("arm64: kernel: Add support for hibernate/suspend-to-disk")

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 025221564252..227cc26720f7 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -217,6 +217,11 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	__flush_icache_range(dst, dst + length);
 
 	trans_pgd = allocator(mask);
+	if (!trans_pgd) {
+		rc = -ENOMEM;
+		goto out;
+	}
+
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = allocator(mask);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
