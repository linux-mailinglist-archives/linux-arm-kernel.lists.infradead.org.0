Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357261FAA98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K22yFfwjbopm22D0IzkWwRupJwOF9zMeP0kXwy7NKR4=; b=M2c6BNv+MgJoG7IsoEgM1jzgQ0
	yuFHQJIJJQZT7v2tCwxSZGDdXPodjMLwH7B2LscmrxhZJnbBFb1rB4m+WtaNlfPZ79EdjR9jp8DM1
	wiSxDGE0eczqLyamvhH1XiSFVAHFFy1kR8TwO+GpwJNZEtVSod6HvWOaPCOKCEgTIs+kDaHIdbY28
	Uk5YX/Ci3U45WLIdQ51Itf1Ipu7TFjUFiUf/7fyejJQrxzewwhCvD5v2WR/G9vFkd77K4UuZg+rJC
	h/lr43nCb75iWw+5nCXBN2o1wSoIYWUTy9oOzoP/zTOHXQw7g/GIq5L4pjTJhHFdaHTpjl1ltqhVz
	kbthkmSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6TY-0001Vf-80; Tue, 16 Jun 2020 07:57:44 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6Rw-000090-Ih
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:56:05 +0000
Received: by mail-pl1-x641.google.com with SMTP id m7so8023831plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nMU0QpWstwt4mPNSQHpH9spCG7iWFS4Lj2/e7Jbs4Y8=;
 b=kvnIEHlYsYhqIQvEykdlOvGT5aFbVPQ0I5NSmr0OO2ZOpjGbjlD36ksZRVkRxfowl9
 vgkH+aovCyNbmpHJcp3be1kpq9U1Nv3Bad7lLecV29/XunIvflIvYslGhmKAjiJOCBRm
 C3bDW7XceDDovvrB/IiUWpKSzdzSpXuxP+unqJWwgQqkxjfKzJn330cfoAWgdMf4OaiJ
 458bRdJeljnBWXvbodsbPhT2j1R8ZcUzFhv09FLb6JMqfIzAjlzgWoHZOmZiFdyJCiG/
 8qT6PuT7ruWMKRCrJ74s9thXxHq2OxvN48cQKvrXqkOUypNbwRPGRbIMOsQrESEK2fGJ
 ZIlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nMU0QpWstwt4mPNSQHpH9spCG7iWFS4Lj2/e7Jbs4Y8=;
 b=t8wzOrDjY9F8dH15YLAnG4YyMzNnQOdIJSbo3jS8GOOduKuxNmdfok4BQOLXaS6+lw
 zGBHnvViw/by356YRZP7L1C0MwrF7MD+z3oCRia2lHu1YLs5ACUHXm4S7lUZclKjuF67
 zZF17X9GbYLXHj50XbnEhQ6cCxi6b34lqyE0pom6ZIkJNmSG7lOV79mZdnCElbDjYrgT
 uwlFFkT616I18a8jlN+nsU6VOZ4BgGmwLHvEJMYB9Pa4VQ4G+sNJJ72eW+gvEKsT+4rn
 ljVxVSRwb7XOnaBjsUmbAHOXU6zWyPA42OIgiJeHQQB6HQNT+eQG65MmgfKMdAZGoVZx
 UUSg==
X-Gm-Message-State: AOAM532Y5kCAdcdLb3GVby+oDdcAEf29SmoUKXFdmlF1Fe5h8JF04FAB
 2DKSB6FzVXQUqhqVFK1pwG0s2119
X-Google-Smtp-Source: ABdhPJx9ESgFJYgJixb9EpAL0K0/DKoBFxAGTlq4+BbivpEmofTqN4UTPSDg8vPFiadrqeTQricL4g==
X-Received: by 2002:a17:902:ab98:: with SMTP id
 f24mr1108812plr.154.1592294162652; 
 Tue, 16 Jun 2020 00:56:02 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id g6sm16168984pfb.164.2020.06.16.00.56.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:56:02 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 6/6] arm64: enable time namespace support
Date: Tue, 16 Jun 2020 00:55:45 -0700
Message-Id: <20200616075545.312684-7-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200616075545.312684-1-avagin@gmail.com>
References: <20200616075545.312684-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_005604_622950_259561C2 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CONFIG_TIME_NS is dependes on GENERIC_VDSO_TIME_NS.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Dmitry Safonov <dima@arista.com>
Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 31380da53689..e3956cbfd8a9 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -118,6 +118,7 @@ config ARM64
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
