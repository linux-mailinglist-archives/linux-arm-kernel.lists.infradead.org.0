Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C12A3690
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RltBMJZ23xwn92HQrKlMpU7YwIY3qu5hRar2g6K6ik8=; b=Vp1gyq1SONjH0u
	/F97F1VyVR+M+A84/fMjYeoJnMb8W59h4olUphjlCeZP9bZW5gSVGAothf/aOW5MhpU4HJeC9uJp8
	f4pZRvrzGudPOAfd6AtfZ/1TWgJUbwQSyWtJUL10gauCxjRRVIzaCIv56ACNCGALj3wBy48wRRf8K
	uYAmqrv9Vy9cKCOfydwcKxN1ouiDoo96GpP7cSwWCgdDDwE9avk+l7SDawafrPQsJoWvcAbbUdUyt
	o5KOavV+r4CNCN2+f6xhdAbQ4G4WlhmqA2eYdJChoFlc7T9BVmixGNWv/nputS5h3SaUu5ZRTgNmI
	8CGGCJFvGitVrduOfygQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3frU-0007vx-1n; Fri, 30 Aug 2019 12:18:40 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3frL-0007vJ-0J
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:18:32 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7UCIRSs119921;
 Fri, 30 Aug 2019 07:18:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567167507;
 bh=snTTmJmckSgiJtRBVI0YVB/NDSXaOu6BJL2FsvLymhs=;
 h=From:To:CC:Subject:Date;
 b=aGm2C+xLI31fMTlzAls4CpjG2fPmxqLu6RjN96n2nCwfLEFNi4qUF59EWkf+yoKVu
 e9FhObmXPltfw19e2e1nx0L2rk3Mq8coKeONKV2YJo0l9wccQdkdkkfaOf38bnIvmo
 COL4aJQLUO4dwnYPfUKCICKVqe8+yjxHTdgbgXac=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7UCIRiC128353
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 07:18:27 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 07:18:27 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 07:18:27 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7UCIP6G083824;
 Fri, 30 Aug 2019 07:18:25 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-omap@vger.kernel.org>, <tony@atomide.com>,
 <s-anna@ti.com>, <p.zabel@pengutronix.de>
Subject: [PATCHv3 00/10] soc: ti: add OMAP PRM driver (for reset)
Date: Fri, 30 Aug 2019 15:18:06 +0300
Message-ID: <20190830121816.30034-1-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_051831_131412_2AE735C0 
X-CRM114-Status: UNSURE (   7.53  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

V3 of the series, ended up re-sending the whole series as I squashed one
patch from v2 and because of that the ordering has changed a bit. Changes
in v3 contain fixes for the comments from Philipp Zabel.

- added spinlock to protect register writes
- added own xlate function to prevent bad reset IDs to be registered
- use mask for the valid reset detection instead of parsing reset map
- fixed reset status bit handling
- used iopoll macro instead of handwritten poll loop for timeouts
- squashed patch #6 into #4 from v2 of the series
- some other minor fixes.

This series still depends on the clk driver changes for the reset<->clk
syncing [1].

-Tero

[1] https://marc.info/?l=linux-clk&m=156697558331203&w=2


--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
