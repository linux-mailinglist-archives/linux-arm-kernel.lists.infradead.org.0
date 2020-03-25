Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5048192A85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 14:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aidGhRQmQ92y6pCWDIU41PsAagzaR1Z3sGgQu3OlW5M=; b=ZXT4BzolbBqbnb
	m6KToLyh+LQtqG+xqpCWhH/tLAAzzrI0H9f2uQ7PwSHbFZdSFmIzzYvjAOtkoG3eRph7qrlMAplj/
	kznpa0x6xLld9Fcqmm1wbYazQBGIwD+NCBJkwScabD+0lUkZ3KEov72sZ7Ht2YO1vSq9O73QltnRI
	5uy/kzr6Tw6VWa62sep0s9+ENaKZQNvIYJLb7EeSgymdx+RiKaW2jp2MBtGb0j3EJaHygpi5nJPUA
	ZHtpEGqKydG9IpgttjRqSvL6q4UdBuokC6PeM1y2LUG//ubu+X72utgiyCzGpY2zipKnPH2WsD/sw
	A+jB6bU8nOjwdO5gmjNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH6VQ-0000co-Hg; Wed, 25 Mar 2020 13:55:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH6VH-0000bU-4B
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 13:55:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C8921FB;
 Wed, 25 Mar 2020 06:55:27 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 941983F71E;
 Wed, 25 Mar 2020 06:55:26 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 0/2] arm64: Make extension enablement consistent
Date: Wed, 25 Mar 2020 13:55:20 +0000
Message-Id: <20200325135522.7782-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_065531_210858_33972B6B 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Brown <broonie@kernel.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently we use a mix of .arch and .cpu to enable architecture
extensions, make things consistent by converting the two instances of
.cpu to .arch which is more common and a bit more idiomatic for our
goal.

Mark Brown (2):
  arm64: crypto: Consistently enable extension
  arm64: lib: Consistently enable crc32 extension

 arch/arm64/crypto/crct10dif-ce-core.S | 2 +-
 arch/arm64/lib/crc32.S                | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
