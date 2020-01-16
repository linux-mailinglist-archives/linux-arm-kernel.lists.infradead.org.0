Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C896E13D44F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 07:26:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gISlqAiWr9wWXFU48zAAfSMNc2ofkDu41bsQtjxSwC4=; b=AylnntXme+yjjg
	MowiFA5u1+YqrbAATaFKIi87SDocZogJ5Zxo4VM/sgPQuCDUxaKCd6sK7IXPZ+n5HmENI8Atc/aCU
	VjEmkAV7AFA1y/8t6OlKwoiGngIjXHpaMOjb50QeopyMPHOEYnuvAI9rdWiaHwiMoJVJlkWJp1v/u
	CW7A1u1yy3YwNiHSUO90+6EyP7jTWnwm9JjMSDiBkdWn+zBQEF90hbWwrYemWuybl7Co/jccLz4PJ
	qeGBKGd5iZh1Rbz9L8YPhHHjlW3phk7h4xd1dHTw8ChUFQwtMZCrLzHTPwFKzcuspCNEEyJUfxYV8
	+KukfBU03vqWRjVnjkpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irycB-0001Fu-3P; Thu, 16 Jan 2020 06:26:47 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irybv-0001EJ-CQ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 06:26:36 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay11so7905435plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 22:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jgsZ87j9zhFzITBOLkD7Zx7YPDB2pB7wEvRvkLTLK58=;
 b=oNmexNcVAh+3e35uSrHwMbT1gEdNtfFt+AsrrtqPXQmSRoQ2+dPRtMo5LTrIw10hkD
 u+AKJkLOQ7ejO/lyaa6mLr7Bws1hotDPmNsiYytrmcuCElg5p/2U1uo544G1s8tNj3oi
 67cF7zBrygv/ffmERc13Rw9w/bQ1CKyQ31T20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jgsZ87j9zhFzITBOLkD7Zx7YPDB2pB7wEvRvkLTLK58=;
 b=SORjLxVKLHZqg9zngIrD4VLkFkNsfXKY6DNGuJ8wyeDkUXyDVZD9zP7RnklhMMIKZ6
 JBEyVWv6Myn8ek6wy+AMwcc36PJXa5fl2V+CW75mpfu3XNE/+HT/i09HZJ0KXY6J7Fv0
 BtatxQ5ztXEJbWHu+uCEQPfeKf2IkpGJ0n1RRZqk6skej947rKD6jJYcmFi787ZCwDel
 1yYBu+qd6GikSroegeWHKnbTso0Y8TvVkLmbtofA3Utt3Ac/Or+BTy5BGGu3qh21Qx26
 odm2Xf4MjKFDRSCEfXfLVJOi0g+y0Jp0UQMebNKs67d5bXV6/69ABWY5R2dGiaPc4/xs
 ffYA==
X-Gm-Message-State: APjAAAXr1MfeFk7k308nkN07adojfLXT0PGXYGioO434MoDCG3dLt6up
 v98kU9bZivD7Ij0Cc9sYYRg7kw==
X-Google-Smtp-Source: APXvYqxr6t7CheZI96TYjHdF4c+2lQSa9v9KFUkO88U4heoEGDZYaqbW2enLJb4tzmBEKZ7QkJrRRA==
X-Received: by 2002:a17:902:9307:: with SMTP id
 bc7mr29877693plb.338.1579155990819; 
 Wed, 15 Jan 2020 22:26:30 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-097c-7eed-afd4-cd15.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:97c:7eed:afd4:cd15])
 by smtp.gmail.com with ESMTPSA id c68sm24184007pfc.156.2020.01.15.22.26.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 22:26:30 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 kasan-dev@googlegroups.com
Subject: [PATCH v2 0/3] Fix some incompatibilites between KASAN and
 FORTIFY_SOURCE
Date: Thu, 16 Jan 2020 17:26:22 +1100
Message-Id: <20200116062625.32692-1-dja@axtens.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_222631_427955_7394D004 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: christophe.leroy@c-s.fr, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, x86@kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 dvyukov@google.com, Daniel Axtens <dja@axtens.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

3 KASAN self-tests fail on a kernel with both KASAN and FORTIFY_SOURCE:
memchr, memcmp and strlen. I have observed this on x86 and powerpc.

When FORTIFY_SOURCE is on, a number of functions are replaced with
fortified versions, which attempt to check the sizes of the
operands. However, these functions often directly invoke __builtin_foo()
once they have performed the fortify check.

This breaks things in 2 ways:

 - the three function calls are technically dead code, and can be
   eliminated. When __builtin_ versions are used, the compiler can detect
   this.

 - Using __builtins may bypass KASAN checks if the compiler decides to
   inline it's own implementation as sequence of instructions, rather than
   emit a function call that goes out to a KASAN-instrumented
   implementation.

The patches address each reason in turn. Finally, test_memcmp used a
stack array without explicit initialisation, which can sometimes break
too, so fix that up.

v2: - some cleanups, don't mess with arch code as I missed some wrinkles.
    - add stack array init (patch 3)

Daniel Axtens (3):
  kasan: stop tests being eliminated as dead code with FORTIFY_SOURCE
  string.h: fix incompatibility between FORTIFY_SOURCE and KASAN
  kasan: initialise array in kasan_memcmp test

 include/linux/string.h | 60 +++++++++++++++++++++++++++++++++---------
 lib/test_kasan.c       | 32 +++++++++++++---------
 2 files changed, 68 insertions(+), 24 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
