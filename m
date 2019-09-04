Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F2AA86AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a8vMMFxtz6s5jqeUc58rLMSIAeuar+4OATy8u1X9Q80=; b=nxS1s5yZYIyGp5
	ZjVIBQcQtIgC5lRdaqtQyfGxkkWZfazwuqvSbXFkbYisswDPAMxP+9sZ0ZvRP9DzWFmUtZtmptAHy
	Gs4Ff+w2X6MC7OGIGuNw27sy9q/UX5Hsv/g0ol8YsClhEV3cswWblQpBuOSghV+Bz42p5J8kgYEIh
	CNRT5/B6NcGGzzaBGONCfc4xOadR7VAfLkhunPgFI7pZdBqzfi6jH5HXWs4kz8pOwrZruuW8hvZyR
	Qn1aQN4Lbvsw+qEEvYKB6OGG7IVMGb5BkWsQlHegHs3YllBn7ryoRJUJkhvfrQdBTJ6n2Nszu63Fy
	bOvHgL6wo6uzfk/5Iwgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YLO-0005yP-OM; Wed, 04 Sep 2019 16:41:18 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YLE-0005xn-ML
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:41:10 +0000
Received: by mail-yb1-xb49.google.com with SMTP id n62so17393616ybg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 09:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=R8s/mQuDt3czxphpJ1IOQV2hi08A6wKIrzyNkbM/SsQ=;
 b=sRY+hyU06eTXBM6iBLr3RXE26ciCgVXQhArqt2r3BnX58d/v7yEodvfwqLF194qAaK
 2y2ClIlPS7pC6hOp8/mVfi47uEwEhU8iPF8m0ua076ifWaQ118oKfRMA4bfit5jr/osx
 YYAJnEsCbXgtJkenXRHqHC8lSHZYbKzDaE22/L9ecUW9TfARG6hAugYIwzUwL7B3OXlG
 EmRfQP7qb7YANin7iMgF3pGJx+4odTEWqnfKchn5aEfgFCpZEL0Dui6ZPHzNrx9Kh0D4
 Lwpc47miT41I6kV7KjKvreSPExoSurFp+H6ccaG780izjm5w6gK3srOfrPZZhCLx0Q7n
 cqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=R8s/mQuDt3czxphpJ1IOQV2hi08A6wKIrzyNkbM/SsQ=;
 b=KS1tSF4cPSg0RxIbopnIECfG+FXDfVG4Q/svK1i+suQUjGyRqxh13kO2SaRB2/j36P
 KgERDQiQ2GzRaWVKare2yVSb/8811JEdmA6V6H7gqtzNCstC3CQuv0/9PYsWsGnIZUYX
 Ku67U9MG49N/PN8vtIsDzBoUu7qnnYnU++prXuJAie1K/Mi5rboVDDhOB2xcTVMm24PY
 qjL14Xp28NK0/bwfv1QGQPctrkP/rI8vlmNoyR73ZVfYqZ7wZ41L5XlZuiHdSQMmoxJe
 g07nS9bNwT/yQsb7W64xS2ONKKFfrSwPjapxirkS//9SsDHytXqng3BuPXR2C6QCxI/I
 gVLQ==
X-Gm-Message-State: APjAAAURxukYyNaPz29yZN91P2Rje6S7gg6csv5KbbS4FEXwjRFhwDKQ
 vdau8RkXgLCj93sjjm25T8xEPPqmVlQIpf15hsBb4s363tuYf8WYNWg0wmSgKp/ElKaQYffU4Ge
 Fsmx+jaYUr94VkMnvpp5MIo/syocMbUcIh04weuCU72PR4EtrDu/MCkZX3f7vxSlcrk2x5eEe9B
 29KNSKtahGRu+geak=
X-Google-Smtp-Source: APXvYqxzNr/i+tgw6CmrAR/6JQkqHrAV0NHOGj24YLgU72jAjdnlgCUSFpi5cASY7Xpkf2HXokV3Z2/BO781tEdZ
X-Received: by 2002:a81:1090:: with SMTP id 138mr30179873ywq.179.1567615266845; 
 Wed, 04 Sep 2019 09:41:06 -0700 (PDT)
Date: Wed,  4 Sep 2019 18:41:00 +0200
Message-Id: <c28135c82eaf6d6e2c7e02c1ebc2b99a607d8116.1567615235.git.andreyknvl@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH ARM64] selftests, arm64: add kernel headers path for tags_test
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_094108_755445_3A97EE1E 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kostya Serebryany <kcc@google.com>,
 Cristian Marussi <cristian.marussi@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Amit Kachhap <Amit.Kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tags_test.c relies on PR_SET_TAGGED_ADDR_CTRL/PR_TAGGED_ADDR_ENABLE being
present in system headers. When this is not the case the build of this
test fails with undeclared identifier errors.

Fix by providing the path to the KSFT installed kernel headers in CFLAGS.

Reported-by: Cristian Marussi <cristian.marussi@arm.com>
Suggested-by: Cristian Marussi <cristian.marussi@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 tools/testing/selftests/arm64/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
index a61b2e743e99..f9f79fb272f0 100644
--- a/tools/testing/selftests/arm64/Makefile
+++ b/tools/testing/selftests/arm64/Makefile
@@ -4,6 +4,7 @@
 ARCH ?= $(shell uname -m 2>/dev/null || echo not)
 
 ifneq (,$(filter $(ARCH),aarch64 arm64))
+CFLAGS += -I../../../../usr/include/
 TEST_GEN_PROGS := tags_test
 TEST_PROGS := run_tags_test.sh
 endif
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
