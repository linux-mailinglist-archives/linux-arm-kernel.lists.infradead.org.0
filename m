Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0088F10DA59
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 21:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3czr7DZ6cD9WlPeQYvyMOsGAb9ivMfNdkbT+3/2p2ZU=; b=OTqM9ri2qHmlHsG7oUnDjhIORr
	kdlguMWnYf17M6gijLg1qSDoZUw+tRbYTyCgzzEi9mbb2REtEGgIZcSb5BBVBig2IDHtNlGY7LGZb
	FjTbxjSdf6tdVwaX4iDuPtrl1pGRrhUg336VrVlTFFMBc8wthhVZy4aD+MrmhH4FQ0dCwMfUwv5AN
	oGM3Ly6MmVAELuEaoRzKMh4mOpPWw6c1M+swy+OmwOBv3wRLWxBhQqBnkmBNk5FBt712TumFXqkI/
	lpOaFrhTRjcfgjeOoUYbXf9fPcV1+MwYvBufVkj/giU9bkrqvgnfT88b1S1lQlORb8XQRjjR2gMea
	5dRW0cMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iamS9-0000xh-Aq; Fri, 29 Nov 2019 20:01:21 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iamQf-0007CX-Lm
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 19:59:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575057587;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2FRKI5+6EDUKwn2QzAstv2u6dW0Q8/ilQLcz5atGxuE=;
 b=B8Qyy3ZwqX1aKoo9QY+0r/F4xriA8glP+aBdWc4fGEKWl7zFQP9mtmf1bQ1TCkZaKATqgF
 UG3gBc0yRgdaoXAYJy9C2UigbTFr0MlMjndq11X/gZW+wFDvV0LJoqJqOpidQ23+niT2fZ
 pyed1rdA0fF4UCSBEop9ba9XcK0Qf7A=
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-vhQf1mC6MeqiuxWS9o6w0Q-1; Fri, 29 Nov 2019 14:59:45 -0500
Received: by mail-pf1-f198.google.com with SMTP id b15so2876106pfo.16
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 11:59:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BgAr5VVOQXh1yien5qVgdgmIL5RHbScoYGF2ala0/ak=;
 b=JmeOYGjg7K2ZPxa6BLT/ijpywGM+HnIkWfTEo1htOEflkVYf4JmlSOP6sNp5bwkQpS
 G0uqmXvveREBzgWY34+6mIzxmFi//VbtNaKIXkWGfiV/idOce8dM8Yues752nQj8ZHEI
 9op+vk2czwovJHol7eA/fwmr/F9Xf0xfb2I2kafDTg4dDtJ5+uMoAnz1//aZ5xZ/0tu6
 y6Sit8Z/T6q0JDeiL0HkVEYDIzCfshTdVTkAa7Ny0TMkg+Y9xdsJKugQ6dzc1F/81yMH
 r4nv3ozhoMwLIdJzEJPTQuNwpK1kOlt9r5BZOcq83gB2HxuFfSqPhUNAAafzTd+0BZsO
 OTkQ==
X-Gm-Message-State: APjAAAUDw7cbEpxmcG+mNmmbLUDssCuqSDJs3n1nfurQywe06bdamX9V
 ZQlXoBsZRwbfb8jsYPS0WNazMTLLRurNa0FRTak5rO3EQcoW3uLT+N+cYnWmGVzyQd36QANdlC9
 X4S+LA3sT/QhWPtml1/EAlklt6f2MUX7UYbg=
X-Received: by 2002:a17:90a:fb53:: with SMTP id
 iq19mr20314620pjb.138.1575057584293; 
 Fri, 29 Nov 2019 11:59:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqz4gnI9c2bYrtjkLwMhPYvWHvZw+YasEX6lAkryf7HpqeVi2n8s5GR/Ai2re8lnbcSS3E4aLw==
X-Received: by 2002:a17:90a:fb53:: with SMTP id
 iq19mr20314608pjb.138.1575057584113; 
 Fri, 29 Nov 2019 11:59:44 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id 67sm15725427pfw.82.2019.11.29.11.59.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 29 Nov 2019 11:59:43 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v5 3/5] Documentation/arm64: Fix a simple typo in
 memory.rst
Date: Sat, 30 Nov 2019 01:29:17 +0530
Message-Id: <1575057559-25496-4-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: vhQf1mC6MeqiuxWS9o6w0Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_115949_871322_4574C5C0 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-doc@vger.kernel.org,
 Will Deacon <will@kernel.org>, bhsharma@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, James Morse <james.morse@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, bhupesh.linux@gmail.com,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Steve Capper <steve.capper@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix a simple typo in arm64/memory.rst

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: linux-doc@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 Documentation/arm64/memory.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/arm64/memory.rst b/Documentation/arm64/memory.rst
index 02e02175e6f5..cf03b3290800 100644
--- a/Documentation/arm64/memory.rst
+++ b/Documentation/arm64/memory.rst
@@ -129,7 +129,7 @@ this logic.
 
 As a single binary will need to support both 48-bit and 52-bit VA
 spaces, the VMEMMAP must be sized large enough for 52-bit VAs and
-also must be sized large enought to accommodate a fixed PAGE_OFFSET.
+also must be sized large enough to accommodate a fixed PAGE_OFFSET.
 
 Most code in the kernel should not need to consider the VA_BITS, for
 code that does need to know the VA size the variables are
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
