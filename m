Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B78135E13
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:20:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoJ05tM2EvjNphMKjdnFN17ZJQeOaHi1SSIxtt8NjHc=; b=ZD/BaH+/ihFlZz
	JayX/mpqOGzeqg3hc2e6+FBt8KbQ2vxGEzElC4A1iK9gP1kcTdMQgIyMZ9E27WaYfjB0UaJ0JfWfL
	Zx3FrWuYoz3h20ehzsl4Fl5HFO6LNOOiCFZRVEsndGidqC51R4yhWNKDBt93tMQIUPUJ9Y2yYZnji
	QpZ0mLV0uLXGftOum+fTq5YBQOaDLnaFtNvc7o0SWnVaGU63bNRfbRCzx1SiGnMI8iAT0niQnX8i+
	1aPkRfkkynfb/fQJfr/St4RvqooVWHsNLyjRhZd5khNuJ7ihJozp/wijHXGm8+ebCAKthBEEiP6JI
	fiNPnzbVXUcg4QByZxLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaXU-0005ZV-JY; Thu, 09 Jan 2020 16:20:04 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaMq-0001wr-5Y
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:09:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586140;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/nIUOgXVWIb61EZ6bz5wgUle47qxfmMoZ4VlUNkCYRs=;
 b=hMvOh/9WhVgjGga7FmurQ/aFOks+bTkfW2D7bU4u86HHUlTLzwqyq50MAgx0pEklzSTSUl
 fK5dTOm8l5ifTxXFMYhz9yJEVdXfG5We1/sXBkvgPxK/wsiJu2khFDBa585NDQRq4L6aIe
 ewia3zedv9Z5XkvxMro/L5D9EAGQgoo=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-418-dqwE7zpfNZmEvTBGmeUhGQ-1; Thu, 09 Jan 2020 11:08:57 -0500
Received: by mail-wm1-f71.google.com with SMTP id o24so624643wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:08:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SOQjJaPeQ6AkeMaBkCNADMS/kyh8erzQiBDqDRYV0Ec=;
 b=mdotRsL9FBnp/ASIuAaEtph08AsR2TVc6BAwi1i2e91wNKFieXr13RxwwjrvpsKK0F
 gBDdRy5d0+XHGPiy7OK2F/VJ/4fSUGnQzakRq3ET4Zye07dvtY53RMbOlCx0Suxm0cCT
 UxtWAk170/WoyfyboJ6Q9/LAoKUJhq5wU+HddJoZwOUx7695NYNTAMZtRovCb04khNwD
 1uAQ81f9Iy7QhhpyuFSTWOzY5L9lLMXJyUn2pHI/k+dNLe6vhc7ngu3hLo55UJwwwHr6
 M/SozHitoToLKhF65/k6O7iZHe8GNper+Mc5wHNhXWeEqksdIJLpVDExj/OHISLVZzC2
 Z9aQ==
X-Gm-Message-State: APjAAAWNBW9HqLnUoGAbxXYYEzJJa4+fl2RsLKxaVxfDPQ1+hELzot6u
 F1kcqoAr0jmb6VCmtClni1kQ5irCiuOzcVYB1fu6XVCF4p9fiO6kV72O2pn6YGKj4bYIYuxUno3
 AwweZ6i18NZO1qiQjb1/RlTzJ27Z++vU+wYc=
X-Received: by 2002:a1c:8095:: with SMTP id b143mr5978372wmd.7.1578586135882; 
 Thu, 09 Jan 2020 08:08:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqxEszMufKupL2p3ncLrB7YUBRc575U8Mr//L6Fw6AnOA6p/ZOQdu3ZNuVMIx6ccyJ0DT1HBiQ==
X-Received: by 2002:a1c:8095:: with SMTP id b143mr5978353wmd.7.1578586135722; 
 Thu, 09 Jan 2020 08:08:55 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id v8sm8403505wrw.2.2020.01.09.08.08.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:08:55 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 46/57] arm64: alternative: Mark .altinstr_replacement as
 containing executable instructions
Date: Thu,  9 Jan 2020 16:02:49 +0000
Message-Id: <20200109160300.26150-47-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: dqwE7zpfNZmEvTBGmeUhGQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080904_544739_A2C1577D 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raphael Gault <raphael.gault@arm.com>

Until now, the section .altinstr_replacement wasn't marked as containing
executable instructions on arm64. This patch changes that so that it is
coherent with what is done on x86.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 arch/arm64/include/asm/alternative.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
index b9f8d787eea9..e9e6b81e3eb4 100644
--- a/arch/arm64/include/asm/alternative.h
+++ b/arch/arm64/include/asm/alternative.h
@@ -71,7 +71,7 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
 	ALTINSTR_ENTRY(feature,cb)					\
 	".popsection\n"							\
 	" .if " __stringify(cb) " == 0\n"				\
-	".pushsection .altinstr_replacement, \"a\"\n"			\
+	".pushsection .altinstr_replacement, \"ax\"\n"			\
 	"663:\n\t"							\
 	newinstr "\n"							\
 	"664:\n\t"							\
--
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
