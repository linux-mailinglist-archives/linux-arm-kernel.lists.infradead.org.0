Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753D313AD93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:25:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MXj57GMVO3WUhZOC1fYYxrxKvrvFBsJ7ytcjepcCnE=; b=bFUPWGJ0fSEErl
	b/S8p6qN4AZp13MoR/ZIPqCj6vBmql09dS5rYS1Ilz5aUw19aAAIxL8yNiVM5uRnNz/PqnrInApWV
	fdNWcvw+6/Xm0d5qQkv6LgbPRVPilSTLf+4TeiJgehZUqoTnc4ivFACGC6NaeJRUPfVpBtBm7FSGX
	lfSshz+cIY8yjXmcFEqXrL5rGHhhj+3r1duTVfKMo0L2kX3IPZUXtY0Cvf4GVyhhaksbQdXj7niwY
	tY4kp346hxM8eBkvhY7kNKmg699u8Pwimcc+r1Y2DlkXU1K/H0O/+rQp//CW8OT2TyxYOfjTyJ8cv
	O8K2v6rkLPQNbVodz6WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irO4B-0005rj-F1; Tue, 14 Jan 2020 15:25:15 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irO3t-0005aO-1j
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:25:02 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 07:24:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="423185376"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jan 2020 07:24:54 -0800
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Jan 2020 07:24:54 -0800
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX111.amr.corp.intel.com (10.22.240.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Jan 2020 07:24:54 -0800
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.59) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 14 Jan 2020 07:24:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UV4ZWaomqLVD/2uk0J2FA2+Xh3rxycF5s3zoUoXuQal9zeFRZii/Fj6L4AU2eAcce+wmFNnXkoR+AAGi+i+33gdKBFmarEo++VwkzPQ7ijQ114K3S6IugDDf05wMquYWxtjkksFB7ZXwvgXH9EFU9Fu3myIUDKiggL4Qlp2ShWu7TBAiQrnDQweHYJE71NFFPTqt6CdCKGKhMBLYCwHW8wk26csZA9SqXfOEA81rpMhk6qkbqLP18P01Q+/SgDAzS24fDlki3odUSEtgp90AEYguO4GRmAJiziIbKbJRr5gQj4JRYPYzRUmKkmH0gIob811dLywe+S/9ukQWpAGIig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CanE5ZT0RtztTL6iqVn1cUanfjBFsUN7v42feL5sbMU=;
 b=ZGOC2swHvIX4sIcvOuCoRJgX2lU9nK8xBO+9SaKrAvv7he5Llo8nSs6eKf4Yfthq4DxdIrYdlenBvpcUXHRTaO6abbKouXhX0OYGTE384d3QC4aHICGOIYcwZdK0g4O+5zrXWvN7FhhyCCHJ0EUMM2du0v+EPy2PPhbu3IHBisApD4B62X7MTqBzl9ejYrD/IjbNcwocNga97fpIB9QkA4MuEP+puUhcwFnKy2IoIkrp0o8KDjyTIE5Pg3W1XXTK5nrfkdv6Yj7qoBPsVPJuntE6E2ctGwXdV+1P8Ex3muxwxSlIP6MeKJ8z0KAxi7++ISuNyR6gEoRf4FdY1eYThQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CanE5ZT0RtztTL6iqVn1cUanfjBFsUN7v42feL5sbMU=;
 b=IWpPi5gW86IAL4tO32PBl9ylQNI75gKLNNAls1QuaKgsLj268+qQltHFKIYgENzp3EOXuzs1w/HY5apinFXLsAMq1pBje1RQ3yCH5ZBmLbTTjatbnOxsYnobjhOpe9mLvBprtGGcTCoL9c2d+RT5l4JdrzbMXHaTFM/Ep48+vzk=
