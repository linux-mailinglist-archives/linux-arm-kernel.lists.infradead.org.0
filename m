Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243EB135E1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:21:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSrlD4wfkFGR+5+na6iY76rPJ3mzWClpH9cGcsoBeto=; b=NHIkgz1tj9AGVZ
	4ax3enqe+Chtb5zVlgX1f+Cx6WXB08SFp/sXPeMIepjUfFla9FoPqQZlPD+QdJbepYX2KT1JgCedy
	LssPomnkqUVZnMpylYxMT3PXuMrpC3E8nZwqgggUntab8kuyapHOmoaoSCrAmBZCdKMHUNYnoMZME
	67D0KZiYqghvv+XOLfQmuZs9dwJntackKgqHsx/ujtw5O41bJvw6e9oBsFJXhrCqLLCKfQSdjZsSE
	NsmMOQcAZeNAZviLnKe2o1W2a7q41rUg0sntxtvmNfGvPip3ZtXBfQVfkfPJbwzk1PyYeSEi4DZ+U
	oEE4+tSqqzLGhCDeaIWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaZ3-00089q-My; Thu, 09 Jan 2020 16:21:41 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaNS-0002e5-VK
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:09:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586181;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7axxFTtCe4/hNmI9OgXAAlvq0RYtj2z6BU573XVOuhg=;
 b=ScP1hP7tnYBCoTdzLy6977XFqZKc7mKqW9cIXiKcuLVWuDnWZUYU18ssKc81Kci8oiLgGY
 FVP3HbH1a8Mt0Uxr+m+uo1F8gZsmbQ/I64CLJ7bnjUah/lmfqxlwKOrKkxDZsy7ioEuzwD
 IAyggqh4IJ2XujpIOdiR6p/MndIKvuY=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-222-vM5fI1FqP5CQuAVlgM5l-g-1; Thu, 09 Jan 2020 11:09:37 -0500
Received: by mail-wm1-f71.google.com with SMTP id h130so1097948wme.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:09:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ODS9WlTRJORgY55Us9ipxq26EI7DMMwmFDGmBIaDtSs=;
 b=t9Kij7xddZJWvsASWKRKAvlymcsBQJn6PNQBzfn4NdU6R7FkvE79HloAhA9U2zMn+R
 T413pwBW6k5BR2AmOI7hkbIb1QgoR9OZxcytVWa8o6W88u8PvgLiKYiolbH4ZWUB6V4X
 n4HdBS46ovMn1pTpHfHOmQeErTOwt3FBBH90XG8SZuVxjT7uTkh5Cl3BjnsTZUR2lKVQ
 NFvt10KAYPwgBungRIHYoxnNXtZeSOK06kNtTbjymdnOjwgLsMuzMthLzWHEvVmbIUSv
 QqhSTA7PpNZqT+NQoCs06KsY0ALPcPOOkFF5Q6Akv8q/a9UPbhMez0WbJTJA/klMnX7/
 /9zA==
X-Gm-Message-State: APjAAAVD2GAcS5pF2E0H0P5nIEIYakKy3T3hyLkSMA+P818EifYfKJbU
 RhmxiVf7JCuuotXWvS0RCMFY0kdCUdv0wLoeO05ZyKjplblfm8bCWIiWRXV6bjh6QC1gFPzKjOf
 7jT8BCx6H37qpv2DgTiQgDk+1fwBmDIVkuiM=
X-Received: by 2002:a1c:a78c:: with SMTP id q134mr5391859wme.98.1578586176750; 
 Thu, 09 Jan 2020 08:09:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqwxEWwuCOkJR5Ut8BjsE0zeZF0JVq4HT7AdNp/Reici8OM453wT+4LqvjkdS8rpxKybepscTA==
X-Received: by 2002:a1c:a78c:: with SMTP id q134mr5391844wme.98.1578586176598; 
 Thu, 09 Jan 2020 08:09:36 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id e8sm8517707wrt.7.2020.01.09.08.09.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:09:35 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 53/57] arm64: Generate no-ops to pad executable section
Date: Thu,  9 Jan 2020 16:02:56 +0000
Message-Id: <20200109160300.26150-54-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: vM5fI1FqP5CQuAVlgM5l-g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080943_119949_72666D71 
X-CRM114-Status: GOOD (  10.11  )
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

Directive .org fills the gap left to get to the new location with bytes
of value 0.

Having an executable section contain invalid opcodes confuses objtool,
so use .balign to fill the gap with nop instructions instead.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 arch/arm64/kernel/relocate_kernel.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index c1d7db71a726..5e08845f701a 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -118,6 +118,8 @@ ENDPROC(arm64_relocate_new_kernel)
 .align 3	/* To keep the 64-bit values below naturally aligned. */
 
 .Lcopy_end:
+.balign	KEXEC_CONTROL_PAGE_SIZE
+/* Ensure we didn't go past the limit */
 .org	KEXEC_CONTROL_PAGE_SIZE
 
 /*
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
