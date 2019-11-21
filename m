Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B35104C7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 08:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EiMHF8AH1jYPpEALzd5/ZGo6drFkDcf7W1psi2CyrEk=; b=a50pbug7UET6mG
	hpG8sx44lpG6RRA/R4KjbFHzZyit+PHpDPvaOTrwM0MpLjP2hlmbY7BlXhuydvRGR3kS1AqE7b/4j
	2+FIzHiwHv9gTk0g/f+T2HqjseVuin/0o1w1zhTGhVImr19SW5bfWqUjYjWZTcbJg2xO23UPFSRP8
	exnYu7U0OtL/5rLtUT/u5vwniQ5Hbq+kv4lLntpfD3hj6RaaZNEXdXsptd8SVST7WWbMaserdD4ct
	/IoNOLQpgdycGPJLGwEgmb2nXzcno65p9XaN6fkTYNf4GIYfEnqNOCJXbgIPYyLwbZuIar4YaAy0J
	qnem0i0qz1QpVdeH4d9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXgsc-0000je-1o; Thu, 21 Nov 2019 07:27:54 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgsM-0000it-Qf
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 07:27:40 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAL7RQ5b081613;
 Thu, 21 Nov 2019 01:27:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1574321246;
 bh=0mklLlGbDBmknLDikiMI3ZT2ftD03wZnmdNF6PCexZ4=;
 h=From:To:CC:Subject:Date;
 b=rTjPLx0cPnSYUVgxGX1jeHWiWy3ix9ZFW2Yg84wTDI/07eRSAmuUoPeJrJ5z7ZQZT
 m97PsLJg8YuAryCltWAc5+pMGC57Rr6gIOUM9tGQ/bhff2oi3uHscj3jqIFOM3p4Hf
 7fs1qEhEyaxdq1VYYRWjAX/OWfcWeh8YjhwnOxJU=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAL7RQ1A013789
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 Nov 2019 01:27:26 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 21
 Nov 2019 01:27:26 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 21 Nov 2019 01:27:26 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAL7RNTq079857;
 Thu, 21 Nov 2019 01:27:24 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH 0/3] crypto: atmel - Retire dma_request_slave_channel_compat()
Date: Thu, 21 Nov 2019 09:27:20 +0200
Message-ID: <20191121072723.28479-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_232738_923257_0A4896CE 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: vkoul@kernel.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I'm going through the kernel to crack down on dma_request_slave_channel_compat()
users.

These drivers no longer needs it as they are only probed via DT and even if they
would probe in legacy mode, the dma_request_chan() + dma_slave_map must be used
for supporting non DT boots.

I have only compile tested the drivers!

Regards,
Peter
---
Peter Ujfalusi (3):
  crypto: atmel-aes - Retire dma_request_slave_channel_compat()
  crypto: atmel-sha - Retire dma_request_slave_channel_compat()
  crypto: atmel-tdes - Retire dma_request_slave_channel_compat()

 drivers/crypto/atmel-aes.c  | 50 ++++++++-----------------------------
 drivers/crypto/atmel-sha.c  | 39 ++++++-----------------------
 drivers/crypto/atmel-tdes.c | 47 ++++++++++------------------------
 3 files changed, 30 insertions(+), 106 deletions(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
