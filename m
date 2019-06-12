Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCAC424FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lpJNESvdYvvjH8lf0YGG581JIrrKmZc2Ciaw0e9b7K8=; b=NtrTGFE2Uv/iXLYuDaKpO0g3uP
	g6Th54im62Hqr9O2B+nwubFX7vttXKTNItCx+FutQi9R17Y7CDjjlGg2KQtp94FF0j5QSkgvDZoFb
	Dyb81o8Rjy5u44f3KjBXvqOcwvOLbgXdaaTtpCmidjnJ5MEktLqPQbuLQ5i/9FE/FoACYbITTzLY1
	o6zYLWsG4VV9eZymV950Ct0Jrl5aIpKSF9cy7uczXdOK5M6QLau4SgdShflg4TBtp4fRg5d0Lv9qC
	GIGorPClfEntoTXip6Ull3k0Pd05wRE0tFe5nZs4gzvknAo0g4d+CHBaq5Maz1K5GjclK91g2Azs2
	caS875bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb21Q-00065V-Ig; Wed, 12 Jun 2019 12:06:32 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb215-0005u2-F6
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:06:12 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5CC69Pw082562;
 Wed, 12 Jun 2019 07:06:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560341169;
 bh=tLPHj6cHZy9Vv0v6aeDDDTev2OuihcvJK6xgGrKmGCY=;
 h=To:CC:From:Subject:Date;
 b=tTc5knpMmrjHaTG4fNROJ+Q/uWYxRkRnWLzJ6YqqpMviKdOK7M3oC4czgLNn8lIvU
 E3cg9bxOl079U8mrZEL1tkXYX9n1xX0tvwcMxVwUgIJdTJWcWpqEfevO/TdTTGWSh0
 3hIuh2MnVqJ2vnPzvsISG3ScSkC94LoO805R3jkw=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5CC69wT058331
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 12 Jun 2019 07:06:09 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 12
 Jun 2019 07:06:08 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 12 Jun 2019 07:06:08 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5CC66ok017487;
 Wed, 12 Jun 2019 07:06:06 -0500
To: Santosh Shilimkar <ssantosh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] firmware: ti-sci: changes for 5.3 v2
Message-ID: <3730dcca-a1eb-1dae-c11c-d9b0f58d38c8@ti.com>
Date: Wed, 12 Jun 2019 15:06:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_050611_585053_BEEDDC32 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, "Ujfalusi, Peter" <peter.ujfalusi@ti.com>,
 "Andrew F. Davis" <afd@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Santosh,

Here's the collection of the TI SCI firmware changes for 5.3.

v2 of this pull request has the clock related firmware change dropped, 
and thus does not have any cross-dependencies to anything.

-Tero

---

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/ti-sci-for-5.3-v2

for you to fetch changes up to c67947a334d182496c40a3277a5af8779728dee8:

   firmware: ti_sci: Parse all resource ranges even if some is not 
available (2019-06-12 14:58:52 +0300)

----------------------------------------------------------------
Firmware - TI SCI changes for 5.3 v2.

- Couple of fixes to handle resource ranges and requesting response
   always from firmware; these are only critical for upcoming j721e and
   DMA support
- Add processor control
- Add support APIs for DMA

----------------------------------------------------------------
Andrew F. Davis (1):
       firmware: ti_sci: Always request response from firmware

Peter Ujfalusi (2):
       firmware: ti_sci: Add resource management APIs for ringacc, psi-l 
and udma
       firmware: ti_sci: Parse all resource ranges even if some is not 
available

Suman Anna (1):
       firmware: ti_sci: Add support for processor control

  drivers/firmware/ti_sci.c              | 1143 
+++++++++++++++++++++++++++-----
  drivers/firmware/ti_sci.h              |  810 ++++++++++++++++++++++
  include/linux/soc/ti/ti_sci_protocol.h |  246 +++++++
  3 files changed, 2050 insertions(+), 149 deletions(-)
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
