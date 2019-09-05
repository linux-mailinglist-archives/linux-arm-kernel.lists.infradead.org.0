Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8E3AA530
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+08n3LYxKBohOc68+QfkZXsQQC83PCDNjZ1JLHwZxPk=; b=qHIkb5jeiqsvsK
	++9/r2T41aYNrzDiD64afmVvTRCKGxsGdcZX8HXtXhSd5FRaQo1lkdBW3RPGUaV61GtVrlTcfXSLn
	YEecIHKBhhZzkH+bZhgIQfY2IiyzwTiEnUsCIoR1/7AKHCvHEqWI7jCqCG3Z64K19ehIyblMXgt9f
	Rwc4vOMWtl5ZYz8L9CnYI4mMxBMyxwuhFacwJH1i1SAcNmhZC5TOswJ8+/EQVEJssqF7MlqygFtwX
	lcCgqY9io2qfGkBkJ7Wq41dz10k0gfsT+3w/kA5Kkn8IVyaPghvjsc/jBEyfVbnZJ1ia99CMqt8WS
	cvlj7Kjqh++abj43ne/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5sHc-0004Il-A9; Thu, 05 Sep 2019 13:58:44 +0000
Received: from mail-vi1eur04on0708.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::708]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5sHR-0004Hh-AZ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:58:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C5uaPA2gs4WQ1xXVtTvXgYR49gkKPbz/cB21D12depCR1ip7Bm0OqvFU3TPviCPpTc5dWV1hYo6k0CbnKe0Bif40rJuRdDDyWR+oNgeiCkmr3fse1AmXClVklAf8TaE3CiVlwlt9AsCG26zg8UQqDHhy7fBtIJqaKR3ZzxKlYh0733DEM/SLZL2fkkRR6SftGS51oXao1vdsloM9oIIJ7tcy/5JPGNEyY5RtmWE4aLpQuZ1WExaUqJbvuLj0kEcSt6MB4x/A0VGhAItg1ZSssANAubSlgYKNe93XHU6uE9U1nNI78mqeO5+axmEQnNqLqztguVnyHh8+XjkpZRikbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=utsaBLCJganQV5SdQABLEt8dkWnVAQMfeaiOyy2TwNw=;
 b=eR40THKTGni2WVaXwFj5RV6zXba+DCmDPdgCS/jBhPcyTj4qAv+2U21gBVDdRd/ygbW+1xliG6qieAv1QI0kKPM/8N13dskX1huMvY4+yqZ5VDl+IUdZC1LKgTPgQquX1kv9x7vklO/ip2g8iRAUTQKDt9do9ckKlwKTdxF7FdAPHGszeYP9DLwlcFc9aR49GbCwfDDZf5rXJVKzhhDHq1B1o+snyRpLaBvtk2ihLOhHADLbb8uCAZ80BjtAtoIq0vuoUccZDoFPv5AfkvdYRQdLrAbjCD3McpCZrezL8RtwTooqjfgsU/bwJ0nxn9nn8+INz9LmDYejquOTmPjnYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=utsaBLCJganQV5SdQABLEt8dkWnVAQMfeaiOyy2TwNw=;
 b=esarSxK0SCESZ7uHnv2BHAUIcXFADsghNn7tEkp75KWzZ7bAihgdFpwfHYFH6Q0ZehKCStOHpAJqopVWWeeoVPMdMJaj/FzU1diAt5TEohf9KDa+HUebAwfPrvlaJoT6emEvMcOBiRdvbBwtBXZ6uxd7xS4Z3B8c4ilukWo01c0=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3404.eurprd02.prod.outlook.com (52.134.68.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Thu, 5 Sep 2019 13:58:25 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::e12b:afcb:73e1:5d09]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::e12b:afcb:73e1:5d09%7]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 13:58:24 +0000
From: Peter Rosin <peda@axentia.se>
To: Wolfram Sang <wsa@the-dreams.de>, Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 1/1] i2c: qcom-geni: Provide an option to disable DMA
 processing
Thread-Topic: [PATCH v3 1/1] i2c: qcom-geni: Provide an option to disable DMA
 processing
