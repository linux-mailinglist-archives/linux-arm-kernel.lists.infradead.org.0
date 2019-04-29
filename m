Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B97BBE4E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=dc1bSo+5J1fxwgyrajhyMN+uHhBMrVmIapr6BH9JY5M=; b=acMv97lx6v53/r
	Um+nKCTUYQq3iuF0J9Q2KCka329wu3utU/e+jljPl3+DFJ6ENVCJv/DrRAHJA+0IeuYCan+qbtl69
	capBZAKo4gTu7X0uVFLLWo94/9Rsl8I+GkVl0wtEA0GS3lsKA+9KTHLPD/Uc+zEjeY46hbhOCv/ob
	+wTzDrtv+tJZ0WF+uGzsOH1R+2hjPrpfxd+q5RDJFsLw4IyrspWtcBTEO8z7lUc6II+GKV9INmdAS
	bRWFi2UYxa++vHpzrsKccxVaCxGe2PVCszP27lho9wXzyEe3ES1CrThv/PQmkkqi0WjmXwpdoHFlP
	+lqIBn8JBkNQPYFU/62g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7RB-0003nH-Bb; Mon, 29 Apr 2019 14:39:21 +0000
Received: from mail-eopbgr50056.outbound.protection.outlook.com ([40.107.5.56]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7R3-0003mM-4Z
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 14:39:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kukXZhIjP/zz5+hf4N+Hw/S45uro0quH3sMR7x4XmlM=;
 b=HxKajFDSTI9yHQGaJFpKcwZsqxhvWCT7STOBKDN3yhOd3WXjo+TvoeGV17hrc/aajisxuraNq83qb/DRDhIS4g08r5MMe0VjPhviuZs9qB9h7UZZi1TIEQS0BiyGutXAM415wUDeuf4BMeMH9gA1ywH82CEUMoVTOYeBBTZkGC4=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB6515.eurprd04.prod.outlook.com (20.179.254.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Mon, 29 Apr 2019 14:39:07 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::f56b:2fea:d9c0:7c2b]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::f56b:2fea:d9c0:7c2b%6]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 14:39:07 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Viresh Kumar
 <viresh.kumar@linaro.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH v4 1/2] PM / Domains: Add GENPD_FLAG_NO_RUNTIME_OFF flag
Thread-Topic: [PATCH v4 1/2] PM / Domains: Add GENPD_FLAG_NO_RUNTIME_OFF flag
Thread-Index: AQHU/Hhau/GWEJEX5Ui7EZG6LbfZoA==
Date: Mon, 29 Apr 2019 14:39:07 +0000
Message-ID: <AM0PR04MB6434B2BBECCA6B2644CDF044EE390@AM0PR04MB6434.eurprd04.prod.outlook.com>
References: <cover.1556313614.git.leonard.crestez@nxp.com>
 <68ccb5a90d1d2a596e7ed94ba3245171f013c781.1556313614.git.leonard.crestez@nxp.com>
 <CAPDyKFpCCapBfNbsR1Q+nyg8aenVJWxj9qmTCCCfmONZR3t1sg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1e42ef9-d0f1-472c-4e96-08d6ccb06f81
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6515; 
x-ms-traffictypediagnostic: AM0PR04MB6515:
x-microsoft-antispam-prvs: <AM0PR04MB65157CF1A0B61B4F161AAF45EE390@AM0PR04MB6515.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(366004)(136003)(39860400002)(189003)(199004)(26005)(91956017)(66446008)(66556008)(7736002)(305945005)(478600001)(6506007)(7696005)(6246003)(53936002)(76176011)(74316002)(102836004)(68736007)(53546011)(9686003)(229853002)(66476007)(64756008)(76116006)(73956011)(66946007)(52536014)(99286004)(316002)(110136005)(54906003)(33656002)(6116002)(3846002)(55016002)(66066001)(6436002)(14444005)(256004)(2906002)(4326008)(4744005)(5660300002)(486006)(86362001)(446003)(8676002)(476003)(81166006)(97736004)(186003)(44832011)(81156014)(8936002)(71190400001)(71200400001)(25786009)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6515;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4PMhhZBiRwQK3VDe37Q9ndFfSYDXS0oU/zvHXI4iA2TUzqN4F7z9skyyHZPP/RTM/6zux5l51Lp2rORhBO3RjgMBYcq92sIHiv+fUE9e3Hu27KjyWFYvs1FnmggjpMOMAAkrqgB3RwpPyDQP9tjUV+8Wqw7YWi0fhNipWfcpIzLTQchm27INfNWUnAhHerbskgtri/VYwGT9xWy61NRV1vBU500Rvt99OrqcjgHFfOJ0QQY+iEExBbFrpklozVEVGP5kVroI1e/35hyMAFJHbOJhyo0tgOJ8nb9Rc8H44LRGnUDInx4ZRrtivM1LI4fkcIGIJlskcZ/lqFS82yp4L1fb7rLIwkKmFQU8GfT7RNuMZf3pK5M0OJAi4bXpYx/qKuIjptgBfo7XZcemshLDPl65YERL/HGubh3GBPwYSbY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1e42ef9-d0f1-472c-4e96-08d6ccb06f81
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 14:39:07.5248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6515
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_073913_256058_32B7EBCF 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.56 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Arulpandiyan Vadivel <Arulpandiyan_Vadivel@mentor.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/29/2019 12:11 PM, Ulf Hansson wrote:
> On Fri, 26 Apr 2019 at 23:38, Leonard Crestez <leonard.crestez@nxp.com> wrote:
>>
>> This is for power domains which can only be powered off for suspend but
>> not as part of runtime PM.
>>
>> @@ -126,10 +126,11 @@ static const struct genpd_lock_ops genpd_spin_ops = {
>>   #define genpd_status_on(genpd)         (genpd->status == GPD_STATE_ACTIVE)
>>   #define genpd_is_irq_safe(genpd)       (genpd->flags & GENPD_FLAG_IRQ_SAFE)
>>   #define genpd_is_always_on(genpd)      (genpd->flags & GENPD_FLAG_ALWAYS_ON)
>>   #define genpd_is_active_wakeup(genpd)  (genpd->flags & GENPD_FLAG_ACTIVE_WAKEUP)
>>   #define genpd_is_cpu_domain(genpd)     (genpd->flags & GENPD_FLAG_CPU_DOMAIN)
>> +#define genpd_is_no_runtime_off(genpd) (genpd->flags & GENPD_FLAG_NO_RUNTIME_OFF) >
> May I suggest to switch the name to, GENPD_FLAG_RUNTIME_ON.
> 
> Other than that, this looks good to me!

Then it's easy to confuse genpd_status_on with genpd_is_runtime_on. How 
about genpd_is_rpm_always_on?

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
