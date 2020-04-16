Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A885A1AB744
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 07:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DEmnd1OPAA0sLcYjyU/gIjs+XHTY1fnunmvA50kX3l0=; b=l8btfhLPpRDNIBzNNQjk30Pe2B
	mUpDOIC2ao5UsznGLcG0k8KmzdzaKDkXkwojP3fl/q1Kzn9eRK26UaNQ5ZxeBaatX1D6157DiH2OY
	PV3zDvt+tPFni55TNGEaleraf7OCqqIWnbe5oI6z06tdo5Dswg2bKMhCYuDU3cosamb+yZD1T67Ls
	KvicBR0GxUeUYAqXbwZP7H8oHBtuVC2fAOqkIcydzjOFT6sqYR7C6vMH2M4gUxzSZs5/rLCqMuJTE
	FOM+IjEJ4pw/F/mFpfbWHLGNkEi3okJMDSPJbi5dMNBgbdSP3pm+X1iVUjMBlv1KBnw9j4kYMs30a
	QUMEZgLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOx4i-0008Et-Sg; Thu, 16 Apr 2020 05:28:32 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOx34-0006jf-PD
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 05:26:52 +0000
Received: by mail-pj1-x1043.google.com with SMTP id b7so879555pju.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 22:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+clC7a2/1FEkxH5L412Da4FtFwUsVwwlBRiREeEjlLw=;
 b=V5pdJaOvRn+DHbnxN6QoJiCMe7RWYYKUXbeReCoVSsHWYcF7ML2ovCf36gqPglEB9T
 X2kXrmroM/bHXrc6F+99r+yIBpvSN6LNCnCCcDE9JhkfhYH6VP4fouEiOyHGKPj9sK9w
 SVvNje5mZ1JA3oz7WM7MST0a7UMZSg3EwpWthfJ5TjTF5mcpsQA7QvDDAo62sb3WcjxL
 PJ6/cbRib1prgDgG5P/7bLl/IFbnTGC6bRIy+zrBmQ8TvdCOxiiAnsGZg26r5KXeq75M
 byXsvMAXEPvE4lNzgUEX0DA6kD9HCEg6xVHwwVjjpAKwScHqYa6Gar6yoSmNkjEX3t3B
 ObFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+clC7a2/1FEkxH5L412Da4FtFwUsVwwlBRiREeEjlLw=;
 b=LihgNXf2k8xr23Ja46xWdysQyw2ODR9wZffdHeQNwSg15J6jP/j1ATkK/wewxPgADg
 4BWOC2rg3pdm2Scsy6TxFG6z3P7ee5lDdw5tTmkfcXi+o2yl0w4iegH2Gff8LPUkye6I
 BHm9QdHZeAQJcalvwIGCI9RRIGFaw1lxiMgDj33jwYzrWZMKPYhhXIBobLB/C7Klb8zK
 qCoOzYtNy9k3XteIok/ef5cqyH7W358LKRTsx+RfHxWboFhwimfHDZy0Cy/0TN3S5uUr
 uVedABjLj4vdJf2yxz6HaJ47qfq+GDNKm025TuLWfqklcd8/HRmafVOqBsPeivJsvG/8
 pXHQ==
X-Gm-Message-State: AGi0PuYfW4YBXj3U4TYJRhn4w0cPDAFdWPTtpmOD6TdJ6GdC0qLRHpIO
 XkrkGKp+83y/KllxLJiP82Q=
X-Google-Smtp-Source: APiQypJYSDvwlGCvr5dvbD0A+DHSbieYwKyY0491/Fvf4ywv0PRbK0VmBw+hCLL1KjNWod/U2Q8B/A==
X-Received: by 2002:a17:90a:1910:: with SMTP id
 16mr3074324pjg.119.1587014809274; 
 Wed, 15 Apr 2020 22:26:49 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id c21sm53699pjr.2.2020.04.15.22.26.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 22:26:48 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 6/6] arm64: enable time namespace support
Date: Wed, 15 Apr 2020 22:26:18 -0700
Message-Id: <20200416052618.804515-7-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200416052618.804515-1-avagin@gmail.com>
References: <20200416052618.804515-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_222650_921307_684DD1DA 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Andrei Vagin <avagin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CONFIG_TIME_NS is dependes on GENERIC_VDSO_TIME_NS.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..68619faf0838 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -110,6 +110,7 @@ config ARM64
 	select GENERIC_STRNLEN_USER
 	select GENERIC_TIME_VSYSCALL
 	select GENERIC_GETTIMEOFDAY
+	select GENERIC_VDSO_TIME_NS
 	select HANDLE_DOMAIN_IRQ
 	select HARDIRQS_SW_RESEND
 	select HAVE_PCI
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
