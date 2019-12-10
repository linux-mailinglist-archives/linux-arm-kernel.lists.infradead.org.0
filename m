Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE62B117F30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 05:48:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8N6ugigGe/xDelMiZkgj/z18GOIqjXM4coSrjj5FkIQ=; b=XcV4FTQP2Q1/Rd
	mppWXglg+V8LXEj2ShlgrtLSZRhI7KBeMev6FyjAYZgaBnNVm9m7LhRK54R47P66SrtOV/EBhjkBN
	wHc9pw2q5kBzBl6LbbEVY6fPIzoYwOBLbpRVFswMYlc8bfcxENoECD2me5Mur0iwIuIpEAIvm36J3
	H07yUzx60ChIixQNsUbMi5WVUYeuK1kxCBs6VwHBzEgJeRc+gx6zaX4m3DXEs+5ozIMn6uWxdVnFN
	7Y5FS4A+SFQbKbsY5+iqy/tmCRXJirroZnhQ8Zw2kSySb+Bd+X4BxAVEoOz+dgd3meRTrqxoWVDS2
	Hr18RkVNQ5if8jaGWAnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieXRn-0004sY-I0; Tue, 10 Dec 2019 04:48:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieXR1-0004IQ-S3
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 04:47:45 +0000
Received: by mail-pf1-x441.google.com with SMTP id y14so8379659pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 20:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EiQDn6/0oRuwTLnfNvzdiHGZKSMrLbDZhPom2rMZn7o=;
 b=WI2BC14zZiQ98S0DzLqneHxoV18dt5gpqrlVywoE5oHdg5Nlck/8qvJGmFxuUzZ160
 kjo1gTrn0FS/5oKF8n1ZyXpA2/u2Ffzxnhl4fBdAsjpQ5rGl9rvtZ7NjL/26AIget8jj
 UTKZNquTzxwyrmTm1IXBllkukRs5NwAkynJ+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EiQDn6/0oRuwTLnfNvzdiHGZKSMrLbDZhPom2rMZn7o=;
 b=RedOHy5NtQAef3z5b7feCnUy+svfdUdWYeIVTlzrAKEsGMIqM2jKjgt6DE8P8ZwphU
 T+oi+wark5IXWe/xF1Tnx891Z8EOCo6ETjPYpecpKnuIM8RyrL1K5DasUcyy3xV4GmBp
 VkBHa5H5/YCakS2GWG+sfkwheve7AHPVUIiKhpSDivPGCLN0E86vIwMAXouUmHNhr+Jn
 /8lcGMDkgobjHT8TprZkdBmk6MPkM1pNLhtGtENJse49WSzPEuDLezif0GApSPzRv87M
 Omna6Od68RwY/gIZZCIgGogF+uJ/ymSpOIZJCTmafNb8EK1u9eHgHJadl1RKcokKiNZX
 Du/A==
X-Gm-Message-State: APjAAAWaQ9xWgqOlAb4xPqTIIBpnpefP5B54pkN6F3gQVEoS50fuK8h8
 FYov0tPaFrBE7t5VXxyciEtUrA==
X-Google-Smtp-Source: APXvYqwENZz+Juyen/2aq5gIiV77utFbr37CGrm9NGV3YB5/lvZeMjOVCPCut/3HTEKuNdLqG8oHmw==
X-Received: by 2002:a63:5d03:: with SMTP id r3mr22623144pgb.306.1575953263265; 
 Mon, 09 Dec 2019 20:47:43 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-e460-0b66-7007-c654.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:e460:b66:7007:c654])
 by smtp.gmail.com with ESMTPSA id r6sm1166225pfh.91.2019.12.09.20.47.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 20:47:42 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linuxppc-dev@lists.ozlabs.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kasan-dev@googlegroups.com,
 christophe.leroy@c-s.fr, aneesh.kumar@linux.ibm.com, bsingharora@gmail.com
Subject: [PATCH v2 3/4] kasan: Document support on 32-bit powerpc
Date: Tue, 10 Dec 2019 15:47:13 +1100
Message-Id: <20191210044714.27265-4-dja@axtens.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210044714.27265-1-dja@axtens.net>
References: <20191210044714.27265-1-dja@axtens.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_204743_962091_6C0AD6E9 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: Daniel Axtens <dja@axtens.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KASAN is supported on 32-bit powerpc and the docs should reflect this.

Suggested-by: Christophe Leroy <christophe.leroy@c-s.fr>
Signed-off-by: Daniel Axtens <dja@axtens.net>
---
 Documentation/dev-tools/kasan.rst |  3 ++-
 Documentation/powerpc/kasan.txt   | 12 ++++++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/powerpc/kasan.txt

diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
index e4d66e7c50de..4af2b5d2c9b4 100644
--- a/Documentation/dev-tools/kasan.rst
+++ b/Documentation/dev-tools/kasan.rst
@@ -22,7 +22,8 @@ global variables yet.
 Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
 
 Currently generic KASAN is supported for the x86_64, arm64, xtensa and s390
-architectures, and tag-based KASAN is supported only for arm64.
+architectures. It is also supported on 32-bit powerpc kernels. Tag-based KASAN
+is supported only on arm64.
 
 Usage
 -----
diff --git a/Documentation/powerpc/kasan.txt b/Documentation/powerpc/kasan.txt
new file mode 100644
index 000000000000..a85ce2ff8244
--- /dev/null
+++ b/Documentation/powerpc/kasan.txt
@@ -0,0 +1,12 @@
+KASAN is supported on powerpc on 32-bit only.
+
+32 bit support
+==============
+
+KASAN is supported on both hash and nohash MMUs on 32-bit.
+
+The shadow area sits at the top of the kernel virtual memory space above the
+fixmap area and occupies one eighth of the total kernel virtual memory space.
+
+Instrumentation of the vmalloc area is not currently supported, but modules
+are.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
