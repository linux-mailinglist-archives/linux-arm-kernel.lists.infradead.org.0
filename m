Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4D014B333
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 12:02:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nJ4iqaqZon0jgLUjel6pff1vW+OTCzOh4EqsQYa5oAQ=; b=XlrWoq1sCGWh/i
	H49SbIwFow2l6T6znU/RFhid6WEy+/cEJnRe1tZAZhKrvLdyc4YQ31Y2F4gxeLJ1mw5yzbM4QCU0V
	ULkkJhJzopa/wFfPEHLuXZ00xUQ1Z5pNariHlf0Y9YcFd8T/eObfC1g9rFq/RqPjiYODkvcrDmsEr
	wIj6mxSn8gtlreQ2llR9QxB4CQlCxHE0feiPlqZRCZKHoNiQ6GyHiDCFYkOCsVDkTVXEtiIWA2XFL
	euxLNB2lCQxAhu0DFX16PDwiO+U6DUio2mFwFoAFkP53v1xKvJTkvi7XJ6OR5kHguPgCQ6kNLeA73
	W4XDa7VjXPpY/eqrQqyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwOcz-00068W-KJ; Tue, 28 Jan 2020 11:01:53 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwOcg-00067g-Sw
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 11:01:36 +0000
Received: from dslb-088-068-095-017.088.068.pools.vodafone-ip.de
 ([88.68.95.17] helo=martin-debian-1.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1iwOcQ-0008Dy-Mq; Tue, 28 Jan 2020 12:01:18 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 0/6] imx-rngc - several small fixes
Date: Tue, 28 Jan 2020 12:00:56 +0100
Message-Id: <20200128110102.11522-1-martin@kaiser.cx>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_030135_080254_B21B5844 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Martin Kaiser <martin@kaiser.cx>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a set of small fixes for the imx-rngc driver.

I tried to clarify the approach for masking/unmasking the interrupt from
the rngc.

The rngc should be set to auto-seed mode, where it creates a new seed
when required.

In the probe function, we should check that the rng type is supported by
this driver.

Thanks for reviewing the patches,

   Martin


Martin Kaiser (6):
  hwrng: imx-rngc - fix an error path
  hwrng: imx-rngc - use automatic seeding
  hwrng: imx-rngc - use devres for registration
  hwrng: imx-rngc - (trivial) simplify error prints
  hwrng: imx-rngc - check the rng type
  hwrng: imx-rngc - simplify interrupt mask/unmask

 drivers/char/hw_random/imx-rngc.c | 89 ++++++++++++++++++++++++-------
 1 file changed, 70 insertions(+), 19 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
