Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0B39FC59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HAB1XCaAxM6Xz9Kqrq9nfE9Fih+VTYD36kO2VR591Bk=; b=ILIpaR9DpSYaIB
	X4+bH6tt7IjV9NPS1y8jFni/J9TqZAAeJZouCzd8EH+wpKpzL5n+PmDLZCbV7zqYtVOP8VCuUEWos
	ai6BGG0pSREEcRhmbOc6agz1g66THfcHWWiGAPWb6gbVjwIuBe/J78b8MMssUw5fIn9jZXcma0sL3
	PV6mpK25pwXaTgJkgJMv+iaPkaskhqzjeoR8gL1bW1BQz/tFu9DWqd5uydEHGQuIP7G+xfM5wkTzk
	reFVmQfzHkZpR/uebE1rCqc5nO2k2FQZvglCBf1LlvXW8QgNoe6WiiJ3SMom/ofB/88gIllJw6OyJ
	mJA9oFsmrHLVBs/GqVMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2spQ-0002SK-CY; Wed, 28 Aug 2019 07:57:16 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2spA-0002RG-N5
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:57:02 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7uwAR014887;
 Wed, 28 Aug 2019 02:56:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566979018;
 bh=VdXrExgyaXcOAe+YurJLt+xFYNVg90SxQDxdtAksr2c=;
 h=From:To:CC:Subject:Date;
 b=ZxrzXh49uLTntOlkKMcTimJ0H1Y2C5reEPDOS0T2ryiTbl1rIy2ZGKHr6PoGfRhMV
 rrCbrVsV2BN7shiym9brnqZt0CYdq78jK2KD/tL3hrW+ka2Eiuhyq7aXbalcOQHSfe
 aJvuPLMwzIupDXncZQY4sC/WyfiE3Bl1or4SrVmc=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7uwx9127375
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:56:58 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:56:57 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:56:57 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7uuFj107124;
 Wed, 28 Aug 2019 02:56:56 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 00/10] ARM: dts: omap changes for IOMMU / reset support
Date: Wed, 28 Aug 2019 10:56:34 +0300
Message-ID: <20190828075644.4493-1-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_005700_838895_C214B2CF 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series adds reset nodes for OMAP4+ family of SoCs, and fixes the
IOMMUs to support these also.

This series depends on the earlier posted clock series [1], PRM support
series [2], and the pdata quirks [3] and [4].

-Tero

[1] https://marc.info/?l=linux-clk&m=156697558331203&w=2
[2] https://marc.info/?l=linux-omap&m=156697680731569&w=2
[3] https://marc.info/?l=linux-omap&m=156517109506492&w=2
[4] https://marc.info/?l=linux-omap&m=156697839332083



--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
