Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 314BB11FC10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 01:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrMhciCdQKYUOH4Ku5PqR131D/ziRYrp2NiWqA9f8dk=; b=BihbKs+/Sy5xu6
	VqtesvlTeuhzXicMoXKH1nMfy2MXZqFIwlp/6IN+dKKviKPwqYWImQhjqpPzFzu5gHAogb8MGdrFa
	wE1giCClUOLEIvDvzhZ54bRvx8dPL22mxr73GLlVjO2TVgnU3MX18+vpAhxUuiYkKMAahG85Ygp97
	b+sa24eJdgakKhWmytI3bsxgTOkFJIINcJB9OBZxsID2L5+wOpC9siZP0w3NmN+22NRyqOBSy5GvS
	BXiCnTdcmVMloOabv2MYJ9M6ahR31pmDgNJ/WJc7z96fH+3RpO6Kw6mlF9zxLgl7h9NevXfV8mTj1
	JM4CqJFVKO+lL/i/eZ8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ige70-0003rH-6c; Mon, 16 Dec 2019 00:19:46 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ige6q-0003qL-6P
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 00:19:37 +0000
Received: by mail-qk1-x744.google.com with SMTP id a203so2879686qkc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 16:19:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UVpf63Qd4TX5I9v6qZSm1vjU4JS6/z/tTXxQbaf4TBY=;
 b=D3mlEWftH/mVQoC67x99bNXce+yDo9uBMNOqzw1fGt6PhXd+LwHuVyfikJEw19svXT
 ahktUA0bg5LNwRtDfUXFXJtgYcVcz+WvgYNgKN52gtMp51f/HAJu//uMElnRofK2Dy+9
 Ewadu7SGqcg12XJ5zZTRprJ3NaY1znutfpXRlG4jrG/SFwQGxLAzeNLLgox4fEnUWkQw
 +J5igAXDv+iyg+LeIsh1Zj443GBnRzKKPnfRFWGm4ewPAuxQE/ACSVBktckgGgyZgqCR
 6LqvzSPpBJdipjqwU1V6qSP+X4WGwMPO3iyNej07cCFd7D54L3xTElk/AZTKjMtaVZW1
 RD7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UVpf63Qd4TX5I9v6qZSm1vjU4JS6/z/tTXxQbaf4TBY=;
 b=BFVLWQRaC7kW9BNnZxUyDoN8lrY+D+rue34jFhqWEyjd43mVq99pItsVAna+PAMCZ7
 T555novMzD5bU3jK4N0AQpjbNfq0FO46ebm72WF3KJ9peEzIymj0YfB4nXF2OcLJKt+u
 uSu0IIg0W8nrGNX5mg2GzA4ZXuesZDs9ZlcTTkBph13QhJwFRchq294JWkeSut2YczGr
 yK0Sy7pYkonyvNVQ74LemTkCvfNE78FKEEdjWX+TYCDiXVgfjXlMjeplrdKElQ36emtl
 xEUtcLUo9OowOTJ/qW3OkUQoY4NfaKBWuEZkq2i99M4KdkMkywl4H61/K3FgTJjkOJNg
 lceQ==
X-Gm-Message-State: APjAAAXepDzWNz5XGun+oNgGCyw7qTuteQ5+i8Wu7eaRbD7vxXtTuuqz
 +tXVGpDZoVWoKQRd5uknpX9rqjs2
X-Google-Smtp-Source: APXvYqx3q9o5IJDrNl2qRBw2P9CxytUA2HNSYLBG2f5II++aBKtmeVfY050HNOiMvaqJ5iFUhF31NA==
X-Received: by 2002:a37:4047:: with SMTP id n68mr24901320qka.258.1576455573256; 
 Sun, 15 Dec 2019 16:19:33 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id g16sm5431819qkk.61.2019.12.15.16.19.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Dec 2019 16:19:32 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 851932243F;
 Sun, 15 Dec 2019 19:19:31 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 15 Dec 2019 19:19:31 -0500
X-ME-Sender: <xms:k832XadXgrGcvhHXrQgixQfusVx3I2zgBe1vYGxMM1OBi1ia7pJkfQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhorhhtvggutfgvtghiphdvucdlgedtmdenucfjughrpefhvffufffkofgjfhgggfes
 tdekredtredttdenucfhrhhomhepuehoqhhunhcuhfgvnhhguceosghoqhhunhdrfhgvnh
 hgsehgmhgrihhlrdgtohhmqeenucfkphephedvrdduheehrdduuddurdejudenucfrrghr
 rghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrhhsohhnrg
 hlihhthidqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgvnhhgpeep
 ghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgvnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:k832XUi8fzGm26Bbd8FBjgs6V_X1Z6B77yd2PtlZUsUELS9iVEIaaA>
 <xmx:k832XW_7t8KIwsegj48VkjbCQyL995c-MkpH-jRx3rDzPL12KDDzDw>
 <xmx:k832XSbyuh6uVe5LGlV4GvbhPrxOw1t7oRzFp7J8wp3DS_UzsmDG0g>
 <xmx:k832XfcXy6BV60t5ZHB6ZgVtmayIz_Uvuf_yjzhevdi1WusdebQV2BB0RDQ>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id DF9058005C;
 Sun, 15 Dec 2019 19:19:30 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-hyperv@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 1/6] arm64: hyperv: Allow hv_get_raw_timer() definition to be
 overridden
Date: Mon, 16 Dec 2019 08:19:17 +0800
Message-Id: <20191216001922.23008-2-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216001922.23008-1-boqun.feng@gmail.com>
References: <20191216001922.23008-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_161936_235506_EF83200A 
X-CRM114-Status: GOOD (  12.82  )
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

In order to support vDSO, hv_read_tsc_page() should be able to be called
from userspace if tsc page mapped. As a result, hv_get_raw_timer(),
called by hv_read_tsc_page() requires to be called by both kernel and
vDSO. Currently, it's defined as arch_timer_read_counter(), which is a
function pointer initialized (using a kernel address) by the arch timer
driver, therefore not usable in vDSO.

Fix this by allowing a previous definition to override the default one,
so that in vDSO code, we can define it as a function callable in
userspace.

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
---
 arch/arm64/include/asm/mshyperv.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/mshyperv.h b/arch/arm64/include/asm/mshyperv.h
index a8468a611912..9cc4aeddf2d0 100644
--- a/arch/arm64/include/asm/mshyperv.h
+++ b/arch/arm64/include/asm/mshyperv.h
@@ -97,8 +97,15 @@ extern void hv_get_vpreg_128(u32 reg, struct hv_get_vp_register_output *result);
 #define hv_disable_stimer0_percpu_irq(irq)	disable_percpu_irq(irq)
 #endif
 
-/* ARM64 specific code to read the hardware clock */
+/*
+ * ARM64 specific code to read the hardware clock.
+ *
+ * This could be used in both kernel space and userspace (vDSO), so make it
+ * possible for a previous definition to override the default one.
+ */
+#ifndef hv_get_raw_timer
 #define hv_get_raw_timer() arch_timer_read_counter()
+#endif
 
 #include <asm-generic/mshyperv.h>
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
