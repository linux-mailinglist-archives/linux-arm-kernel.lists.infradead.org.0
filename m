Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5162A101
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 00:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wGY19dFXcksXGRi4SFE39NgPSiEDnT+8yUKOeS/oT78=; b=gndn0/zQALRT9I
	IOCwQP6gVz4qfVM65eAex1AQQH37b64+sLpFcoeh85IVmqfnarEMhclQ86gTpS9OCoXDL1ZnOwGFM
	hPhm0kdFaU0ETuVRP981BY4h8po8VKgpWgKN6Avhffh4An8pqZdJLJGcmwZs1MRqrpx4ronvprLgo
	ImCRi1f3G/NAL1vxMZRMtSV3Vwgd68rctOyRz0yeTTgytv/Vj094ekgbuu1uZiq5B41bQqZyOFh7y
	He0MEOSesgW8OknXuJg7MHCWiIgW5oJ55iUmkTrPTXGbetN6SflqxfKnmGkL+ExyVbeExhs7IDufJ
	drGHHGbyJaHSL/4MNBCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUIPX-0002HX-2v; Fri, 24 May 2019 22:11:35 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUIPP-0002GX-AX
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 22:11:28 +0000
Received: by mail-qk1-x749.google.com with SMTP id x68so12170508qka.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 15:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=4Q5cUaijVMs9uX4GEP2w+puXwcUw+16nbge+LaGw4CU=;
 b=b4bnpjUGJZco5KrCCij6qGeyYOpnQ6EUhQ8NUoKI+cX1kacu9DH7wN5foTPfmmlolq
 CKffvVApVb0p0lBfo7jJERWkASHjbxlnBYXsc1PtR0vJegw0eSmIip/MICN4iNIFrpWd
 zksqZqnN/SPT+scsY4GpsLRJA25meeFAPTNp6TEId4VVdiIjGvXnHAmb5Dt5dHJ+YK/e
 ytYy1tez9wddLVeYUnzdaTJ2pVzHydQyQO3q87n4Aesfivbqq+vjiMvGeD6vz3fkFBhl
 QF32zZPK04znjUeYyNN7AB86lKrEzo44CZ30BirMujV2Vfqa33OXCZdDhYKx7Tjd+gV5
 rGGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=4Q5cUaijVMs9uX4GEP2w+puXwcUw+16nbge+LaGw4CU=;
 b=CILLO5otMNTMk4HBKDCfQnzaDGhTTLV3fR5w5jUGCfT4+NkVwgjwCDCoyf34FCNbE/
 tItOcohRlLxJrpxk554zlXP7OzTnwrm0b56rsPJipex/nPxSoIaDASi7Xe4IOOO6Qu3F
 dgwPISxPTgT4fcBPYz4h33cSz9YMgItGxnC1VYjEkIBWwDEa7nHcisJ8/qihtlBpH8Bi
 W4JECmCWYovVe9Nw1hGrBaqnGzAcB4013IPVvEpMT6kaHf47G4opgT9NScmPRo7Ev5vd
 HZI0KaLXR8nzelr5DXStbBOezPCB5as/1D8sVvV4C0FwMvv62pHXS2Inqg1zIguz+2qX
 dWag==
X-Gm-Message-State: APjAAAWLwhHsDI2swySqIwwWn1JJ+H32d18wBSkUXLesnrZM2pUzrCXC
 hJoIYrYdSVaB6MKjbyHlM/5N7pMEZWHAADnuu1s=
X-Google-Smtp-Source: APXvYqyN2T1Tt4iVrldEc4T5BeRw3mZqz6P4z4rMJZeudYUwwKSPXn+uwAEdpeb0INu6bRw6MjERiuCswmzCYQSlZxo=
X-Received: by 2002:ac8:3747:: with SMTP id p7mr35413335qtb.125.1558735882957; 
 Fri, 24 May 2019 15:11:22 -0700 (PDT)
Date: Fri, 24 May 2019 15:11:15 -0700
Message-Id: <20190524221118.177548-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
Subject: [PATCH v3 0/3] fix function type mismatches in syscall wrappers
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_151127_367022_F8BAB0C6 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sami Tolvanen <samitolvanen@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patches fix type mismatches in arm64 syscall wrapper
definitions, which trip indirect call checks with Control-Flow
Integrity.

Changes in v3:
- instead of SYSCALL_DEFINE0, just define __arm64_sys_ni_syscall
  with the correct type to avoid unnecessary error injection

Changes in v2:
- more informative commit message for the syscall_fn_t change
- added a patch for fixing sys_ni_syscall

Sami Tolvanen (3):
  arm64: fix syscall_fn_t type
  arm64: use the correct function type in SYSCALL_DEFINE0
  arm64: use the correct function type for __arm64_sys_ni_syscall

 arch/arm64/include/asm/syscall.h         |  2 +-
 arch/arm64/include/asm/syscall_wrapper.h | 18 +++++++++---------
 arch/arm64/kernel/sys.c                  | 14 +++++++++-----
 arch/arm64/kernel/sys32.c                |  7 ++-----
 4 files changed, 21 insertions(+), 20 deletions(-)

-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
