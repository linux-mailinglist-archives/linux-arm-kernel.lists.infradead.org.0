Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629231FB3E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 21:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ymuCq+sJERNze9sTwJAZnnuOshjPZ7SAFg18eXLY+Q8=; b=K0GxSRQIBqWcek
	3N3aQqg7lfTD+Xh44PwEv6cuYAZRhwtH7Tbxn+O/GWNbSpuQvf3PJ8lU6aSuLAmU5ASiArWfClXSa
	i5aWCe3IFg/y+i11UsKybT08tbvKgk/EpUSUhT0rcRlW0Fjpwtj7OwTX2R078Ssw2cCteQkxCIecF
	EboowZkEpaMaETHg+HFTjXrTUw1YrGHOWvyGJa/oTeHN7TwB2dQ6syxQF9IBPL1S1KRO25L76V/br
	L1St6m1syabUfZcH5Ktr6Vrg12PxprSFtO3TMW0qy2pOTmWiV45rm78qKZYBKKdn5mQ7pWB/JNDOr
	6fV6iIJEuG4iWlGF6c9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQztF-0001Ys-Oj; Wed, 15 May 2019 19:48:37 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzt8-0001Y6-PW
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 19:48:32 +0000
Received: by mail-qt1-f194.google.com with SMTP id a17so1177258qth.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 12:48:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1XzA8KKXnG7IsFptuBpManSyTGyPz388NMXv8Lq1udo=;
 b=THMr2mXzCoWq+wwhwMTKKmGv9ux6nd8ZmspkJZsy/8k7r9GcG6oIcmGfDHFxDYhzh+
 tqmZJ8GPnwEkQp1BWm6lq/R5AG81bW7JOBJmVE4jDpTZNlxIWm7K/j86wx/40+BotTcW
 6srkmVSG6JdLuVaHuyYFr4ZXpAe4rOynn0uuY+89ueUkv8L4xRCvyMAqnU6C7lT7pNVQ
 B+QhmfmGs1/brWX9C6DBwwVw0mRC6RaI4W3DbbWr1MP06r8Qut6UKmjfOUjAMYjIy4Be
 eh+n6P4ysJSEfYfnrTm8QKTQvZfSJSPp9sF+GsdNUsGjLZEsaRe6+vqmS0UKPkqcnEDp
 959w==
X-Gm-Message-State: APjAAAWgfZ33aNkE8p4+yDpusjqUqMP2wSHn1baXkFhSjzu92PA6czeF
 KuD3X043o4rTVWqUt+z/eD5HrA==
X-Google-Smtp-Source: APXvYqw+OcaWJBOGF7NwWvMvQF3ur2OZsWCF9fQK3IcjgqNnKRnAdaqprpAmOs7XYKyf8hLi6JhjHA==
X-Received: by 2002:a0c:819d:: with SMTP id 29mr33540697qvd.123.1557949709246; 
 Wed, 15 May 2019 12:48:29 -0700 (PDT)
Received: from labbott-redhat.redhat.com ([2601:602:9800:dae6::e443])
 by smtp.gmail.com with ESMTPSA id s17sm1903957qke.60.2019.05.15.12.48.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 12:48:28 -0700 (PDT)
From: Laura Abbott <labbott@redhat.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH] arm64: vdso: Explicitly add build-id option
Date: Wed, 15 May 2019 12:48:24 -0700
Message-Id: <20190515194824.5641-1-labbott@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_124830_831810_9191B50D 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Laura Abbott <labbott@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to
link VDSO") switched to using LD explicitly. The --build-id option
needs to be passed explicitly, similar to x86. Add this option.

Fixes: 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to link VDSO")
Signed-off-by: Laura Abbott <labbott@redhat.com>
---
 arch/arm64/kernel/vdso/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 744b9dbaba03..ca209103cd06 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -13,6 +13,7 @@ targets := $(obj-vdso) vdso.so vdso.so.dbg
 obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
 
 ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 \
+		$(call ld-option, --build-id) \
 		$(call ld-option, --hash-style=sysv) -n -T
 
 # Disable gcov profiling for VDSO code
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
