Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7B9158724
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 01:57:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Awt0DZoD1k4STBNzilwX19ZXPdhxbBeeC66wdP/BE1o=; b=ZBHDSTivlJWObMuMPt+rdkdRp
	1sJiedYC5Gas51vZdT+H2UxmuT/0kMq/PMUP2Nf0XLKdOtBeOgsQ5MG6/yifxjV0turkC7iixdxm7
	fuLqKIQOZsN+uxN7PmhvGfOwlty6EmrW9+pT1+iE/7dM0cD7GyqYL45pBMflScC7ElleRh3z2Vo1z
	Vahqn1bzNS+6nqZAGu2sGT0h23zBxqZC/HFsDX54QLLeuFMZG1J4g6JAtxCj5I9YViayhvlr7I8wU
	vxJTkxrp8JfroMrtzezwE1K3/Rt4zaMWDvc4iWIOfpsDHA9/56y50FUEDIDWJn8KHZfPZvJsYkWNT
	e83YK4qNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Jro-0007pq-Ef; Tue, 11 Feb 2020 00:57:32 +0000
Received: from mail-co1nam11on2069.outbound.protection.outlook.com
 ([40.107.220.69] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Jre-0007p8-HI
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 00:57:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CeKEe09MBLUNFQdfCgI1peuXYe9sL2oKUMj9v2JY2MsvJQPU2km21ErrmAFGzryxOvY7lQxP1ijNqn/XIxzLVQKbusDBPzvab6e2GN77CZVtrwtwPjumKzwbCwy8scWoqgQNdQyBBKPvcIzuFsIqjF9OBlIYfkE4+URESTvFI3pUBHYOhOedKWQDx8YyChutU19Zy0vRX/rVLClJ6i/tyjG/9R/Fu2QdZGi/LRtXKz/RAhqp5UM6/OPYGHjdG1qi4kOfvBG9RgyCFglPC5gHBBMVAejDVbtSEDDXjXEb8X1bSI+PAg89Krx/finsJrsooafzz/SKUOlSjTGC5wfGpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FaEm4nah8+Cct0kboRh+hxM4iyqnk5afGcvtdxBu7pk=;
 b=ZFAcmVOW40n77JytALXJYNJivV7uyVVfxVMk9Sijon8A4kbhZTglMKjYgt2TQDbAJFeoU36ZsdGWL/rCYzlLlaNEFRQiuN2ztc3nvLaxiXL2SLuI1IAuhudX+u7j6iQxkZ9CKGYsoH5e+Jm4+hyugfVhjrqoDjcrsQPMyb1ORpH3nTCdfKwfwb9Vz24N4L6dom3aSysuK78uEpc413tC9ibyrMg+y/ZKekDpmNd9H2DDIFKFghNtTEpULXAK7rBW6Dq+PA8UG58zgXT8FLg8QM/0fQyZRgpb2jaEKgyVdho0f3JziV7+fxxxlgsIvOvDMWuu1F5Wi44XAw+HbWUWdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FaEm4nah8+Cct0kboRh+hxM4iyqnk5afGcvtdxBu7pk=;
 b=e8ipBCFy4W7xQs5D4hMXrC9tumF2qVn6O0o22WQqixHu7Qw2rLZ9g4+bh68eXXh0qxG3F4FycfwztPicny0Ui+S1pwOYrL2AWzadh89wFDZYQsCVoCVQZ5QxEndr+P6yvalDt/Cyge2KX6QZsaWFYlAmXafBbnCv80HEMUE4Wdk=
Received: from BN7PR02CA0007.namprd02.prod.outlook.com (2603:10b6:408:20::20)
 by SN6PR02MB5182.namprd02.prod.outlook.com (2603:10b6:805:69::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.25; Tue, 11 Feb
 2020 00:57:18 +0000
Received: from BL2NAM02FT050.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by BN7PR02CA0007.outlook.office365.com
 (2603:10b6:408:20::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21 via Frontend
 Transport; Tue, 11 Feb 2020 00:57:18 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT050.mail.protection.outlook.com (10.152.77.101) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2707.21
 via Frontend Transport; Tue, 11 Feb 2020 00:57:18 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j1Jra-0004pY-0g; Mon, 10 Feb 2020 16:57:18 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j1JrU-00065o-Td; Mon, 10 Feb 2020 16:57:12 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01B0v1mi025411; 
 Mon, 10 Feb 2020 16:57:02 -0800
Received: from [172.19.0.52] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jollys@xilinx.com>)
 id 1j1JrJ-00062m-Sr; Mon, 10 Feb 2020 16:57:01 -0800
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
To: "'Greg KH'" <gregkh@linuxfoundation.org>, Rajan Vaja <RAJANV@xilinx.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
 <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
 <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
 <20200124060339.GB2906795@kroah.com>
 <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
 <20200128062814.GA2097606@kroah.com>
 <4EF659A1-2844-46B9-9ED6-5A6A20401D9D@xilinx.com>
 <20200131061038.GA2180358@kroah.com>
 <BYAPR02MB40559D6B62C4532C0EAD0281B7070@BYAPR02MB4055.namprd02.prod.outlook.com>
 <20200131093646.GA2271937@kroah.com>
From: Jolly Shah <jolly.shah@xilinx.com>
Message-ID: <3ef20e9d-052f-665c-7fc8-69a1f8bc9bd2@xilinx.com>
Date: Mon, 10 Feb 2020 16:57:01 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200131093646.GA2271937@kroah.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(39860400002)(199004)(189003)(8936002)(478600001)(26005)(6636002)(36756003)(8676002)(5660300002)(186003)(356004)(81166006)(81156014)(336012)(31686004)(70206006)(4326008)(31696002)(53546011)(426003)(9786002)(70586007)(7416002)(44832011)(54906003)(110136005)(316002)(2906002)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5182; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 40318959-db02-4202-a578-08d7ae8d581c
X-MS-TrafficTypeDiagnostic: SN6PR02MB5182:
X-Microsoft-Antispam-PRVS: <SN6PR02MB5182998F0D67A6F48188E612B8180@SN6PR02MB5182.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0310C78181
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yo7aBNBSxpuJBeViig67a8Z8qQ5z1+9kS+tGgPtGbfZ4Uy3kzyXow2zOOiKkKRwdgCZy27dQzxxjRJLHM3FBG9MFahf/1WdFgrzDNnIduEm080s9u47vdTzzsGDMf4fnYsuhWCgL3svZj+FD6aMCHQsAgiWH6zAj2zV4CoOs8+jT+QGtwSlx/rvRh5GTLFUo5mrIA1vJ09ceO5thlS5bLBC5AdKVdCMkMMfsQ4XzBP0A7ry3mZMjsaS+LtAboCOTtev1woyldhhCDC5+ZAZADk0IVSBZGsP5MH4hQg0RtCZTyDMYhOA1D5eI5htWhGtB7Vt4/4ojG3adBP+gCSilb/6lt6gUI9JLQyvzxczQ1C2JKlPSJxdeEvAfyDLN1gyfhakzXsPBru3V21CIi8yf8/+7mNeJO6cLwe92+lH3p1ne1eHxSW9yH9Kx2MocwTw62/ZJcocr7li00+/7rOcSPdZLg73EG7/DuwkX5jUPdjBAtfgy9/4iq/XSEixxmoVGuDNND3xPJ7Q5tCARelW1DQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2020 00:57:18.5716 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 40318959-db02-4202-a578-08d7ae8d581c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_165722_577735_9C6A7C49 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.69 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3JlZywKCiA+IC0tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0KID4gRnJvbTogJ0dyZWcg
S2gnIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KID4gU2VudDogIEZyaWRheSwgSmFudWFy
eSAzMSwgMjAyMCAxOjM2QU0KID4gVG86IFJhamFuIFZhamEgPFJBSkFOVkB4aWxpbnguY29tPgog
PiBDYzogSm9sbHkgU2hhaCA8Sk9MTFlTQHhpbGlueC5jb20+LCBBcmQgQmllc2hldXZlbCAKPGFy
ZC5iaWVzaGV1dmVsQGxpbmFyby5vcmc+LCBNaW5nbyA8bWluZ29Aa2VybmVsLm9yZz4sIE1hdHQg
CjxtYXR0QGNvZGVibHVlcHJpbnQuY28udWs+LCBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xsYUBh
cm0uY29tPiwgCkhrYWxsd2VpdDEgPGhrYWxsd2VpdDFAZ21haWwuY29tPiwgS2Vlc2Nvb2sgPGtl
ZXNjb29rQGNocm9taXVtLm9yZz4sIApEbWl0cnkgVG9yb2tob3YgPGRtaXRyeS50b3Jva2hvdkBn
bWFpbC5jb20+LCBNaWNoYWwgU2ltZWsgCjxtaWNoYWxzQHhpbGlueC5jb20+LCBMaW51eC1hcm0t
a2VybmVsIAo8bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnPiwgTGludXgta2Vy
bmVsIAo8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4KID4gU3ViamVjdDogUmU6IFtQQVRD
SCB2MiAxLzRdIGZpcm13YXJlOiB4aWxpbng6IEFkZCBzeXNmcyBpbnRlcmZhY2UKID4KPiBPbiBG
cmksIEphbiAzMSwgMjAyMCBhdCAwOTowNToxNUFNICswMDAwLCBSYWphbiBWYWphIHdyb3RlOgo+
PiBIaSBHcmVnLAo+Pgo+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+IEZyb206IEdy
ZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+Pj4gU2VudDogMzEgSmFudWFyeSAy
MDIwIDExOjQxIEFNCj4+PiBUbzogSm9sbHkgU2hhaCA8Sk9MTFlTQHhpbGlueC5jb20+Cj4+PiBD
YzogYXJkLmJpZXNoZXV2ZWxAbGluYXJvLm9yZzsgbWluZ29Aa2VybmVsLm9yZzsgbWF0dEBjb2Rl
Ymx1ZXByaW50LmNvLnVrOwo+Pj4gc3VkZWVwLmhvbGxhQGFybS5jb207IGhrYWxsd2VpdDFAZ21h
aWwuY29tOyBrZWVzY29va0BjaHJvbWl1bS5vcmc7Cj4+PiBkbWl0cnkudG9yb2tob3ZAZ21haWwu
Y29tOyBNaWNoYWwgU2ltZWsgPG1pY2hhbHNAeGlsaW54LmNvbT47IFJhamFuIFZhamEKPj4+IDxS
QUpBTlZAeGlsaW54LmNvbT47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsg
bGludXgtCj4+PiBrZXJuZWxAdmdlci5rZXJuZWwub3JnCj4+PiBTdWJqZWN0OiBSZTogW1BBVENI
IHYyIDEvNF0gZmlybXdhcmU6IHhpbGlueDogQWRkIHN5c2ZzIGludGVyZmFjZQo+Pj4KPj4+IEVY
VEVSTkFMIEVNQUlMCj4+Pgo+Pj4gT24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgMTE6NTk6MDNQTSAr
MDAwMCwgSm9sbHkgU2hhaCB3cm90ZToKPj4+PiBIaSBHcmVnLAo+Pj4+Cj4+Pj4g77u/T24gMS8y
Ny8yMCwgMTA6MjggUE0sICJsaW51eC1rZXJuZWwtb3duZXJAdmdlci5rZXJuZWwub3JnIG9uIGJl
aGFsZiBvZiBHcmVnCj4+PiBLSCIgPGxpbnV4LWtlcm5lbC1vd25lckB2Z2VyLmtlcm5lbC5vcmcg
b24gYmVoYWxmIG9mCj4+PiBncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4+Pj4K
Pj4+PiAgICAgIE9uIE1vbiwgSmFuIDI3LCAyMDIwIGF0IDExOjAxOjI3UE0gKzAwMDAsIEpvbGx5
IFNoYWggd3JvdGU6Cj4+Pj4gICAgICA+ICAgICA+ID4gPiArICAgICByZXQgPSBrc3RydG9sKHRv
aywgMTYsICZ2YWx1ZSk7Cj4+Pj4gICAgICA+ICAgICA+ID4gPiArICAgICBpZiAocmV0KSB7Cj4+
Pj4gICAgICA+ICAgICA+ID4gPiArICAgICAgICAgICAgIHJldCA9IC1FRkFVTFQ7Cj4+Pj4gICAg
ICA+ICAgICA+ID4gPiArICAgICAgICAgICAgIGdvdG8gZXJyOwo+Pj4+ICAgICAgPiAgICAgPiA+
ID4gKyAgICAgfQo+Pj4+ICAgICAgPiAgICAgPiA+ID4gKwo+Pj4+ICAgICAgPiAgICAgPiA+ID4g
KyAgICAgcmV0ID0gZWVtaV9vcHMtPmlvY3RsKDAsIHJlYWRfaW9jdGwsIHJlZywgMCwgcmV0X3Bh
eWxvYWQpOwo+Pj4+ICAgICAgPiAgICAgPiA+Cj4+Pj4gICAgICA+ICAgICA+ID4gVGhpcyBmZWVs
cyAidHJpY2t5IiwgaWYgeW91IHRpZSB0aGlzIHRvIHRoZSBkZXZpY2UgeW91IGhhdmUgeW91ciBk
cml2ZXIKPj4+PiAgICAgID4gICAgID4gPiBib3VuZCB0bywgd2lsbCB0aGlzIG1ha2UgaXQgZWFz
aWVyIGluc3RlYWQgb2YgaGF2aW5nIHRvIGdvIHRocm91Z2ggdGhlCj4+Pj4gICAgICA+ICAgICA+
ID4gaW9jdGwgY2FsbGJhY2s/Cj4+Pj4gICAgICA+ICAgICA+ID4KPj4+PiAgICAgID4gICAgID4K
Pj4+PiAgICAgID4gICAgID4gR0dTKGdlbmVyYWwgZ2xvYmFsIHN0b3JhZ2UpIHJlZ2lzdGVycyBh
cmUgaW4gUE1VIHNwYWNlIGFuZCBsaW51eAo+Pj4gZG9lc24ndCBoYXZlIGFjY2VzcyB0byBpdAo+
Pj4+ICAgICAgPiAgICAgPiBIZW5jZSBpb2N0bCBpcyB1c2VkLgo+Pj4+ICAgICAgPgo+Pj4+ICAg
ICAgPiAgICAgV2h5IG5vdCBqdXN0IGEgInJlYWwiIGNhbGwgdG8gdGhlIGRyaXZlciB0byBtYWtl
IHRoaXMgdHlwZSBvZiByZWFkaW5nPwo+Pj4+ICAgICAgPiAgICAgWW91IGRvbid0IGhhdmUgaW9j
dGxzIHdpdGhpbiB0aGUga2VybmVsIGZvciBvdGhlciBkcml2ZXJzIHRvIGNhbGwsCj4+Pj4gICAg
ICA+ICAgICB0aGF0J3Mgbm90IG5lZWRlZCBhdCBhbGwuCj4+Pj4gICAgICA+Cj4+Pj4gICAgICA+
IHRoZXNlIHJlZ2lzdGVycyBhcmUgZm9yIHVzZXJzICBhbmQgZm9yIHNwZWNpYWwgbmVlZHMgd2hl
cmUgdXNlcnMgd2FudHMKPj4+PiAgICAgID4gdG8gcmV0YWluIHZhbHVlcyBvdmVyIHJlc2V0cy4g
YnV0IGFzIHRoZXkgYmVsb25nIHRvIFBNVSBhZGRyZXNzIHNwYWNlLAo+Pj4+ICAgICAgPiB0aGVz
ZSBpbnRlcmZhY2UgQVBJcyBhcmUgcHJvdmlkZWQuIFRoZXkgZG9u4oCZdCBhbGxvdyBhY2Nlc3Mg
dG8gYW55Cj4+Pj4gICAgICA+IG90aGVyIHJlZ2lzdGVycy4KPj4+Pgo+Pj4+ICAgICAgVGhhdCdz
IG5vdCB0aGUgaXNzdWUgaGVyZS4gIFRoZSBpc3N1ZSBpcyB5b3UgYXJlIHVzaW5nIGFuICJpbnRl
cm5hbCIKPj4+PiAgICAgIGlvY3RsLCBpbnN0ZWFkIGp1c3QgbWFrZSBhICJyZWFsIiBjYWxsLgo+
Pj4+Cj4+Pj4gU29ycnkgSSBhbSBub3QgY2xlYXIuIERvIHlvdSBtZWFuIHRoYXQgd2Ugc2hvdWxk
IHVzZSBsaW51eCBzdGFuZGFyZAo+Pj4+IGlvY3RsIGludGVyZmFjZSBpbnN0ZWFkIG9mIGludGVy
bmFsIGlvY3RsIGJ5IG1lbnRpb25pbmcgInJlYWwiID8KPj4+Cj4+PiBObywgeW91IHNob3VsZCBq
dXN0IG1ha2UgYSAicmVhbCIgZnVuY3Rpb24gY2FsbCB0byB0aGUgZXhhY3QgdGhpbmcgeW91Cj4+
PiB3YW50IHRvIGRvLiAgTm90IGhhdmUgYW4gaW50ZXJuYWwgbXVsdGktcGxleG9yIGlvY3RsKCkg
Y2FsbCB0aGF0IG90aGVycwo+Pj4gdGhlbiBjYWxsLiAgVGhpcyBpc24ndCBhIG1pY3Jva2VybmVs
IDopCj4+IFtSYWphbl0gU29ycnkgZm9yIG11bHRpcGxlIGJhY2sgYW5kIGZvcnRoIGJ1dCBhcyBJ
IHVuZGVyc3RhbmQsIHlvdSBhcmUgc3VnZ2VzdGluZyB0byBjcmVhdGUgYSBuZXcgQVBJIGZvcgo+
PiBSZWFkL3dyaXRlIG9mIEdHUyByZWdpc3RlciBpbnN0ZWFkIG9mIHVzaW5nIFBNX0lPQ1RMIEFQ
SSAoZWVtaV9vcHMtPmlvY3RsKSBmb3IgbXVsdGlwbGUgcHVycG9zZS4gSXMgbXkgdW5kZXJzdGFu
ZGluZyBjb3JyZWN0Pwo+IAo+IFRoYXQgaXMgY29ycmVjdC4KCgoKV291bGQgbGlrZSB0byBjbGFy
aWZ5IHB1cnBvc2Ugb2YgaGF2aW5nIGlvY3RsIEFQSSB0byBhdm9pZCBhbnkgY29uZnVzaW9uLgpl
ZW1pIGludGVyZmFjZSBhcGlzIGFyZSBkZWZpbmVkIHRvIGJlIHBsYXRmb3JtIGluZGVwZW5kZW50
IGFuZCBhbGxvd3MgCmNsb2NrLCByZXNldCwgcG93ZXIgZXRjIG1hbmFnZW1lbnQgdGhyb3VnaCBm
aXJtd2FyZSBidXQgYXBhcnQgZnJvbSB0aGVzZSAKZ2VuZXJpYyBvcGVyYXRpb25zLCB0aGVyZSBh
cmUgc29tZSBvcGVyYXRpb25zIHdoaWNoIG5lZWRzIHNlY3VyZSBhY2Nlc3MgCnRocm91Z2ggZmly
bXdhcmUuIEV4YW1wbGVzIGFyZSBhY2Nlc3Npbmcgc29tZSBzdG9yYWdlIHJlZ2lzdGVycyhnZ3Mg
YW5kIApwZ2dzKSBmb3IgaW50ZXIgYWdlbnQgY29tbXVuaWNhdGlvbiwgY29uZmlndXJpbmcgYW5v
dGhlciBhZ2VudChSUFUpIAptb2RlLCBib290IGRldmljZSBjb25maWd1cmF0aW9uIGV0Yy4gVGhv
c2Ugb3BlcmF0aW9ucyBhcmUgY292ZXJlZCBhcyAKaW9jdGxzIGFzIHRoZXkgYXJlIHZlcnkgcGxh
dGZvcm0gc3BlY2lmaWMuIEFsc28gb25seSB3aGl0ZWxpc3RlZCAKb3BlcmF0aW9ucyBhcmUgYWxs
b3dlZCB0aHJvdWdoIGlvY3RsIGFuZCBpcyBub3QgZXhwb3NlZCB0byB1c2VyIGZvciBhbnkgCnJh
bmRvbSByZWFkL3dyaXRlIG9wZXJhdGlvbi4KCk9sb2YgZWFybGllciBoYWQgc2FtZSBjb25jZXJu
cy4gV2UgaGFkIGNsYXJpZmllZCB0aGUgcHVycG9zZSBhbmQgd2l0aCAKaGlzIGFncmVlbWVudCwg
aW5pdGlhbCBzZXQgb2YgaW9jdGxzIHdlcmUgYWNjZXB0ZWQuIAooaHR0cHM6Ly93d3cubGttbC5v
cmcvbGttbC8yMDE4LzkvMjQvMTU3MCkKClBsZWFzZSBzdWdnZXN0IHRoZSBiZXN0IGFwcHJvYWNo
IHRvIGhhbmRsZSB0aGlzIGZvciBjdXJyZW50IGFuZCBmdXR1cmUgCnBhdGNoZXMuCgpUaGFua3Ms
CkpvbGx5IFNoYWgKCgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
