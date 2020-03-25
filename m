Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB091927EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 13:15:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1u7zJR9uEDVo+9voTOiG7NC2/208Vhw+CJnoRc+P9s=; b=SrzGSPnroHGP49
	bJVBHTYmrj8MhYh9WeQyPyRhB6CyzmFGCfGcS5hhubweSH6ZLN7tzXvgZ9tqUvrAcWBaWTnReNOum
	CSB4G+5GBkh+YHAjwvx4vcJCT1qQnjmWI8BZdKcV7jlvv+07PxwAON5zfIuNN8H5n7NoiJHcsl8oL
	XtmuIMV5EwGsrxaMX5Bu4b87EwvRviVIH/TaAVEbb4fap7strBGtMqdGIurEArNNMoUnO62P8E8Jv
	HAe/y7vZpnXA+XeCp5Ni3a5D12WUq6DM0re+0jnWBJhTeI1JqGyv8EOhO4ocrdcRDyzlcaGL4jMFc
	mGlBjUdcx37K1qyDPRSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4wT-0006jx-Re; Wed, 25 Mar 2020 12:15:29 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4wJ-0006BJ-6K
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 12:15:20 +0000
IronPort-SDR: Nj6BmQnHuNvAx536H6jBHtITesYsFCHi0MLvrSPIO01RX5SZMrpAwv/QXHxuK+7P1KnIb86G1J
 4j6tpyQorayg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 05:15:18 -0700
IronPort-SDR: fshHeAjRpcY2QmeRHJ1oayCf+XifNxCDfJLwJiGn+cFX1tws7VlOKitEAEkmV6KGOdSn4NwC1R
 g3rl1BhCgTCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,304,1580803200"; d="scan'208";a="420294717"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga005.jf.intel.com with ESMTP; 25 Mar 2020 05:15:17 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 25 Mar 2020 05:15:17 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Mar 2020 05:15:16 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 25 Mar 2020 05:15:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 25 Mar 2020 05:15:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QrSSnE+xLd7T99TOEmQSdD8WXzwERX7NctpBhGfNGVyuGdsVE4cKTa8ME6JH/LRDsvlIxK7Hfw1gG/z2Y+486CY+D/vdfyZ+u3O1fomyMOMVwJTUVzqpSjUyogsxnREzgFbMrLcMNb1rwp6rbBCVYCc4w7lkEu2hzDPNCLZ3dwFRDXtdEPeal4ENH3mvwsJZWw3cMSqeTIbjBGnEBIWqOkLEWb3dYgTTyumgNB+nSPwftanfKUDuJkEDSWrb3dKVQPR3s7KTsi1Qffu6nu0LuLDILFkLdCwiV1fvTJt8KvHYvdudAjeT9JA6tNgTfyOQIgfPaTa++V+mOnka515kcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YrAe+ZxIvMfxBdnhr2CijWf5vpWwbAXFuv2S6UTzOZQ=;
 b=c7dkQtqz5QDI0tmn2NKblgeYmiIkfSw5FdmdhYPMIBfZD8Xb2HiiUbj/gmtIhb3s+hjKenhjNZAbdAxfU7cYR8cg2gAVYuCi8mrdmhqNWKw7nXAl8fbraoU9TGmgu3jwKiPbr/kpdZuz2EcvkCj9JA+25AbpOC6SbSk8Ig5Wq/sv1+1J21tVx2JHWx8bwvFUXEQ2umEOrHqEhTF4Rt9ogfUhq7eRuATOfYRr+R21XtyQU0gIerJscS6blOSW1v8fPA2+NOaTOxABzKY/i11whwZoU3APqSEEuMBVJAHzmIDZIGLdjoqZFcClTpr15efan7ewILdo6kWR+tnNT9Zeyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YrAe+ZxIvMfxBdnhr2CijWf5vpWwbAXFuv2S6UTzOZQ=;
 b=CE6OPq90eYLysvXzc521yPqnRiYrLoaO6yr2Ws6wXY8PB76eWoe+FVF8+XbOlsqOixkHEgyrZpuWWTbh2t1f3EfgcsDSIsQxVIfu7pzhmf+ZnhmFNY33qPCpWVvLkr8Ban4AGixxmDgAUCBAsKUbzzXoGQ/ulEjid4VwxMFB+gU=
