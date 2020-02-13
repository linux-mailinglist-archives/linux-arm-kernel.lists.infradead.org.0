Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2CF15B87A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 05:17:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROP0stQJbuoEFePBTjYs26/C5r3OxZoUJjpgNFUe7Js=; b=hAbSXHvEzciNBU
	Mls6ZdVporbLmPFI82BTfHhj4lNQAbRymfYF19KDiCKoj0I0XMkqe17yEaEekvLSc+3EkOd1QQxKw
	zMsr4fqgCqmSZSGorjk163Zmrkx6fqUjxiBtlRAPN/RI31YVk7oVWHAPCxncHONCyb2ikmjF63UBR
	vJChdiUTQ2rvRhl5FFYY+tOEP4mgRTIrOmQWteEzSWqc1OKywaNz0ug+BPC3BQsI3sgP2Ty90pFH5
	6NjqHvbCtJVsz64T9tNdhZ/xyLgm6mO9JU02epxn/2bnPpdGYla6CwvtmZ5zTCAH/W9OKjNcVUNRP
	IwkmF8Err4UM6Xxh7Bow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j25wj-0003iK-Vt; Thu, 13 Feb 2020 04:17:50 +0000
Received: from mail-eopbgr1300139.outbound.protection.outlook.com
 ([40.107.130.139] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25wR-0003hg-9d
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 04:17:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l7GSy5+hoObbGvbRLKEeOXuIOIRsEIR7yKMJWezQF2/Eld5U+PlOE/cpdmYYniekVn4laMgU823etchY0t9ewmInCwGqFwt2Mc/yJGsNu9wnunuymboYLvNc++FlNbFHrYViVZ4S2JkjYccLyvGjuAIfIeyCy6pxPlzEeX2DzarS6M9x+q8iELb0gYCvRgeWmBAphQlmyEoWIXrsTv+eYYPHqJnIi2OVxTBE/GYusKbR4Mmc820N5XC3J9LVNWYFmCDUiKQ08sjIckt1Y9Sas/H8IIri8lO5zKqvwn0T8EiBfQGa5Rf5k2Uk7MsKdKaBGLHWqexHOiJAd9ojMT6VSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AjPDHydMM5OCKdL5LD/H+sNRu9fFGbR63k6wZVFbg8w=;
 b=Yu+uup9mDlTU5KTcf5JLCun/SLS6fSW+7fZxt1AVMKk6oX/q66JM8QARuHoEl7ntFugD74DxsnIRo08zVZRDqpHicbdBM67zaBuuLit9GNPy/M2NJlRkl3Y8frgEG6uhFEak6aab7OibGrDyshQ7teVh14B1PVI3u8Sy6APTC9/AYd3bFTY+kOLqyEGRZ56NaUulV186mG1AsX+zuejIEpRqNqysmDMo5Wk2+3rfWAl5o418YVXkYI0tyJe3dsUTyJFRbZjW5KLnsqkQZaNX7Jm+drAAMJFEWFDh1HACGLwVMlht0q/jm6Ks1C/hH7diuZcdQhWe9y57rfbBIaP69w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AjPDHydMM5OCKdL5LD/H+sNRu9fFGbR63k6wZVFbg8w=;
 b=SI8zjnzSLq+xG+BWwoEEByOaTbd9oxEBLpLDZjy+wa7c1X+nhCvlUa1wfaYNF6oH4RRRa/hlk1rgg7FWjUynzh/wVGXWDjPpzHVYNgkYiV5BmN/sbYAaU76ma4CEcwnjelfSEaMXAlVImfheceOXLPINZF/8CgrkxQYrOgM6yk4=
Received: from HK0P153MB0148.APCP153.PROD.OUTLOOK.COM (52.133.156.139) by
 HK0P153MB0290.APCP153.PROD.OUTLOOK.COM (52.132.236.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.2; Thu, 13 Feb 2020 04:17:20 +0000
Received: from HK0P153MB0148.APCP153.PROD.OUTLOOK.COM
 ([fe80::58ea:c6ae:4ea3:8432]) by HK0P153MB0148.APCP153.PROD.OUTLOOK.COM
 ([fe80::58ea:c6ae:4ea3:8432%5]) with mapi id 15.20.2750.007; Thu, 13 Feb 2020
 04:17:20 +0000
From: Dexuan Cui <decui@microsoft.com>
To: Boqun Feng <boqun.feng@gmail.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v3 1/3] PCI: hv: Move hypercall related definitions into
 tlfs header
Thread-Topic: [PATCH v3 1/3] PCI: hv: Move hypercall related definitions into
 tlfs header
Thread-Index: AQHV38PZZXF0IV9lxEadzQUsLnQj66gYge2Q
Date: Thu, 13 Feb 2020 04:17:19 +0000
Message-ID: <HK0P153MB0148BC3F0BE758B7073B418EBF1A0@HK0P153MB0148.APCP153.PROD.OUTLOOK.COM>
References: <20200210033953.99692-1-boqun.feng@gmail.com>
 <20200210033953.99692-2-boqun.feng@gmail.com>
In-Reply-To: <20200210033953.99692-2-boqun.feng@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=decui@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-02-13T04:17:17.9136161Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=f808b05e-3854-48eb-b9b9-5a2166ff3ade;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=decui@microsoft.com; 
x-originating-ip: [2601:600:a280:7f70:c129:4d3:3571:d407]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1b099925-7f16-49a9-d0b1-08d7b03b9e7b
x-ms-traffictypediagnostic: HK0P153MB0290:|HK0P153MB0290:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <HK0P153MB029038BA464A64E92541FC43BF1A0@HK0P153MB0290.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(39860400002)(136003)(346002)(189003)(199004)(316002)(76116006)(5660300002)(7416002)(4744005)(64756008)(71200400001)(186003)(66556008)(52536014)(66946007)(7696005)(33656002)(8936002)(66476007)(66446008)(8676002)(81156014)(81166006)(6506007)(8990500004)(478600001)(54906003)(110136005)(10290500003)(2906002)(9686003)(86362001)(4326008)(55016002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:HK0P153MB0290;
 H:HK0P153MB0148.APCP153.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wBVUr8KrlqJjYdWbI/7PsSH5+cU4t2a7xCpRF87XeyUxWUFCnmzSifVrFbz0AJ4+PR4jkCqSEvnbirdJjWFchrL9trlOKGo+6VN4OJ/c/1YqDwrcVpVpmspELO0nDTmpEvw1RVPrtsoOqBKoGUr/CaEeSUi81lZ5sVU3kZoUFQZ7DLY6n/ulXq+KdbrLg+VtSLr1tG8MTSWrJXj0KE0OzvTz4kxCxX5PQCnV2jLDq/xKCm9HJbG2WaDega3sQdpOC9FiFRqEWAaRhFq5egnC84ia9R2lwWtabXaAVQ6a5TawLog65ugg5oTeCF5B+Cq28RuC/FUedXFjgbATrbun47WBT8G/6H8OCLSr4edUP/9/MgyvpLZXMEedUp1ZBJnz7WxrPjflZAvbasC7KG/iJB2HXh8alHV3+Dc8K2uv3W+6oE6bCoCudrewJrOOaoS3
x-ms-exchange-antispam-messagedata: YUXPLk0jISFsmOmItNonV4HgaQRpUqM+y+qzxb36WaeWM0MyDOnZJmVl4gRld/og8gctM6aIVCpcAFdx4Wt0UvuSaqYE+YvVJjo2/EQdz/TPFjhGs1VDAP38f3fP2L+eYlgXVp+136MsB407Fc1jCFSQx01BapO0AdayqM2u/4GJ1GqGmsfuPNcChhQ4Tmr+j+kXlO6yhbjKIz4Izn5AEg==
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b099925-7f16-49a9-d0b1-08d7b03b9e7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 04:17:19.9980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bDn8b0x93AB0qAbZ6nZc6+Alm3gOYIxqZ87eEanEHexwLajf1BJ/Z39NWWnxBXeKr+g5+I2cZcngfrYogvKWZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0P153MB0290
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_201731_332260_82AAE7B4 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.130.139 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, "x86@kernel.org" <x86@kernel.org>,
 Michael Kelley <mikelley@microsoft.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, KY Srinivasan <kys@microsoft.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: linux-hyperv-owner@vger.kernel.org
> <linux-hyperv-owner@vger.kernel.org> On Behalf Of Boqun Feng
> Sent: Sunday, February 9, 2020 7:40 PM
> 
> Currently HVCALL_RETARGET_INTERRUPT and HV_PARTITION_ID_SELF are
> defined
> in pci-hyperv.c. However, similar to other hypercall related
> definitions, it makes more sense to put them in the tlfs header file.
> 
> Besides, these definitions are arch-dependent, so for the support of
> virtual PCI on non-x86 archs in the future, move them into arch-specific
> tlfs header file.
> 
> Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
> Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>

Reviewed-by: Dexuan Cui <decui@microsoft.com>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
