Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316C61262AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 13:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFmafdgbqQo/x3UwigKCP2Rz7+ppo4ZcvCF1g5ACUgA=; b=I3zCHlNAiqnOP8
	PBrrRSsN/i04qxcMCw0hX8Yqa/HrsYHfkBHvc8Laitkmsirn3UJJXbrWkxSi0y+IgMXuy4WQqWHIB
	zLJ9gv2aAtxePEcYPjE7GbQwY6/FqrfqClF6EJw2RgfK0G+4Mjr0HbMHkJDfc1kPVed3f4nQbSmGm
	43Eagnql/6iFD2rOur0ZgyaAyMtRZfBUMuQyPXOCmtM2GE3YQgQionURo4ofCe6uTeZlPys+/mOBS
	MMkiudTlqOMf76f0F0BkkTH0exyTaPUK8/pLnFXZ8KYZxt3X2dpKkewneKBcYtiEIuRAOATWcmGDK
	QSrzB+tFBDC56g2WMruQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihvKP-0001wz-VK; Thu, 19 Dec 2019 12:54:53 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihvKC-0001wX-HL
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 12:54:41 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3808A405BC;
 Thu, 19 Dec 2019 12:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576760080; bh=Q1ER6K86z6A3jHiaM/mR7rc+Ff3LNSGXXroWsWjqt8E=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=OHVyXXUAKtceg5/kVMHspHtuV/jssIvCqWL1u1f90HY8BTDeCsiuPrIchQI7W+1AL
 CbmwMrUamSParJPhvBTWkLGURQ4QoGYZTS/8lP86WO7nkd7GgxGe2/NKrisIKo2QN2
 iOmhYs5RtADeDqiYwmaB1JMKD4tIZcI6ThBQDXJZIekdFpsQlTwu9Tf8QY0pR4zK/I
 vASzLSxCf8XifzRWRq9DyECjHiP51g29+Q4I3dGcILTNIPCSkIpWkATOrK5QMerpwl
 FzBRlVL3TMYlvvw8Af3ZvHasEeejuXUCGR9gBJo2IgzoJ785Fb44chlGjKh0rAvQXl
 QxhII9LUgpfkA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 74863A0079;
 Thu, 19 Dec 2019 12:54:37 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 19 Dec 2019 04:54:28 -0800
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 19 Dec 2019 04:54:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iq2k5zDMwH7AzpyzEO86x0TkOO/7F3TaiJkvh8JsFJxu/PCSHVuwwp/4uTF+756N3sPxSxls90VhhaE5ELVwlsms0QT2CM2feq5PR1RWldSdeiQa6zGlVGMZ+VtBEqrNEsW6NswfCPMODMe+rqYb0LhQFmfhvWuxP466vc8zctzfsZ2YY6x5FGWOYUXIYiLtAmUMrcn1e+5xdL/wmOWRGAzU2ivLsBkdSvbk6unaEVFaXzOnb2e0gIeAHSOR9kaa5e64amIEMHT4R+Y6AHmUVZ55dDDSfIqYzO16V/vgkeVNanZcO88E1E69jFGxFfYx5GHjvZtNu/5MJ+1KF3g3OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q1ER6K86z6A3jHiaM/mR7rc+Ff3LNSGXXroWsWjqt8E=;
 b=H3x5OJpjiCecIMeh1Yf9btDMPshqLfzcDrdNe1C49MyEX7V4WmiGo/iZzBTZiAEWOs0DZkW+NLZQS82fyN5YXqErgoFx5Rgws0awry86Lnk8GM2cX1aVcARqJJZ4xJK/TYYGsqaJ+KBYQRvvHOc10N06A6zjZ3RCGLyTwXtfsb9VtHOYywSMOKcLokAZ2Rq1wzX/niGUGlpHg4MiLKr5upvIPUk8ovbsAdxg9XbozMXkpPrXnEBzjH9p8u2PD98k+Riiu00wF1pLBd/nZcervIkCZYkW9Fj1raoxiwTtFUjsam9Emq5VvjqVAwcUPP/lc+G08WwfloC5JfkHC30uCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q1ER6K86z6A3jHiaM/mR7rc+Ff3LNSGXXroWsWjqt8E=;
 b=KiuKtIiXowx2l1rwC6656rnWIFmqnC0dwY7zmjFFpxl7xryOV562JJKCkkaH22wLtNbonmBSdpvkLy0BfJxmVobTbdUKpGUaH8bWT4bPxgrOGPWCmbNcEt2jdXz4ZFXx+mSEkG9ibQbecKAOYWdD0NSXzaS2EAJcYLPUc5sWlok=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (52.135.51.203) by
 MN2PR12MB3454.namprd12.prod.outlook.com (20.178.242.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Thu, 19 Dec 2019 12:54:27 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::d0e:7272:4a88:ffeb]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::d0e:7272:4a88:ffeb%5]) with mapi id 15.20.2538.019; Thu, 19 Dec 2019
 12:54:27 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Benjamin Gaignard <benjamin.gaignard@st.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "kgene@kernel.org"
 <kgene@kernel.org>, "krzk@kernel.org" <krzk@kernel.org>