Received: from BL0PR11MB3281.namprd11.prod.outlook.com (2603:10b6:208:66::33)
 by BL0PR11MB3220.namprd11.prod.outlook.com (2603:10b6:208:2f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.18; Wed, 25 Mar
 2020 12:15:13 +0000
Received: from BL0PR11MB3281.namprd11.prod.outlook.com
 ([fe80::e0a0:7b4b:3824:17e6]) by BL0PR11MB3281.namprd11.prod.outlook.com
 ([fe80::e0a0:7b4b:3824:17e6%7]) with mapi id 15.20.2835.023; Wed, 25 Mar 2020
 12:15:13 +0000
From: "Reshetova, Elena" <elena.reshetova@intel.com>
To: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>
Subject: RE: [PATCH v2 0/5] Optionally randomize kernel stack offset each
 syscall
Thread-Topic: [PATCH v2 0/5] Optionally randomize kernel stack offset each
 syscall
Thread-Index: AQHWAhtwq3buLIhNY0uHCAE/uJPRC6hYQiKAgAAbvoCAANt94A==
Date: Wed, 25 Mar 2020 12:15:12 +0000
Message-ID: <BL0PR11MB3281D8D615FA521401B8E320E7CE0@BL0PR11MB3281.namprd11.prod.outlook.com>
References: <20200324203231.64324-1-keescook@chromium.org>
 <CAG48ez3yYkMdxEEW6sJzBC5BZSbzEZKnpWzco32p-TJx7y_srg@mail.gmail.com>
 <202003241604.7269C810B@keescook>
In-Reply-To: <202003241604.7269C810B@keescook>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=elena.reshetova@intel.com; 
x-originating-ip: [193.210.230.89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9b4fbd89-f70c-4462-79a3-08d7d0b62bb6
x-ms-traffictypediagnostic: BL0PR11MB3220:
x-microsoft-antispam-prvs: <BL0PR11MB32207DC9ABA2DCEAE8BEF60BE7CE0@BL0PR11MB3220.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0353563E2B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(136003)(396003)(39860400002)(346002)(5660300002)(66946007)(6506007)(66476007)(7416002)(2906002)(26005)(52536014)(66556008)(64756008)(66446008)(33656002)(76116006)(55016002)(86362001)(81156014)(81166006)(8936002)(8676002)(9686003)(71200400001)(4326008)(478600001)(186003)(7696005)(54906003)(110136005)(316002)(4744005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR11MB3220;
 H:BL0PR11MB3281.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R0fHfiHe8IwDhu/PudqxvcDZ+HOwdID1+Ng9PLiwh0AO1XId7kD5n6/N6KkV53W4qA5fCWm1kMve7REZUR8b7tfsZ0qwzO1SbmzfzUQuTef3Q+RWQizkUkYOeFdNG9QLqnsGNyhhKpTeHHKHAoC4GFvWo4/fjB1EaC3+6oQRGRJcBSyXd9ZvKE2SnVVzKJZ7Zrd1BNOW8gk+0CDvQ1pE6PEAionQk/bCbpGWMP+cjfucQM5Iz8gOvPfOvt2jSzXH/ZVO2yeoHuhQzV8ijn20hPRMlKrV9A697E5gJICuCt6rqGUznVewzCHr1aUmYKoLmo3n21Xj6AA7+LQwriDcfqXX9+3uFAoupeeHwP8GgrAiYmz9N3XQHDgLpgpEqXlL2z+735Dt1q/0R88sYS8pxh9HILua5BGYthTXDBiP8bmt1Bi2Plg/wkUSdnnJenMP
x-ms-exchange-antispam-messagedata: /CNCpOp659D172WBicTizC4uCv6sPoROncMCkc7ljYWplLv4kJ8C/Ss7dwBTKoPT+B9cN+1DoEN/AQPs7mMyIYvDkPMoQMYW4Gi/KGoDUcdz3XyyuTKwfhNpVkmCtSxcrVO1oEa6sESZV3nQbrXr5A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b4fbd89-f70c-4462-79a3-08d7d0b62bb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2020 12:15:12.9820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9BUpkDalH6Xfnn9q/Z4fatBvI6iYdf5wUeTPr7aT+6vnesukWh+gAF4FEkKMS4KS4GMmteUqxdITni7Y6iZK8dHgLLKOWqP5PLikRjEu6Ew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3220
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_051519_296436_9D4749E5 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>, Andy Lutomirski <luto@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> > Also, are you sure that it isn't possible to make the syscall that
> > leaked its stack pointer never return to userspace (via ptrace or
> > SIGSTOP or something like that), and therefore never realign its
> > stack, while keeping some controlled data present on the syscall's
> > stack?

How would you reliably detect that a stack pointer has been leaked
to userspace while it has been in a syscall? Does not seem to be a trivial
task to me. 

Best Regards,
Elena. 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
