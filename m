Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC0811FC1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 01:21:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aryvJ3vst3RLOLOqRxPzSqya9jJB1YZxv/qDmjyrcew=; b=LdwxtqAkzWXmfE
	9Fgnn1NrFpYrEXiC1UEdD6It/7jNpI0KRCmJtHOpVpbgbLLZ/gL3RoW6WquN93EUNr3wT1aCTHQt3
	BLcbEoJnI/mGA37kdNNdghiBpvpZF/ahP/mwNh23/Z1HtgRxwlZpq8vV/KsVPBIznvrZrXOy3ptim
	ndfTkejeHx9J6j6TY8DeB0aOJA5X6o8g/iYIto8KdP00WQootaXcvHp+jFO4EfCQccyCCB6tesCke
	ZLBHL4BL8W3Bmr0WkvpvjUP4IjhlOyIZqQ6mDYmUWYrG0IDCKyqbSqvcl+h1g30u1RHLxd/LvllXA
	QEhyeWL3HEVY1YCVF3+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ige8J-0005KZ-Da; Mon, 16 Dec 2019 00:21:07 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ige7D-0004Do-UP
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 00:20:03 +0000
Received: by mail-qk1-x744.google.com with SMTP id c16so136162qko.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 16:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=usI7ZLlrtnzO1xtvE7qJdWgNGyWRiX0DoyyW1z56fjQ=;
 b=ZcL1vAcUgKjuyp97OeIAQ0epiqggmuG3QljxDovgnIuPeifT/+ziT7ngleb475gqEn
 9Id1YfFkwJtqKMX0R1rk4968ygu0mENq1hVBHVVJjj7GS6YEfuggH3SpS/odI+aZbuZ+
 wR1yKLxVoaENYO8aHVbpIBMGdc4fc6a0jRTmluYEgR7vyqYJmsDxWaczEy3PKU2+pxMW
 4r5P1g4JLkfLLzURF05vGcUJxbw7J3nbdZaBY2LNdkHfzssQ0qogl+PdzqVn4BSuUfn+
 nbAbEfWsiinDCitUgRfKhjdzIctPFTcitdQwBDqSgMyKeBA1RokL0sW+os4Hxyvm/m+6
 lbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=usI7ZLlrtnzO1xtvE7qJdWgNGyWRiX0DoyyW1z56fjQ=;
 b=r3962kNBZ90P5kkFuoXnuQQF+iVKgQ1qWCTu8ZW33PQEgCsAxeI5PcYr6vAalp8vXm
 uWsQ+K67lF6RlI00YHjHsV7zFSvZvJ43am+xO3wo8kCfUFIFljBTxCITZ+cOXwKEa5Vd
 rWGHa3mKhULifjvP1b3fcs4O00kU1igsDM16a7MhefUVdBx6SUEYORLNhCMKx1O6gox4
 W4AcffvgqnFyDYSpU0HuqTkyeKqG7PklDyg3fUkLHA+hVsTsdbK69deJcvwwYucjG/PO
 Mtp3v7XVhWTYBgE49mWHKCu86zyzHIqErNe8gH0BLiVraWuLVx76CzGwuqaf4Lj+Jkzi
 y86Q==
X-Gm-Message-State: APjAAAWSYtiHHwZRixJwB+wy8vWuaRqTxtvg0klQsLs0+tFKeyZdiYA2
 b6PQWlD4EtQzwhdwmKFW37A=
X-Google-Smtp-Source: APXvYqyuGzwONPf0HzeujWXJY0HQfLDKVVu2G/wH3GBxfrZbbw4VCaxRxyLj5AO/cD1ig93OBJk46w==
X-Received: by 2002:a05:620a:12d5:: with SMTP id
 e21mr24635272qkl.44.1576455598605; 
 Sun, 15 Dec 2019 16:19:58 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id c3sm5440772qkk.8.2019.12.15.16.19.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Dec 2019 16:19:58 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 9C34422430;
 Sun, 15 Dec 2019 19:19:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 15 Dec 2019 19:19:57 -0500
X-ME-Sender: <xms:rc32XeSK_XIhpZp_q6SHBGjzCrk7LYTS0EdnFG89Fi_i0f50st2aLA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhorhhtvggutfgvtghiphdvucdlgedtmdenucfjughrpefhvffufffkofgjfhgggfes
 tdekredtredttdenucfhrhhomhepuehoqhhunhcuhfgvnhhguceosghoqhhunhdrfhgvnh
 hgsehgmhgrihhlrdgtohhmqeenucfkphephedvrdduheehrdduuddurdejudenucfrrghr
 rghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrhhsohhnrg
 hlihhthidqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgvnhhgpeep
 ghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgvnecuvehluhhsthgvrhfuihiivgepfe
X-ME-Proxy: <xmx:rc32XX6d4jyRmd4tKl3p9ANUzk8f_g2bkGBtCdx4i3jUIRFJRCMOwQ>
 <xmx:rc32XY0BaUO6RdE8-TbG8yWCGc0H1qf_yj9N5hWRyK05jdyeSAKEbA>
 <xmx:rc32XUnz94HOWgvI1mfW1PO5gpiP854b7tKxdNAYRcyw8TDkcTvztw>
 <xmx:rc32XRUat6VRrm1rGJNTqr5wfVloWQuRubAEE2UNJMw1hd2W28FeOHH7XYQ>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1C0B1306012F;
 Sun, 15 Dec 2019 19:19:56 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-hyperv@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 5/6] arm64: hyperv: Enable userspace to read cntvct
Date: Mon, 16 Dec 2019 08:19:21 +0800
Message-Id: <20191216001922.23008-6-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216001922.23008-1-boqun.feng@gmail.com>
References: <20191216001922.23008-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_162000_059325_0523AFBF 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (boqun.feng[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Michael Kelley <mikelley@microsoft.com>,
 Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since reading hyperv-timer clocksource requires reading cntvct,
userspace should be allowed to read it, otherwise reading cntvct will
result in traps, which makes vsyscall's cost similar compared to
syscall's.

So enable it on every cpu when a Hyper-V guest booting up.

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
---
 arch/arm64/hyperv/hv_init.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/hyperv/hv_init.c b/arch/arm64/hyperv/hv_init.c
index 86e4621d5885..1ea97ecfb143 100644
--- a/arch/arm64/hyperv/hv_init.c
+++ b/arch/arm64/hyperv/hv_init.c
@@ -27,6 +27,7 @@
 #include <linux/sched_clock.h>
 #include <asm-generic/bug.h>
 #include <asm/hyperv-tlfs.h>
+#include <asm/arch_timer.h>
 #include <asm/mshyperv.h>
 #include <asm/sysreg.h>
 #include <clocksource/hyperv_timer.h>
@@ -45,6 +46,7 @@ EXPORT_SYMBOL_GPL(hv_max_vp_index);
 static int hv_cpu_init(unsigned int cpu)
 {
 	u64 msr_vp_index;
+	u32 cntkctl;
 
 	hv_get_vp_index(msr_vp_index);
 
@@ -53,6 +55,11 @@ static int hv_cpu_init(unsigned int cpu)
 	if (msr_vp_index > hv_max_vp_index)
 		hv_max_vp_index = msr_vp_index;
 
+	/* Enable EL0 to access cntvct */
+	cntkctl = arch_timer_get_cntkctl();
+	cntkctl |= ARCH_TIMER_USR_VCT_ACCESS_EN;
+	arch_timer_set_cntkctl(cntkctl);
+
 	return 0;
 }
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
