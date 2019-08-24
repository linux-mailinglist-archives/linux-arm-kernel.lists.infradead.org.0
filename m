Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C6A9BC3C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 08:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rm2YSADOOEcOv4vAr8JVy3j3ir11Sd+xTzArMhhaxig=; b=rGM
	N4UCP0ygRJkDySFV61DooR4fxzzvAv69jjkTQOPpdR1T8M/7G8ftTo1ps3o0w8i2vsUGRVkXdYVkl
	L/qClqC2D79LHvGk9u7mdNXTvK3/F9y4h1nJW8DIn8PelPx58Ypd4q+UwRYfR5k+qI5caq8KGeJUw
	0xjX00gMThCcSBuur0TO9ClJ+rZsf8+whh1Aqqe2dXcG3KjWSd4B9Oxw61ZCemVKp/2iASJ3DtL1K
	70GDHIKxgTlNt+cseLAMdyqv/VaLS3TdWrY5kMbtKAqX+tfBg+aKJy9Y1QEB6+q1ElV3aSXhaXAGl
	aXgGvpePUdpX/eYPT2opc1ie7Bs9Erw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1PaW-0006m2-EC; Sat, 24 Aug 2019 06:31:48 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1PaM-0006li-Nl
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 06:31:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566628287;
 bh=dQz3ifW32mv8e7zxPbDceBUBeoAhi0dwNOeJVA2mzHk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=UygP3BqmA6xXsvk1K/9+C//EiRgf4XtxkA0x26pPyH93kyIOz3oobIGRlfGuVv9P3
 BCzDDudqZ8Rl01trpgoS5kc9IHlEOZaraaju1R8ByGZypM+Z1l3ptjERTL7QCPNSAN
 gOwryGU0o+gAQeL1N3L+nPXzML4737tAVerfw3hs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1M1ps8-1i3bRG3yTg-002G6u; Sat, 24 Aug 2019 08:31:27 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Ulf Hansson <ulf.hansson@linaro.org>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Lukas Wunner <lukas@wunner.de>
Subject: [PATCH] mmc: bcm2835: Take SWIOTLB memory size limitation into account
Date: Sat, 24 Aug 2019 08:31:04 +0200
Message-Id: <1566628264-3289-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:4+G3s2LSrxXI04mFuIYNPdch6v5pM042aUPYhU+vYjM5zcNkPTb
 ceAv972u/rMg2o+/kcX1tczXIVWZCIgUUm72om6j2eRxDL/RhLnuH+pRHBDxoUEbpIqW59B
 YWcE1E+EdFpNcn/+46fEVPnWe2cYH3EcBMAWW+hFJWsCzEI37yVtWN1D0MX1XqwMuzr9hDJ
 5afQUaKSwOZxuKWVP4z1w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rzi2m/qxdb8=:p9Z69Z17bsZCreW9Be7YqV
 Dm7LFN+rmHWpL3pH8YSeM42aSFq5LlphQ7tTTmxF+PXj1+HIiMpXGjvZkmJggTXTXgnvcazui
 S8ttttOZiYjakkZq0zComG3+YNmhhlHcNNZkkJKwH56sk1/mEDfBdG5FVEJVmyTvStyD/KpGL
 Zg+ItzD5RVkYad3NfZYWJS8dwq2jodxTjQrOA7iKTjGSaPFD/Uvu2UzAJrQaGWJE55vhHMJJD
 fkKUdwJFHc9orpMSZQn9WdY64i8XlWazzaAgzQhk5jrczEACO0WpK9tCFuFIUNnMQX1H1aUbg
 GEU9LFt9azqcYIeUVM5Fk3nj6xJ5J9fWBc3ZSTXz0+aGaM5OTfp6l4GpYY7c3EMJD6/SFZlYO
 LMOO03ok89LnTHvAYQJ+rGr+mmbfp6JpqPLjJgTonnSPsURS8Nv0jm3DLxrd75x+WV/FpgBer
 FyfAzpXzYhrKRQI4dl15JrLeGGCwfBEbuG85/ikI/bHouZ7uyTEoo44swmQSgMVLUxExgSafH
 1XVPmC+1+eVLCRQYtyOeH8JTd/UOyOw/ktz6jJ/GxvVM4rH5jauQhiZTpYW0I68w7ho0N9DfX
 acJ011nQ180rYBVshlg+T8XQ1JUZ7ETVQcYU3jBC2CVzlXBjpV8vEFjZ2/RBMY3IYVMR2gukl
 ipfBiDF9gBj8rHGWMWTg2RPadjXmDhoeWYdfASZtVXhftHWCKbqnWv/2IAQPMADWL8zdbKkuc
 wg1P0uPlSjPVuXbPLf9vVmZSl4UOYkoTvowNvaoN2mqlS3VpVqf2PzAPZXjnnNZovyAUUp+/b
 Ho6fjPOHpORJkCkqaD7g1nfTP8pxca5cGOnlVlXdKip4prp/iH7oaAhn5ANodGyDQTnkhWsho
 IazDdOCOd0WpTU1SpTiOH4Bz4rF8xB3AOd1Ik7s4RfzKcktdLWFXjLTfAH7SlxjzruUS3UY61
 zFMzQ8H75dgjrX1mWuy/Y+w3NrYmxpBpq+9FoX3lhdBDgkwH6XIyhmp36b6apeDLp3TfMRpg4
 mD4dgzNQegOaD451S7BwsVRaE2p0uB/0UUskoGGz0F8iiQe/NX8J3mrqvsHftsWIOKoEzWi7d
 IG0Ug/wSdzAw/BSQoDO5X6VDz47M0zVBFBW59EkKJH7hHXPaDOatcthiHXcH9Pz5NhTel8NIy
 s5LdwL6W8WRJ7DnB5+SepL4m/PjL9DfFAFP1fCK9BS7BbbHQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_233139_110294_2E7C826B 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mmc@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure the sdhost driver doesn't use requests bigger than SWIOTLB
can handle.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/mmc/host/bcm2835.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/bcm2835.c b/drivers/mmc/host/bcm2835.c
index 7e0d3a4..7ec0d95 100644
--- a/drivers/mmc/host/bcm2835.c
+++ b/drivers/mmc/host/bcm2835.c
@@ -1314,7 +1314,7 @@ static int bcm2835_add_host(struct bcm2835_host *host)
 	}

 	mmc->max_segs = 128;
-	mmc->max_req_size = 524288;
+	mmc->max_req_size = min_t(size_t, 524288, dma_max_mapping_size(dev));
 	mmc->max_seg_size = mmc->max_req_size;
 	mmc->max_blk_size = 1024;
 	mmc->max_blk_count =  65535;
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
