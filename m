Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 916F71EB2DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 03:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3q6i4Y4P11mGSXkzimhDwiBTaItcnt0A/9CDjWgrwHQ=; b=U95QL7llB8KQiw
	MynzrnkMux7eot1Q6vaorm+ZWgfdr/8ygh/1LAxVeuwiEkEzVp5HL9NkgyftI6iX60/KMhnS3OoLh
	FP/5MKKEkP1tKV9Out/P9gUFfiH1HGJM0o8aBtdRO+8/JXYvvIInD/9p+GSjMf04Wo1WZ8B+WZSVn
	0AuyAILqum8t/XTkU10hu5tfyWq4xPTmWu/ijxAg3hKtoXoE5sUaPw1xy8XDL2rsJuFIyFBOMBQFn
	8WC2w7ylDb6Xj7aTybyTyWUuKcBqRCaUiCDwOkdnRdM09pGKls5F7dKvRRl02+xawFd3jf+i1diMx
	MOz+nBTgVpEmtWx/J5hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfvKj-0005Am-Lf; Tue, 02 Jun 2020 01:03:13 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfvKd-00058s-Qg
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 01:03:09 +0000
IronPort-SDR: jt+onbC8RJMzvLuubcpplqdR6neGH6MxYQ01T+DwUwZB4dyWtcNuiG/fWO0kwbCw6kB5hNYaBz
 2KXc7ohp2JFQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 18:03:01 -0700
IronPort-SDR: nB/P7CIUedtXeUIRozIcKTjw82eyZ3Tckxcd4mt6M4I5J5sJA7eE9gILU4yaQFpjtzLELXAY91
 mLZ24+MvaJkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,462,1583222400"; d="scan'208";a="303821374"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2020 18:03:01 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 1 Jun 2020 18:03:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 1 Jun 2020 18:03:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GgRF916KFyRsWjrZ5rEcEND4SSXH2KOZRrHi5dJV308FFKPw2sFOp6pUdl2rNWvBQZmQWCfaIoAhfLi7novGQMpKsAw+0u0W94qlPaDG8CFrOiWtU38GqEB8ntG1j7fouRjch96dkYHMrvwL6SpOX9asePeOdx1H4T3rsabfl+grCYW7xyrsYyekorqbZCqZPZEX5nWd/QVk1zwgVPaiumYUjvGzmeH/E1LqWc50YqRAf76nZM+qofiBCLLjdiRBvnj24W+rRaqURyaBcfMl57tpKOQ6OAim/Fl6Vwzix7GJYrl9MCsQiAy/jt7hB6GE6Ekc43ZtD6z1TYPKI1+eeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a++Wakt12loSYki2jkbk0Xk2Sod/obKUGB/b7UEcfY4=;
 b=dFhs6W45JkXisPqE0gIOz3YuR6c7nzZK6AMAY8Be1DW0cmpXirmNlU+/n+VlEjXtp4Pzu3LwuKMhXJBgfNiq/qCwcrgFpcIZBIuw6BhvAgZMq05RARm0Gaedy4yLh3uXzlOrtjwJdBpAvt1uHkLKzwCbjvWMOvRxVrwNTUWLTav+to07XBI1tlrXZBGo0O5eyLQPfhULBiqtW73ZIllGmb2Ki/8sAs5O3IMLurq/p4uuoaVa3aKUKE91J8jkvg5xaxl7bnrxPQ8pxa8iz9N2g9xaUFukCZ9wncN2CAE8YfIazG0MnXcHMAcH/jan4t/mmmi/hC5uzMeIIrroCL4vRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a++Wakt12loSYki2jkbk0Xk2Sod/obKUGB/b7UEcfY4=;
 b=zezq8csqSBhLJZjA4nIX1Q2J/bQHmZbTmw8KB4OIQbdFxxr9Eg8tVsZAwkRwA6dALo+HJnXsWmERbGBU3lSdAhsUaLxpLG7ctLvB3kDGhzp/8tEMKZfr6b/YKnR726DX62t3heFmpnM0Kccqy5+egvhuz5yoN5iPGRtuumg9yH0=
