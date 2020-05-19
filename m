Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 902E91D92D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sG18wsspuP6Gou5VCVZuergXVCmt+cG07/WtEhIhfl4=; b=rHpnQziQ8R2JAQ
	VZo8qucv3cAzKtxTvXs/ElBSUXvhyxniCa46Eqymys8nb5PG7Pllmr7kCxVezWyo41b4dxSJ6BRSZ
	dpzM7aZpTUhd/Wgso8K7XZqEUrySebUn9GLbOc5EfOwsyj5U6JlVlpIXy7ZEmxwm6Hsas82uXbG9e
	DWzhomKJYO5U2DvsWxWqbxoUy1Uj6VywhulJ/4U0hoapZeUz0TYjUYldPoj1kf2rmQv2P7TduSCic
	BzNgi7j9L4/uxAMb0ghJvdTlth0qVbrnLDc8Mpp9Ksk6v0yXKREvL5NTRgJ8gGklpl0wewH1x5tHy
	j7ToaDyKeEI+eTYfSABA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jay69-00088Y-Io; Tue, 19 May 2020 08:59:41 +0000
Received: from mail-eopbgr760041.outbound.protection.outlook.com
 ([40.107.76.41] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jay60-00087n-NO
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:59:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZnlR70mPJ2kUrzJ0sPQaow5eOcjJvJSUJBFfszSQkXFCSFqpJqpcRaw3yR1cdWH6NU70l17kLXZZ6tz7SVqt2p8xv49VZ4A1KvZiJjJyGqRQTZ3zkIeGu6N4jOblzb2KMwAGWIOncMs2IVmx5VXD6bwY5TPMVHitCYm5q39jCitPS8vLoW040lRRCEOBVI91QMTCx1CuJbfXHRJrp4jtVUMrQZdDbHOcGIQVr0ykewP4lvNtjj5psKIBJiB5PIDUuzRWCCjWcswAcRRKwRA7ZT8SVJPcuswGL8qy2LeJzwPkMXYs8StOpDnT7lTbnHAvoepyHg57/3IoLUwTv3JYVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wl712KMrd8Mj2cLoyPJp81kShObH94mQ7BIIGMXEvz0=;
 b=I9ItcUM6X7S9JXqvdclji8Pn8lECe7MHcsrv/NIPDYV5mN+mCKVweZJgjdF+2Jj6n9nmkVr10/enhgKfcYIxH4i3qAeiBBVvF820ZtZTCX1yG/49twrIzKA4ab9k1z5ph5yrXnLNUcXmF1yduWH3aLxvmloTr8YDP8perIW/faKy0L41EmltQ14sjEMVOzXRiIT2FSTjjC5z90lsajJatn6Gqzdu0/lMWJIYuKkiP8ZYM5GGqwrV5VMN+8e/mz7SedR/wd/iRuUSadCNMDL33rr7uF0xfvu3A+t1k/ZMgQx3s1B0gC7/cBGzSRrTIZ7xOCApecuqL3lpWXXYBKthJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wl712KMrd8Mj2cLoyPJp81kShObH94mQ7BIIGMXEvz0=;
 b=kZY8M4nREmSi2HMbLsTjJ1qMLBg5gpvWccsAlA7KGzScmDVKLg8olVEAwEGnY8TwZk3z5GngYJTs55rA8h8J2fMXiE9fct8oUXlrZdj8Jr3lgBXBT4nQ+kYx03JLqOITznojWy9n6MR8ot6NUN04zLBI8fsfZwRlEvuQ123d6J4=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=silabs.com;
Received: from CY4PR11MB1766.namprd11.prod.outlook.com (2603:10b6:903:11a::23)
 by CY4PR11MB1237.namprd11.prod.outlook.com (2603:10b6:903:2c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20; Tue, 19 May
 2020 08:59:30 +0000
Received: from CY4PR11MB1766.namprd11.prod.outlook.com
 ([fe80::31b4:ca69:21c8:3e49]) by CY4PR11MB1766.namprd11.prod.outlook.com
 ([fe80::31b4:ca69:21c8:3e49%11]) with mapi id 15.20.3000.034; Tue, 19 May
 2020 08:59:30 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Possible race while masking IRQ on Allwinner A20
Date: Tue, 19 May 2020 10:59:26 +0200
Message-ID: <11042983.UNsANRFJuY@pc-42>
Organization: Silicon Labs
X-ClientProxiedBy: DM5PR11CA0023.namprd11.prod.outlook.com
 (2603:10b6:3:115::33) To CY4PR11MB1766.namprd11.prod.outlook.com
 (2603:10b6:903:11a::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 DM5PR11CA0023.namprd11.prod.outlook.com (2603:10b6:3:115::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20 via Frontend Transport; Tue, 19 May 2020 08:59:29 +0000
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6bff373a-4e7b-4096-fa52-08d7fbd2f12e
X-MS-TrafficTypeDiagnostic: CY4PR11MB1237:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CY4PR11MB12379C4A0AE4310EF59597E293B90@CY4PR11MB1237.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 040866B734
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nRyjh7oixlkPj2x7WFSU9sFX5g1ZYGui0SmhugQ56hjOkb32+2cR5YrqIdMdJH88Les2l9SqfQlcaS04IQzvHFiC6k75Z5c0ywtNQSZtSYTZ8Fw3ROPduwEAQuiPBgFyZqI6rRVo7rSLbBXV5wYLEYt+8E7f68+oklUIb5lQ/BDt2A0wBo1mPf7zm+pMZAPCDiDXD02/E/YBZWz3+itNuQ1CvqemQq4W3ytBv678xuYQJYRa5cV4eWokoR1WOz6Ts3xZcgtBJ5u95K2bNLsfYT1z3lGgxdmu0IQOVnOCGbB4AwKi6rzP0HyfWZAs4VBU2IkTq+9MFqZARMWUNZezasTF1aU58GLHP2DoBK6zONkEIWUDcrl2z73HbabQV4oeXKtNPMyytPEBwy+NX6lh21PJNrqcloK4oSKmk+rE0wo1lAgPwcHG0/MV8XZj0Ohm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1766.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(39850400004)(136003)(366004)(346002)(54906003)(6486002)(5660300002)(66476007)(66556008)(4326008)(8936002)(8676002)(66946007)(9686003)(6506007)(52116002)(86362001)(33716001)(316002)(6666004)(6916009)(36916002)(6512007)(186003)(16526019)(2906002)(66574014)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: H5V5cmGgfTiFctd3ZmTA6RP8whgiZHdQmKhrxhSTEmFiHOD+vVA5tIFBwnW1N6cCJARA7w7HF+tYFgW1SrzTOf0FJ9zOz9419DgAgUFWyFaeLlQlRyy0oQn66ZRh/qnKuDj454diYo6EXqhGrS28kj7d09n/mUJjVwsaS2JtRn38JuK/xGdLY6H7CgDlWGvrg+bbfw+mv2eWYxMlD6QGMKGkW5VSa3+IoQlHXiW6IiNKOqMWaz7bB2yNaI6EkFCj4csccWULNg6THwsckWFD264ZXIEjNufrG2Bv49qa3+ODnUjZB5uDw6MDEI8urpZnjRtuNZsSvbkUGpgfk9Rhh1lTztaYcXXevcZEXL9ygKaLQCvb0TWAY32WAlBQeNSSc5A/M1145HvSzvjI2Tj9J4gt+iN1bzZgQDVggAQz07vSXqYtOxjOO2mDmHPADi1ccisoK616EsKUdXL+Y2v7BnO2sXND+TGRVtjyELPUsbLxmgi/9rtyUhdRzYQg3BozKIK0JfHyVPcxDClI5bUVXHcN3sdPFG/B3anwJJ9Smc4=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bff373a-4e7b-4096-fa52-08d7fbd2f12e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2020 08:59:30.5985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YxiiidCSWlvNIenyXrQqeX9n/hfdclhCpfKADrjaGeetHjW4mOwPYVvQqoCJDCxMyWTiVg+/ATlSUIKVcyQ/BQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1237
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_015932_817106_1B056CFA 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Marc Dorval <marc.dorval@silabs.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm developers,

I have some trouble with integration of the wfx driver[1] on Allwinner
A20 platform.

The chip WF200 is connected to the SDIO bus. At the beginning, I tried =

to use the IRQ provided by the SDIO bus. However, I have noticed I =

received some IRQs twice. Since the IRQ line is multiplexed with the =

data line, it is not very clear if it is a bug, or if the SDIO device =

has to support that.

The chip WF200 allows to use a dedicated line for the IRQ (aka
"Out-Of-Band" IRQ). So I have enabled this feature with a edge triggered =

IRQ. However, I missed some IRQs. Indeed, it seems that Allwinner use a =

32KHz clock to sample the IRQs. It is not fast enough for us. I think it =

explains why we miss some IRQs (using the attribute "input-debounce"[2], =

I tried to enable the 24Mhz clock, but without success).

Nevermind, I tried to use a level triggered IRQ (and my request is on =

this part). As you can see in the wfx driver (in  bus_sdio.c and bh.c), =

I use a threaded IRQ for that. Unfortunately, I receive some IRQs twice. =

I traced the problem, I get:

 QSGRenderThread-981   [000] d.h.   247.485524: irq_handler_entry: irq=3D80=
 name=3Dwfx
 QSGRenderThread-981   [000] d.h.   247.485547: irq_handler_exit: irq=3D80 =
ret=3Dhandled
 QSGRenderThread-981   [000] d.h.   247.485600: irq_handler_entry: irq=3D80=
 name=3Dwfx
 QSGRenderThread-981   [000] d.h.   247.485606: irq_handler_exit: irq=3D80 =
ret=3Dhandled
      irq/80-wfx-260   [001] ....   247.485828: io_read32: CONTROL: 0000f046
      irq/80-wfx-260   [001] ....   247.486072: io_read32: CONTROL: 0000f046
    kworker/1:1H-116   [001] ....   247.486214: io_read: QUEUE: 8b 00 84 18=
 00 00 00 00 01 00 15 82 2b 48 01 1e 88 42 30 00 08 6b d7 c3 53 e0 28 80 88=
 67 32 af ... (192 bytes)
    kworker/1:1H-116   [001] ....   247.493097: io_read: QUEUE: 00 00 00 00=
 00 00 00 00 06 06 00 6a 3f 95 00 60 00 00 00 00 08 62 00 00 01 00 5e 00 00=
 07 28 80 ... (192 bytes)
    [...]

On this trace, we can see:
  - the hard IRQ handler
  - the IRQ acknowledge from the thread irq/80-wfx-260
  - the access to the data from kworker/1:1H-116

As far as I understand, the first call to the IRQ handler (at =

247.485524) should mask the IRQ 80. So, the second IRQ (at 247.485600) =

should not happen and the thread irq/80 should be triggered only once.

Do you have any idea of what is going wrong with this IRQ?

Thank you,

[1] available in drivers/staging/wfx of the staging-next branch of the
Greg KH's repository. Be sure you get the up-to-date version.

[2] see commit 7c926492d38a3feef4b4b29c91b7c03eb1b8b546 for detail about =

the interactions between clock and debouncing.

-- =

J=E9r=F4me Pouiller



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
