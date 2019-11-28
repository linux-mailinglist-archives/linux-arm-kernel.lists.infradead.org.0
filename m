Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDDB10CF39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 21:26:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3czr7DZ6cD9WlPeQYvyMOsGAb9ivMfNdkbT+3/2p2ZU=; b=GJMeUoFl6UKHe58lJEBQ6RiLaF
	9v4eO+PyavraisNRlWE9lEHkdqaEJNp2eN040B3Q32IuCgT/2Ef+hT7BgCWrxGHBlFCPwF2wHdpbz
	Zs8sgg/cuItFXRjpj5/cXoceh7kUMTr56CpurhSP/nEROzr3nTtup4ZHkJRJxN7UbvYCKQG1Pe5eR
	A4JVgQ+xI1VmgUZv8y37P0TNTqKK6U7SQ3AYQIYYhwSJlf+kHJ1tdt0FPdhZRFw9lKB3lWb65a+f8
	0KumywJS2CtO8w+axtnxVtvkO7xNeryEuVO926cgKn6Gk0ppxg2KEga0tLcmXJ9x9On9YEsQNJR1G
	HobuLY6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaQN9-0007qF-R5; Thu, 28 Nov 2019 20:26:43 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaQMC-0007IG-3A
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 20:25:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574972741;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2FRKI5+6EDUKwn2QzAstv2u6dW0Q8/ilQLcz5atGxuE=;
 b=EnHZ9kGcT3NHxUkQkHcMTAMLzeX6okGamS3V4WHshHXkvfTbHSLWR8a4mahVVpdhcNmbfd
 ky5Bnna0+YiafkGyAfbVhYBGty+l0liHOqRkySqE8NugAqQt07HuQCb4Cl0R8h2AbVE0G+
 KifiOy8JVJHLsKnozNFZDGvrrWoOXoA=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-171-Vi8PQsNSObypEns9FuOdBw-1; Thu, 28 Nov 2019 15:25:35 -0500
Received: by mail-pj1-f71.google.com with SMTP id bx2so3082459pjb.17
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 12:25:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BgAr5VVOQXh1yien5qVgdgmIL5RHbScoYGF2ala0/ak=;
 b=La6CH7/REzLyQQVqSyTmT1PKd1qy1NUYmN96LDVLrj0RtjulRU9GK9y0kbmk/Mcc78
 xcwuO9D7U23XPA12qQhtIcdi1SGG4HTjHPEt121Bgoyxn9qMp84nFtGTClZrGtBf4Dz1
 CBp5M+7hGdd+Q8sJog+gTzGUiHxUag/Wn+3ABjicfkyhD656n7KgoDLRbjWkM20n5CgP
 jm0HKSZf5T2bnex/Lc9ea18Mmpbt8s48bnjCLVEuczGhuUjiH5JAyg1ZLg/7F1LP4qM/
 3Vz+6pvVVnBmgdvMo86JrqB+x1PMPa93STuclIGINlV/LaO+VHc628LBK+l1ACWOnqA+
 B+7w==
X-Gm-Message-State: APjAAAXhD0uCA6IcWEbifJ30pPCeNo1+bSGT+j8BuyXTv4ZPRqd9XTqS
 wv8zy8NQUX4KujWygDAoCz6VZlPxkD+jL6Pr747yX4Bsg2uRLXgkd1DnXjwv5Xhg9/LtaWh+l99
 1g5jvMNhTEtjpAd27jtNhilqSXfCDV8lTpbQ=
X-Received: by 2002:a17:90a:9bc7:: with SMTP id
 b7mr2779316pjw.72.1574972734227; 
 Thu, 28 Nov 2019 12:25:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqzGw9W2BseetWuCKGjOOk2X1gZmHcotzHkh3qc0nDt9y8frA3vEMk0c5zDGq7c6I7jA3cnCbg==
X-Received: by 2002:a17:90a:9bc7:: with SMTP id
 b7mr2779308pjw.72.1574972734045; 
 Thu, 28 Nov 2019 12:25:34 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id hi2sm11225511pjb.22.2019.11.28.12.25.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 Nov 2019 12:25:33 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/5] Documentation/arm64: Fix a simple typo in memory.rst
Date: Fri, 29 Nov 2019 01:55:14 +0530
Message-Id: <1574972716-25858-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574972716-25858-1-git-send-email-bhsharma@redhat.com>
References: <1574972716-25858-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: Vi8PQsNSObypEns9FuOdBw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_122544_263897_B08AF1B8 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
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
