Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AFF90C45
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 04:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKVeArbZVtlBHzbLG5qOTjyZdHfBTmbxMjiP261sV0o=; b=D+T6lO0IU8l5FT
	9HoVCWopk/nLFPGJTAUgcCGjDLxscP/rwsyMWfKY1JZcZ9yylwLjRsuyk1kW/unVRhaPoiF+Hxf02
	RT9uh9LB6P4t+o3Ovovwro0K7U3Vt9wsU/bQuWzErtBcPOMxQ6irrDoorJlhi0NQr6HN5jYPKTcsy
	KDY/6sUwrlpstfZQlawtDWq1nLgS8jjzlxxNTMCBadd5v4v7TT/yqWUnd6Jt2ni/3ajO/9GGhy+IF
	Ijze9KXlvwfAfvrbNK2EUrN7WmDnaS/VoleX1U2rp6b0b3DegYY3kCsSshwKdyOxMXsB0sHo8zDY4
	9RcQ4/9VxqPy8i7opo0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyoki-0003C3-Au; Sat, 17 Aug 2019 02:47:36 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyojl-0002PO-GR
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 02:46:41 +0000
Received: by mail-qt1-x841.google.com with SMTP id x4so8219135qts.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 19:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=/W9Ma+c4Rolhy4bvMsvhnDmmj8s4aI4sxvLahrmQOEs=;
 b=IzkXm55G371ze9WVXoK9zad2ACOWDzvok3ySCIMBFTsFQm/1InDzb4H9PlQDZg3B+1
 91fZTR5nLchedpHW5aMPgbel2ZEnY/4Y6d81TwasXQGUoWl3pwGmSACJDbW/T3nKDssv
 +h3dvvD8iyrRdZCJ9mha5885pBDWmcYAqYgiE1seOv1ZfRELrnfuyWjc6lHkfNkB8ktJ
 OywN1d704ZniaPy18rJWm0ZLYmHEL1f2xGaIMRi+uXWwoVQjHADEaYflSmFqXYFC50TK
 COI8DMNyB3sCcIRHgivG4DS6VQAKx7jm3bktmlgmeRCdmQ4puTVFBSpYFVIiLAL++B8O
 rYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/W9Ma+c4Rolhy4bvMsvhnDmmj8s4aI4sxvLahrmQOEs=;
 b=O0jvM7eDG6hj40t9uHv+b1888K0/ZfMmEblkJHCK0p7N+jOwEQC/pxHO6/FX8u3eqj
 GDJzljkHhFDZgre3YJRGVL6B6qud9XizisXElxPzgWd1YBe+fXfTWk0SzFwBEbQn/s1m
 j6vK3En1O0/Y6yCSGakbOaQGvqCZmHqH2GfCmeZRNfb3rQE3VHqHeVfoc7jBo9Fksvjf
 oLE8vnN6/7tibnrxapAGx1oR8IiJpB8WymOX4RJ9e/FSu7i/G/mFlL7yIakkQ89mX09T
 6uS4j8Q5ogh8Yo1fE4x/ffSv77S43m2W4EV8IGO9v8rDJd7YEbj4JpxnOWTr3ko7pTaZ
 HXHA==
X-Gm-Message-State: APjAAAX/Jm6no/2RiHTJ0lluOsgTvGLvdUWwAKBzjSbL4Ep42s+ZxcCc
 2S06SzONZz71HdmMTPcdyD1npQ==
X-Google-Smtp-Source: APXvYqx1YDVIUM4aXrDf+J+vqbqrtMk2KC2J/YfduCmqN0tJGEM/fwsJ5MGyaogor4fl5Zg9qkbq9Q==
X-Received: by 2002:ac8:23cf:: with SMTP id r15mr10955016qtr.97.1566009992864; 
 Fri, 16 Aug 2019 19:46:32 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o9sm3454657qtr.71.2019.08.16.19.46.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 19:46:32 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v2 01/14] kexec: quiet down kexec reboot
Date: Fri, 16 Aug 2019 22:46:16 -0400
Message-Id: <20190817024629.26611-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190817024629.26611-1-pasha.tatashin@soleen.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_194637_566545_484CF93A 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Here is a regular kexec command sequence and output:
=====
$ kexec --reuse-cmdline -i --load Image
$ kexec -e
[  161.342002] kexec_core: Starting new kernel

Welcome to Buildroot
buildroot login:
=====

Even when "quiet" kernel parameter is specified, "kexec_core: Starting
new kernel" is printed.

This message has  KERN_EMERG level, but there is no emergency, it is a
normal kexec operation, so quiet it down to appropriate KERN_NOTICE.

Machines that have slow console baud rate benefit from less output.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Simon Horman <horms@verge.net.au>
---
 kernel/kexec_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index d5870723b8ad..2c5b72863b7b 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -1169,7 +1169,7 @@ int kernel_kexec(void)
 		 * CPU hotplug again; so re-enable it here.
 		 */
 		cpu_hotplug_enable();
-		pr_emerg("Starting new kernel\n");
+		pr_notice("Starting new kernel\n");
 		machine_shutdown();
 	}
 
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
