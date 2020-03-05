Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2832B17B032
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 22:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LY3lQOro4n/Qwa+3DFarsyTf59NGK9DFqoOMNfuGKLs=; b=NX2oRoDyNYQbel
	yrgizD6izTpBTmU736KP5s/E8fHQNI7azhAWulcU4wyn2UcVTjB+4IDEGCBFjhdcldQIlOlaFmnyW
	n9/qyEdNZw4ajKLvAJhu/h+r3wQz5ft7g8ACqmW3s220Fk+6Ltv6XY3nFmdazJRNIn7nJXhPV6y/4
	oLh/znwPxhbtyZkLK137t1E05QfL22gel3evBbQEhpC2A6O0F9aYMiO9YqoUxOIfgubavyk7uj/BG
	2RblR8KhjsbzeAkKBtj9xOt1kf4Eekkl6wmyq7hZcBtOGfdB72Y1sfChZ2rVR1AyFza1iw+g2GKs1
	I5zK2rnRFXkqmZvPCZlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xb1-0001rp-9x; Thu, 05 Mar 2020 20:59:55 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xad-0001gf-Fs
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 20:59:32 +0000
Received: from 250.57.4.146.static.wline.lns.sme.cust.swisscom.ch
 ([146.4.57.250] helo=martin-debian-2.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1j9xaN-0000e9-3L; Thu, 05 Mar 2020 21:59:15 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 0/5] imx-rngc - several small fixes
Date: Thu,  5 Mar 2020 21:58:19 +0100
Message-Id: <20200305205824.4371-1-martin@kaiser.cx>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200128110102.11522-1-martin@kaiser.cx>
References: <20200128110102.11522-1-martin@kaiser.cx>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_125931_673608_306C2C2B 
X-CRM114-Status: UNSURE (   8.89  )
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

changes in v2:
- remove the contentious devres patch
- add PrasannaKumar's tags

Martin Kaiser (5):
  hwrng: imx-rngc - fix an error path
  hwrng: imx-rngc - use automatic seeding
  hwrng: imx-rngc - (trivial) simplify error prints
  hwrng: imx-rngc - check the rng type
  hwrng: imx-rngc - simplify interrupt mask/unmask

 drivers/char/hw_random/imx-rngc.c | 85 +++++++++++++++++++++++++------
 1 file changed, 69 insertions(+), 16 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
