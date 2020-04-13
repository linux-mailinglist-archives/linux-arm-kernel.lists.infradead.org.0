Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F99D1A6687
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 14:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MzpfZ/wDm7LW48hvjCXjC4xLjQoE3GNGSTYNl9uhNhU=; b=I/YUdUekvQm/Qy
	VmWYYgpU+rgkL8hU1oRe+LpQ4r6SvufAe4amrBlKh2qe0EmCimK730JZYPfZHjtHOmTqhe42Eu9FR
	shO3Of6tNXngodVEXF/E5g/RJVOe01Il9c+Qo8SFtqcaKQ+shFlzmKhR7Cwf+D2I43xfP45RSzTz1
	6PZgcuza9mnmwiyNtIBM0N4okkAYzi6SCIvRZTtEclkG0J7ESDWDIhmdTY4G2fwNhiHlRcBBfa/wz
	Ab6sNztj9vDMtNM66BE02+hQQWJqiLlGo7ZXOUl3yvIZt4GRCbfh/QY4D20C3XqmIueNjcxsaKocp
	IKaDA8As76co2tT6fuJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNybf-0004uY-1o; Mon, 13 Apr 2020 12:54:31 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNybT-0004tr-Ck
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 12:54:20 +0000
Received: by mail-pj1-x1042.google.com with SMTP id e16so3493739pjp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 05:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eLerIzKtSl3zsn2Oymq5fsiJKLq+NQe813C4SL5fbLw=;
 b=D3TacET4LkxgSZwrtk0YaO57GIAKjGq2FPxhPIibWo0sfykUkoRPbtT1f79Yc1c0me
 Jg6ubg805mJwW/UIK0xFjVnvaAhSuErW6yXPEECe9C+aijrMJqQi12GvPnicnJXPQkAD
 7s5ZhWNwDiR14hLg1/l5CXCsGNCCoW09+cbd+G7vLYprIu8mAYrfJt5Z7Ej+3+oEbWCm
 negw6h/cLHxbJGqVoj0xGCTjzWVbxBdALQozOIeVH71ZFyuZ+tbY4voNU7sWACEIebF3
 JVVOML3yuc3rFmdAauFn6vfYwVjRjOsHKMlXRUgQBOAmXItxjBRIE1V3smOcR1mge9fP
 +3Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eLerIzKtSl3zsn2Oymq5fsiJKLq+NQe813C4SL5fbLw=;
 b=R5EL5OJjOMZD4KCZMTa/HqOfWp4sz3sgVKW7Hgc1z46hXGJ5i2uOiX3uU59Z2mXJ0/
 d7p7icOyY4Q71tVC/TP4/ku7QWzXSvs36ZAJ/JNXE2w6bdwBK5yp4ajSdoZ9Aw0jeAhs
 dsqxi8lzjtCZUKhAH9rnhdEgsyhY2g3ais7BPtUcSOt6LWXd8KCr22YFlNe5e1zvrkNf
 OBLfNck0H+zMJH+qIo/JE6d1MaSpJ7vXUqwD8J1ZbZTWgsgQtdh4B4jUb0UQEpC6gTCo
 pVxuctqyNepUrx31PSj5M2eXDJWcuZ0vXuInK7xAlFv5yq43vB/z9S713BSINOzu/5xg
 oCSw==
X-Gm-Message-State: AGi0PuZzmBaD975mf5BNYzTi/6ZvaCizIMMWpHKno6mArkgKdL6S/3Ie
 2wZQURKrs1Xh51Yr4n126pE=
X-Google-Smtp-Source: APiQypIuKwevaVe7P950qwu0WviRlHpRByIKxXMptZO8oQOn38nAcJkm8e5eaH+Vq6duTZluVkSCtw==
X-Received: by 2002:a17:902:464:: with SMTP id
 91mr17811244ple.261.1586782456770; 
 Mon, 13 Apr 2020 05:54:16 -0700 (PDT)
Received: from bobo.ibm.com (60-241-117-97.tpgi.com.au. [60.241.117.97])
 by smtp.gmail.com with ESMTPSA id j24sm9235610pji.20.2020.04.13.05.54.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 05:54:15 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: linux-mm@kvack.org
Subject: [PATCH v2 0/4] huge vmalloc mappings
Date: Mon, 13 Apr 2020 22:52:59 +1000
Message-Id: <20200413125303.423864-1-npiggin@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_055419_456771_074AB79F 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npiggin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, linuxppc-dev@lists.ozlabs.org,
 Nicholas Piggin <npiggin@gmail.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can get a significant win with larger mappings for some of the big
global hashes.

Since RFC, relevant architectures have added p?d_leaf accessors so no
real arch changes required, and I changed it not to allocate huge
mappings for modules and a bunch of other fixes.

Nicholas Piggin (4):
  mm/vmalloc: fix vmalloc_to_page for huge vmap mappings
  mm: Move ioremap page table mapping function to mm/
  mm: HUGE_VMAP arch query functions cleanup
  mm/vmalloc: Hugepage vmalloc mappings

 arch/arm64/mm/mmu.c                      |   8 +-
 arch/powerpc/mm/book3s64/radix_pgtable.c |   6 +-
 arch/x86/mm/ioremap.c                    |   6 +-
 include/linux/io.h                       |   3 -
 include/linux/vmalloc.h                  |  15 +
 lib/ioremap.c                            | 203 +----------
 mm/vmalloc.c                             | 413 +++++++++++++++++++----
 7 files changed, 380 insertions(+), 274 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
