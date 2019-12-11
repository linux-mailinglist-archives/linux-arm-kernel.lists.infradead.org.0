Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D756811A777
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=UCsenF3m8eUdHIJSGia6YkLNwKhxIuWWGJvK1wNibUQ=; b=aB0l8MkBrGAolj
	5UowL60+zfhx6LwtTiUQt4wJ+ALdxN2ZlageTx3z4wXAO+wyaOOYQub8BD9bXkbkiVrFkVomJH4LU
	dIrbNPecdq1T61ltw1X627JOLitibiKIOmBp6h1u33R9XHH9Eap1juukms/lC4XBTbfqQN1xB+ot2
	VG++Hb2Ur3t/26AneNB2OEpC3JxQDWwt7urXDSnr7tX3QNJODerqRnjIvk6zCY+y0R4hQyt4Btx7k
	J3L/J94rJxBoov2Fn3W8MHGpaGYdfDy1S4tQzFzvtD/k+K8YHEr/0zESSfpYAaqwPYybsSDl02kWz
	JvuEhoUcJN2n+2JkedjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieySD-0007X8-JO; Wed, 11 Dec 2019 09:38:45 +0000
Received: from mail-eopbgr50066.outbound.protection.outlook.com ([40.107.5.66]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyRn-0007M1-CQ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:38:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IUYYgIY+0his54nLgiEHrzAJ+2iZYMwrsUNgCysO/R8i8/8/3iJK1eAj+ofeXB26ogK4sSc1TfrZ1A3lxXWX3rNTxIcF4ovBDGCVF+3s+auHO762JAvSScZ5Qz7OeyDaNOCYjL5dkxRB882jXVIDuZpy2BGzMQMYVBpp9MGuZOZQ0ZKRtOVztE9hh5VT4BU0ORY98/eCQudyF98MAWOz8eHnVw+0umgZ2wcwKB8W1H1VH+lZHamyxZiKRPge3LM5wED9v7f/hHLP9+SBtDA/zyDQTv1AgLGvPcuvnrXuhU88vXErbE7vs6qrhqxixwLfKhvPqBBNO6MwcIQmcu5pBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJnAbYY3NBzgSR37R6v8xD9PjuwgO9sReQvcAnaZBRI=;
 b=FmFc/06iYtAJ9Pz4gWO8d18tCFn1qMSQqNHnSohcmoKxqU85cBLM0OFMdAOjxPd5q+8ltYwR7TtwgBnyMSw36GdVwrXeMdqJZyREAijOQYYMVt9yzwvnHBE9Ff8EMvCrVSut9LDL9v2GMHJPR35b2SKzKo8LRaFV4H4Qz98u1VLNTOtZjg7eVFBRUkczIF+fJ5fECbUPPtIPZdwi2Wo+rJg167yL1NgNitFw+ey+b/sQt+0b3OExgzTGzZTKAmxVbHi4phZKeFFCbVy7WSn+2l2+HdJXRvEcHBwH/4asYmQSw1JqhVotSTkqCzhseak2UmLb5Rh1Z0XWnNnZdE7juA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJnAbYY3NBzgSR37R6v8xD9PjuwgO9sReQvcAnaZBRI=;
 b=XkzWPC34+O/xfWADKcFiDjNBBPOqAYaYh/8kNa7Ghvur/VjQZDt8zpTpy4wdKIEsnPMsECX2CEDOInRg/t8poeQb5Y/ny35ur0I6ZunJgh94k6/ge11PEfIOaakERJ1mxcMnBUlKWCQYa4vbz9PujO/iTYHUCeQ6fJxgRVRQ9oQ=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5311.eurprd04.prod.outlook.com (20.177.52.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Wed, 11 Dec 2019 09:38:13 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2538.016; Wed, 11 Dec 2019
 09:38:13 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>, Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 1/3] ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO
 regulator
Thread-Topic: [PATCH 1/3] ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO
 regulator
Thread-Index: AQHVikhFuKo1SLIff0mMLrsG10nb5A==
Date: Wed, 11 Dec 2019 09:38:13 +0000
Message-ID: <VI1PR04MB7023B082934A79C181DAE7DDEE5A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1571906920-29966-1-git-send-email-Anson.Huang@nxp.com>
 <VI1PR04MB7023CD288FCC57806F067FD9EE5B0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB3916D3DB4C0CE0017FC2D4B1F55A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20191211072721.ze6yn2felxyae5eb@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3d8c2ccb-f361-4767-cdd7-08d77e1dd7fa
x-ms-traffictypediagnostic: VI1PR04MB5311:|VI1PR04MB5311:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5311395B84B83573861883B7EE5A0@VI1PR04MB5311.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(366004)(136003)(346002)(396003)(199004)(189003)(8676002)(110136005)(64756008)(66476007)(54906003)(66446008)(4326008)(4001150100001)(66946007)(6636002)(91956017)(76116006)(186003)(478600001)(71200400001)(316002)(66556008)(33656002)(7416002)(2906002)(44832011)(52536014)(6506007)(53546011)(26005)(86362001)(8936002)(55016002)(81156014)(5660300002)(81166006)(9686003)(7696005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5311;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wWMqsRJI3zam74mh+vhm26F8dGvA6zMNo0EB/JBpd9Bw3tOMTZX6me14+pvokG9Iw602VUTYBZP00nLf5PfmXWNRJYbh0p8kV8IOpua2LFA5KU454WnLRAh1lBw8Li97TD8TjOeWAsYrUc6o8Aqhihf8QgUKhE/lvKodqilgXXbOHhpTki9xki7cPASnhPwPJLOzsIuepe17narlV3P5qC38DXGGXEPOKUd8kKNda9I0tnW9UhNL08vd6k8R1tmI6ldBuxuAIcOCxjIyzVlELn9YnFnuvIC9We0v5VIpXpLW1kPrSlHKJJxHpn4SADLvV9Nj+pSVtvFuHAFGhSs0enOoazkYrg+vAwNshxZuIlgwRONUZAEV1rF62MRZAukQk2H6rR7CQ1rOdmlkkmGQHXFkaKQxevxvIQ7Ji6BAHtMfBrQ4ol6ysWn1aDdRKeYMhauoLX32CXi6hQsFCvz8nu9+7CWJXfrF8UaUxZ8Qa0DzZDUiZad02fHuENWxbu6W
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d8c2ccb-f361-4767-cdd7-08d77e1dd7fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 09:38:13.7241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ux64KqaQ+ej0538RNyQz1pQivll94wLsdzA3NIyvK75WXP4+Ho3Q9dXcbfXrnj3QhvFA4o0TzSuRXJ3XUWA0sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5311
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_013819_549082_46DC6C47 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.66 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-11 9:27 AM, Marco Felsch wrote:
> On 19-12-11 01:06, Anson Huang wrote:
>>> Subject: Re: [PATCH 1/3] ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO
>>> regulator
>>>
>>> On 24.10.2019 11:51, Anson Huang wrote:
>>>> On i.MX6UL 14x14 EVK board, sensors' power are controlled by
>>>> GPIO5_IO02, add GPIO regulator for sensors to manage their power.
>>>>
>>>> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
>>>
>>> For me this breaks network boot on imx6ul evk, relevant log snippet is this:
>>>
>>>       fec 20b4000.ethernet eth0: Unable to connect to phy
>>>       IP-Config: Failed to open eth0
>>>
>>> Looking at schematics (SPF-28616_C2.pdf) I see that SNVS_TAMPER2 pin is
>>> connected to PERI_PWREN which controls VPERI_3V3 which is used across
>>> the board:
>>>    * Sensors (VSENSOR_3V3)
>>>    * Ethernet (VENET_3V3)
>>>    * Bluetooth
>>>    * CAN
>>>    * Arduino header
>>>    * Camera
>>>
>>> Maybe there are board revision differences? As far as I can tell this regulator
>>> is not specific to sensors so it should be always on.
>>
>> You are correct, this regulator controls many other peripherals, I should make it always ON for now
>> to make sure NOT break other peripheral, and after all other peripherals controlled
>> by this regulator have added this regulator management, then the always ON can be
>> removed.
> 
> IMHO marking the regulator as always on shouldn't be the fix. Is it to
> much work to add all required regulators? At least please add a comment
> which describes the need of the always-on property.

I don't have the hardware to test all affected peripherals on hand and 
no familiarity with stuff like CAN.

Renaming reg_sensor and adding a comment makes sense.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
