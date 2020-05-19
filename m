Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ED81DA054
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 21:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AYRWrHsDIjKOv8zwgAfdKX3UPdhMdmMaNszmDwQz118=; b=SUKVoYIckceXe7
	70BM9N17fEo9bC+0KHJn6XQHY6cRgMqSmAcGbZnaMjefsMq6qUy6bbvgBm3XA/uXBdXerKw829e0A
	5W7oIHGTQH1KlpQQQIEFSUBh1JxyRYwDk8bPhvlLyODB/BlwFkT5a8Obi3bLZxCSEoGwFZ+pSbq3P
	vyKyniBtNhfuEj/+lv74aXXeD9ctwHR2G2OH1Jk2IWQm9BR76P3eIdY3BSjc5rxPUatNS6JyO/oTY
	QcdPgwKU78c7DaYDWxbBVZPUXjR5WEZeC/lyDOAk3PEfIq6tclzrc61oh/MtE9YGojdtN53KL4dPl
	m17fNA+G5WYgMohwXP4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7VX-0007KL-MP; Tue, 19 May 2020 19:02:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7VJ-0007Ia-NF
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 19:02:23 +0000
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr [92.154.90.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E025207E8;
 Tue, 19 May 2020 19:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589914937;
 bh=p2x2LclJ0xI5fOs4bKaK0KKKNU41HHkLK1/dnIsHhbo=;
 h=From:To:Cc:Subject:Date:From;
 b=ed4rYd06KgneWuTtKnnW/R+djaWb82I8QTBhJc0jZJlJ0rzytKbNy+1RtJlXBofD1
 4brbfdRk+QiBYQNEfFB8eZdX4hEzXS7eGt2YhLnfNCZkBWNU+kPSapCxJ5YW9kBvRu
 cR5tu2Ri5IFMPTwexevC84whByKeQ+IAON2s07GQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and testmgr
Date: Tue, 19 May 2020 21:02:09 +0200
Message-Id: <20200519190211.76855-1-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_120222_038057_94435AD8 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ebiggers@kernel.org, Stephan Mueller <smueller@chronox.de>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Stephan reports that the arm64 implementation of cts(cbc(aes)) deviates
from the generic implementation in what it returns as the output IV. So
fix this, and add some test vectors to catch other non-compliant
implementations.

Stephan, could you provide a reference for the NIST validation tool and
how it flags this behaviour as non-compliant? Thanks.

Cc: Stephan Mueller <smueller@chronox.de>

Ard Biesheuvel (2):
  crypto: arm64/aes - align output IV with generic CBC-CTS driver
  crypto: testmgr - add output IVs for AES-CBC with ciphertext stealing

 arch/arm64/crypto/aes-modes.S |  2 ++
 crypto/testmgr.h              | 12 ++++++++++++
 2 files changed, 14 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
