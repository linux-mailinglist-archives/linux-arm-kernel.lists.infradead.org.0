Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275B510DA5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 21:01:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=att41G/rUH7NXpXw8S+1LetIpcj+ItNGhzrNdL3UFUA=; b=fSgzYRjkySMGE2QTv8mVoorJw7
	5s1Y+zXFBFAqA96TCVrziD8yrKqzUwMuyGjnHE0SZbaQUxya1dpTSNmVVnyc+EUQB9SndYf4yANzG
	FkVHrc9360ZWwfVh3LZqPe3qkL/d9PwIZS+kagVnlTk0IVSLxGwqpWRNFUtYqr0+Qym909OaLc+ii
	UqdeBrzG9Uhfgi9pSxbrFK0AQU22bBIs+4JFh+R1GlhMpi1ilMtmtfCjD7vhbZRQImuk4TKY1xKzk
	X+7v+/U+1vnqf57sWrdlEJgR+OD1GvSPruIW8cK7Wn3H86LEna9KNWXlKtpxRvdpiZE+Hocrk/Q17
	Pfutumzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iamSR-0001EZ-4W; Fri, 29 Nov 2019 20:01:39 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iamQi-0007Fo-9P
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 19:59:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575057591;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yNq9Cl1u8a4Res9gMqZVglO/lwiENzme0qL73M9MY10=;
 b=Nuz9PtJBk8cMdRpdLhT5f54Svl2GW3tb2FeXS4CLEbVmXoIZP/kimp4C/RJe8VP/OVyz4j
 lSmjrYcTmTVEJlJtgZJZFVWJitOhDOIWEjgPt6CZYXmzfasL1ku+l62AflXt8kerQ0VGhO
 JqdV58Gfvp2lECw9VASy60R96W9Y5W8=
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-154-n1mAx7ksNs-Qy_PUGz5x0A-1; Fri, 29 Nov 2019 14:59:49 -0500
Received: by mail-pg1-f197.google.com with SMTP id o21so1660030pgm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 11:59:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EGXp9xk2iujKm5hWzUI7x5fii/ZV0bMMwslmLu+YaOk=;
 b=gGDCXplVXsJYV7M6dFGgR9So+KvbLadlkBR3ksQ24OTvfjxS+mWl9gn4y4bfexqGw/
 nV7l5vx/zLBwTCmCwoGQcWHFznqMFiivIJ20kSAfOsiJ0b6AADVICq1oVWgBO1zdH0Kk
 nJPynyx//odQDn5F0OS3qUQ6/pXQjf2NmkB/QEehgQnBd5DHOBzBeJ9VRBvFgIQoghqi
 iBWs3Vl2LVQvxM+W7R2AN0zvg+f3cDDXfKBxDXEVbifWrVr3pGqBIezOPr9z/mdY1Ol8
 FuSugzwU2wUD8nH9BcTIYfHPNCar2g40XWNf5cIEaWd0nIh1MLXO4azF2VMe+MFNJ0iM
 P8QA==
X-Gm-Message-State: APjAAAUafnjZE3QVy+0aauZJMzJ1bNAjdWXP4EHoVh7BZ4Tf6rQ9uWvm
 dIU0HgVh/1xYCdWDJRxfZTIdif5kfdc0aL5b5QlKQJji0Mf0XY4K3DtlsuvsTU9szB1w2S6d1yr
 6hyzdvcLVJ0V6KZddFsCm7CoMZyBUgCPcZxc=
X-Received: by 2002:a17:90a:dc81:: with SMTP id
 j1mr3729517pjv.29.1575057588119; 
 Fri, 29 Nov 2019 11:59:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqxPVcE/XW8sUFbfhtiOj/O3Z62tRbLgdRo5GLkRP1HykyImTD8scVfMGcKn/WmLBQBtuJQ40Q==
X-Received: by 2002:a17:90a:dc81:: with SMTP id
 j1mr3729508pjv.29.1575057587944; 
 Fri, 29 Nov 2019 11:59:47 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id 67sm15725516pfw.82.2019.11.29.11.59.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 29 Nov 2019 11:59:47 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v5 4/5] Documentation/vmcoreinfo: Add documentation for
 'MAX_PHYSMEM_BITS'
Date: Sat, 30 Nov 2019 01:29:18 +0530
Message-Id: <1575057559-25496-5-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: n1mAx7ksNs-Qy_PUGz5x0A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_115952_452528_68E23D94 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
