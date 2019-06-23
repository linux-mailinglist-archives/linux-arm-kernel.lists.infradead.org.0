Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF7A4FAF9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 11:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f98ptrnDAV9W4QvrSKSn3Qs0z+7bwXf5t/PiGM892sA=; b=IGAKokvizAwJ80
	ClK/nyDU9Tqt0UtPh2/6pMdTDEz7gYi2y+eXK+aq8qBrqpR/cQLbwdLCzTTbMQmk/Ua2p4zBeSy2n
	RpQuIxOgDl2koXxzHEAPYdDT26z4cJmYwTvfkZUpfSJ8YtZChJnRSPCaESNsHTwAObnARJBCCnCBx
	5STOXK9p43IH4nehShjmAGLQzTyCcSRJCIRQofB9+tRTEys1PBILMl4ryYMuXNQZye/vJvHdyDRv1
	XwyNaYBle5N6lJPZyM5wlRl3Ul7EVsOlzga8KoJX1zoWJ1xi2eAWDMRqeoGZTJYpZKBewe31yoicS
	gqP2mQUaOvxnT0hKCnVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hez4P-00016D-QC; Sun, 23 Jun 2019 09:45:57 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hez3y-00015n-Rq
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 09:45:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh12so5194813plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 02:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SGbjyf75c99S79YkNwkfWRcRA4lvd4Chuhz40PQahwQ=;
 b=YVFZcHHRNu+26snpxjow4PoPX3ej9w1hIhawqEAsLMcTCFID9VPgiJtIlfYY9I8ekU
 JHhCB/zPJAvezYn3+jBFu0jrKfoqfzKhqna855JLQGx61EWHs2G5OMlEx/F/HaXmqXxN
 uMqOC5FXfnnNAOI0hJ4vmhyOxsws4Dg0ROZovq00OX8kRtNeLxpcvzwvX24PKb5kFiI3
 NPSR927rYsfiApkiSg+JNTDLoCtfPdmnH3wB8TsvcQIU6Osdax+YeVE6+Hu7gbi9cIg7
 p3/Hd6FeQKKDDPFhvpfDMmiJQWFcL7m8XNy2VKJvSUMmUIRM1LpX9Ih3FSs/aqAQYOwf
 3y4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SGbjyf75c99S79YkNwkfWRcRA4lvd4Chuhz40PQahwQ=;
 b=UQKqJzH2MqGramQ10vnpcZa2G31JpHDsDlm3/S7EFF+37HSXYM9ez0LDyG4wCBIdH7
 N0asbGfjs2x45Fz+TjjbutXe5yOVc95RIulFt/l9yEQZue6zBwtFERhm657/8xh1VwgT
 2PF4ihTlF0JAXGI5YDI6ESE7RQN/VIV1n8Dx52TCMNfyule8zrr8EFPw+mayQMRPgwor
 xgekWp7x/BDKouJkCEXRRQfnWM5jOg/M06Suj6Ze3Ch1z39y8K71kKT2rxKB9LjeGRkh
 ZHY8eDyo4WElJ7x8OlTX0zem2iE8Q/0HDY9RRN7/DGFGQhS/FL12dAaNnRxoF85Dp1oP
 FqyQ==
X-Gm-Message-State: APjAAAUx7IHWtd6v47bR6mzVc1mc1zCIZJXbtVbTPZ13Tc+K1ompjIxk
 S8ZcYbXWX0Hr58SO3Lyv2Rq3e432
X-Google-Smtp-Source: APXvYqzi0wlf2RThtnnqN1XRmfWGl8V2A0Rdx29HeMZt12F8AiiBvwFVo8ATHxQq1XcX9A2BGcBKqQ==
X-Received: by 2002:a17:902:be10:: with SMTP id
 r16mr78309008pls.294.1561283129539; 
 Sun, 23 Jun 2019 02:45:29 -0700 (PDT)
Received: from bobo.ozlabs.ibm.com ([1.129.156.141])
 by smtp.gmail.com with ESMTPSA id d26sm6181062pfn.29.2019.06.23.02.45.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 02:45:28 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCH 0/3] fix vmalloc_to_page for huge vmap mappings
Date: Sun, 23 Jun 2019 19:44:43 +1000
Message-Id: <20190623094446.28722-1-npiggin@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_024530_927730_20832C15 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nicholas Piggin <npiggin@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a change broken out from the huge vmap vmalloc series as
requested. There is a little bit of dependency juggling across
trees, but patches are pretty trivial. Ideally if Andrew accepts
this patch and queues it up for next, then the arch patches would
be merged through those trees then patch 3 gets sent by Andrew.

I've tested this with other powerpc and vmalloc patches, with code
that explicitly tests vmalloc_to_page on vmalloced memory and
results look fine.

Thanks,
Nick

Nicholas Piggin (3):
  arm64: mm: Add p?d_large() definitions
  powerpc/64s: Add p?d_large definitions
  mm/vmalloc: fix vmalloc_to_page for huge vmap mappings

 arch/arm64/include/asm/pgtable.h             |  2 ++
 arch/powerpc/include/asm/book3s/64/pgtable.h | 24 ++++++++-----
 include/asm-generic/4level-fixup.h           |  1 +
 include/asm-generic/5level-fixup.h           |  1 +
 mm/vmalloc.c                                 | 37 +++++++++++++-------
 5 files changed, 43 insertions(+), 22 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
