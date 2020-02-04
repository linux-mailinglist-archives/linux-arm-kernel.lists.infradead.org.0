Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ACB151D36
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 16:27:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GmJF6zxgmvHwDEUCRZ7r6aeAAb8HFQ7DjCUd9uEpjRI=; b=LHXrhdEPuiTMVr
	ZPKiO/zurmsOjkeVjiV+iTmg9OTapfXFwLbzZdQsJOXHhEZNLjmT4e4EATjZD0lh7j3HUsfulPWqk
	VK2vftH8LmtOqAu/7+Emlgo+a3mqs9KRVWQrDhI5U4aLyvUWC9VD33Bf7JIDuC0iPm6rU27SDuJsY
	IqE7YnXlLLlK43BgctXXnPHj2Jlpa6klE8DPE9GVs8dAjlOz5crYpSr9HUUxEASkX8ACySc/cv1mj
	aO0CgMCuG7J0qqKrgMEuCmlihdVXkFx/6T7EcJyh1zkDtVa22pVs+sl8mz5g64WNsK2lUe3DTTvlZ
	lVUU2SFBC1cNQ5CXW5aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz077-0004g8-KD; Tue, 04 Feb 2020 15:27:45 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz06z-0004eN-W4
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 15:27:39 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 014FRWOn024186;
 Tue, 4 Feb 2020 09:27:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580830052;
 bh=APUqZ/Ex3brLOMfrqG1EG0g6D3kLPOBu7au9AjExCi4=;
 h=From:To:CC:Subject:Date;
 b=pj+ZN03xkXD+VZJekvSEg6q4oxmflWKpWM7CZnUr2BsH/Flga6fiJSD+ERxp/V67g
 iRhoRtg4C1M97rz8ShoYHcZBQQNI0UWEzmAccU5Ox24/Ryrq2WLBQDenrpPFwTRSIa
 pRXml8VVbSQ/CGkXe3es1QutDPNyzblCGgh3es8s=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 014FRWvI068466
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Feb 2020 09:27:32 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 4 Feb
 2020 09:27:30 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 4 Feb 2020 09:27:30 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 014FRR8j118803;
 Tue, 4 Feb 2020 09:27:28 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <nm@ti.com>, <t-kristo@ti.com>, <ssantosh@kernel.org>,
 <santosh.shilimkar@oracle.com>
Subject: [PATCH v2 0/3] firmware: ti_sci: tx_tdtype and export ti_sci_do_xfer()
Date: Tue, 4 Feb 2020 17:27:24 +0200
Message-ID: <20200204152727.26028-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_072738_073221_5B50922E 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lokeshvutla@ti.com, grygorii.strashko@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Santosh,

Changes since v1s:
- one series
- Added Reviewed-by from Tero

I have collected the three patch under one series, the first one is needed for
the UDMA driver, the second is required for the UDMA and ringacc drivers to be
buildable as modules.
The last one is a small fix.

Regards,
Peter
---
Peter Ujfalusi (3):
  firmware: ti_sci: rm: Add support for tx_tdtype parameter for tx
    channel
  firmware: ti_sci: Export devm_ti_sci_get_of_resource for modules
  firmware: ti_sci: Correct the timeout type in ti_sci_do_xfer()

 drivers/firmware/ti_sci.c              | 4 +++-
 drivers/firmware/ti_sci.h              | 7 +++++++
 include/linux/soc/ti/ti_sci_protocol.h | 2 ++
 3 files changed, 12 insertions(+), 1 deletion(-)

-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
