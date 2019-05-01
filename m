Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE4310DB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X4aw01o4mkMeFpIg3GMMo0LdEvAikDYjk8lwxBAw1C8=; b=LghPSbmVG7Illt
	wNMQ6t0RU518NyqcEcUHo2YjdcuF2Ta7ANR2oy+YQ+BrqCEklgf7V+i3RuVkOTmfRRsaAaLx32zdr
	toe9n1FKU5X61tdfMfvpkUeIqf5cfJmZUexbSIp7rf196pMM2EKY1B+hGrFCI3NYPKrymiaxd/G/P
	VNVwwJztCiT8Rvjr9xK1pwIBVRZyInSd4u1ZAghXcxo95z/+EsqUl5zCCsmYrsjkMLb1eavxIxh1U
	IHrUC19hIj1+HE/0EZNE+iuZjv67BDH/9yrPYiU+PmTQuyWPkD+Q3Ri3AQpjugftsBQNGo1ZAUd80
	8BvQqZrKlufd3xTCnjGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvTi-0003Cj-Bf; Wed, 01 May 2019 20:05:18 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvTW-0002Qq-AB
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:05:07 +0000
Received: by mail-qk1-x74a.google.com with SMTP id 207so234596qkn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 13:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=j1UWHDT4a3S43XmXoocO/8/QcdoleiLleSM+fFU5j3U=;
 b=mtpE+O46RBE22iwEhucexJJgTrsWylAuSBqpI5XhAI2/MeOj7YRLypQhc67Y+v3/5L
 q80eU0MCTyAnnU7g51a1M+L88zcMYhjx4P8giwZ7qTvDeO8YeKRoKJEeAMmZ3181NlzP
 mSHNS9cnwDT/g7HBzdYXNphlRoy6lq5icoPfSiF8p1gelb1vx4vK7rHCLzrvM9LK9jYO
 JMFwXyN1F5T28Y0cA837E9SuXW9smPtVeGTLGyf1iYj+nOzV/mFcKi0DlJb+saUyvU1b
 IikDOanxDREBARGqKRsOs5FHl1AQSCDEGd1UdFeUvzMzV1CysMm0eN4ulhoKzeyEa3dF
 yLHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=j1UWHDT4a3S43XmXoocO/8/QcdoleiLleSM+fFU5j3U=;
 b=Zi8jHlqIrBFPci4c/dyVa05ON1GJ5wucR8yb5qwt1cdZUiJJk0SPBrDv0roe0MUUUd
 L679T4qmL0rG3Y8wtW4Tusouicah6dHzDE+Ykg+d5eGmdbS0W4dprJxSbrNMI4DeonrN
 9tGQeJX7XOYHfIz5IARBDuUwgf2Z/xvdr+bdBccaNW15A5SKbWTZVUZXFZLEdvEeiI3w
 vel9gX+YPWUMwE/4COPUoMOzvTS33SuTU/P8N2QoxJKIqvIXhkGELQz7SS2aSoIUvdMf
 ipMWzPgOLV/04hONFgvCLmQ4WpdqOcu+Rpgfd+SgdgzYO7KspxYSt+t1qG9m/ghA15vZ
 5yPA==
X-Gm-Message-State: APjAAAWTFoPPJES6IzMWmylNJtKtLpyuDkkfMD1rRUTZcK/EraHp1KSv
 oPh2WrBf/iWknWUHBA/D+PnbG7cpMDnr/IoBvIY=
X-Google-Smtp-Source: APXvYqwcmhUFSe0z7HnkFa2sbWE1j+IB2dn0B0YnDnOj177FZGCi3JFg2JIbv4Tt1UYGkEqVWbyRaVUYx0Dd0E4fsH4=
X-Received: by 2002:a0c:8183:: with SMTP id 3mr71929qvd.206.1556741103412;
 Wed, 01 May 2019 13:05:03 -0700 (PDT)
Date: Wed,  1 May 2019 13:04:49 -0700
Message-Id: <20190501200451.255615-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH 0/2] fix function type mismatches in syscall wrappers
From: Sami Tolvanen <samitolvanen@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_130506_383267_2FA6E747 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

Sami Tolvanen (2):
  arm64: fix syscall_fn_t type
  arm64: use the correct function type in SYSCALL_DEFINE0

 arch/arm64/include/asm/syscall.h         |  2 +-
 arch/arm64/include/asm/syscall_wrapper.h | 18 +++++++++---------
 2 files changed, 10 insertions(+), 10 deletions(-)

-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