Received: from BY5PR11MB3893.namprd11.prod.outlook.com (2603:10b6:a03:183::26)
 by BY5PR11MB4070.namprd11.prod.outlook.com (2603:10b6:a03:181::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Tue, 2 Jun
 2020 01:02:59 +0000
Received: from BY5PR11MB3893.namprd11.prod.outlook.com
 ([fe80::65ec:b3c9:7f24:d067]) by BY5PR11MB3893.namprd11.prod.outlook.com
 ([fe80::65ec:b3c9:7f24:d067%6]) with mapi id 15.20.3045.024; Tue, 2 Jun 2020
 01:02:59 +0000
From: "Tan, Ley Foon" <ley.foon.tan@intel.com>
To: Rob Herring <robh@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>
Subject: RE: [PATCH 10/15] PCI: altera: Use pci_host_probe() to register host
Thread-Topic: [PATCH 10/15] PCI: altera: Use pci_host_probe() to register host
Thread-Index: AQHWMJOVynypNu7pUEW1r9ZQhIs4b6i+xnew
Date: Tue, 2 Jun 2020 01:02:59 +0000
Message-ID: <BY5PR11MB3893C12C01D22AA440BB22D7CC8B0@BY5PR11MB3893.namprd11.prod.outlook.com>
References: <20200522234832.954484-1-robh@kernel.org>
 <20200522234832.954484-11-robh@kernel.org>
In-Reply-To: <20200522234832.954484-11-robh@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98129c03-50ae-42e9-34f5-08d80690b1ad
x-ms-traffictypediagnostic: BY5PR11MB4070:
x-microsoft-antispam-prvs: <BY5PR11MB4070D5BB2E6649A235335B95CC8B0@BY5PR11MB4070.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qjer7vpklZ6tM6H19FgH93xW7F8fT+g7LCGKZqfs60Aa7pExHcxyL6t5bOCUkRs9/Zo05vCdHLWCRJ7hE0AVYvhpcNzoJQ5aEskMkt1s5Xifss/8zQjHlLo8hnAHrKNRn/FM4nBH+QR2prlYjXRu6Ng3aEbPi5b+2EZk/JK2axe88/SOxe3+wGRdrXr6jbZOmB8v3/4vHSGaiVN0YEKfN+Ii3XhJlmPFvPFK0RtBVczF0aFQ3++qQISWigMKROd+QGE8EEMIy8Sv+12c0xUOJxwFTR3CcDhYTGPGsByRYYvea2W3HUO4DlJw3wEa9doF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3893.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(396003)(376002)(366004)(136003)(346002)(71200400001)(8676002)(4326008)(2906002)(7696005)(26005)(6506007)(53546011)(4744005)(5660300002)(186003)(33656002)(76116006)(55016002)(478600001)(64756008)(66476007)(66946007)(66556008)(66446008)(9686003)(86362001)(54906003)(83380400001)(8936002)(110136005)(52536014)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: cm9GdbBoeW6lujvRQrTkdqBsnsSmEWkK9FjSQ2Gv0FmQJM51G6fT8krbc6rWo3vIxRSdZZWo2O3Ph5mhcnE7KHeFJ4fvyVMdkGkt05EQlzIBN7Ri0sL4s6Uzmx05iYbC1iiQelOpyQI2t2kRKt87BJgQ+2pcpv358t4Rczba4j+1ETrjG/FzC/mjVu/6u3HFQ6qvbvOIZW9oPz1GuS3b5VT4qYTLzV2O072tDnzxWjZ0J8gvalc1NigLniwBcj9tZbIfCjdLGV3c2eDAWoradMNzaiYFVgs1YPGeCfFw9WgUBI0dIZOkRqS0FUNCLgKZ+zaaXjw0cbskEU7k1mkq23Yhz9N17SgMPmIOg9YZblKdi7YOUZ/I4rmOHon14/S1GU62imztjLgsJUwKrWnSebUk5WxjM83SQfZIPq/v3kXRCun2Gvy5EZW3SEjqZeaiDP6ZlN8+EBJg0KZEorcAFSp2da4T1eIS4yx2DJi46iZ+3NgzCgAlUVnhl/+YuL3U
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 98129c03-50ae-42e9-34f5-08d80690b1ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 01:02:59.6582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XWxZrDMNLMEWAnVHxs4qbRNbk/eKFj0126XXowM0VFGThrXfPFAgJPouEujjfqV9br1eXKBOpfMd9rNi/gaoFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4070
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_180307_909814_55E5F2ED 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "rfi@lists.rocketboards.org" <rfi@lists.rocketboards.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: Saturday, May 23, 2020 7:48 AM
> To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>; linux-pci@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; Tan, Ley Foon
> <ley.foon.tan@intel.com>; rfi@lists.rocketboards.org
> Subject: [PATCH 10/15] PCI: altera: Use pci_host_probe() to register host
> 
> The altera host driver does the same host registration and bus scanning calls
> as pci_host_probe, so let's use it instead.
> 
> The only difference is pci_assign_unassigned_bus_resources() was called
> instead of pci_bus_size_bridges() and pci_bus_assign_resources(). This
> should be the same.
> 
> Cc: Ley Foon Tan <ley.foon.tan@intel.com>
> Cc: rfi@lists.rocketboards.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/pci/controller/pcie-altera.c | 17 +----------------
>  1 file changed, 1 insertion(+), 16 deletions(-)
> 
Reviewed-by: Ley Foon Tan <ley.foon.tan@intel.com>

Regards
Ley Foon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
