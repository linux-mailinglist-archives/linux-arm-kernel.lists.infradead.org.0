Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAADE7ACF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 22:06:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fsX0T9HkO6n6/c/TKdnrLU6/11TbYpCSrEx53To34IA=; b=LER
	DghGCQNavez62rlk3Ms3d+fOrCGkHXFcfux7aip31gO8o/oSeNcN+UayRCpZLvuT+OQbdg4/aPOBJ
	KDolfQhPNLkNtQLkS/5AHMddz2DyiL0aWe5mmVE3NKDuKx6g2uTu5ig1zCT3vqUp+pt0lCXV1Xm4A
	Hu4L5ItEZyK6mxfqioA4DMhbvr/WQusMHKYUKEz17a9/YYzWYG4CpCBQ3nS8YC57ug4d0QS3oAqdC
	hqEggerqo6B1RcHhhflZrNuPShHxiw/NFT4cray8XcSLX1xUoU9tXDNBzGvt9euTmvtgs68wTiKOA
	YI+cUeUnVA/rOu5ACG7HpHHa79U/06A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCDR-0007Tk-Nj; Mon, 28 Oct 2019 21:06:17 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCDE-0007Sq-IP
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 21:06:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id g7so409123wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 14:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=uRLJnnkoKtrt3q1ob0/siBgAznuJHarDQvJURi9aQb4=;
 b=SIpiQHIotDzzIYqm9aXXXSdbbNyIiBGfjR5nwKGqhflsnh3A5ENnvL5ku7plympJ56
 nU36hscWDg92/FfoUgg6mGZV1MQZ06P3qheMpNe3W+BoMzXYLyDOcBz9DFqkhDIEdh5B
 gqbt6pLe8aajvT9/ApxWiQy6qHncmnK9uEhkZ9EqPdAXzu6B6PFTNwcVhG3P2ju+X3f/
 sfPBA2pEnzU6TygZk9bck8dKivYNrYpRDwfFHpK5yH8NWhYl07OW9N75iEfLQn0AVE4T
 Xhi5EjkHr/H2F2I9Ee4ffmNMGotxS1WZGlXL+yrOupHrVgXxi75kCPijWu4pb+5VrVqk
 yHmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uRLJnnkoKtrt3q1ob0/siBgAznuJHarDQvJURi9aQb4=;
 b=gcsEfRF74qHoEdHY0WSZOEdMpmD5GEFbji9vUi+PG0ZASemWWJJqh1/oYUrMCiN3O4
 AKG6O/O+2LB5UvfPEZ3ElriJ76l+XnXifcqwURbvr2cg2mbGOQ2E4KK+zQoVnTsQIBJc
 gXqV5I+UbHOeNwvIKmYXtC+Sa+87NB+L7GMzphJ7fWcej1g0sejgsvy6nUfxeDKIOe2S
 q283aRAlUgHTdi1OHUKoEdXfZC3NSJCL3lyjNISGyDz7I42xxqg9a/JoD8GcSYIvdW3T
 2qGGizFRyEiZ7r8cxJrZezN6gSbHVRKtXJiJbomjUJbotnhJnc1JkIjQvdY5IdL2kN7D
 cTSQ==
X-Gm-Message-State: APjAAAXB9FSPGXkj76mBppNN0Som+99DIRMLUxTpDy2mLgWMtFHzfCYE
 btAh+yGiVJh6rta3gMlohN4Q5/ISV9fMSQ==
X-Google-Smtp-Source: APXvYqxLhsR1PGtmh9drHOLTiE38etYU0uqVFMpWhqoC1tXLMotQdsLS61o8y7c30loRYYNwzvsK1Q==
X-Received: by 2002:a7b:ce99:: with SMTP id q25mr1133067wmj.115.1572296762897; 
 Mon, 28 Oct 2019 14:06:02 -0700 (PDT)
Received: from localhost.localdomain (230.106.138.88.rev.sfr.net.
 [88.138.106.230])
 by smtp.gmail.com with ESMTPSA id b196sm927822wmd.24.2019.10.28.14.05.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 14:06:00 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-arch@vger.kernel.org
Subject: [PATCH 0/6] Improvements for random.h/archrandom.h
Date: Mon, 28 Oct 2019 22:05:53 +0100
Message-Id: <20191028210559.8289-1-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_140604_622897_E1AE7A9F 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-s390@vger.kernel.org, x86@kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During patch review for an addition of archrandom.h for arm64,
it was suggeted that the arch_random_get_* functions should be
marked __must_check.  Which does sound like a good idea, since
the by-reference integer output may be uninitialized when the
boolean result is false.

In addition, I noticed a few other minor inconsistencies between
the different architectures: x86 defines some functional macros
outside CONFIG_ARCH_RANDOM, and powerpc isn't using bool.


r~


Richard Henderson (6):
  random: Mark CONFIG_ARCH_RANDOM functions __must_check
  x86: Move arch_has_random* inside CONFIG_ARCH_RANDOM
  x86: Mark archrandom.h functions __must_check
  powerpc: Use bool in archrandom.h
  powerpc: Mark archrandom.h functions __must_check
  s390x: Mark archrandom.h functions __must_check

 arch/powerpc/include/asm/archrandom.h | 24 +++++++++++++-----------
 arch/s390/include/asm/archrandom.h    |  8 ++++----
 arch/x86/include/asm/archrandom.h     | 24 ++++++++++++------------
 include/linux/random.h                |  8 ++++----
 4 files changed, 33 insertions(+), 31 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
