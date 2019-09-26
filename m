Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D088DBF9D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 21:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5dTg+P7Fm0/mifonoV3dNMwpgAmOUh4//1ac9PGE00o=; b=CA9
	DGj6BSK7yUQoLRfophicVFTVIDPflGtvyqKLDE6kA/o3DVVRxXLg6KdTLMvKPCgR6WtFbQ7hl4BiU
	t85F+ZsdGSSru1Jr3UCA1WOGcsJXO2ZMtexyj1G5fhSFT6wgHQO8Il9owccLGCk3HdUnBr1jqxRNY
	fm/B0oAg7kiMU/QzKTdd2G0U9w45PrMJYXYHRySDfImWV1F34A0qkm3nakgzRzn7hjpA0t1PnGDzS
	SUN4GSlDGQULLWhC9bDQ79LBt1XPoa1F0IAvTd7Pt/dwNvQzXGE82hFj3QDJ26MNmS06el/yVB6d0
	qe99Q9N2mQZAANXJfduq+HwMUMucxwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZ92-0004Al-BB; Thu, 26 Sep 2019 19:09:40 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZ8q-00049b-9A
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 19:09:29 +0000
Received: by mail-qk1-x742.google.com with SMTP id u184so2749351qkd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 12:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ks2qVspm9S/bXYCJdT4jwYVVbHkHmD7QB8KapjaLnAw=;
 b=Iaxv69CZcIcyG7EwEus9/I/xlHQUby/BE2EbJS2l2fcXlakWErmSTtYz7w+E6mYWDV
 SqhSHQGIyib04+gHbn3dQ+0sIUsx4BPNtpsOLb+aVh3vx5SMULvM6tvZURQ+6F0Toif+
 Y7my90KmnJaHAZeLv6cCtmGsTxPR//RMdgdt6MDbh7ycJCDShquXT1jkcc9+3XRbzzTy
 FBaMhjQuCh+k0/Kex4/jb0YLDAUWH28gue68Bi1VdAli2vQ5xYctT72h11KCnzNJpCj4
 WDKvBJqoVqXXgUthcR+p8y79exm6faFKC0tNGXDs3HDNdAO4deX/5zZ6Z6J2gIDtX2Zv
 Xdug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ks2qVspm9S/bXYCJdT4jwYVVbHkHmD7QB8KapjaLnAw=;
 b=IlbzZr2NNVmRChzVgkecLdpDTKdjyYMXnN+zXBAcqop7yV8r2XX8OFf3MqGT+qcCUr
 JNVjndjMg2hnO8NKIQWkviy0uBVGtZKvdr13yJ9z2UlwsxaUnnuJe04Qdb4cufVW9CON
 8iRdxLL7n0lQDHZzf5FBU1NSZhcGzkxk1QppN/VO5b3O4+Nl0Ygrcxb/6OEr0mF0FnVM
 nHSRLydoF9cxFI+klS5uKPAf5A74Czsk+8IQt+wkchtNlFmdisuMYd3aBYUaOuzJtXP+
 IGVbp0U1x7kmA/4QpFu6SIdUsV4MITYJ6Ka46+tuLWuXlncXa1qlbjfVwY6sA71eYaYG
 xg3g==
X-Gm-Message-State: APjAAAWdAD/2c56d6/bmdwuSBGnLJc4eZNj6Zr0LTAJ7IOjoNhERZWTm
 FoUbhryFdHvwE20onur/wg==
X-Google-Smtp-Source: APXvYqyUNH4PmpmnAlPG7lHr+XylC8WTej2L1fcD7O8z5oH8pAI08MnC1IlwdU/AGqTD7psSTve1HQ==
X-Received: by 2002:a37:4549:: with SMTP id s70mr426189qka.143.1569524964545; 
 Thu, 26 Sep 2019 12:09:24 -0700 (PDT)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id f144sm40062qke.132.2019.09.26.12.09.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 12:09:23 -0700 (PDT)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/1] arm64/sve: Fix wrong free for task->thread.sve_state
Date: Thu, 26 Sep 2019 15:08:45 -0400
Message-Id: <20190926190846.3072-1-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_120928_325272_0315BDFC 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

The system which has SVE feature crashed by unknown
reason. According to the memory dump, the panic happened
because the memory data pointed by task->thread.sve_state was
destroyed by someone.

We tried to reproduce the crash, however, it's hard to do that.
But, we found a potential issue by reviewing the code.

In copy_process(), the child process has the pointer of sve_state
which is same as the parent's because the child's task_struct is
copied from the parent's one. If the copy_process() fails as an
error on somewhere, for example, copy_creds(), then the sve_state
is freed even if the parent is alive. The flow is as follows.

copy_process
        p = dup_task_struct
            => arch_dup_task_struct
                *dst = *src;  // copy the entire region.
:
        retval = copy_creds
        if (retval < 0)
                goto bad_fork_free;
:
bad_fork_free:
...
        delayed_free_task(p);
        => free_task
           => arch_release_task_struct
              => fpsimd_release_task
                 => __sve_free
                    => kfree(task->thread.sve_state);
                       // free the parent's sve_state

To fix that, add a flag in task->thread which shows the fork
is in progress. If the fork is in progress, that means the
child has the pointer to the parent's sve_state, doesn't
free the sve_state.

Masayoshi Mizuma (1):
  arm64/sve: Fix wrong free for task->thread.sve_state

 arch/arm64/include/asm/processor.h | 1 +
 arch/arm64/kernel/fpsimd.c         | 6 ++++--
 arch/arm64/kernel/process.c        | 2 ++
 3 files changed, 7 insertions(+), 2 deletions(-)

-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
