Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8DB10CF38
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 21:26:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=att41G/rUH7NXpXw8S+1LetIpcj+ItNGhzrNdL3UFUA=; b=ncith3CvsYB/eCnDrTQ9e+bS3R
	r08gD4a2CAIn8hdqnpi0dZ2qD3Zvq0J6hZiOlSNG414aqduXfQnETqyuDp36uDpFfFQwxQTPTlJAp
	piVOLRKn/92b67KHyLPgsuv5TB7I28DudEv0jPLTsHsRviSCQSXlJhg93bAXgnOJqM2ae5S4qmUZU
	ZHkeoQ9cVDVieWWfclqAv2lzJNU+yDE+cQwr+CxkDdJUNnCNA+UwTRULHHJ+26WnNgaFLPWU5XgjJ
	SVlYtCCEzqVQKMNbg68M7nB/tzMx/ETHSDb5mq19NBuawjA7+/AZnuyb/EAKo/TJNvWaoCPPv0m/x
	XnVyPo5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaQMx-0007dH-6O; Thu, 28 Nov 2019 20:26:31 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaQMA-0007Gl-HW
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 20:25:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574972740;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yNq9Cl1u8a4Res9gMqZVglO/lwiENzme0qL73M9MY10=;
 b=iGfa3lcM+x4ZdaCCNlh9J0QKx8CfIQaMWmsreOv1wzDUPyQvJIROUzQZngJy8YJ4lLIbQU
 +K3kAwICKk8CPxWeTSvZ2dc9oaHWS3h8ohFVVJ3twZ+d2ZDKaiN6N2Lowt0sD1sfTbBO01
 1mlrqy7NpVb+FSHX7w+c4j27dMcSJvo=
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-25-OKwI6C2fPRuCbPRYeHDI6Q-1; Thu, 28 Nov 2019 15:25:38 -0500
Received: by mail-pg1-f197.google.com with SMTP id t28so15209278pgl.21
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 12:25:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EGXp9xk2iujKm5hWzUI7x5fii/ZV0bMMwslmLu+YaOk=;
 b=iKxsH7Dn1lVIOohdrdtwVlj4vq32jnZNqvr4pfSlqhvbvTSJ1i1QmiocIF5hAhEDUj
 JWX6Qbq2KQ3A0h5pp8FpSHOK8bP8ySjHpn3jyijKjnCoRFIALJ3hF6mULGMu1ct7d03G
 rYP0/sphBys2Gch0Sw09wvzd7JlVbzEbRZjwNOX7TExZLEPFCo33or63wuqtPLq9Ly4g
 UL1tMMJ4uqDKAwOxTBd1IdYx6Q2dYmrvgtbN/vtvlslMYIHbdePiebhTnMFlHBzmLvfY
 ftvoo34/nhQefhjAo0JBlzO82M4hadiLcU80FfOQiCfX5+XmUhmCDrjc1+4WSqHKchnu
 3glQ==
X-Gm-Message-State: APjAAAWnMiRREYVkpbVj2Vc+vw+fbiqIfbCXvc/fRJ0M2pWtHTt9R8J9
 vP4IMqO7ZVzdAHSAZHHSKmwGkKFByxv5bjwOAn/dr13vt7FRcYut2CL0F1Q75b2YHwfUF46YoUD
 fTlIxbdHP6TQ8NJWS8bpAO+BWa332dfaIGyc=
X-Received: by 2002:aa7:9f08:: with SMTP id g8mr55602053pfr.59.1574972737769; 
 Thu, 28 Nov 2019 12:25:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqxZd0aFye0vSy1NxsGtsRRJBkuncMDWAD+zRH7F+esJn7Za4gqNzi7+zhDEogE6OWw66etLDg==
X-Received: by 2002:aa7:9f08:: with SMTP id g8mr55602046pfr.59.1574972737583; 
 Thu, 28 Nov 2019 12:25:37 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id 21sm22106551pfy.67.2019.11.28.12.25.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 Nov 2019 12:25:36 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/5] Documentation/vmcoreinfo: Add documentation for
 'MAX_PHYSMEM_BITS'
Date: Fri, 29 Nov 2019 01:55:15 +0530
Message-Id: <1574972716-25858-3-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574972716-25858-1-git-send-email-bhsharma@redhat.com>
References: <1574972716-25858-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: OKwI6C2fPRuCbPRYeHDI6Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_122542_718110_45D924B1 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-doc@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, bhsharma@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, Paul Mackerras <paulus@samba.org>,
 Boris Petkov <bp@alien8.de>, Michael Ellerman <mpe@ellerman.id.au>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 bhupesh.linux@gmail.com, linuxppc-dev@lists.ozlabs.org,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Dave Anderson <anderson@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for 'MAX_PHYSMEM_BITS' variable being added to
vmcoreinfo.

'MAX_PHYSMEM_BITS' defines the maximum supported physical address
space memory.

Cc: Boris Petkov <bp@alien8.de>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Dave Anderson <anderson@redhat.com>
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: x86@kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: kexec@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 Documentation/admin-guide/kdump/vmcoreinfo.rst | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst b/Documentation/admin-guide/kdump/vmcoreinfo.rst
index 007a6b86e0ee..447b64314f56 100644
--- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
+++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
@@ -93,6 +93,11 @@ It exists in the sparse memory mapping model, and it is also somewhat
 similar to the mem_map variable, both of them are used to translate an
 address.
 
+MAX_PHYSMEM_BITS
+----------------
+
+Defines the maximum supported physical address space memory.
+
 page
 ----
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
