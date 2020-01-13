Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C0C138E30
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugUGgtzRf4Tl2Ad9Iz73TND9yxqHJJuiD+4TKI/ICLs=; b=g1gIQrwuvYfe11
	7DFME7ObzAl6Go/218RM6sqaj0iSTuGqBbnW8Au9aQX0WpO0R2y5kSGrHXaCT5/Zz1Q5hQmjS7rlL
	dkSZ4F+/cDv2tFR6uuYdh22iwdcZAYdwCJysLBeLZLj3O73CSrfeGyDJZ7IQ2znCRpeUXGl0JwAAt
	W/GRFw9NrY11QcdcaGdV1ADZYUGgmO48nGXFD+inGrkILo/NvWtGTlHx3Lp4qDIRD2nBsNSc0JSQV
	C4VwN/357jF5Xc/6pdWDRqmxTcy1+q87ZTuc4y14+3T8Vu/7pT+oG5QngX7OyG9oXwElRdozAdZ0V
	WN+Ye47bQFJoFNE6ExkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwM2-0003hU-C5; Mon, 13 Jan 2020 09:49:50 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwLM-000385-TG
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:49:10 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: WZfm4VPgYw30718tk1myBad2JtNcpmSphshxqVNwQklg+iN26xbAD0jtK1MFw9fKrtwsJHtQcX
 RicJsuZIdzzEHLJvEbbX7iLhngVKblsz+7oKNthn5vnOZuOMHcJJs12Pd6vrcIAG/uMnqe8u29
 vpaF6GsrvMKrdS06/hh8DQ4dSq2F/wjZ2QBYnP/EuIs8kGdjy6A3GomfC6m77TiA9l/lovB/bD
 70fjORmLuU+gGszeaC0yJPzau9pZwbnDa8BesVY5LWMy+tLWIM6MU4RowdzqsZVWpG/8jjmsvN
 Q88=
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="63046749"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Jan 2020 02:49:06 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 13 Jan 2020 02:48:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 13 Jan 2020 02:48:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQTIPULAvJFvaS32NR0YAYqH72MmdsDByumB4H9uyiwiU3zjFQSuqAC38XUZrU8m9hYlKC5Yl95AB8YWQOx/zoGWVSmtrpgT1n8A6ziAmNkkemTVrzCGLJ28dGnl4GmuJ2EbjVK5rClVQ2ZcvczN+XiiqqSKhQmANUmFcILctZBlt4AS+5CFt6BHtMDxLTZXqYPxCfHZB4i2HUlvsyIxqGCo1jykSqTy6+prkpm/YLfDkaJ4Gv3BwKccCMyyYfi2dHlVeQKArZEabUdwUQ8nPNaVNWhQ5CcigeyMf1uI7weT8xtffGB42lRKNZKtoCCZAOlbNlhJH73Mz1LJtAJagg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R0VtgJ6oP6Rd7O7iq/lcEbiNlHxtSMJk3Jevmx8d3Io=;
 b=n9+EUCKqNpLGoTYyDapQEgbHeZy2vp9uo5W/WITjHbZRYV8KuH1z3nlnyZVdnZxvKC99DmdsVgBHk8IobHVxBKziNnhTAUVICt3dm+dW8VgQ6jpeQvqfzj8MOnV+cDBGzcVQLN4NGVKfBWRgZME4f+oJti1uSFUquVNl5ysixBaM4eEnH6tIPRrHNZbfrTSOYMT9OoIdAXmRdAXm1KY5FGjE1LJKU1lXWi/VpSesOSj24Z3OXvF6lLxlZP0zKPg5Y6pO23/O9gidm6kp3C91RoXyug7gQaBIv3cijRJa/kV9Q/6/kxjA0+OCd9Zwko9GBGUV+LBO+f6hvfdvxIIHww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R0VtgJ6oP6Rd7O7iq/lcEbiNlHxtSMJk3Jevmx8d3Io=;
 b=FA596WLwZSNtjHItLfhw9xIn5+JgSHBNfngrcOaDwbDC/X17XYzP+Ajd/7LczwgIWE2SxGBj++v1ooUPHLzkoaX8+9elfc2+oULoodO8eRKa76h0rgtdMN79T3TCRH77c6t0EH2dB7/Xsrn9ngbdJmLPqQ6re8FE69OrUmMdhYY=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0009.namprd11.prod.outlook.com (10.164.154.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Mon, 13 Jan 2020 09:48:55 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e5f6:d07d:d7de:ce79%6]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 09:48:55 +0000
