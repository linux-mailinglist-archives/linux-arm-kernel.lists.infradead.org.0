Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C0A15629D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 03:03:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iYylqHCvzy1FGHg/pEyNFijv2e+jQZxh47N5VYJ6kSY=; b=bKX5lIYZfjq4Zi
	N83KxjfE8Es245t8+RdBhEv9EXy/rUlc8L8eBskf0UR7YYE5utlQXer3+e7CiPWg8rb6D82ddEL7E
	bhM0f0Kf0AfftO62nOP/cfAyB+agW+JtR5RhGOGiEyYEDEpy3S62tv+T457jq1iVj15gqEhJwwVBk
	Z7Y/L7DlATYiO6VZesWW3OGl7W2foHMOGWLdhici8cnrg+pD7zZX3jt9ZZ7JLZMlnON6gEQifa0VX
	QYWYps1Xa57S4joDpipSwJJ6H/99KSqYR+HSE6HjmwNzY3q1UYD+Yaoh6S+ThvXIttbWLQFcNyTk3
	kbgH37JjaytZoT4lfSsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0FSY-00026K-18; Sat, 08 Feb 2020 02:03:02 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0FSR-00025F-GP
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 02:02:56 +0000
Received: by mail-ot1-x341.google.com with SMTP id 66so1174007otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 18:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=ZL1vw2AXxwnJQ2itrk5zfzZQ8p6ax5CM4oF2dWGGnQc=;
 b=mSKNR7w2E2yDs943NNg37EL3/vyyqIeWtfn+pvbMxm6Ppu9/jMXRV5puYVNqkZWAbJ
 IA++lHgYp8J4Ttq/NxqrwtOg4pJ+0VoUwyelqs6zdwL/XbMeKk2J/+JQwpve+qA+2B6l
 c6hvByKoNep9vf8QExch1b2nYfgHciDzQmhRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=ZL1vw2AXxwnJQ2itrk5zfzZQ8p6ax5CM4oF2dWGGnQc=;
 b=MSI32VXF/kQargO88WHBfZDffqtArPjM7w7ALD9sECqfd8lS9bObUqD/1lNRdMvq4c
 johRWQGSv/QKkqZyYwVMn6wUFsZdB3wdC8FnMhfxVSFzX8OHahFff7koKWFIqYFqs/ep
 wuSC60lJsPafsvySWjeswu0euyaoWc9Eq6nJKlOd2WJerNcf3XRy3KSvgZzg1tn7DJLf
 WKDixhUhqMEppd48kAeip7QsuxNwQ6w+Zxlap+xoKoi8nrNTuE1sonBU/lcRry4gMjUQ
 H+ZA5t9yY0rnSPQ+Y9jstmMEgOwsbSlO5rLym1mUDFaepnQ4d/7Uh+TU1hCSdNmzpsls
 R+fQ==
X-Gm-Message-State: APjAAAVZ7ZEsHWgdWO2ODd/R9IM3mB1tenXsH/btx6HgMFYRj0VVhPNd
 LTViuLD5QcH4/681h8p1rV8dE29T/Z33ZA==
X-Google-Smtp-Source: APXvYqy16hNfOnp4HG5nW1dbIIaqb7qga2IbA8K9tC05B9Y8mof43qotvfzTXHFB7Pos82dfVCYL1w==
X-Received: by 2002:a9d:5e9:: with SMTP id 96mr1788864otd.307.1581127373870;
 Fri, 07 Feb 2020 18:02:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id i12sm1803428otk.11.2020.02.07.18.02.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 18:02:53 -0800 (PST)
Date: Fri, 7 Feb 2020 18:02:51 -0800
From: Kees Cook <keescook@chromium.org>
To: Nicolas Pitre <nico@fluxnic.net>
Subject: [PATCH] ARM: rename missed uaccess .fixup section
Message-ID: <202002071754.F5F073F1D@keescook>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_180255_574538_FF225D97 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King - ARM Linux <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the uaccess .fixup section was renamed to .text.fixup, one case was
missed. Under ld.bfd, the orphaned section was moved close to .text
(since they share the "ax" bits), so things would work normally on
uaccess faults. Under ld.lld, the orphaned section was placed outside
the .text section, making it unreachable. Rename the missed section.

Link: https://github.com/ClangBuiltLinux/linux/issues/282
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44
Link: https://lore.kernel.org/r/nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr
Fixes: c4a84ae39b4a5 ("ARM: 8322/1: keep .text and .fixup regions closer together")
Cc: stable@vger.kernel.org
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: Manoj Gupta <manojgupta@google.com>
Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
I completely missed this the first several times I looked at this
problem. Thank you Nicolas for pushing back on the earlier patch!
Manoj or Nathan, can you test this?
---
 arch/arm/lib/copy_from_user.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
index 95b2e1ce559c..f8016e3db65d 100644
--- a/arch/arm/lib/copy_from_user.S
+++ b/arch/arm/lib/copy_from_user.S
@@ -118,7 +118,7 @@ ENTRY(arm_copy_from_user)
 
 ENDPROC(arm_copy_from_user)
 
-	.pushsection .fixup,"ax"
+	.pushsection .text.fixup,"ax"
 	.align 0
 	copy_abort_preamble
 	ldmfd	sp!, {r1, r2, r3}
-- 
2.20.1


-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
