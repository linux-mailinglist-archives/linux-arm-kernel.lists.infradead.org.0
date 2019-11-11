Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED94F6F64
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 09:05:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3czr7DZ6cD9WlPeQYvyMOsGAb9ivMfNdkbT+3/2p2ZU=; b=cloADmLLabuknZZ6rrI9b/yW1s
	0SzHgOqNTozsd4XgLwcEQzIECAec1NVbbp4Om5pm0Zf9rPeG5eEMVMD8x7cOEjbKkp4MySZqLMYft
	ozQCakSJsHvm7M5aG9wSPNf68Q7UBGzSfFsetCefGNVqjaqDV+x9ME2ayP/P6Lk5Wprq7ITsg40Yo
	8/6vAU/Am3F+K5Sugs4S2o4FE8DQd1+/hRXFw5bO7BS3RjDqx6ZslgsB8+mlaNN4avkl9L8J9nFkA
	kOraegMGEXkxzW542OQdsgeXJN0C53r2vxKsk3CQ+/J/o//dS710L61S6Xp4v3Q91FSZyQMo0D0B5
	yfVUow9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU4hd-0005iJ-8n; Mon, 11 Nov 2019 08:05:37 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU4h1-0004EM-HK
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 08:05:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573459498;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2FRKI5+6EDUKwn2QzAstv2u6dW0Q8/ilQLcz5atGxuE=;
 b=YzL85NUQPYbV3CULNH5NR1+PPEfYPyWQXAfwXEWi7yJ4neLhUp3MBpFGLWQvSwW1Yt7B9g
 VUy7ympG6dTWDPJTp6P+yrE+12NDnAw8y0nE9FtTv8nVJo6GIkgpFsCJrb4wcJVidE2Cth
 hrAOj52Q7eHBahdg26Njs7XtWVGjEAU=
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-ZrAZpJetPoWjHqz-nH5t5w-1; Mon, 11 Nov 2019 03:04:57 -0500
Received: by mail-pg1-f199.google.com with SMTP id t11so11364694pgm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 00:04:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BgAr5VVOQXh1yien5qVgdgmIL5RHbScoYGF2ala0/ak=;
 b=E+/7N448xhKi9BT3sC02EdO1p43Uef3BvYDasgWAbf1xVerV2nZlCAnkntwwLfRtOm
 Dj/Y5WvDFRSEj3LjfRhqVW0NS6S7jogaJFu/w7OZH5xM38DhMU0JGeMA+PWDOVaDyQ9H
 zbMC5pHpao3HMJO7ckP4owHWkV7PY9gqjmr295P8evCNYK10+ZyFcRJrQ/nbPZeGD8m9
 9P60aTjFrhlNWRF9NgO9czvt068TYL8rr/Rn/xYPTFa26/xiLnKWR7yZIcXMAb219TxU
 kSKz73eCExuOrGITpDsLkwKDHCPgJqGhPz/XP9k1nsZhNZkcd3XkaDCoLFmXGCR1BXP8
 nIjQ==
X-Gm-Message-State: APjAAAWubMQKKNm3WecgFVdZwcKG9wWiDNmGmLM606p7bcDWLgki99OL
 OI/c5j/RtKpB912WlthXrHb657n400/wzZVUt2pNMMu8/vQnJXhdOIr1uiFVmeZtnj3B1gkLIBI
 eJAnCbdkqxORHiEpPVEkiS4FlAIPqcLxJ3TI=
X-Received: by 2002:a63:cc17:: with SMTP id x23mr27009230pgf.446.1573459496119; 
 Mon, 11 Nov 2019 00:04:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqzJWpQcBQvquc5dbnGBM6G4yNAtHiqFdXD409t0Q0+sK5yPSXKJEhVQvzS4/XbjlsLJyg9EHQ==
X-Received: by 2002:a63:cc17:: with SMTP id x23mr27009207pgf.446.1573459495818; 
 Mon, 11 Nov 2019 00:04:55 -0800 (PST)
Received: from localhost ([122.177.0.15])
 by smtp.gmail.com with ESMTPSA id m123sm15397699pfb.133.2019.11.11.00.04.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 00:04:54 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/3] Documentation/arm64: Fix a simple typo in memory.rst
Date: Mon, 11 Nov 2019 13:34:45 +0530
Message-Id: <1573459485-27219-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573459485-27219-1-git-send-email-bhsharma@redhat.com>
References: <1573459485-27219-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: ZrAZpJetPoWjHqz-nH5t5w-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_000459_679573_D92480A8 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>, bhsharma@redhat.com,
 Steve Capper <steve.capper@arm.com>, linux-doc@vger.kernel.org,
 James Morse <james.morse@arm.com>, bhupesh.linux@gmail.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
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
