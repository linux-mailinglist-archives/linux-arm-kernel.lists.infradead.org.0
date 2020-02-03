Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2080A15124C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 23:27:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9VGZbS5j6whvSJWlk4o3k2OhBQBr4WN7GwbVZmqGtq8=; b=CbaRfvZ2RxOkpBc6padN6luNdW
	uI+1bb85DPO7GU+uaHxqE5q77WIZLq6KbWsau2WwJvKGnlNeJGJqYRgzdLOYemOxRwRB3SrA4AHPV
	bk7ykHmhdAPlfaTYGI3k7OtXT3iqdyw/7jo+i9Myc789ALPep+c3vdtkV5O9jhE84MJVZVj6Drysg
	LM4/9YZVZHb7GE4Y3eWP2WYNyvhq3J3Nr9HrJyz1EjxceTn6zGo8xvTvBV7J/Uwj9D94izujNe+zd
	GwENTCUpUxXsVME2icWdE1bjVdNQ35XsoavL4cWCmn1Gq5WwAhPLOo5jxoBFd7xXYHonpMxunRS4l
	sdVFA31g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iykB8-00054F-Gq; Mon, 03 Feb 2020 22:26:50 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iykAy-00053I-VU
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 22:26:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580768798;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+6v32zF5Z6uc1SUKFNpAihv4dxkqp/withmUuDYzLCA=;
 b=QkscwriaYLxHctWga+8MwXsenzl+mvgiRNRAdWqyquC2uVCm7Acr8lHzrUH5Lq1dFLUuVx
 y9aJIYYoArG4FUAzwjFJlPFGLYV1NNdVfjsXx+N6BpXxDDSndAjhUWDPC8Kxc4SRlgEEqR
 rhbKUHBuj+sVHRdcHNvoDjS4inkMhyE=
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-bdP_R7afMBGOrL1QLkL6Yw-1; Mon, 03 Feb 2020 17:26:36 -0500
Received: by mail-pj1-f70.google.com with SMTP id d22so423164pjz.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 14:26:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bipqZYiQsQOfSn9eev8SYRXHv6uesR09OSvUzeqSz34=;
 b=pQNlYdEeHHYhV9csIhYlbmIgiswwjUCZBQhGxfJVnCmiimPl3yar51AL7QhW7K1xlm
 i/hf/J35adhMkp7U3uHTzh2aqJihp0NS0lCvvFoGrRtG/nzoymom1iUf8FYSErMORcWF
 uEvx0GWXvlM8nyAWeNRoWCbq2ptzckspT5yGq3TNHqEpmjzGq2ffCSIKX0OH2D9o+aKR
 R8ckIpHLlr3cJmq+Ie/t5/Lz8eS7hWtVxBYAWBPJxLAr4vtPyt64mkoRtQaJNYavpYJ+
 +iKGqP0BuC1PHbKSBfHXS2Ka/5r1XKH2MXG/uNU2aiJDoEWOI5lJosiZMNzKM1BNTiOR
 7qGw==
X-Gm-Message-State: APjAAAVrrNO3GQZwsA/f7ouAC8744OlChjwKV5jW4qjHFd+bZMS+hXiM
 XVlXJatcHpn4yh1Mm1fzsm3PCXFlf1ZTYLvmWAiGN6LN4biLfJ/TtVMWMbpSvA9q+zZgnTzYRbJ
 a5zy16sK2dBpl2WkKU0bMBq5UMUHpedmnbac=
X-Received: by 2002:a17:90a:a416:: with SMTP id
 y22mr1622321pjp.114.1580768795554; 
 Mon, 03 Feb 2020 14:26:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqxzxd87NdsQ631gX3nIUFpl0YEYV17TA2JfUwibDWFfUrwRjr/zN2Yix+goiedAfyYB7KQ8PQ==
X-Received: by 2002:a17:90a:a416:: with SMTP id
 y22mr1622294pjp.114.1580768795328; 
 Mon, 03 Feb 2020 14:26:35 -0800 (PST)
Received: from localhost ([122.177.227.116])
 by smtp.gmail.com with ESMTPSA id n4sm21155444pgg.88.2020.02.03.14.26.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Feb 2020 14:26:34 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] hw_breakpoint: Remove unused
 '__register_perf_hw_breakpoint' declaration
Date: Tue,  4 Feb 2020 03:56:23 +0530
Message-Id: <1580768784-25868-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580768784-25868-1-git-send-email-bhsharma@redhat.com>
References: <1580768784-25868-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: bdP_R7afMBGOrL1QLkL6Yw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_142641_086182_415786B2 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, bhsharma@redhat.com,
 linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commit b326e9560a28 ("hw-breakpoints: Use overflow handler instead of
the event callback") removed '__register_perf_hw_breakpoint' function
usage and replaced it with 'register_perf_hw_breakpoint' function.

Remove the left-over unused '__register_perf_hw_breakpoint' declaration
from 'hw_breakpoint.h' as well.

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 include/linux/hw_breakpoint.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/include/linux/hw_breakpoint.h b/include/linux/hw_breakpoint.h
index 6058c3844a76..fe1302da8e0f 100644
--- a/include/linux/hw_breakpoint.h
+++ b/include/linux/hw_breakpoint.h
@@ -72,7 +72,6 @@ register_wide_hw_breakpoint(struct perf_event_attr *attr,
 			    void *context);
 
 extern int register_perf_hw_breakpoint(struct perf_event *bp);
-extern int __register_perf_hw_breakpoint(struct perf_event *bp);
 extern void unregister_hw_breakpoint(struct perf_event *bp);
 extern void unregister_wide_hw_breakpoint(struct perf_event * __percpu *cpu_events);
 
@@ -115,8 +114,6 @@ register_wide_hw_breakpoint(struct perf_event_attr *attr,
 			    void *context)		{ return NULL; }
 static inline int
 register_perf_hw_breakpoint(struct perf_event *bp)	{ return -ENOSYS; }
-static inline int
-__register_perf_hw_breakpoint(struct perf_event *bp) 	{ return -ENOSYS; }
 static inline void unregister_hw_breakpoint(struct perf_event *bp)	{ }
 static inline void
 unregister_wide_hw_breakpoint(struct perf_event * __percpu *cpu_events)	{ }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