Subject: Re: [PATCH v2 0/2] Add yaml DWC2 bindings
Thread-Topic: [PATCH v2 0/2] Add yaml DWC2 bindings
Thread-Index: AQHVtlg1SWbTGIsCKUivGYMMUpd+xafBajIA
Date: Thu, 19 Dec 2019 12:54:27 +0000
Message-ID: <c6101bcb-1491-b9ce-b0f8-e50826202ee3@synopsys.com>
References: <20191219103536.25485-1-benjamin.gaignard@st.com>
In-Reply-To: <20191219103536.25485-1-benjamin.gaignard@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hminas@synopsys.com; 
x-originating-ip: [46.162.196.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e911fc8a-129b-4a9e-73a7-08d7848294ba
x-ms-traffictypediagnostic: MN2PR12MB3454:
x-microsoft-antispam-prvs: <MN2PR12MB3454F73E4F28AE818469A2B4A7520@MN2PR12MB3454.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0256C18696
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39850400004)(136003)(376002)(346002)(366004)(199004)(189003)(31696002)(5660300002)(478600001)(66946007)(81156014)(76116006)(81166006)(6512007)(4326008)(6486002)(110136005)(7416002)(36756003)(186003)(31686004)(86362001)(2906002)(91956017)(71200400001)(8936002)(66476007)(8676002)(316002)(2616005)(53546011)(54906003)(4744005)(6506007)(64756008)(26005)(66446008)(66556008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB3454;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EiM1FTjAdoffOd9KgMPY5SSON6nrGJNf27wXHsGHeW+VDidOcxe58KFkhJFREd7TAq/etHeM1BrXRIAA6vR2cYn2PZzXyRZOZiXt/m9p2RrVBWxnC53IQc92Ive/rWMROEO6IFMiFb2ue+TK4a8uCJ+Xm3R96yiKHeuuxKmqyMRhIjukTjkK9wZFMqK43ZIOpVDdXdLZrPPtBvVfEruMKN1IgIfFP0CIX8HxI4yckbHcoYzvKbbSdOMctBY96iWDnb42VMg0FooNvoOWFrPByDS8l8IvdeWfoSexAu0Y0M2duu/ZiD4/5MNWufa8GPJ9QqpBsXfoooENLLprIeywvRUy+egTkPvM2Q+pkC5ldwhsyndojCMfFEtr2/52GOtYIDtdEtDGZGcBDav4P6oy+B54V4vePSLebra3x4T9mzHpPKnSlLVFFqI9QShFm6Ut
x-ms-exchange-transport-forked: True
Content-ID: <C22F634CEFEC894B8CE99BABDC974744@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e911fc8a-129b-4a9e-73a7-08d7848294ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 12:54:27.0553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YVGYFkMPBq5/FyCmv5ikFjz/6vhjEUVOr357SesOSHTczKPgRKomNUp0w6keKjZ3+LE4efhNQGXaQjJS75JFPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3454
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_045440_589570_BB41BDFF 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "amelie.delaunay@st.com" <amelie.delaunay@st.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin,

On 12/19/2019 2:35 PM, Benjamin Gaignard wrote:
> Convert DWC2 bindings to json-schema and fix issue in dtsi file.
> 
> Benjamin Gaignard (2):
>    dt-bindings: usb: Convert DWC2 bindings to json-schema
>    ARM: dts: exynos: Remove unneeded "snps,dwc2" from hsotg node
> 
>   Documentation/devicetree/bindings/usb/dwc2.txt  |  64 ----------
>   Documentation/devicetree/bindings/usb/dwc2.yaml | 152 ++++++++++++++++++++++++
>   arch/arm/boot/dts/exynos3250.dtsi               |   2 +-
>   3 files changed, 153 insertions(+), 65 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/usb/dwc2.txt
>   create mode 100644 Documentation/devicetree/bindings/usb/dwc2.yaml
> 

In Maintainers file mentioned that EHCI and OHCI drivers maintainer is 
Alan Stern, but in 2 existing yaml files (generic-ehci.yaml and 
generic-ohci.yaml) mentioned that maintainer is Greg Kroah-Hartman.
So, I'm not sure that in dwc2.yaml file should be written me.
Actually I'm not familiar with documentation/bindings.

Thanks,
Minas
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
