Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 165773D471
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8ZTpOaExCSNpB0TybR4Ysh2ujPdR29Rg5ITHQFNbxoY=; b=tbmeyzhzLxKexTjuCovM7YBDDa
	eCByNJh0sauGx5LC5xqaON+0NqUtfJkrEU6OOJlh8u12CADwnPydfuxPXk/3c2CmMs8g+e+UgNYcv
	p6ZPyEIglh/BJCSGBqM5W4enMOt1WumcQVEIlq5zG0peYkTZA1wtWFYmptFrL8EM2TpZk/wGzMbno
	0a2uiedMleOrG0Ob+Yj7L6FLB87ezDhGJCosgknd/fMAIeYU1C7lzmCeB/CwucotV/sVfIPxL0Kgt
	O1+Y9LsGMUxkrYHSvHArxKJp4VETxqmHXTajBRWGHjs4GPYerfcnp58CVy8P/fIvJHu7ApYA+Jno9
	qA+t6PBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakn7-0008Tn-3c; Tue, 11 Jun 2019 17:42:37 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakmw-0008TG-7c
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:42:27 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5BHgOgt082636;
 Tue, 11 Jun 2019 12:42:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560274944;
 bh=L1ZI6V+eme81Ysy5VzFHN3z3CDSlappQ/iw4DCP1eAc=;
 h=To:CC:From:Subject:Date;
 b=qytAhdCaWAhqN9ic60l76ZqhxWvUYDM9f/wQLFZsX5vTImrJi90rgzu/oqJuKgicG
 ib6HsdVMbyq2jVyBVCYcgj4Z2U9oEl/A5ArWa7Wd2aimJE9BWZTM6k+GZUScps6SQU
 4sp6vKxCjXcF1wtGzhKsa/AzVXlz03GiVWMhRNU0=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5BHgOMr091811
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 12:42:24 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 11
 Jun 2019 12:42:24 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 11 Jun 2019 12:42:24 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5BHgMip098421;
 Tue, 11 Jun 2019 12:42:22 -0500
To: Santosh Shilimkar <ssantosh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] firmware: ti-sci: changes for v5.3
Message-ID: <5cfc0d85-a3f7-b96a-7bc6-c7b0250ed54c@ti.com>
Date: Tue, 11 Jun 2019 20:42:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_104226_360388_8ACCB4C8 
X-CRM114-Status: GOOD (  14.02  )
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

This is based on the keystone clock driver pull request [1], which you 
may want to wait until Stephen has picked it up.

-Tero

[1]: https://www.spinics.net/lists/arm-kernel/msg733157.html

---

The following changes since commit 3f1f22d8009035a641a359a09239bcc6ffac7bb9:

   clk: keystone: sci-clk: extend clock IDs to 32 bits (2019-06-07 
12:11:41 +0300)

are available in the git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/ti-sci-for-5.3

for you to fetch changes up to f9ff858a26cf36c01d16a1ea560280164465c7cd:

   firmware: ti_sci: Parse all resource ranges even if some is not 
available (2019-06-11 15:47:42 +0300)

----------------------------------------------------------------
Firmware - TI SCI changes for 5.3.

- Couple of fixes to handle resource ranges and requesting response
   always from firmware; these are only critical for upcoming j721e and
   DMA support
- Add processor control
- Add support APIs for DMA
- Add support for 32bit clock identifiers

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

Tero Kristo (1):
       firmware: ti_sci: extend clock identifiers from u8 to u32

  drivers/firmware/ti_sci.c              | 1228 
+++++++++++++++++++++++++++-----
  drivers/firmware/ti_sci.h              |  873 ++++++++++++++++++++++-
  include/linux/soc/ti/ti_sci_protocol.h |  274 ++++++-
  3 files changed, 2185 insertions(+), 190 deletions(-)
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
