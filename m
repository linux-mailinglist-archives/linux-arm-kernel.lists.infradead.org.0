Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AD81EBC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7P4inwgw3C1ZPTK2f6c8WfhLC2aWmzCKLJZJJCBan4=; b=aYO6qhu05r0Wa2
	RrlcFCTpoGaaTEMqBAgr+P+ZjYqkXc+uwQ5d8MBteyRLvRf7CJth3lFjYZXWahKkGVyxllfcXrJPB
	RvEJnrCoeFRF0sW+QJTFFgfn6xotfRKFmD4t3LqwFaB6Wvs1Qh/M9jWNJlqNPBqrgeF78N+NEWZJo
	Oan0XBJIEpNnTAQZKFd1ew0XkiTz80G0iuQwpewmba+7Zidqz68c4Xi6MO6uNXRvyFIxGlYeVUyzp
	6GDkKiy06VHcTpy4XX5RnKWE0e+SsnFdfPpweUVBHSTkddyUVSZUXziNlbLtZ35Q5RUr2C354Hnd/
	KkwNLJ0od57DdyO8Cw+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqnP-0003go-KI; Wed, 15 May 2019 10:05:59 +0000
Received: from mail-eopbgr800049.outbound.protection.outlook.com
 ([40.107.80.49] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqnG-0003fc-Uu; Wed, 15 May 2019 10:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cbqhx1RxC8OLLT+Gnw3LEgY5TxyRHMqGiMHjA5oSNY4=;
 b=yeSs9AfUYdxv2qaOArvq7Y1ywpJ8oecQyKHwW1iAl9iWsnIzKKXEu18M5VY7B1R41gtKLeSfFv2nt/DO5WlaFoh0NpDhTBHz5oUQuizGAUbXkbMXTBL+R6zJ+ex56F7yjpIQZAfl0ovIeNIAxv6FOVKbMed5oJ95rp8ctaIqYB0=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (20.176.31.141) by
 BN7PR08MB4161.namprd08.prod.outlook.com (52.132.222.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Wed, 15 May 2019 10:05:47 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::8d6c:f350:4859:e532]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::8d6c:f350:4859:e532%4]) with mapi id 15.20.1878.024; Wed, 15 May 2019
 10:05:47 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>
Subject: RE: [EXT] [PATCH v2 3/3] scsi: ufs: Use re-factored Auto-Hibernate
 function
Thread-Topic: [EXT] [PATCH v2 3/3] scsi: ufs: Use re-factored Auto-Hibernate
 function
Thread-Index: AQHVCwG29uhNvrJwCku8+uhYZbnAhKZr9V3w
Date: Wed, 15 May 2019 10:05:46 +0000
Message-ID: <BN7PR08MB568479DBB08F3CECEC1F6D8BDB090@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <1557912988-26758-1-git-send-email-stanley.chu@mediatek.com>
 <1557912988-26758-4-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1557912988-26758-4-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=beanhuo@micron.com; 
x-originating-ip: [165.225.80.131]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1b77735-8609-4be4-feb7-08d6d91ce6a7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BN7PR08MB4161; 
x-ms-traffictypediagnostic: BN7PR08MB4161:|BN7PR08MB4161:
x-microsoft-antispam-prvs: <BN7PR08MB41616F9A3B0771967792054BDB090@BN7PR08MB4161.namprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(136003)(396003)(366004)(376002)(199004)(189003)(558084003)(305945005)(7696005)(71190400001)(71200400001)(229853002)(2906002)(6116002)(25786009)(316002)(66946007)(66446008)(64756008)(66556008)(66476007)(66066001)(76176011)(2201001)(74316002)(53936002)(86362001)(7736002)(99286004)(3846002)(9686003)(486006)(33656002)(476003)(7416002)(55236004)(11346002)(2501003)(4326008)(54906003)(110136005)(478600001)(14454004)(55016002)(446003)(26005)(6506007)(8936002)(102836004)(8676002)(81166006)(81156014)(76116006)(73956011)(256004)(5660300002)(186003)(6436002)(52536014)(6246003)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR08MB4161;
 H:BN7PR08MB5684.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +lhRSosguVNGPAu8gpLtPZV78tMoj67+1cOt7wulfAVKeJrh3XOKCkukQS50O6HXPHOZFM347RSun6xtDstAVTn826nOL4ZIA/bXelIYWQjhg5fVEB7IH77JwQNZ8C1TgE0Ch8ddPmqszbvXp+EpHE9uFCdliCwlZ2yxV5zahcwIOipFcK/4JZhBVAWpNW8uGdLAR8k0WjZn+/BCD7fgTSBVdkE3oN/IGXIcJCdVsaFT3TERaWHZ3SH9w5ouzvbj5fyOkD1n575K3zrUiKvZGjjMSchEpXpwvRxVj1cc50ktZHzHaeLJdT0MlQDODaPZP3kKNg2QwzTDV8ww+/mvtbH/4ctJmrdMKm2U7RZ604OF0cRXLURbxGffL/jRR+emFxZEpwnnon7Qv2cRZTQXjJElJecCwkh1ync+aPL8+yE=
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1b77735-8609-4be4-feb7-08d6d91ce6a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 10:05:46.9925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB4161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_030550_992214_E484077D 
X-CRM114-Status: UNSURE (   2.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>
>Use re-factored ufshcd_is_auto_hibern8_supported() function in ufshcd_init()
>instead to make code more cleaner.
>
>Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>


Reviewed-by: Bean Huo <beanhuo@micron.com>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
