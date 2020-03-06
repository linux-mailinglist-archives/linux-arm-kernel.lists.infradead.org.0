Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6A617B815
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 09:07:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25zvGgj5jn4h6jj515oi4WsnE9uOfbC6opPVrgayJKs=; b=bUD0otR6Zp/E0m
	eXC6G1SfVTTx4nPzjJeqIe5w8N+xHA6WxEynVKX12wx8zqaSr/4aPc47YdanK2ivZQGg0WCkKxIeO
	qXV0Y3FDCpT2PpQvZd3w6iT7VUnEqvwPhl4nwolAGG43Mz/gLpQxe+vBjfG11711osy4DDQfTRg3C
	/hsrPaqHuctC5DWfVK4xaIxr4sWBvi1Uzx9tVvG3V6M1YwnHvoy9IpsDUvaWbeKqmJfRIdnSax9bH
	DFT4xBEAOitIulCVIn8zrNSQHBR6+vUdU3FSSqrWXtIIUTNmIXSDnvcegRl/uLB9VU53WhnPJtXcu
	kISl/4/D8FTr+AbhNJxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA817-0001NV-Jf; Fri, 06 Mar 2020 08:07:33 +0000
Received: from mail-eopbgr150088.outbound.protection.outlook.com
 ([40.107.15.88] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA80y-0001Me-Aj
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 08:07:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KtVVeFuGxBWjnDqFWdpDTb1SW6FNIahkaZ4B3zUGDk9NCNUi+NEnoQkv8sgk41HJ2ZfY3cI5Zwyxj9u3e/Erd2c1ozSdbXl0ygxyVp0Gl9ysNUmmbAn1DMZBhEeQ1EjsDWOTdi0+i9KWPE6Zo9HPmIlXCBxS4KZOAOGd3L5SGHhY8cg/FQXYi2Y6mOYDdZjopfmiPBq+7SwRoTKrAfZNTcDErg3TcUD0ESNxqj4k719cAOI2K4QXRnCdGLMsdaYqbQa10Y+7zCnqcUnQqd5u50XQWvu6pbSxxmbviwluTPgfckQ6Ynu6uSkE+nCTKGXxLSjb0qXyPrVchwfUcUaxDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t6rzdEB+BaOMxCFIwpzT8mme1FmTxqpkup27Ac8TgOw=;
 b=ALw7gsc21nc19ZFdQ/SXQd6/3CRL1djduXkYZ22WLKa78I6mtc8EinNs//7ZLDTXyXIHgqkKWsnczn0qq4soVXD+pIYX8Apzj5XF7Z/eimcGlU/OY4dw0pZTUThK8Ew59jEAByICAMZpYZGePCI6I057D53vpeFffltEIgjqaSXAkd7CoTHZrMdGcs9s/+NKYbRkDrno7lD/JUFb1rHCOyVMh8G1lTmN7fjXc+FkvydSxF6uQOWc++6zTFHglhfAdfmx29bT1cV4b5nDbXJ7OWBG58vZ38qMaFJ8ELVekOVVT6JK1sUgYWgVf/yXCrxmmG+UBRwsjAHDuAgy/79cfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t6rzdEB+BaOMxCFIwpzT8mme1FmTxqpkup27Ac8TgOw=;
 b=rwq1l8gJFdZ37I2G8ZJ3TFzHTWcqmFblEP8eDyyRDr6Dw2gGTfFVbjF3DwN6n3ydLqO81m9XJeNAhmlsMrlcD1GqGnS0ym9UjDAYzM2l9vP/8LW6tW4PqRrGad/E9odVFrdtI+ttFu1nEU+BWBFxoitXIb0+y3V4MnXhDM1FgUk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6052.eurprd04.prod.outlook.com (20.179.34.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Fri, 6 Mar 2020 08:07:19 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Fri, 6 Mar 2020
 08:07:19 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Florian Fainelli <f.fainelli@gmail.com>, Sudeep Holla
 <sudeep.holla@arm.com>
Subject: RE: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
Thread-Topic: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
Thread-Index: AQHV8QFMuMBBDfh8hE244PoeMX235qg4QIWAgAAijkCAAAqsUIAAPdoAgAEztyCAAE6qAIAAFpEAgAD1lAA=
Date: Fri, 6 Mar 2020 08:07:19 +0000
Message-ID: <AM0PR04MB448167BD133BF57E548F2F0588E30@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583201219-15839-1-git-send-email-peng.fan@nxp.com>
 <1583201219-15839-3-git-send-email-peng.fan@nxp.com>
 <20200304103954.GA25004@bogus>
 <AM0PR04MB4481A6DB7339C22A848DAFC988E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <AM0PR04MB44814B71E92C02956F4BED4588E50@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200304170319.GB44525@bogus>
 <AM0PR04MB4481B90D03D1F68573B05BE088E20@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200305160613.GA53631@bogus>
 <d9734fd6-f855-296b-3a0b-ffc45ed0e3cb@gmail.com>
In-Reply-To: <d9734fd6-f855-296b-3a0b-ffc45ed0e3cb@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: db983e52-9624-4a29-b51c-08d7c1a5646f
x-ms-traffictypediagnostic: AM0PR04MB6052:|AM0PR04MB6052:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB60527F0FB8A6245698F4175488E30@AM0PR04MB6052.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0334223192
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(376002)(346002)(39860400002)(199004)(189003)(6506007)(53546011)(86362001)(8936002)(7696005)(81166006)(81156014)(8676002)(66476007)(64756008)(76116006)(66446008)(66556008)(66946007)(33656002)(26005)(186003)(44832011)(5660300002)(4326008)(55016002)(110136005)(52536014)(2906002)(9686003)(54906003)(478600001)(316002)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6052;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VLAJG0kevuJWzrXc/gOAV8eZ1jQ7KeixdP4fVONCjfyi08BkYrokZ2u3VnkuqP/pxH64DzKT3SsG+KE/1PN8qtPccWjO1JTyITwlAyQ0qXnpHSv20KkQyqrjBaEvjy5zU/yvWw4uVQT6kIusXjKHD48amyay7uykH1OKvR+HFP1Yydmxv+LeH1VBpZ3jNKgWhlcTY2d6x/qrWPO39rZ6o7IPJfT2q/JNpBAdG3cniJIs9/LGzkAGsFB3JWh/jHeoMuo6cPaS6m2mmdBYACl0i3q905+zoQON2apE6R6IEX+tDp7NOuNeQocq2ZxkZeoYXye9BtpQVMEvVLNs+0FUz5S4fBfgMRGKZpM0OQ/BArDJ8WhjG09Cl8sQLoklRdBLzOFxWMgTPYoX5+CmqogItxYjLJSkVnoHcGDjAWyMTcYu82SLs6ZvVJ/XDfU+bQBb
x-ms-exchange-antispam-messagedata: o1m0Uy/Nt1fVnLE7iqSa+kqhTTe5Uelg/YiHuZDsM+K5r2/DDO8P2DVJ4eHVUYnBwj86z1DLIIMPHRaXHIR/d5SquvqUXLbzY0DMpwcK0JDBeyXly7cX0A6Vh0bbsoobs2Dgee3WNStoyL7+8lz/dQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db983e52-9624-4a29-b51c-08d7c1a5646f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2020 08:07:19.3572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zNJZhcTMY5zcuun6m2ulD6QeRqpEqwxbX7Mdi6zIhg2SJKg13c35JUli2Ol+wG52o7K34ZKFkfzRIwdOqBoprQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_000725_231516_EAA328AA 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
> 
> On 3/5/20 8:06 AM, Sudeep Holla wrote:
> > On Thu, Mar 05, 2020 at 11:25:35AM +0000, Peng Fan wrote:
> >
> > [...]
> >
> >>>
> >>> Yes, this may fix the issue. However I would like to know if we need
> >>> to support multiple channels/shared memory simultaneously. It is
> >>> fair requirement and may need some work which should be fine.
> >>
> >> Do you have any suggestions? Currently I have not worked out an good
> >> solution.
> >>
> >
> > TBH, I haven't given it a much thought. I would like to know if people
> > are happy with just one SMC channel for SCMI or do they need more ?
> > If they need it, we can try to solve it. Otherwise, what you have will
> > suffice IMO.
> 
> On our platforms we have one channel/shared memory area/mailbox
> instance for all standard SCMI protocols, and we have a separate
> channel/shared memory area/mailbox driver instance for a proprietary one.
> They happen to have difference throughput requirements, hence the split.
> 
> If I read Peng's submission correctly, it seems to me that the usage model
> described before is still fine.

Thanks. 

Sudeep,

Then should I repost with the global mutex added?

Thanks,
Peng.


> --
> Florian
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
