Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6227159198
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:10:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pYeFo7HoNeERsHnDl8ZbtfU41+jZkTPk/EtuV5ljnxo=; b=k/tdHodT0d9R5eTthdv2EcAyU
	5HHqP/jqu5AsAEA07cH6UYw1wC1RSM1EpbLXa+yp4iVi0SNurQfghEmuLxTvehjxshxUQpX/s15fr
	acI9SJ5t1s3BefaND51wRNszB/3y8a+E38HeqiXveoNWiMBscQRamKjuW0LuVavR68x/Zi8NIVLQG
	G3BemMPgzv30//6h4cpl8hwv5VChgygUzyXCrrBT9bBAX3VN4pQrGtQhb8i21nLOJp3P+oTa5tYXy
	kVf4G8VR3cVmpLgimTdrqxBlKCTBJf3K5qg1HhlU+so+9Wb7IMXIYkD8t3Run0fb4xvUhcyt/aqMD
	p8Fc8Yovg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WF7-0006wG-NK; Tue, 11 Feb 2020 14:10:25 +0000
Received: from mail-db8eur05on2071.outbound.protection.outlook.com
 ([40.107.20.71] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1WEz-0006vX-Nq
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 14:10:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O8SMXDLv95fz+PPZK0PSOhdZoQWu067TbiYIgnBod+F3Uq3PxI0uiK7vCI+Jlv++j+cAyGFlnyuwahxmaOqMOQQDQTbujmhPvRW3rzfAlPY6TqSNzuViTcFWgHQE26Jt/G+LR42Lm96Nzc0R6H60Mpw20BQT8MGSeAsDWVcqULtrO7h7V8OaHNuonNl5cmoE0sFxJm4rNZn2Mq5kH6QwGAASbb7ZIf3oSSrTDpDR/ToPjxu10Fgva/mfWp3HggXp6DVWy5ph3KFSW8xPNIQp/pNEps/bs/om57ZWf8DBgneeFQPZb4/a4VFQvJzqn0vUC5wskqCGWoMJgzLGnqpnRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GnvDDsjv8utb67OlAZqt+PpsW2P4WIynQMWEWfZalzE=;
 b=Q0NKslzo/WzkwNdbWGy/xnev+kN3LbFqlu7ektpbj8/Jps21mznSKShB0BDeTI26kaIz93ObLW6jFGzB2VWnKbXf2nqdwf8hf3qu7iZYqSNuLzpGv8rmcfVLxZAhWvGBsoVskIYvCRY0V212YxjA+OZEgV08Wpjl56XcHx0QS+mmXFBQn0fYVksCWk7uzV8vf5/8lPZ/DNzJC6F7U06UqGIOBRvhtDsu2a3zZ4SphDswjAHUZYvZ2Q5UEDaI4mRRh0C3nclzpoXEnhuKUSUrUCTVtQS1IPoGrmSa4+O95lzXnGnLb/jcovgoyObvoT2hfQecZvRcQ1jNQ9ldvz9PTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GnvDDsjv8utb67OlAZqt+PpsW2P4WIynQMWEWfZalzE=;
 b=g1t2BGTGysXp78pJoR5Ds92d6uQkReD5MBua1LphZqceW/UeefbrGaPN73ZaJzf8JC6Uo6fkhcOhdaIZJarT8cz42oZsmPHae7OGFf8QzGd3v/OAgU3t6d5bzgMonxDYQfbB0oMkYtdk0A0SI33M1qq284ortijuWCVPEPF6NH0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5878.eurprd04.prod.outlook.com (20.179.0.89) by
 AM6PR04MB5734.eurprd04.prod.outlook.com (20.178.87.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.25; Tue, 11 Feb 2020 13:55:24 +0000
Received: from AM6PR04MB5878.eurprd04.prod.outlook.com
 ([fe80::bcef:1c59:7d27:d0e]) by AM6PR04MB5878.eurprd04.prod.outlook.com
 ([fe80::bcef:1c59:7d27:d0e%6]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 13:55:24 +0000
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
To: Robin Murphy <robin.murphy@arm.com>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
 <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
 <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
 <20200210152257.GD25745@shell.armlinux.org.uk>
 <CAOesGMj6B-X1s8-mYqS0N6GJXdKka1MxaNV=33D1H++h7bmXrA@mail.gmail.com>
 <CADRPPNSXPCVQEWXfYOpmGBCXMg2MvSPqDEMeeH_8VhkPHDuR5w@mail.gmail.com>
 <da4dcdc7-c022-db67-cda2-f90f086b729e@nxp.com>
 <aec47903-50e4-c61b-6aec-63e3e9bc9332@arm.com>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <27e0acfc-0782-bd97-a80e-1143f1315891@nxp.com>
Date: Tue, 11 Feb 2020 15:55:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <aec47903-50e4-c61b-6aec-63e3e9bc9332@arm.com>
Content-Language: en-US
X-ClientProxiedBy: LNXP123CA0018.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:d2::30) To AM6PR04MB5878.eurprd04.prod.outlook.com
 (2603:10a6:20b:a2::25)
MIME-Version: 1.0
Received: from [10.171.82.13] (89.37.124.34) by
 LNXP123CA0018.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:d2::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23 via Frontend Transport; Tue, 11 Feb 2020 13:55:22 +0000
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 93f3a63c-5f17-44c6-771e-08d7aefa0a55
X-MS-TrafficTypeDiagnostic: AM6PR04MB5734:|AM6PR04MB5734:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB5734802C02AE5FA70C212F98EC180@AM6PR04MB5734.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0310C78181
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(6029001)(4636009)(396003)(136003)(366004)(39860400002)(376002)(346002)(199004)(189003)(2906002)(16526019)(186003)(54906003)(44832011)(110136005)(2616005)(956004)(81156014)(316002)(81166006)(8936002)(8676002)(16576012)(31686004)(52116002)(478600001)(5660300002)(6486002)(36756003)(4326008)(31696002)(86362001)(66476007)(66946007)(7416002)(66556008)(26005)(53546011)(11634003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5734;
 H:AM6PR04MB5878.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5Va7D8uyZr2ZQJgTL2VClD4gO4c2KFrHu1m+xvDPe0M6crf3CxICXtgoIaQfhNvH3twPRFFRl5J0/6aczZf70ijSXAq7HXt9aq3Imu9HL/A4pTwXhUCdCWhBT6DM9kUordA6nMb2mH0dBm3ZpvJvghJf+b1QOsmTSHgRhQHNxZ3T8my4I8W0dy6Kd25Y0PG/HR0Cnc/48A9qMh2y3OE6r//90YkUYyeweQZfoaJQHbEgYIP3Ov9k3/1Yw9AWw4N0jwp0jRIaRR8x1jHnpx7PERovyePLThHg1Yr/rw5rg9NPTHAXMT27ztTp0imRowNVNYYjbiIW1AzFPJhHaRkV04h6RTyMk5v+D/1vhl45GdIRoeI3hvvpqoGx0kxRzlmDQBrX5VVFt7/PLqO0a1WDRw7ZmCyZ1RdKMBKotluoLtb5WipdVBnh8tG5BbVoMwE+AShGwrllavXyTuQry9gQCfZUS1DFpfIGD0F23s0RCCy2wes7SAgCWi0COumunmBF
X-MS-Exchange-AntiSpam-MessageData: z3kyprvyf8AczE6ke7SbnmLLhNXJRJj8P3k1esD1Ncx7XLa0sMpV2YIppyA9icOqGuCqcbeav67WKS2y3UpQqXPJ4DyN8PPzv1sttXu5RnGzJYNLFiHlLTO00iwe7QJtSykfA63L36t8g/S1e3SpgQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93f3a63c-5f17-44c6-771e-08d7aefa0a55
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2020 13:55:24.0241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uK2KU5Bcm5m/IW271CaIPeNZbycKs3re6viMQG3pe411HHY0F1TEK2M54emdh0Mcmc53Jn7zfSfxESmLYx9TAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5734
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_061017_784388_8E36D273 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 "M.h. Lian" <minghuan.lian@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS4wMi4yMDIwIDE1OjA0LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMjAyMC0wMi0x
MSAxMjoxMyBwbSwgTGF1cmVudGl1IFR1ZG9yIHdyb3RlOgo+IFsuLi5dCj4+PiBUaGlzIGlzIGEg
a25vd24gaXNzdWUgYWJvdXQgRFBBQTIgTUMgYnVzIG5vdCB3b3JraW5nIHdlbGwgd2l0aCBTTU1V
Cj4+PiBiYXNlZCBJTyBtYXBwaW5nLsKgIEFkZGluZyBMYXVyZW50aXUgdG8gdGhlIGNoYWluIHdo
byBoYXMgYmVlbiBsb29raW5nCj4+PiBpbnRvIHRoaXMgaXNzdWUuCj4+Cj4+IFllcywgSSdtIGNs
b3NlbHkgZm9sbG93aW5nIHRoZSBpc3N1ZS4gSSBhY3R1YWxseSBoYXZlIGEgd29ya2Fyb3VuZCAK
Pj4gKGF0dGFjaGVkKSBidXQgaGF2ZW4ndCBzdWJtaXR0ZWQgYXMgaXQgd2lsbCBwcm9iYWJseSBy
YWlzZSBhIGxvdCBvZiAKPj4gZXllYnJvd3MuIEluIHRoZSBtZWFuIHRpbWUgSSdtIGZvbGxvd2lu
ZyBzb21lIGRpc2N1c3Npb25zIFsxXVsyXVszXSBvbiAKPj4gdGhlIGlvbW11IGxpc3Qgd2hpY2gg
c2VlbSB0byB0cnkgdG8gdGFja2xlIHdoYXQgYXBwZWFycyB0byBiZSBhIAo+PiBzaW1pbGFyIGlz
c3VlIGJ1dCB3aXRoIGZyYW1lYnVmZmVycy4gTXkgaG9wZSBpcyB0aGF0IHdlIHdpbGwgYmUgYWJs
ZSAKPj4gdG8gbGV2ZXJhZ2Ugd2hhdGV2ZXIgdHVybnMgb3V0Lgo+IAo+IEluZGVlZCBpdCdzIG1v
cmUgZ2VuZXJhbCB0aGFuIGZyYW1lYnVmZmVycyAtIGluIGZhY3QgdGhlcmUgd2FzIGEgCj4gc3Bl
Y2lmaWMgcmVxdWlyZW1lbnQgZnJvbSB0aGUgSU9SVCBzaWRlIHRvIGFjY29tbW9kYXRlIG5ldHdv
cmsvc3RvcmFnZSAKPiBjb250cm9sbGVycyB3aXRoIGluLW1lbW9yeSBmaXJtd2FyZS9jb25maWd1
cmF0aW9uIGRhdGEvd2hhdGV2ZXIgc2V0IHVwIAo+IGJ5IHRoZSBib290bG9hZGVyIHRoYXQgd2Fu
dCB0byBiZSBoYW5kZWQgb2ZmICdsaXZlJyB0byBMaW51eCBiZWNhdXNlIHRoZSAKPiBvdmVyaGVh
ZCBvZiBzdG9wcGluZyBhbmQgcmVzdGFydGluZyB0aGVtIGlzIGltcHJhY3RpY2FsLiBUaHVzIHRo
aXMgRFBBQTIgCj4gc2V0dXAgaXMgdmVyeSBtdWNoIHdpdGhpbiBzY29wZSBvZiB0aGUgZGVzaXJl
ZCBzb2x1dGlvbiwgc28gcGxlYXNlIGZlZWwgCj4gZnJlZSB0byBqb2luIGluIChwYXJ0aWN1bGFy
bHkgb24gdGhlIERUIHBhcnRzKSA6KQoKV2lsbCBzdXJlIGRvLiBTZWVtcyB0aGF0IHRoZSAybmQg
YXBwcm9hY2ggKHRoZSBvbmUgd2l0aCBsaXN0IG9mIApjb21wYXRpYmxlcyBpbiBhcm0tc21tdSkg
Zml0cyByZWFsbHkgd2VsbCB3aXRoIG91ciBzY2VuYXJpby4gV2lsbCB0aGlzIApiZSB0aGUgd2F5
IHRvIGdvIGZvcndhcmQ/Cgo+IEFzIGZvciByaWdodCBub3csIG5vdGUgdGhhdCB5b3VyIHBhdGNo
IHdvdWxkIG9ubHkgYmUgYSBwYXJ0aWFsIAo+IG1pdGlnYXRpb24gdG8gc2xpZ2h0bHkgcmVkdWNl
IHRoZSBmYXVsdCB3aW5kb3cgYnV0IG5vdCByZW1vdmUgaXQgCj4gZW50aXJlbHkuIFRvIGJlIHJv
YnVzdCB0aGUgU01NVSBkcml2ZXIgKmhhcyogdG8ga25vdyBhYm91dCBsaXZlIHN0cmVhbXMgCj4g
YmVmb3JlIHRoZSBmaXJzdCBhcm1fc21tdV9yZXNldCgpIC0gaGVuY2UgdGhlIG5lZWQgZm9yIGdl
bmVyaWMgZmlybXdhcmUgCj4gYmluZGluZ3MgLSBzbyBkb2luZyBhbnl0aGluZyBmcm9tIHRoZSBN
QyBkcml2ZXIgaXMgYWxyZWFkeSB0b28gbGF0ZSAoYW5kIAo+IGluZGVlZCB0aGUgY3VycmVudCBp
b21tdV9yZXF1ZXN0X2RtX2Zvcl9kZXYoKSBtZWNoYW5pc20gaXMgaXRzZWxmIGEgCj4gbWljcm9j
b3NtIG9mIHRoZSBzYW1lIHByb2JsZW0pLgoKSSB0aGluayB5b3UgbWlnaHQgaGF2ZSBtaXNzZWQg
aW4gdGhlIHBhdGNoIHRoYXQgaXQgcGF1c2VzIHRoZSBmaXJtd2FyZSAKYXQgZWFybHkgYm9vdCwg
aW4gaXRzIGRyaXZlciBpbml0IGFuZCBpdCByZXN1bWVzIGl0IG9ubHkgYWZ0ZXIgCmlvbW11X3Jl
cXVlc3RfZG1fZm9yX2RldigpIGhhcyBjb21wbGV0ZWQuIDopCgotLS0KQmVzdCBSZWdhcmRzLCBM
YXVyZW50aXUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
