Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21665B531
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 08:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MMl8OowmJsTUqfrkexN7tdJSoOsi5CN/EAH7iCKlB5w=; b=vBTtRHqhsusGWj
	LRrnCQFrRuEZ4N6r9Vl+GSISoZhtcyUfmRUOXQUtU75/0woQcfEsISyhmY3KjCXVxpMxQkygUH6IJ
	XJsoBRbTse7c/3cSJHmPpgctdYIHFcDFZ3nGmZrgDBTOjLajNZMuPXjgshKHNpNouCAiMLSX2b38q
	0NKiJXVUd2y4Yf4BoWi+iWBaVS1LvoRTKtZyLzwZk7/wKp99G9su7jUfDHf0sK3Nw+GnfsY8v8+1Z
	N74SY2K6VG/8cxWGaelcjca1dyZOmkiMwner6kskvybQ+vwXhfFhRH6htkqInHoY6LYwBPlZhXjNV
	fvMhSk7zU20BOYuWN6gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhpzu-0005cO-6m; Mon, 01 Jul 2019 06:41:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhpzh-0005bE-Ex
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 06:40:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so6042543pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 23:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dcNOnkZ3QNA3naQZL2QsN8O60WJ6liuss/shdVWzI/w=;
 b=jt7i+Ah0OIALx3FcRZ1UZkdX1H4ILpm/ltZc9KwQYbH8WrH3GEdinTHq+ex7/HsTed
 Q/DFlt5PofGsqai1Az11oYNvC8+cxbsQJXJx40MYtNrrkVLO3bvbYJT8wLGxeNRtOg+o
 57Hf/eY+JfZUT3NpcNl6/8Uk+X1AO8MWtOT3zpnCnacQdmAqcwOrmxUTuqxdZ7RhEzqK
 Am48lIIHnwHV8AfSk/jpE+HgXctcEK5PWZhSQXmtFvkQPkQZ3BwTSuM3AfroF++KSYjC
 9/BpKeJlEHYoI/ciZKoAF3S3Fc7bM+QF/p7hCLb11IzbCjyKkltoxPZepQ/YfMGX1jkD
 GVlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dcNOnkZ3QNA3naQZL2QsN8O60WJ6liuss/shdVWzI/w=;
 b=j/kE9cxArHVKl1dTrt5PiuWcKRFbH469bHKqwOAj3sqW0crBeFKb6wRD9rK+21M2us
 SzgEKXi1adpsGr+rGr8z28A4L+QVRdcZ0z/GBa5T5j6+jZ7oSmuly3KB1aZaHPimpsp7
 hZYTyqRXZBQ+9lth6zcAWyq5oNAlaOvUcQLCkfZQ2DHUXQxLT79aqIp83TzPyTox8wPu
 +jVxF5hkFoZ/2W/ORnhW7fIG9+Ks9uEgMMaUevyfBAOi9syLKdzdAvf3xTsWo1P79gGb
 yCGt1eW+NvXv1+ypXxObP+Mt1Jp7xx0EQlMva5G1WKRHryc6U1o6d6KHQ3Tka2cPxYQs
 FFCQ==
X-Gm-Message-State: APjAAAXN8T7DriytZbtUK92s1XpmHxOQDjf/Z5tMmKDj82I+farAAND8
 lSRz5G25lXD8TmB95tJw8do=
X-Google-Smtp-Source: APXvYqyhm6G/Dxj/LNC8ofHNrlWkegS32az/Q37ZJ9wniqzmJWd0cS85z1rpS5JiVW3uLe2ZPBrYNQ==
X-Received: by 2002:a65:5248:: with SMTP id q8mr14304334pgp.259.1561963249300; 
 Sun, 30 Jun 2019 23:40:49 -0700 (PDT)
Received: from bobo.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id x128sm24238285pfd.17.2019.06.30.23.40.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:40:48 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: "linux-mm @ kvack . org" <linux-mm@kvack.org>
Subject: [PATCH v2 0/3] fix vmalloc_to_page for huge vmap mappings
Date: Mon,  1 Jul 2019 16:40:23 +1000
Message-Id: <20190701064026.970-1-npiggin@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_234053_530096_8B012A38 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linuxppc-dev @ lists . ozlabs . org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
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

v2: change the order of testing pxx_large and pxx_bad, to avoid issues
    with arm64

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
