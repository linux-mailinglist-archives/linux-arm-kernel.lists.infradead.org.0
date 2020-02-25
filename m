Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6457616BADB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:39:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=havV1AE88NTD8ahKtkrXbgrLHAhQ+dYsCQOwJ+IIgik=; b=JQpxFGQdQL7QSfzK/vUAhTeNGz
	JRTKAhNT8785JpKPuw5O9YvVf4xkJ3PTY/tWXq/k8j+LnJL49v6jP6iMBbHBgWvMEvSz5308O+V8Z
	ZLiR5zwmHOxKKObTLGPc3qekbtveXCpfBKso/wFVJmjRESvatBSp43u7EmPau8ZILKxCzoc2YmuGA
	NP8tnKKPIqEPvLclSCwa3yzt5xcZdrggGpyR/r+80ZqDiYdMB0n7s/7JM3k+pF71iqO9WEV+uZkHx
	WhyNODYBX//SZxht6L29ArG5Bx+H6zZPnpzTMNIP7RNOAfIG+jPs7d4s22JsvopRnvFVSlUJuu7Po
	WNiRkyhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6UoM-0001MH-2h; Tue, 25 Feb 2020 07:39:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Umq-0000BU-0Q
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 07:37:50 +0000
Received: by mail-pg1-x542.google.com with SMTP id 6so6471689pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 23:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uVjpVCpfuu6u9amKnD4CalKwNS7GepUbqRwEuTYWuWo=;
 b=lx4GbuvYcRQjywh8EGZg3jQu30Cb/EuoaBgo5dSiBHWhUH8B6aEpiGP0b3oAoPAvf7
 2nT8fUJvf9KyOMiaVcYdBiLulqtfsog2SPe0Yv6nRWLqwpjhmINC3dzTxBc4c82OdFgg
 M5t6Yc3RdK3h3B1QIXBHTml5dG+5pIz8M8ysMLJMVIzfU9LaTwqbDtfu1IfYz93sFqNA
 Ds4lhE3GPdLBoii7W65iNEqxYFzs6tLAgdKYeTfm1k2p/T/ljtliKzAwzcSNgqFMYKMu
 6QT+LPZxcbYtrdbyLpg39NooaXEDDzKcOqv0qG+hmftmZPyw0cWIpu0P5CBK0Du5lrrC
 ykxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uVjpVCpfuu6u9amKnD4CalKwNS7GepUbqRwEuTYWuWo=;
 b=M/CPFfPrFYqwFayl6w9UwOTKMKs3AwA8XIMGmvHDAtM3vL1arU0ruBRT0TQ/bn7RDt
 WGrHEtwAmyQa/q58O0p38v5HtkRZzVfWQ1ab6/ZN5D8b8R1JVeh1L/jOTIdzJcEd6XL1
 yu6X4BoISWlwZZdOUVQFzO9t2IkpJngDQxoGb2dw5U2r1y/XRDP+Gg2qph71xhay7wMk
 BCdgSLvhOk6cg3zXpHNR73TtpBaT4wLQAZ4nD/CWG8m79Z+4xedqjZfc75Naisyto56h
 lLwa0EiXOOZFxtVi63yJlejWjoxUYPbRHjA7SxcF9nuuxAtmY26L+z+3wlWUYtRtOt+w
 cvEg==
X-Gm-Message-State: APjAAAX8hcrq5zcQy9xQFwOCje81VwZARNbgdEnD/wOfxH0hRp9ePmFs
 UqpUoJaqMAZ5bjoVimoVUoE=
X-Google-Smtp-Source: APXvYqzyhGlNtKBclYq/XwC7fr72ijj3ORk/duS7q2SyU+JRS6ZWSmS2Cg4WORnlDUArTv1T7imXhA==
X-Received: by 2002:a63:ee12:: with SMTP id e18mr28708916pgi.33.1582616266674; 
 Mon, 24 Feb 2020 23:37:46 -0800 (PST)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id m128sm15979390pfm.183.2020.02.24.23.37.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 23:37:46 -0800 (PST)
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: [PATCH v2 6/6] arm64: enable time namespace support
Date: Mon, 24 Feb 2020 23:37:31 -0800
Message-Id: <20200225073731.465270-7-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20200225073731.465270-1-avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_233748_053054_E2009CF0 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Andrei Vagin <avagin@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dmitry Safonov <dima@arista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CONFIG_TIME_NS is dependes on GENERIC_VDSO_TIME_NS.

Signed-off-by: Andrei Vagin <avagin@gmail.com>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index c6c32fb7f546..660ad0b0e6bb 100644
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
