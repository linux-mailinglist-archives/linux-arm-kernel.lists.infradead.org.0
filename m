Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EE3135E19
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:21:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnpkrwI7JuBUUMltDq/HU3eGPnaBHesoz512wNvT6tw=; b=J1FhLoUb69TvNp
	hiVv2ZqTdwg46SFtVq7s9V5xZbxrA3bUj4Xy0aGpUe94i25n/P7R2Hfc4uIdKw2O0ks7qRQpyIfWD
	hQuh06Etb7J9drfFR3nCYwnPTWKSmu62ujYkopGEASodEPfsyEss+FS0KAbZfndQZehPW+SqHkTY1
	YLT/aS83gCRAOjkgGA32nOBvPdmigMQhtCY3s8XOKZDpIEYU76HlC59BJiP3JI3m3IrQwsmqr5Fgc
	5bBHMLBHYHppGbGo07bAPkAwzFN4wntc4OP5CEWUSo2JGuOZeUJ7CFNGsBtJurKPUc/ovcSL7Av0T
	Y9EpP7urPZsjeY3MIW1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaYj-0007xU-Km; Thu, 09 Jan 2020 16:21:21 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaNR-0002d8-OW
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:09:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586180;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=z92LbMne7Yt4VDMBIOJNt2FZqBadMcBmYAHWqfjNEw8=;
 b=HTLpXl9ZOTLwCIlGDPmEkitrMyTrD6D0jlP6CgTw/Plt5N63LKYtEu+BbbmrmQxu1l+TwO
 5ez0AzHG5VG7J7fXJ8M8pw73Jr0uskttLV8iiZ8+hVTE8x8u+yH58JUkuYIFEFpT02MJjt
 71HK6jFPox/f8g80IbidDdgLE+M3ZT8=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-78-dEX7-1S6M8-UerYq3OvkKQ-1; Thu, 09 Jan 2020 11:09:39 -0500
Received: by mail-wm1-f70.google.com with SMTP id t16so1103729wmt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:09:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wMGHjJl3e1P107q4BQ6psOhaStZ5a/m6KJ9UhI8WuJA=;
 b=KhV6ECe2kcIEc2MXdd+xWVM2b2IKEuF/UXBxqf27J8n8m0MR4KDa9M4EsG7NYAcQiF
 kP5YQK0UnVUvO7mJQ2jLCHHjMZWxXufQNS6NpTRbihCv6iWw8wwpkqnFLafXnqZwbHKq
 QQ6b0nNyyRrIxxhu09Vc/kqESatel2LUPyZkVtk9daS21C/XZCn6E7gohlmV3Tu0grdC
 aqgNGP13vjyHmE1tUwHDpkvXG6Whd08dmsTUVZhqyJ1li/8WE62ULOR+lD6ezDaDnLK4
 kcp6BbPLjaE7DSaHdu12nun7bg/UQEZBU8ZCgHaGU65Ts2zFvrnCWJgf8UH6XpwweBQT
 G8gA==
X-Gm-Message-State: APjAAAVjRRSQ0RxM9l61R8PCR5ymWRoE1ekBkCZFn0YpvYXsHEtvmTSN
 rDrUiziKHe2Ken8wtxHEXLzai1M8CRaqdFMqbgL6q4+LnM6AgOweYtgwD1HjvQ9sMavfxqwkWq/
 I8oZ1mMoqZCoX/TriV0s/iclrEmmAGgpWmWQ=
X-Received: by 2002:a7b:c93a:: with SMTP id h26mr5626263wml.83.1578586178082; 
 Thu, 09 Jan 2020 08:09:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqxbW0SbCoj52xkl2G5xsHM6LJP70fkM18f+faXI8eAh4PCwOpImStNR0bRzwb42NSJPmkTJoA==
X-Received: by 2002:a7b:c93a:: with SMTP id h26mr5626254wml.83.1578586177927; 
 Thu, 09 Jan 2020 08:09:37 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id e8sm8517707wrt.7.2020.01.09.08.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:09:37 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 54/57] arm64: Move constant to rodata
Date: Thu,  9 Jan 2020 16:02:57 +0000
Message-Id: <20200109160300.26150-55-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: dEX7-1S6M8-UerYq3OvkKQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080941_888309_44691582 
X-CRM114-Status: GOOD (  10.69  )
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

Constant arm64_relocate_new_kernel_size does not need to be in
the same section as the new kernel code/data region.

Move it to ".rodata" section.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 arch/arm64/kernel/relocate_kernel.S | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index 5e08845f701a..e7a5fded59e6 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -122,10 +122,13 @@ ENDPROC(arm64_relocate_new_kernel)
 /* Ensure we didn't go past the limit */
 .org	KEXEC_CONTROL_PAGE_SIZE
 
+.pushsection ".rodata", "a"
 /*
  * arm64_relocate_new_kernel_size - Number of bytes to copy to the
  * control_code_page.
  */
 .globl arm64_relocate_new_kernel_size
+.align 8
 arm64_relocate_new_kernel_size:
 	.quad	.Lcopy_end - arm64_relocate_new_kernel
+.popsection
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
