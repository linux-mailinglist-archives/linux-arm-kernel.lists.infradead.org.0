Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DFD7921A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 19:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FztG845qoOdgy1aUnquNl6GPLpnwh8gDC7us3wICg+M=; b=PTtDH6MyEjfENc
	jP3vuEV0Yp0GVFgPKUArl544Ry9xjyBsxCDRXZKhhFqx5W/JZ0jGws81NqIQ/bH1j3FZooq4ET+4p
	D44g9WxMMH49kW/VycY/QfVkY3Ou+1F5panrjXJNk8GBsTsdoja2GmdccJ6TVemGh3kbG2d3ullne
	p4TpthbtM7Z/qIGGSdwOmKr0CEI3aI5fXpO0tA4755jdOtx/p5WBRM9R7mTjW5PHiA5cflnkWNRho
	MZEKoEPBNeax44JnHW+B86Rt6aEMFgW9/8vRWN4TlAMkyotQfE9IsoaO6K+Do4mnvytxWTlH/PbFS
	DxbX1HNy8UPCj/O6bqCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9SY-0001ON-4U; Mon, 29 Jul 2019 17:29:18 +0000
Received: from rcdn-iport-8.cisco.com ([173.37.86.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs9SM-0001Nj-2M
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 17:29:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=456; q=dns/txt; s=iport;
 t=1564421345; x=1565630945;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ceMV1HsgTfN3GfDUcZ5zW2rzvBFNz0hpgiZSDaFK71Q=;
 b=NHwRYNAaHcz8UOQz54z2nohQQJadkESU4aYGMk9rzvJJns5aWjmoIjz5
 XcjmwHl+pibtv5D+690wfX4RltFgcHtT6xv1WW78qdq3uIFBfq00HFrLN
 2drCspcSVwTKgvO6NdKj2rpg3FRcwqyf3cR7ImxiT014xZRPaI120g9tj 8=;
IronPort-PHdr: =?us-ascii?q?9a23=3AJAHC5B1YXIAEhmd2smDT+zVfbzU7u7jyIg8e44?=
 =?us-ascii?q?YmjLQLaKm44pD+JxKGt+51ggrPWoPWo7JfhuzavrqoeFRI4I3J8RVgOIdJSw?=
 =?us-ascii?q?dDjMwXmwI6B8vQElbwLPfnZC8SF8VZX1gj9Ha+YgBY?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AJAAAvLD9d/5NdJa1mGgEBAQEBAgE?=
 =?us-ascii?q?BAQEHAgEBAQGBUwUBAQEBCwGBQ1ADgUIgBAsqh2UDhFKIMYI2JZdTgS6BJAN?=
 =?us-ascii?q?UCQEBAQwBAS0CAQGEQAKCbCM0CQ4BAwEBBAEBAgEGbYUeDIVLAQEBAgESLgE?=
 =?us-ascii?q?BNwEECwIBCEYyJQIEAQ0FIoMAgWsDDg8BoUYCgTiIYIIjgnoBAQWFCxiCEwm?=
 =?us-ascii?q?BNAGLXxeBQD+BEScME4JMPoQNg3SCJo5NhVNblgAJAoIalBQUB4IelXCNO5d?=
 =?us-ascii?q?WAgQCBAUCDgEBBYFQOIFYcBVlAYJBgkI3gzqKU3KBKYpxglIBAQ?=
X-IronPort-AV: E=Sophos;i="5.64,323,1559520000"; d="scan'208";a="605097458"
Received: from rcdn-core-11.cisco.com ([173.37.93.147])
 by rcdn-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 29 Jul 2019 17:29:05 +0000
Received: from xch-rcd-011.cisco.com (xch-rcd-011.cisco.com [173.37.102.21])
 by rcdn-core-11.cisco.com (8.15.2/8.15.2) with ESMTPS id x6THT5X5019098
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Mon, 29 Jul 2019 17:29:05 GMT
Received: from xhs-rtp-003.cisco.com (64.101.210.230) by XCH-RCD-011.cisco.com
 (173.37.102.21) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 29 Jul 2019 12:29:04 -0500
Received: from xhs-rtp-002.cisco.com (64.101.210.229) by xhs-rtp-003.cisco.com
 (64.101.210.230) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 29 Jul 2019 13:29:02 -0400
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-002.cisco.com (64.101.210.229) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Mon, 29 Jul 2019 13:29:02 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hlGy4ACrHN++civwXfwptYNhTeaMzce1iKt+TrvCHOwlvt3rZsStRxWD7JYnd/ys83GzmG0J7sZmzX6KLh/zyxMwn2hNCFgB/ixRGZkDSynGBuRHEq9rBDaqZ3sqZkrfdsBgr6d6q3c3o+oA51HuK+F1ABvwFvB4FsEgxvffHTbKDDx9SN0fa3ydCsfh3xu8QQMNcLLAefbmaAGEEq2PS7T/96pmkG7eETL+GidD/EuCP47K/2KYvALLs8D10g5doJjLnFnzr2pmr4pi/idEwZ7uQyhGT65gvAfsaqoSoymznHvhpK3V5zhS5MfePvDDFP4xMFW8vbCDmq2xoRw3RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C54rsf+b5DPterrMjfWuADkLCorY8sMzXgpZkUj9PXQ=;
 b=E/IY9YlZevY3FuRak8tovCJrZ/muFeuYLz2V8949jziBEePZgbZIt0unF9uRyx61T7dqUI4QHo8uH3wep5eEovn61guHM4zIcxXCW3qPPkoHnkI66th/72aQmMDhxAcF47f653dkQbSR5k90coi5qU669iqG2ejZC+GTl32IfK53wl+eKJ7Kqk1OLaZ3mT6Nwt3Sw9Kk356hLngxCIyssgurZBy9oic81eu9QjndoMlEL8/lq/AabAQm/dGlyFssLYnWKxsWVfsnwZFWVdsIigssRTbQn+vcTlKmabJkuqgf1ckRAu7u133SRiDwkixlCi7eLCV+O611abpc4SfGFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=cisco.com;dmarc=pass action=none
 header.from=cisco.com;dkim=pass header.d=cisco.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C54rsf+b5DPterrMjfWuADkLCorY8sMzXgpZkUj9PXQ=;
 b=0+ZBmQ4SlxZPaRjbpOhF4+wce0M3VH8MHsS5UTp3GnMKS1lGxWo/bDP3MMlFWqHjxtRV0otuwApyTOBMKVqWen6xsvxh+SkD4u+y7SUz1aBQLhNSeA90SyUJzPW3MF3bzdCmFkugIQqFDacmEGG3A2Wg12Ng7JSmHyCSrwe1o2M=
Received: from BY5PR11MB4007.namprd11.prod.outlook.com (10.255.161.92) by
 BY5PR11MB3880.namprd11.prod.outlook.com (10.255.160.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Mon, 29 Jul 2019 17:29:01 +0000
Received: from BY5PR11MB4007.namprd11.prod.outlook.com
 ([fe80::a9a1:897e:f584:9d6f]) by BY5PR11MB4007.namprd11.prod.outlook.com
 ([fe80::a9a1:897e:f584:9d6f%6]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 17:29:01 +0000
From: "Stefan Schaeckeler (sschaeck)" <sschaeck@cisco.com>
To: Andrew Jeffery <andrew@aj.id.au>, "linux-aspeed@lists.ozlabs.org"
 <linux-aspeed@lists.ozlabs.org>
Subject: Re: [PATCH 02/17] ARM: dts: aspeed-g5: Use recommended generic node
 name for SDMC
Thread-Topic: [PATCH 02/17] ARM: dts: aspeed-g5: Use recommended generic node
 name for SDMC
Thread-Index: AQHVQ3SkIHcc3CSkQUy+2gvzeKU5DabhafaA
Date: Mon, 29 Jul 2019 17:29:01 +0000
Message-ID: <EF113919-7590-442F-A1EE-12143FA4D960@cisco.com>
References: <20190726053959.2003-1-andrew@aj.id.au>
 <20190726053959.2003-3-andrew@aj.id.au>
In-Reply-To: <20190726053959.2003-3-andrew@aj.id.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.1b.0.190715
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sschaeck@cisco.com; 
x-originating-ip: [2001:420:30d:1254:1000:5c0c:8a0d:62f5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d2facdc-ed70-481b-51ce-08d7144a3f09
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB3880; 
x-ms-traffictypediagnostic: BY5PR11MB3880:
x-microsoft-antispam-prvs: <BY5PR11MB38803E2407D1FDC4D9D8B5A2C7DD0@BY5PR11MB3880.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(136003)(346002)(39860400002)(376002)(396003)(366004)(189003)(199004)(446003)(66946007)(66446008)(64756008)(66556008)(66476007)(476003)(8936002)(36756003)(71200400001)(54906003)(81156014)(2616005)(81166006)(76116006)(11346002)(6512007)(6436002)(86362001)(6486002)(58126008)(110136005)(14454004)(2906002)(99286004)(33656002)(102836004)(8676002)(53936002)(71190400001)(229853002)(6506007)(486006)(186003)(53546011)(478600001)(46003)(316002)(4744005)(6246003)(2501003)(25786009)(4326008)(305945005)(7736002)(76176011)(6116002)(256004)(14444005)(5660300002)(68736007)(41533002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB3880;
 H:BY5PR11MB4007.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0MymAVkWwBDg7NsRlj7EVo2UFpQ+Qtjl2Uy89p7HnkeHusmzB32n++6JgPjLjdqq51YBvuYFyqBggKkwna/kwFeLHR0qyH0KZhzokRyIU9abZq0UXouqsjKD0Nh29kwkkLrkSa3csZjRzKOQvenvksTD3cXZniQvAU8/PBhuEHWRaZNHdYp3JgNDLcO2aOQJX61H8ln5nzwlrzRJzfI0eYx0LjUHhPDX5IAhMKkc6lzQlxOyCClhFf8nhhbxWlrSDxAjfCD5Dzx2DicMQw5SU8jO6tjR3oGZMnxbyo21gydW2P6PJTXLwCcGaPbeA92onsqbzy7hvj7B7MH0MnOEOY8ew99CNOsROgNAfGNPHPZn25dd6lZB7ouNh01ROXe5BhfJaHViWd4Oc89bYQUvH5yaAr7UfOUN7F+0JLBht44=
Content-ID: <CAA3C299B7A78046AC880CC515AC5AC9@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d2facdc-ed70-481b-51ce-08d7144a3f09
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 17:29:01.2416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sschaeck@cisco.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3880
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.21, xch-rcd-011.cisco.com
X-Outbound-Node: rcdn-core-11.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_102906_204240_41E69F91 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "joel@jms.id.au" <joel@jms.id.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday, July 25, 2019 at 10:40 PM, Andrew Jeffery wrote:

> The EDAC is a sub-function of the SDRAM Memory Controller. Rename the
> node to the appropriate generic node name.
>
> Cc: Stefan M Schaeckeler <sschaeck@cisco.com>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  arch/arm/boot/dts/aspeed-g5.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
    
Reviewed-by: Stefan Schaeckeler <sschaeck@cisco.com>    


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