Thread-Index: AQHVY9PiTM9rqMwvEUyL0vDv3ajYn6cdGeCAgAACawA=
Date: Thu, 5 Sep 2019 13:58:24 +0000
Message-ID: <3458ed2a-ae49-b46b-3e89-ce039a2749b4@axentia.se>
References: <20190905102247.27583-1-lee.jones@linaro.org>
 <20190905134941.GG1157@kunai>
In-Reply-To: <20190905134941.GG1157@kunai>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR06CA0162.eurprd06.prod.outlook.com
 (2603:10a6:7:16::49) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eea0af23-5e3b-426a-4af0-08d732091eaa
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB3PR0202MB3404; 
x-ms-traffictypediagnostic: DB3PR0202MB3404:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0202MB3404D99EBF971483D51B7B0BBCBB0@DB3PR0202MB3404.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(396003)(136003)(42606007)(39830400003)(366004)(189003)(199004)(58126008)(65806001)(65956001)(54906003)(2616005)(316002)(11346002)(4326008)(53936002)(110136005)(476003)(66066001)(71190400001)(71200400001)(8936002)(446003)(99286004)(52116002)(76176011)(6512007)(6436002)(5660300002)(6246003)(6306002)(25786009)(31696002)(7736002)(256004)(6116002)(508600001)(14454004)(6486002)(102836004)(229853002)(26005)(86362001)(36756003)(66446008)(64756008)(66556008)(66476007)(66946007)(7416002)(186003)(486006)(81166006)(31686004)(81156014)(2906002)(966005)(8676002)(305945005)(386003)(6506007)(53546011)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3404;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xDOuuvqxrS9glJKYa7/86AFZprjNL2TjHTSPqfDFOix3FIfXyaq3IAgmLYME7MuIVBL+SFX9S4XGaHHBttJuaeWICuur6/a72Wq9tU4XF5D8L5c5nuyZLQ69GzV4onREM59cH82gu2UU/H4trcbXzpgbUQc5+5RyYn7Rad8x4NT9w+fYAwPfO0HA0c/W7+EoBFDbYkSUWjq6zI48I5L5Ix2VM8BjTNs8hL2Dkqwva8VzwQyyFlOUeNMzOCjF6O/t/kZBsa4OlwaOTcWAVx5KtrDD73+OW2cUegf91nDLAUqhUKOEpdceaoqTAImVNKBLN+T0hDuHTR8nvonJUdGegeW1A86b9xEsF2yarsIOR6zCoyGcBhJphBf7XjRC6KfsuUpZpq15zF7H2KmtKJPRFfPRVBvfsZQWDwpb2Ph89jk=
x-ms-exchange-transport-forked: True
Content-ID: <813F8E51C3E2B141AF9AC8B67D62FE76@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: eea0af23-5e3b-426a-4af0-08d732091eaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 13:58:24.8524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jfgVotAS0pgobuVIHFfQC0PWUnx09cwdMJa6OY+7pSKyKaiEHOrbBxzNOgJ5a7JH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3404
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_065833_579920_BBA37FA0 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:708 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "agross@kernel.org" <agross@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "alokc@codeaurora.org" <alokc@codeaurora.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-05 15:49, Wolfram Sang wrote:
> Hi Lee,
> 
> I understand you are in a hurry, but please double check before
> sending...

Linus indicated that an rc8 is coming up, which should provide an extra week.
https://lwn.net/Articles/798152/

> On Thu, Sep 05, 2019 at 11:22:47AM +0100, Lee Jones wrote:
>> We have a production-level laptop (Lenovo Yoga C630) which is exhibiting
>> a rather horrific bug.  When I2C HID devices are being scanned for at
>> boot-time the QCom Geni based I2C (Serial Engine) attempts to use DMA.
>> When it does, the laptop reboots and the user never sees the OS.
>>
>> The beautiful thing about this approach is that, *if* the Geni SE DMA
>> ever starts working, we can remove the C code and any old properties
>> left in older DTs just become NOOP.  Older kernels with newer DTs (less
>> of a priority) *still* will not work - but they do not work now anyway.
> 
> ... becasue this paragraph doesn't fit anymore. Needs to be reworded.
> 
>>
>> Fixes: 8bc529b25354 ("soc: qcom: geni: Add support for ACPI")
> 
> As said in the other thread, I don't get it, but this is not a show
> stopper for me.

WAG: because ACPI made some driver load at all, and when it
did it something started happening which crashed some machines.

Cheers,
Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
