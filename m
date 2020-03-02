Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B021175622
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 09:42:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ll2llBdPMtu8B5B3pxAkCUcB0OWyQlVfl+A4uRk1oU8=; b=YHhpIgIb0WkWR9
	Df/Rltw0v+3GV0graQ/NWe7GmxM0qmrCbFeKjldwSWCQuEsz9lfrV9rlFdjFV+k4h5TAnDd7nJjxn
	TZwaagkrmPd1ee8i4P5Q67P/yoAw2KT8cdrsRH/4wColwvOiXrLhSqmv6+jyainFqpxJs1SwjKBjb
	qcDMKIq9ISuITqzsyGMEWDBpmRG1a3rgRrVtNn1fCBuld2LmJD5iZC+ZZHiP30T7MN4CzPU6gSdHK
	xh56G19M0TYa6FopnlEjRqESD5U+HQO5zXrzCX85QcjV86PevIqvHQjljDL5EEe93+7rM33x0C0E/
	hhRWIZhiNifh4kZC5CEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8geF-0000jg-DJ; Mon, 02 Mar 2020 08:41:59 +0000
Received: from mail-am6eur05on2062.outbound.protection.outlook.com
 ([40.107.22.62] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8ge8-0000j3-21
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 08:41:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XZqDuuo7gB01O6obsL7YYZcL9LBcnBt/9JMLkd7MXzDubGXzGhFkxKt0tYAdmNwie/MbRY9LW/xNDLikQZnKwJszzvGjd30xN19/XA3BDj7DqtRUPbbur0MblXht/5loH2prIus91Etj0XvgB9clxLKLtwJDo/FF0YzH3KFlyvg6LEBOb07iWb+UzBluyNy/PJ91JbhjT4htmlqwZkrCzRcncCN2HGbUG3WWRwYoGoFglbK94JqhZqMjKVHRCK3NPmJHWfNardWxeKRy1FTnxdJ1TI10Eyt804OiULfoHAeVWVoPNO3Hh/DMASvle78PSCVlA0hnlQqhdpQJG/hprA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I5ACdaGopONiBvmA8JYS9jezNfrXgF5XQcoM8cnnkrY=;
 b=j0Qi4VkHgltbCEcnVdnlqDtR64YLv6CLlK4/NOW+wT+0SEz276sGULyv9SEozRXlG+apDvJuN7K2/ARUUJpVsyVG2DnjvjNgQvKGPS3qEt3mcinCaTFv8ulF06ytTurk2u9d/FfsFFNYoaY0CipqfKRgu1PTDq0edByMA5ZI82DD/nrKDx/HO9MLwJ0Z14IJVJurUSClotzrJrhDrSa0JPKKaDV+pH1nlhd3KcmM4o5WIpDiG4fCAuZ2zhyEMeUraPErlkLR1BuNNC0LLm8f5tbXzJNxPdmjkGqCdNuVfGj0W/082dl+WUL4+K/iY8W5CqCq0CV6v5D0PjQ0N5mYAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I5ACdaGopONiBvmA8JYS9jezNfrXgF5XQcoM8cnnkrY=;
 b=WB1cvaKOgi+O9VRBeYsBQNXeG5v1xLhxKTClBvZbskVMovOk7M1UJupn6Ct/xt9Gi6+tEYqko9brOJgJasBxM6NwHI0OI2jWHAbKgrpaKNu/JVUjqhBM9s/ddXUwArsOwXGhP/NEOGPghnb7eanSkjCjROU2+apmDJpHDQKd8z4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3786.eurprd04.prod.outlook.com (52.134.71.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Mon, 2 Mar 2020 08:26:14 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 08:26:14 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH V2] thermal: imx_thermal: Use __maybe_unused instead of
 CONFIG_PM_SLEEP
Thread-Topic: [PATCH V2] thermal: imx_thermal: Use __maybe_unused instead of
 CONFIG_PM_SLEEP
Thread-Index: AQHV8GgP/M8Ol/PK50WikUZ0uCvNYqg08kkAgAAFMJA=
Date: Mon, 2 Mar 2020 08:26:14 +0000
Message-ID: <DB3PR0402MB3916DC28A21BE0B9B8BFFC25F5E70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583135410-7496-1-git-send-email-Anson.Huang@nxp.com>
 <20200302080700.ubnboqklhbva7bas@pengutronix.de>
In-Reply-To: <20200302080700.ubnboqklhbva7bas@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4c595519-b6f0-4511-c5ab-08d7be835f2e
x-ms-traffictypediagnostic: DB3PR0402MB3786:|DB3PR0402MB3786:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB378604E6D3D981CE6F836E37F5E70@DB3PR0402MB3786.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(39860400002)(136003)(346002)(396003)(199004)(189003)(7416002)(71200400001)(4326008)(5660300002)(86362001)(76116006)(66946007)(66476007)(66556008)(64756008)(478600001)(8676002)(316002)(66446008)(81156014)(81166006)(54906003)(6916009)(55016002)(9686003)(2906002)(8936002)(6506007)(26005)(52536014)(4744005)(186003)(33656002)(44832011)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3786;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oTmnKuzFuwxyLBVDL6G3ejZz0WGu7nTc80oVRdJnoMIBAAM+yEWKm9nvml1mYA4O1C2CeLbXjhMxgjNgXl9kCev6bAkgkC6iPf+y9oi9vRZ8RgoarjauzfPK3RRYDS4npTF5vwN+j1QUZlrVVt554IFayGYU6RCC989fIDtbmnopTzCzOuYX1Ucw2sE9RL6avpr7gOsn9U24rE7zS4/AtKhhU0HFaVr41gyKWYJgAZSv9pfpdiKmSZ1veR9ZqEV6J+b5jQAi1u6sEK7olnNiHR0D99ukk8WFGaIMGsY3USTmwtlabzak5+GxCFR3LJ6T7vLKQlrA4RE2TdJ2p3uedj+7sc6KJfnmALyO+Ei/jtNc4PNQDeThOlCp4meBvYfdq4XnewIg1Q+pugKsWoMLyUfVpdUWqrMgFD0QOg56EOBKhWBzgB5jqWkROTOjdGVS
x-ms-exchange-antispam-messagedata: zM95ygmJhx3kQZNrdWtQkTsNyNcYVafYIvb80zP01qvp+dC1CfwnjDkckfxQxgfePqeitpuniOWO+BTbuOZF4iE8mY/T75voQJaXlAs/UQ2e1bDblILfTpH9U+IjfhwBux6YuBxz8EHL1lDY3cLcKA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c595519-b6f0-4511-c5ab-08d7be835f2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 08:26:14.1819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QeaFaIicIQnmJgt7/Th0Rkp7akHLhV+2bWzMJbCfGAxsb9O630qtHy9zJikihbMPeda7iqBlgg7i93IP9XJgGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3786
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_004152_185976_93204891 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.62 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFV3ZQ0KDQoNCj4gU3ViamVjdDogUmU6IFtQQVRDSCBWMl0gdGhlcm1hbDogaW14X3RoZXJt
YWw6IFVzZSBfX21heWJlX3VudXNlZCBpbnN0ZWFkDQo+IG9mIENPTkZJR19QTV9TTEVFUA0KPiAN
Cj4gT24gTW9uLCBNYXIgMDIsIDIwMjAgYXQgMDM6NTA6MTBQTSArMDgwMCwgQW5zb24gSHVhbmcg
d3JvdGU6DQo+ID4gVXNlIF9fbWF5YmVfdW51c2VkIGZvciBwb3dlciBtYW5hZ2VtZW50IHJlbGF0
ZWQgZnVuY3Rpb25zIGluc3RlYWQgb2YNCj4gPiAjaWYgQ09ORklHX1BNX1NMRUVQIHRvIHNpbXBs
aWZ5IHRoZSBjb2RlLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5zb24gSHVhbmcgPEFuc29u
Lkh1YW5nQG54cC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+DQo+IA0KPiBJTUhPIHRyYW5zbGF0aW5nIG15ICJv
dGhlcndpc2UgbG9va3MgZmluZSIgaW4gYSAiUmV2aWV3ZWQtYnkiIGlzIGEgYml0IGJvbGQuDQo+
IFBsZWFzZSBkb24ndCBhc3N1bWUgdGhpcy4NCg0KT0ssIHdpbGwga2VlcCBpdCBpbiBtaW5kIG5l
eHQgdGltZSwgdGhhbmtzLg0KDQpBbnNvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
