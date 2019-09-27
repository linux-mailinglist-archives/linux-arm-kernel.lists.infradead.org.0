Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69E8C03E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 13:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Az3UgsPGQ8kGsSIhpuDjG81ymw8ud/PzsDcC627eX24=; b=mVHofrWoW7Y0J3
	t0ifgI5SIL0/5+uuKaZnnu5D/0Kejm3Uu47LWrj7Inc7N9E1Daagl1C9W8b4isQPua8xjXz4tLfi/
	PE6tzfDvIBnscqm8fDETJmPQZC33IiguaiviIGuAuZLlBk9UiNXYepvhZ/dG2F/tG0EnTUoMCdLvY
	qU1qhLU+u/8D7shNI+jWzkvRCpKHFcm5CP2t+sf54+A8Os4+jA5uAv/WqWoH4+rbHH6Mvs7ayI0fR
	LZbKg4IZKfULAsy+cfmhh+31mZlq+eC0bozvwOJGSRDtuLgfHXywMNr3cvhTw3405nVTAIdgFPy7j
	NsXqJoV3AcngG78N/FjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDoEp-0003ld-II; Fri, 27 Sep 2019 11:16:39 +0000
Received: from mail-ve1eur01on0622.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::622]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDoEh-0003kV-6g
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 11:16:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iF42uAvftLYOHCAOrVk+WeuxY9IvFvehx7NNZV8EbogNydcXPjdmzPnF4lTE14339l0Q8snbynbIEdvIGZMZqlTQigIQbRZOaW+MEU26l3il4O/C11G118Emt/EJWEaPpCRRX88mxuRx8MYkpuboMor4Az/k6uDF1cH2i1RZ/jvyJUi6OU9SuxyT5+FEcdm0ZBXRSknB3JbRE1DivJw9uGlkSpFfafxd4PprTk9KFRxz3NFqF5F+ZGzPk86aY9irhfRiWG8JiGLgX9ehlqJH+komC6vHkBO9QDisQ9WdOCZc5CrGpQvMWpftSbSuOcJB+KsDtTXN+MuxGsyh66Y5cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QCKUUWno90d2RVTD0wJMjtko4AQN5aEb67px0CqKhn4=;
 b=FXB8pi3DBbzKa6DwAm+oEd+eQ0+ONo2xRdXcx/kFdr3pb+PH11YcgWbMeAPRQ7hTWwBtJCbY8D+6fcYfQiSfvPfC9O8VSfZt4FcuaVw6ZHJj2GCb98dy+TzzyQU9AY0umlNJFhMPDu2/fX/jweVbnOzBlrFHoAt1d6nGUhinGFPACsVRyOajsQ5/P22eUjLV+ZbdfoBnlniKpooQQZpqzWWX0Obvv0iwd+jq0fyjMeS0L0KWrJN9gfYLyuNMWxdG/BzB6gfBhaZUFTbzUl4UeYUp7EShLDWD807pD2yZ1L44dt/oLU5hLE2TjEaan3HW4j31vdCPHdd+wPUvG0PCrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QCKUUWno90d2RVTD0wJMjtko4AQN5aEb67px0CqKhn4=;
 b=J4eSe9esYQPsys9LN6S5t/iS3RlnCkENFsYH0EnMlijvRDC4yHKHdfBTchOfgBmbk8PwsdgqaRxEF6WvsX39+wwF9nZSImhnxoEbEW7/AFskpxHr37MHnxucqrH1eBhZxYc3s2zUEvm9Lyesh9BFBwGf++k/gW/CtNnZ1uDz+jw=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5311.eurprd04.prod.outlook.com (20.177.52.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.21; Fri, 27 Sep 2019 11:16:24 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Fri, 27 Sep 2019
 11:16:24 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, Marco Felsch <m.felsch@pengutronix.de>, 
 Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lSn4nBMGf230anvZh0PllY6g==
Date: Fri, 27 Sep 2019 11:16:24 +0000
Message-ID: <VI1PR04MB70236265478233D8025706F1EE810@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 076cc439-c9b9-4f06-cacc-08d7433c2246
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5311; 
x-ms-traffictypediagnostic: VI1PR04MB5311:|VI1PR04MB5311:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB53117895A525E8FB7BB57AFEEE810@VI1PR04MB5311.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(39860400002)(136003)(366004)(199004)(189003)(74316002)(7736002)(5660300002)(2906002)(6436002)(229853002)(6506007)(256004)(446003)(99286004)(110136005)(53546011)(186003)(54906003)(102836004)(26005)(86362001)(52536014)(4326008)(6636002)(55016002)(81156014)(66066001)(8676002)(81166006)(14454004)(6116002)(3846002)(33656002)(66946007)(66476007)(76116006)(6246003)(64756008)(7696005)(8936002)(9686003)(66556008)(66446008)(91956017)(76176011)(71190400001)(71200400001)(316002)(25786009)(486006)(476003)(478600001)(44832011)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5311;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7Se0PzbHD0S7GnMiVkMoS55SQ+qMODiFil5D9WABhQYxyz6VSMKYkVJKDEOXoRlnm0wN3Jpz3hxX3Ir4mfjEIsmrjENd0t41WAPdIpgr4LIlf6QKWjVbjaXkacYgZgsD1URQEACHg/p1oi4tkdvhDSqulRmokUvW/HELiBESHZtwwdX0xAo2rRvuEI1u6ez/1c6SOeXdjpYoaDsm2tVTyqwvsc16mK9YDjM1AXlMbNdSONrAyt8pJy54BoJtkA3YIclrkwbN4E5PRV8HFp9ESmbkOPneuEN5U+oIoN81SP5FiaX4dN0r/F+NoGmyXHWo6CwDjAkMd/Aaww9/oY+GjmsMOMV5uSU/nEcOnpvQHEoZCgZ/hIkuMEtb88ixc4ZWIunjGIrJh/JYs2w5AtpJ7Sl6N8G/kIE5xGlVVBPwow4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 076cc439-c9b9-4f06-cacc-08d7433c2246
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 11:16:24.7027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x3u2QcDEU8DV3y9oCj3+7vgizJMVzzLCDbLkCGmx+KR4VKCn2aWhxPWQ12qz229wXggkAQCIGJ6kE9rtwV2yhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5311
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_041631_445627_51842DAB 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:622 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27.09.2019 04:20, Anson Huang wrote:
>> On 2019-09-26 1:06 PM, Marco Felsch wrote:
>>> On 19-09-26 08:03, Anson Huang wrote:
>>>>> On 19-09-25 18:07, Anson Huang wrote:
>>>>>> The SCU firmware does NOT always have return value stored in
>>>>>> message header's function element even the API has response data,
>>>>>> those special APIs are defined as void function in SCU firmware, so
>>>>>> they should be treated as return success always.
>>>>>>
>>>>>> +static const struct imx_sc_rpc_msg whitelist[] = {
>>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
>>>>> IMX_SC_MISC_FUNC_UNIQUE_ID },
>>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
>>>>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
>>>>>
>>>>> Is this going to be extended in the near future? I see some upcoming
>>>>> problems here if someone uses a different scu-fw<->kernel
>>>>> combination as nxp would suggest.
>>>>
>>>> Could be, but I checked the current APIs, ONLY these 2 will be used
>>>> in Linux kernel, so I ONLY add these 2 APIs for now.
>>>
>>> Okay.
>>>
>>>> However, after rethink, maybe we should add another imx_sc_rpc API
>>>> for those special APIs? To avoid checking it for all the APIs called which
>> may impact some performance.
>>>> Still under discussion, if you have better idea, please advise, thanks!
>>
>> My suggestion is to refactor the code and add a new API for the this "no
>> error value" convention. Internally they can call a common function with
>> flags.
> 
> If I understand your point correctly, that means the loop check of whether the API
> is with "no error value" for every API still NOT be skipped, it is just refactoring the code,
> right?

>> Right now developers who want to make SCFW calls in upstream need to
>> define the message struct in their driver based on protocol documentation.
>> This includes:
>>
>> * Binary layout of the message (a packed struct)
>> * If the message has a response (already a bool flag)
>> * If an error code is returned (this patch adds support for it)
>>
>> Since callers are already exposed to the binary protocol exposing them to
>> minor quirks of the calling convention also seems reasonable. Having the
>> low-level IPC code peek at message IDs seems like a hack; this belong at a
>> slightly higher level.
> 
> A little confused, so what you suggested is to add make the imx_scu_call_rpc()
> becomes the "slightly higher level" API, then in this API, check the message IDs
> to decide whether to return error value, then calls a new API which will have
> the low-level IPC code, the this new API will have a flag passed from imx_scu_call_rpc()
> function, am I right?

No, I mean there should be no loop enumerating svc/func ids: *the caller 
should know* that it's calling a func which doesn't return an error code 
and call a different variant of imx_scu_call_rpc

Maybe add an internal __imx_scu_call_rpc_flags and turn the current 
imx_scu_call_rpc into a wrapper.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
