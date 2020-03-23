Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C023C19001E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 22:16:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/2VRUMEnnHcrL0YuUap37pMOzRIAzChPPrHH1XPOSQ=; b=sj0ptGnPxnM6g5
	fes2O7LGipDuQ5bdCvLlVHQiz+NYrkmOmCFqth9PmLy+iU3nnrxFqXNon8dRys7UQcUj8Cg9fqxdD
	/9S2vNUiUVFyfxSgkdce9fhoZWonBmxrHTcDWFqWyk/WXsPnJX0M8DfxFk6E37Ajz7tjJP/yeeotl
	m9m1suFb5rmX9NfKY3RURSpYFtMcy2BrlXDxh4+7V9/xQrftapcFbF24GFc4oi2e7VEZLhrT5xw+t
	IZZMFGcLvKLv/CwK6L7QrUJb0SnTXfIbUNM4r3E73XJb0Wts7iUdxpSI0iaHq+KknEWjfgiOujPKQ
	FwDHi2HZ4GI5yuyAMZUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGUQP-0007AP-75; Mon, 23 Mar 2020 21:15:57 +0000
Received: from mail-dm6nam10on2088.outbound.protection.outlook.com
 ([40.107.93.88] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGUQC-0007A2-Dk
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 21:15:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=npmdDcM5O5OiIY9J+zEySiHXVRKBPY2yAuveNqejO4hQEjXU5xNrX5mbaOq/2Uw0cxVBxDxE+q/I/4YiA/46+LiCx7v1dXvl965+/p8hzNbe3zgNELZtMDDiZT2StZwVNNqla6Kr3L5BPdFWr3dMw+Ch2n8r/urAB+Wj+1A35yBZnzDkhAwzzRc62cAvHDS29YKVi+v2h/iDppSFLq0MyzN3HMBSco/x1DFVmQshOQm3ang4++NtzbgNqSIeJpjzT8ov1y3JnI2XJTmA4ES15M58jWcUGTF7hbo8bMn01w4uFekj1wyk3xbBkBgqOpOg75uJR+OA2QuyFYQP038V/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HwFmJD2TsBIbXc0P9bHNcQ9o+XCdtiKoZS7HI8u3GFI=;
 b=bpZd3Uky7dmwrKQvSWRXPyiaLwSQ2Js2Y3ezlFRDq++i0Hir3bstB/nyX7todXH/cdkg7oXSgAXjCIytujbdSw1aiBsxjBLRDR1n+Lq2hKLn2IdarOcIgyCOj8LDxe37syJJHxYioLHO072gAtu6lTTzAZU7x3MTetyWjaeoCJtXOrXwnrxffQy0p+d0Pu3mw59HHWLGSjgjPsLxsIMKX8RmS1zPXCNxIKePL+ePnMAiHWQPPUFS0KI4ajl7i5CbKXhqt+49eXNdx5zIZ0XNZtfKAdwqtPdgwNR9DDUwWwJbbVndDagOQ8ofNqbsuw3UItM3IE2u0C7G2PinJD7oNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HwFmJD2TsBIbXc0P9bHNcQ9o+XCdtiKoZS7HI8u3GFI=;
 b=BmLo16VlDILBRPF6X/AzPvyDn2Zcind+HJDeL8N6a2muTbvj3JgjyEsWmrQ9sGngtDQzY7QrRuztHZsSUkGe+AhGaMEKphhFs78aGWpehyk4C0Fcq7WUiVhDkChFk/B49Y/Grp4cSisio8uZk7BOlYl95nDcHYnjEpt1u1K8f+s=
Received: from BYAPR02MB5992.namprd02.prod.outlook.com (2603:10b6:a03:127::16)
 by BYAPR02MB4423.namprd02.prod.outlook.com (2603:10b6:a03:5f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Mon, 23 Mar
 2020 21:15:41 +0000
Received: from BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::653c:fb1e:61b9:8f00]) by BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::653c:fb1e:61b9:8f00%6]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 21:15:41 +0000
From: Jolly Shah <JOLLYS@xilinx.com>
To: Jolly Shah <JOLLYS@xilinx.com>, "olof@lixom.net" <olof@lixom.net>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Michal Simek <michals@xilinx.com>, "arm@kernel.org"
 <arm@kernel.org>, "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Subject: Re: [PATCH v2 0/4] drivers: clk: zynqmp: minor bux fixes for zynqmp
 clock driver
Thread-Topic: [PATCH v2 0/4] drivers: clk: zynqmp: minor bux fixes for zynqmp
 clock driver
