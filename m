Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB1C13B9CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 07:37:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gH4xJu1Ij/WPt+LR26lwnXAPbuU6B69j7+jsZNvsmAk=; b=H3MVLjjUTq/WW7
	8Zo46kxMlx9CWVhT+DShsT9SHTnkxtzNZh8gf0HNLqosxAmmyHwPsUsSU3k3/DFfeldLdpstgjSL/
	JNQZz14EznmjKK1HM+q1dsupEsXnALgMJxzxjKDFlmGyt+RinoNJu8gsERZxAvf5BD2+1viGjZn+U
	jmi8ygjRi23GQQCJmo6BbzTh74FIYalJu/aJsy/IoTYYnencMhkGhT5bOJJx2/4tCqTzSfgABG61m
	1H6MZiLRlEFtGkmqkkTrb6Ll1xgk3EoZy1GRle/ASp9vCQyKpwn6uBPzO/JIKY6+HeJU7ZYc+m1D4
	s2zCuqeJryPuUo3TT82g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ircJG-0001Qx-GE; Wed, 15 Jan 2020 06:37:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ircJ2-0001Pq-IL
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 06:37:37 +0000
Received: by mail-pf1-x442.google.com with SMTP id i6so8030127pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 22:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SZL5+wtQV8L4I+t/B21mqCEwpOPwMzNG/NjS3uxYK18=;
 b=Osp9npf9DMbWRL/vufgokGg2WptMrjKk3OPeCm/0ik25WiMSpPAb4kujwVnvH7fOil
 oU+ORo+jZAMiq5H28oyIZLUvOcanWtdUkJ1mlpumXIg2C+EfGVsiU2cpuQimXlNAFfD2
 CVNZ4fDwlbPddmZWH/mpOH9zJsOU7fOaymLRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SZL5+wtQV8L4I+t/B21mqCEwpOPwMzNG/NjS3uxYK18=;
 b=WvegEaz+AiU0Yvjkg+Vbdeut3IhH5teiTVz0+MBLpkcZ2d20sfombQmdgJofmeD749
 2xNgvBu0xB3q9bjUtJkq6do88wjOOP7kHu3fJjFXHdwt378erFQhULxQtEOZ+KYBUYbC
 ey93DdvZmTJAZjRVP2LAg+Xnro9coGLn1hztG5nXC8UNnrzqO57exOQmbwbgN1KtLpul
 igJvTo1PlwKzSKOpRgZDcc0cBt6NebVBbvzxz165XM/6j8qYCIpHZTPYm36fP9RRhusO
 wWJdK2ffm+VpoPH27boL0e1nsXZNxZ5yjgPRkFWKMfoX6mqlpCWiGKcM8zmx1ovJCh3o
 mQRQ==
X-Gm-Message-State: APjAAAXNdvaSLNifxeSWm3lS1qbv0lGfeP1btI5qjAln4RDEJocr9AB7
 RkLduiWL/b5qY6iZlo/Vl7xd+w==
X-Google-Smtp-Source: APXvYqz6twM/JSD4CFgc2SQAuWMMi7JwPofxcZnEA5RSwS0BHmT29NIEpqvWOQK7nIn36loT9ArrVg==
X-Received: by 2002:a63:2949:: with SMTP id p70mr31822201pgp.191.1579070251356; 
 Tue, 14 Jan 2020 22:37:31 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-8d73-bc9d-5592-cfd7.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:8d73:bc9d:5592:cfd7])
 by smtp.gmail.com with ESMTPSA id k12sm18720866pgm.65.2020.01.14.22.37.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 22:37:30 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 kasan-dev@googlegroups.com
Subject: [PATCH 0/2] Fix some incompatibilites between KASAN and FORTIFY_SOURCE
Date: Wed, 15 Jan 2020 17:37:08 +1100
Message-Id: <20200115063710.15796-1-dja@axtens.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_223732_606583_70D4277D 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-s390@vger.kernel.org, linux-xtensa@linux-xtensa.org, x86@kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Daniel Axtens <dja@axtens.net>
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

The patches address each reason in turn.

As a result, we're also able to remove a snippet of code copy-pasted
between every KASAN implementation that tries (largely unsuccessfully) to
disable FORTIFY_SOURCE under KASAN.

Daniel Axtens (2):
  kasan: stop tests being eliminated as dead code with FORTIFY_SOURCE
  string.h: fix incompatibility between FORTIFY_SOURCE and KASAN

 arch/arm64/include/asm/string.h   |  4 ---
 arch/powerpc/include/asm/string.h |  4 ---
 arch/s390/include/asm/string.h    |  4 ---
 arch/x86/include/asm/string_64.h  |  4 ---
 arch/xtensa/include/asm/string.h  |  3 --
 include/linux/string.h            | 49 +++++++++++++++++++++++--------
 lib/test_kasan.c                  | 30 ++++++++++++-------
 7 files changed, 56 insertions(+), 42 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
