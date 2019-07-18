Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DE36C9F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 09:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EgfDUnXbfh3/OT8M24g41UpNG15J8Yqz5+9bnshLJQ=; b=HpaIeuQzRXCY6u
	N0/kDr8RC0M6sr8WfdzRw3TQdhYBeM9HnpMpjsNhEGcc3UGarDdDZ++qQuS9ZM6UpiXGCnsaLqsXo
	gVECFgJd3+T+8561czPN2SWbcw7mG1lApeeoO0r9O1ynqh/yV2l0xYC3onKIsLvIZFKFVnn59qAda
	884+4dOGsad9k64suTpdczZXxHDzqINIaw3rMSVesNWGIbR9hvkkfGI6awGAV9a2c2rY0psoQ1KBl
	xapEJV7puWOG3X/OD839L5iNDMwCQzHKLeFiwncWcNQCv7XWkB/MToEDY3ZiFue+zvA6ojdwX1SIE
	SGiFEC6gi0RyZXF4XlIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho0tA-0005oA-DO; Thu, 18 Jul 2019 07:31:41 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho0s6-0005nW-Nz
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 07:30:36 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 496A1C2967;
 Thu, 18 Jul 2019 07:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563435031; bh=wi3lbCFurWzNllCa1BfsB65zzLLkVvSCZbPfv/dPEsM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=VRUxJVZ/Ql90IIPd5yzyp496IXiUKTYdHXnxi3XQNm6w8IAqnolbXvH+5q70s3Zld
 6vlygFQ459cka6ZR18RSIYACoEgRoI75wDk1hXi49TG0hTWqdpoMQ6x6d9jy4uoQK7
 8TA3FRYT2manlySf6Ajfvm4PrR3ENf9RVlAzeToa8VUEop8B6cBP+5BCCe5zfLm7aI
 dBeL1vcdrBHqP6lAS5a+V+QTBGR2JxPd+cgrFj75bxLKASRkG5eszgKsgzV/EQuw8n
 FLDqaVX/SrTN/kmvE1mUoTlJUu5nfvOS3eGODZWyd3GWg0CA/cHvyOTUmlFelsOGms
 k9D5l3L9ZGLDg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id A6FE0A0067;
 Thu, 18 Jul 2019 07:30:14 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 18 Jul 2019 00:29:53 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 18 Jul 2019 00:29:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L6LFzSNTAljBwh+svyvpYFeRruDHEcrD0gTquyNV8YR2NyO907iUwl5mXAAydScFVV49cNc2ZQOn2xBLoQQSpaoVHXMwI4aOy55nAo/sMAfI+dMQktydaPAMuCmrwWlXBlQ2BvFMQ6tCJMOWhyedBOog5s8p1h1sSeFqneICyqujn9RkeJV/tJtT6Gc23SNbvStqrlsOjxwttPHj/gsT4Gne+Kiu1vktsAt1k26kMW8XUT7Ne90Ai0snJqub5QGkme2eRB3kblT4SHkhB84q/pelcV2HVbQ/2BdceSf+UdyiRUNWor4yhpKnwTpEXpXW+MPDg5v/xyRTr4NCOWKfew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wi3lbCFurWzNllCa1BfsB65zzLLkVvSCZbPfv/dPEsM=;
 b=O1Bgx62AZTIKJl4V0cyAryHAGha51C1itCcEK1pKG6L8/KBV9PmKw4kXyhmC+5udDYCgefGLcW4fQmM8A8wxY0StK5NPN+VFH6K4hLvGX2+vOgPqRvf4zs7aOMUGBIYS4QWqlMSn8wQk0LZZilNUtygF0LpO44DIWqldL219hMW53cCjxaenJpMR9l6ivVx4ByjhszYfoW3Eb/Aj4Qf/V9Bby5hLsOy3iwWexoXg9IGrPMb544eHhUthg3xKwumv8dnWGcTVMAA1liMTHenfHFq0BAFPiXCLjhf4iWtB9ai3kgOiEDVWo8uxZoiRd5FJ7p1ERE7k2G9rUEmMf3U/Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=synopsys.com;dmarc=pass action=none
 header.from=synopsys.com;dkim=pass header.d=synopsys.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wi3lbCFurWzNllCa1BfsB65zzLLkVvSCZbPfv/dPEsM=;
 b=WX6Z740hX39PnryaEh3UwALDIfosigkP0xIc7l2RXc90bP9YHzoTmAo5XkqegOR1zVKuhtX2W47JYgwbzo+24KTHGH7Lz2kBsy6Yh+JeA8J6c3LKnUrJoS8tFIso0lvYKpbhE+JgcSoIJARkOyCps4bTayxf+mcBjl55PpZXPb4=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.66.159) by
 BN8PR12MB3364.namprd12.prod.outlook.com (20.178.211.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.12; Thu, 18 Jul 2019 07:29:49 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::61ef:5598:59e0:fc9d%5]) with mapi id 15.20.2073.012; Thu, 18 Jul 2019
 07:29:49 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Jon Hunter <jonathanh@nvidia.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Topic: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Thread-Index: AQHVMYtq2Zx4WVoG/U2kL8GCK0bP/abPQEOAgADRbnA=