Thread-Index: AQHV8Nyr7p4Ho3UidEurpbmFeO/bxahWWVYA
Date: Mon, 23 Mar 2020 21:15:41 +0000
Message-ID: <4DC8258A-4692-4FFE-BF63-10734516681D@xilinx.com>
References: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
In-Reply-To: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.1a.0.190609
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=JOLLYS@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4f7cbf6a-ad9f-4c7a-592d-08d7cf6f57b8
x-ms-traffictypediagnostic: BYAPR02MB4423:|BYAPR02MB4423:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB4423CDDBE68112497455D564B8F00@BYAPR02MB4423.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(54906003)(26005)(2616005)(8676002)(36756003)(76116006)(81166006)(81156014)(478600001)(33656002)(5660300002)(6486002)(66446008)(66556008)(64756008)(66946007)(66476007)(86362001)(6506007)(4744005)(71200400001)(8936002)(110136005)(186003)(4326008)(2906002)(6512007)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4423;
 H:BYAPR02MB5992.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jpmZJZS/UYwdeB5mP+kfq3AZpnnkP+ihm6fg94zfnxs2g4vrXbSQKhP8ACY24AJhpfOlhejIlUwYiDMq5QP7hVg7GzX8hmLjFqRn/a6+AQv3KE80UxhR9dMxCc1ssLhyBZoaai/aSlM8yBE/u3w3L1FAPscqIRrg9NJr1UV+qrrQUdzIiy5L2xgabG7nNJ/5Ho5/sxcVq9MWu6G/5EidPZJ8wVkeRgpTh6zSbNMkVbndQ/TH8Qnmup+tVFr9gwDEq0P3Ew89qNngHxTGhA37B5Kk/gIXpYd0eaAwhUZGaTav4MiW6W39S5AX1Uz7n56zVeZmdw4K8Ka3fC+kk3eDacf+Jo1W4QI8Pp+Rp6bGcfkW9HIsdjY5YB42EjACkQycyJJEOZ1wG7QEFzuedsh2aW3aeLeZ+h01IvflZ/0CaHN+YHHLjLU+40+bacrBGIyZ
x-ms-exchange-antispam-messagedata: SdV1jtPAW9qKPntV2Yin+O6biXk6WfNxSbBPJ/MShk+iOFpYOkH4jkMFGp9AUH+3T0lcFbgnehpMZkQYSqxz4+GP62ogCT4jsxt6l8Ey11f6z54tuZTKiQ15Q5uFFHjYMh0sHDLITS16jA4OrV2DXA==
Content-ID: <8E87FDE0CECFF44AB43FA95582E298CB@namprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f7cbf6a-ad9f-4c7a-592d-08d7cf6f57b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 21:15:41.4704 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YhYP7fa+m+3nz9E648zR7R2i1BUXQLTUO3rolVun9pDJseEV1389S8hrmivtBZOOFxZrJE1RB/jkMY3Bxv4NYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4423
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_141544_466857_7B2E11AF 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.88 listed in wl.mailspike.net]
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
Cc: Rajan Vaja <RAJANV@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QSBnZW50bGUgcmVtaW5kZXIgZm9yIHJldmlldy4NCg0KVGhhbmtzLA0KSm9sbHkgU2hhaA0KDQrv
u79PbiAzLzIvMjAsIDE6NTEgUE0sICJKb2xseSBTaGFoIiA8am9sbHkuc2hhaEB4aWxpbnguY29t
PiB3cm90ZToNCg0KICAgIFRoaXMgcGF0Y2hzZXQgaW5jbHVkZXMgYmVsb3cgZml4ZXMgZm9yIGNs
b2NrIGRyaXZlcg0KICAgIDE+IEZpeCBEaXZpZGVyMiBjYWxjdWxhdGlvbg0KICAgIDI+IE1lbW9y
eSBsZWFrIGluIGNsb2NrIHJlZ2lzdHJhdGlvbg0KICAgIDM+IEZpeCBpbnZhbGlkIG5hbWUgcXVl
cmllcw0KICAgIDQ+IExpbWl0IGJlc3RkaXYgd2l0aCBtYXhkaXYNCiAgICANCiAgICB2MjoNCiAg
ICAgLSBVcGRhdGVkIHN1YmplY3QgZm9yIGNvdmVyIGxldHRlciBhbmQgcGF0Y2hlcyANCiAgICAg
ICB0byBhZGQgcHJlZml4DQogICAgDQogICAgUXVhbnlhbmcgV2FuZyAoMSk6DQogICAgICBkcml2
ZXJzOiBjbGs6IHp5bnFtcDogZml4IG1lbW9yeSBsZWFrIGluIHp5bnFtcF9yZWdpc3Rlcl9jbG9j
a3MNCiAgICANCiAgICBSYWphbiBWYWphICgyKToNCiAgICAgIGRyaXZlcnM6IGNsazogenlucW1w
OiBMaW1pdCBiZXN0ZGl2IHdpdGggbWF4ZGl2DQogICAgICBkcml2ZXJzOiBjbGs6IHp5bnFtcDog
Rml4IGludmFsaWQgY2xvY2sgbmFtZSBxdWVyaWVzDQogICAgDQogICAgVGVqYXMgUGF0ZWwgKDEp
Og0KICAgICAgZHJpdmVyczogY2xrOiB6eW5xbXA6IEZpeCBkaXZpZGVyMiBjYWxjdWxhdGlvbg0K
ICAgIA0KICAgICBkcml2ZXJzL2Nsay96eW5xbXAvY2xrYy5jICAgIHwgMjAgKysrKysrKysrKysr
KystLS0tLS0NCiAgICAgZHJpdmVycy9jbGsvenlucW1wL2RpdmlkZXIuYyB8IDE5ICsrKysrKysr
KysrKysrLS0tLS0NCiAgICAgMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAxMSBk
ZWxldGlvbnMoLSkNCiAgICANCiAgICAtLSANCiAgICAyLjcuNA0KICAgIA0KICAgIA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