From: <Eugen.Hristev@microchip.com>
To: <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>
Subject: [PATCH v4 2/2] MAINTAINERS: add atmel-isc-media.h file to ATMEL ISC
 driver
Thread-Topic: [PATCH v4 2/2] MAINTAINERS: add atmel-isc-media.h file to ATMEL
 ISC driver
Thread-Index: AQHVyfaqcQKf8ucWokmtF3E5mN58sQ==
Date: Mon, 13 Jan 2020 09:48:54 +0000
Message-ID: <1578908877-14575-2-git-send-email-eugen.hristev@microchip.com>
References: <1578908877-14575-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1578908877-14575-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf92e889-e13c-4275-13a5-08d7980dcdef
x-ms-traffictypediagnostic: DM5PR11MB0009:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB00092295C9E5D2E9DFF7D7E2E8350@DM5PR11MB0009.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(136003)(39860400002)(376002)(346002)(189003)(199004)(54906003)(110136005)(4744005)(6512007)(5660300002)(26005)(8936002)(71200400001)(316002)(186003)(4326008)(86362001)(81166006)(6486002)(8676002)(2906002)(2616005)(6506007)(81156014)(107886003)(478600001)(64756008)(66556008)(66446008)(66476007)(66946007)(76116006)(36756003)(91956017);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0009;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VDNU+Pw/148G1ecCW+4l8AS9oODbt3CJGaNfJrRriXn6OICKRjltwt3EAq47mLsH9gJFUCZpMWh695RR05oxTfC5W/uaH1Z7GiRp1ouEg76bN8eMykwuk5vCAVulaYpLk7TA4WeW+1C02TtZYt2lX774yca64HRuc1P2IpVWaW951Gv2yzXyEWTHPLJhc0ZG82daZXSG7JNEuQNIToi3Y0Hugswb8jK+bjYBmYImE1XD5mWO/EUMIbJV+rrvZrBPlXouuxtbqZHA0dYpd7tkABL2YEwRCFm0a4behOYgvdTjeeae1XANYz0pEmU+W92HTfq+PBb9PQbnP1tyM9BpH3BqW4Om2CXQqjeC+eY0jc8bUvV+aQEQfRXlceWEdYF78yiYNQ+2QzFV+SKWZK3F24DQccq7qwiUKVsfNFxu3G5tq8eTrAd/hZGEO6mx+H8/
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bf92e889-e13c-4275-13a5-08d7980dcdef
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 09:48:54.5462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uAqVGH7Cf5VvptFbICjNrLa+ZORDdTosENnBKPFurs1R/DoZcMHeE+XcFfcgS7nLNmkyxHnfH6Bvf3Uo9AGiIjtiBZOnONIUKv3ES/V7u6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_014908_968399_2DFAFCE4 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Eugen.Hristev@microchip.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

Add new file include/linux/atmel-isc-media.h to ATMEL ISC entry.

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 983d3c9..b69ce6e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10825,6 +10825,7 @@ F:	drivers/media/platform/atmel/atmel-isc.h
 F:	drivers/media/platform/atmel/atmel-isc-base.c
 F:	drivers/media/platform/atmel/atmel-isc-regs.h
 F:	Documentation/devicetree/bindings/media/atmel-isc.txt
+F:	include/linux/atmel-isc-media.h
 
 MICROCHIP ISI DRIVER
 M:	Eugen Hristev <eugen.hristev@microchip.com>
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