Received: from DM6PR11MB2764.namprd11.prod.outlook.com (20.176.95.140) by
 DM6PR11MB2587.namprd11.prod.outlook.com (20.176.97.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Tue, 14 Jan 2020 15:24:51 +0000
Received: from DM6PR11MB2764.namprd11.prod.outlook.com
 ([fe80::7934:4f68:4a8b:5877]) by DM6PR11MB2764.namprd11.prod.outlook.com
 ([fe80::7934:4f68:4a8b:5877%5]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 15:24:50 +0000
From: "Voon, Weifeng" <weifeng.voon@intel.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>, "Ong, Boon Leong"
 <boon.leong.ong@intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Subject: RE: [PATCH net 4/7] net: stmmac: Fix priority steering for tx/rx
 queue >3
Thread-Topic: [PATCH net 4/7] net: stmmac: Fix priority steering for tx/rx
 queue >3
Thread-Index: AQHVyfo2lz0yFuzXdkS7LDIUtJYSi6foZfKAgAHiKfA=
Date: Tue, 14 Jan 2020 15:24:50 +0000
Message-ID: <DM6PR11MB276467B2B56B0CF246B5CFB088340@DM6PR11MB2764.namprd11.prod.outlook.com>
References: <1578967276-55956-1-git-send-email-boon.leong.ong@intel.com>
 <1578967276-55956-5-git-send-email-boon.leong.ong@intel.com>
 <BN8PR12MB3266F6242596920E608021ACD3350@BN8PR12MB3266.namprd12.prod.outlook.com>
In-Reply-To: <BN8PR12MB3266F6242596920E608021ACD3350@BN8PR12MB3266.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=weifeng.voon@intel.com; 
x-originating-ip: [192.198.147.223]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 52789ce5-19ed-4c53-94f8-08d79905e603
x-ms-traffictypediagnostic: DM6PR11MB2587:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB25878821A24C9DB48116084E88340@DM6PR11MB2587.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(366004)(136003)(346002)(396003)(376002)(189003)(199004)(81166006)(81156014)(8676002)(52536014)(33656002)(26005)(186003)(110136005)(54906003)(6506007)(8936002)(316002)(2906002)(7696005)(9686003)(66946007)(5660300002)(4744005)(966005)(4326008)(71200400001)(66556008)(64756008)(66476007)(55016002)(66446008)(86362001)(478600001)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR11MB2587;
 H:DM6PR11MB2764.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O3HIsSh88RE2CIn75M5LJSKL98FfBdjVflVssrB/i3UUcnki1czV54ZHT/MkZfbENVFapP3U6SI39Zo/dZVG8rTObUgM7h45kqlKgi+8lo4k0+CyjrObS1niIKEF+fRTbStPQ+X19jL51c782Gcf0FIDnk94kc4TG/3BNTZiCD+Zlb23YYoxoAWsBlbS6b3JmDbRqXLRQVLxm3b7M5/zukzj3NebtQ88yTyVOleSQ51R4FP8SMrIHJnuQQSBgNCWah8Cy+PdbbQ7RDH0qna9dHalLjTMs9tI/8igROv5DBgSarmTRy8i/76q3fP9tstkG5Cc+qn/lxzrvNi0aivylCm1sbXGQ9f/JUIY195DqA6XW7FS58eair+4tbJtWtwxTbaUBjgBiKDSb+s3IlZIpdmH3laUmHO3UM5zf9MkkUJyi2rm+ZZ5YjWcsb8HLVF2SLG6rkjQm9cv9O6jcRzWGa7TyCyXrk9fSHxOTbOncnGe1U19fUrFJTolnbuws32RTodyeefu0+4T5ghA5iXfEQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 52789ce5-19ed-4c53-94f8-08d79905e603
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 15:24:50.7436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LhUjTCYmlak01D4e2j6q4LcBHCt5TRKluZZVmEErwAzSdXVXfHx9mCMTCNoaxf/UIYZspZfw7ZGvV4LrdqMMew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2587
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_072457_130151_AD64EE9F 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, "Tan, Tee Min" <tee.min.tan@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > Fix MACRO function define for TX and RX user priority queue steering
> > for register masking and shifting.
> 
> I think this was already fixed as seen on:
> - https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-
> next.git/commit/?id=e8df7e8c233a18d2704e37ecff47583b494789d3
> 
> Did I forget something ?
This issue is indeed already fixed by the patch that you have pointed out.
Weifeng 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