Date: Thu, 18 Jul 2019 07:29:49 +0000
Message-ID: <BN8PR12MB3266311B8D76DABE8448E3E3D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
In-Reply-To: <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc230020-b5b4-4d5c-4a6c-08d70b51b76f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR12MB3364; 
x-ms-traffictypediagnostic: BN8PR12MB3364:
x-microsoft-antispam-prvs: <BN8PR12MB3364C246A25174B24636121CD3C80@BN8PR12MB3364.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 01026E1310
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(346002)(39860400002)(366004)(376002)(199004)(189003)(316002)(55016002)(9686003)(4326008)(2906002)(3846002)(5660300002)(52536014)(6246003)(6116002)(486006)(305945005)(66066001)(446003)(53936002)(11346002)(99286004)(229853002)(6436002)(2201001)(54906003)(110136005)(66476007)(71200400001)(71190400001)(66446008)(64756008)(66946007)(66556008)(7416002)(7696005)(76116006)(68736007)(8676002)(76176011)(186003)(86362001)(26005)(256004)(8936002)(81156014)(7736002)(476003)(2501003)(74316002)(81166006)(14454004)(25786009)(6506007)(14444005)(478600001)(33656002)(102836004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3364;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tsvOF5zZoAV0KWydtKBrDCH2COPGDLauOQwdoJeVZWtpOlDwonT3R5dpHexLKl3hPjUHteJtkOP2gBLINa3Ps5LNWRlUTNX8AZqbCFUSsUngJGg7LTmNawrArwJzOIQTNnhadkv7T8wEAFwrJsHkiVWS7AdxW3l7TO/clCPrEW2cMhIFtBRWt3Hfqnb/MbL2ln38w+FeWc2jIpwh1lNa1SUfsjhCD0gPfdcVDK1GjgFOB5+fAQ2jbLWP0rh8XoTKKAo+Z8gZQN8dNpA+H1plcSYpvkbX+SFV/sMttEyERYogIP4/2RNakdeQtcRGRMqETsJeUzUquiVJqWW5VjDMZcbyQNaTyiEfhaFCWOMNxlTTH5Ubrf1OapiRZ2H5+jbw3150o+oihjy5Eey9ge7eRBl+HfvbXjD4yhTTSTquhzE=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fc230020-b5b4-4d5c-4a6c-08d70b51b76f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2019 07:29:49.2376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joabreu@synopsys.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3364
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_003034_855886_CAA3A6FE 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jon Hunter <jonathanh@nvidia.com>
Date: Jul/17/2019, 19:58:53 (UTC+00:00)

> I am seeing a boot regression on one of our Tegra boards with both
> mainline and -next. Bisecting is pointing to this commit and reverting
> this commit on top of mainline fixes the problem. Unfortunately, there
> is not much of a backtrace but what I have captured is below. 
> 
> Please note that this is seen on a system that is using NFS to mount
> the rootfs and the crash occurs right around the point the rootfs is
> mounted.
> 
> Let me know if you have any thoughts.
> 
> Cheers
> Jon 
> 
> [   12.221843] Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
> [   12.229485] CPU: 5 PID: 1 Comm: init Tainted: G S                5.2.0-11500-g916f562fb28a #18
> [   12.238076] Hardware name: NVIDIA Tegra186 P2771-0000 Development Board (DT)
> [   12.245105] Call trace:
> [   12.247548]  dump_backtrace+0x0/0x150
> [   12.251199]  show_stack+0x14/0x20
> [   12.254505]  dump_stack+0x9c/0xc4
> [   12.257809]  panic+0x13c/0x32c
> [   12.260853]  complete_and_exit+0x0/0x20
> [   12.264676]  do_group_exit+0x34/0x98
> [   12.268241]  get_signal+0x104/0x668
> [   12.271718]  do_notify_resume+0x2ac/0x380
> [   12.275716]  work_pending+0x8/0x10
> [   12.279109] SMP: stopping secondary CPUs
> [   12.283025] Kernel Offset: disabled
> [   12.286502] CPU features: 0x0002,20806000
> [   12.290499] Memory Limit: none
> [   12.293548] ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b ]---
> 
> -- 
> nvpublic

You don't have any more data ? Can you activate DMA-API debug and check 
if there is any more info outputted ?

---
Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
