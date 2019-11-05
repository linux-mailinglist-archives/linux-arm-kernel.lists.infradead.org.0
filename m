Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B75F01D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 16:47:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ASXA9ZXa/fRpGNakOcDxtW0PVi5GTwKsrFJdXYOHAFA=; b=X6p
	V8SiOZeLToUaTGYNSetdhGpNK5FoohtRkAGJZsll0c8/pmvRo9dMxapcAGC5C5Uzj4H2wcoUZz+gI
	8yKv0srGA5oFzZNmffhNrapdqpX/SrdsB/iywb5Ub1gsww8ZcKRiGBMWq/qqtD1y+r+FoX65wvrx5
	bNY93z8Hisv8Y2ehrL3Vm7Oya7LAAaSu9zCowJhwfm7hQUO6FAZcetmBfBKfL6NHGnw8+88z3sgai
	zH+igtIoYOca024u2ITkITW1Te1WQA4o8IrE5TgNYbbDSOwf3lEpek8IBz+gFkNlq9RnUkSQ99wNO
	4YSgn8G0mrAx/yBSbADU2qh/s9DtNOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS13i-00050n-Pt; Tue, 05 Nov 2019 15:47:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS13Z-0004zt-Jc
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 15:47:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id r4so15778365pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 07:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=t1L6+m9hBLLg9ecbvS9SNg9rj75+gCrGi1CLLHD4RZI=;
 b=PGrGX37h6vvBl57jC4IPFGeAF72tRRMVpY/1u5ZDRcSz+b9CsrZpGheA+F5QIWYR1y
 ynl6FkUdWNOsE8cFWwh9ZitQL0e7+JWV30m2rf0XSt/fQxlhMI/hXVom1BmMiSjNopg7
 VpE6JzwisyZOQttNkmyVtxMjdzOfN9kG/7UkBQjBsSZsUt/K4E6eB2fiKMlgP+TNFPqQ
 /vqa23kZBHFtDVfaqRlmhZbnztSDoGS7HUTKcVxkli9tUxjKadvZXBTmz2AE91LRZBEj
 0iVzAN0chn/Yc3jjzAX0gFxGF4gtBVJnzCIU1f6atxKSwCQYA+c7xK4rhBc55RymIGtd
 BbvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=t1L6+m9hBLLg9ecbvS9SNg9rj75+gCrGi1CLLHD4RZI=;
 b=ZcM8Dwue6Mih6Tj9Wtm4Y9W7oMsDYdvmloIe/pVJH0Q4gsVC0/gvT5+nfPt6zGLMHS
 NV/WrGStaCB9Wt9sfQDeuY9u0FrZ/WflsPKc/aJqjx24v6FmlSAQQqsgKRvoXBEzqiUi
 qtxK1022lSNuzjuovnyRKLaOTwXV7U1SBfsyb1bpQblMbQ09fxaNxR5w/SKfIjr4L9Ov
 j4SL/aeHiC3iayY1YlXy7TJQ0470Cdv5SUOv8hNrvhNtpUUpAa/ewns71Ho5wiQdCXCi
 q3VK5fQdCmDNIlb2XRjO52rlVpdi5pzV6r6Fg7nOOrsutjB5PAVBnP6lOu1l+Z5MaW7o
 ApNg==
X-Gm-Message-State: APjAAAWGvoXJy2KXRrlRzecx9IPFyoWMxK2KjQpflUK+6iNc3ayCVj86
 gQa6/pP3LtCduLxDJrz0tYQ=
X-Google-Smtp-Source: APXvYqwQqlhN/HGHnoENik9dC2Bi7i9KmZTeqoa+THOVerV8WYt+h0+5wEzmGZtfcafZF8ZlTcXvhw==
X-Received: by 2002:a63:6786:: with SMTP id
 b128mr21971412pgc.126.1572968864389; 
 Tue, 05 Nov 2019 07:47:44 -0800 (PST)
Received: from localhost.localdomain ([137.97.114.236])
 by smtp.gmail.com with ESMTPSA id x190sm23446824pfc.89.2019.11.05.07.47.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 07:47:43 -0800 (PST)
From: Jayachandran C <c.jayachandran@gmail.com>
To: arm soc <arm@kernel.org>,
	Robert Richter <rrichter@marvell.com>
Subject: [PATCH] MAINTAINERS: update Cavium ThunderX2 maintainers
Date: Tue,  5 Nov 2019 21:16:54 +0530
Message-Id: <20191105154654.4675-1-c.jayachandran@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_074745_648444_8F47FC15 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: obsidianresearch.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: obsidianresearch.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (c.jayachandran[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Jayachandran C <c.jayachandran@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

jnair is no longer at caviumnetworks.com (or at marvell.com). This also
means that Cavium ThunderX2 will now be maintained by Robert.

This is probably a good time to map various email addresses used for
my patches to my personal email ID, update .mailcap to do this.

Signed-off-by: Jayachandran C <c.jayachandran@gmail.com>
---

Hope this will be merged thru the ARM SoC tree, let me know if I
need to send it to someone else.

JC

 .mailmap    | 4 ++++
 MAINTAINERS | 1 -
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/.mailmap b/.mailmap
index 83d7e750c2fc..fd6219293057 100644
--- a/.mailmap
+++ b/.mailmap
@@ -108,6 +108,10 @@ Jason Gunthorpe <jgg@ziepe.ca> <jgg@mellanox.com>
 Jason Gunthorpe <jgg@ziepe.ca> <jgunthorpe@obsidianresearch.com>
 Javi Merino <javi.merino@kernel.org> <javi.merino@arm.com>
 <javier@osg.samsung.com> <javier.martinez@collabora.co.uk>
+Jayachandran C <c.jayachandran@gmail.com> <jayachandranc@netlogicmicro.com>
+Jayachandran C <c.jayachandran@gmail.com> <jchandra@broadcom.com>
+Jayachandran C <c.jayachandran@gmail.com> <jchandra@digeo.com>
+Jayachandran C <c.jayachandran@gmail.com> <jnair@caviumnetworks.com>
 Jean Tourrilhes <jt@hpl.hp.com>
 <jean-philippe@linaro.org> <jean-philippe.brucker@arm.com>
 Jeff Garzik <jgarzik@pretzel.yyz.us>
diff --git a/MAINTAINERS b/MAINTAINERS
index cba1095547fd..21c7a8a25e00 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3737,7 +3737,6 @@ F:	drivers/crypto/cavium/cpt/
 
 CAVIUM THUNDERX2 ARM64 SOC
 M:	Robert Richter <rrichter@cavium.com>
-M:	Jayachandran C <jnair@caviumnetworks.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/cavium/thunder2-99xx*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
