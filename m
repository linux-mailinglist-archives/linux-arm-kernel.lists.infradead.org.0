Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204279FB66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0PNg5oCYdfIJGpqrymXsjdYhFdZ7ycRyf32QzaCOhm4=; b=KcpnNJqcxAAyJg
	Pl+5z13iMhrXcbayCVCj3zoOxhBBIZ2AcQx07e8Iz9L4iuqFdHrlNafxsgUsO95x/5xztRlLGg5Kj
	emYWM4ijJMm5EgyteCTcAgW7st0hsCa85++I0+3E3f1Y3duNq5f8cWTbizzFM5KiM61yV9xy3B1tx
	qbb/GGa6jnYLtmriOtT46MR1UPN86lvOGEUHqjOOloUgyyS+d2/tmft2yZPimKrhSNL91UzJ+xyOD
	qXzVvNw7KCWoYCI/GSIc32Bu/ThHinyxOh+L40m+3lW4gjtre4sjEyk0c87nSMNWPkCHmMPJaDngd
	wgA+N7LnUEKd/KRznmWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sFd-0005wv-Ax; Wed, 28 Aug 2019 07:20:17 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sFK-0005vZ-SP
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:20:00 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7JpAn112202;
 Wed, 28 Aug 2019 02:19:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566976792;
 bh=jQh9SSBn95nOSdIqagWp7AmXioHLcjP6O7Zi0zdlr0w=;
 h=From:To:CC:Subject:Date;
 b=jvWE6mjv30ov9ozTrT9q5g5T7bkRdhc9z+saB5ZT0bCu7csWESY+j9/rtCMhepb2N
 +2CHGwMMgg0H5FIsdmfw3C3sbt6Z6u83xLrl+Z6UqAm6VO748sioyiMY9BhW/tlBUw
 mQtX7drMznmi6zEHqJcl8NWfENKNWErt4IVHmSWY=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7JpQO082666
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:19:51 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:19:50 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:19:50 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7JmfC052201;
 Wed, 28 Aug 2019 02:19:49 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>
Subject: [PATCHv2 00/11] soc: ti: add OMAP PRM driver (for reset)
Date: Wed, 28 Aug 2019 10:19:30 +0300
Message-ID: <20190828071941.32378-1-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_001959_003371_8D4C9FB5 
X-CRM114-Status: UNSURE (   8.59  )
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

V2 of the series mostly has comments fixed from Suman.
- Added a link between reset + clock drivers to sync up the state between
  these; this is to avoid facing any timeout issues on either end due to
  sequencing of events (Patch #5.) This has been implemented via TI only
  private driver APIs, as at least I am not aware of anybody else needing
  similar mechanism and it is pretty SoC architecture specific.
- Dropped any powerdomain related data for now as it is not used for
  anything yet.
- Added checks against illegal reset IDs.
- Added checks for pdata validity during probe.
- Reset data is added for am4/omap5 SoCs.
- Some other minor tweaks.

This series depends on the clock driver changes [1] due to patch #5,
otherwise there will be build breakage.

Also, just as a background note, this driver has been implemented
under drivers/soc/ti due to the fact that I did not figure out any
better home for it. In its current form it would be suitable to
reside under drivers/reset, but there is a plan to extend this to
support powerdomain handling also (PRM stands for Power and Reset
Management.)

-Tero

[1] https://marc.info/?l=linux-clk&m=156697558331203&w=2


--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
