Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F16A124B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 09:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyiKCzuggFy2dV7kCdAsAeh9KtaGHs3amp3AWJVoCjE=; b=Rw7cuxNsORmayJ
	J17N2QCTeVByGkOGmF9G4CCaUH1v6VmLJelv9GJ1tkBywbrajeYmmnUOXP5VcCezMEP/3lTRrExy9
	yDH62y0HJsCaFZZo/PO1Zj0VxB6QfatX3Y3iNykssyy4+PL8x52Z4FidHyOxljMeddWLauHmSBp6y
	ciDG5frUf79h1bbSUKxh3dK5VHh6yAPJ5Znb7Q+/wPoBmSRc6GEZvkgfTkSUCIWbgVHwwZ22EgCjO
	noydhW/x3ufou0uTr8zal6SFk2VMpzdBTQzmaK8tPtdjWM398pzkFn1QgeH+eS/0kxtL/EFmv1KbO
	ZQqoebtLZs2BnS8Ex+Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3EWd-0000CT-O1; Thu, 29 Aug 2019 07:07:20 +0000
Received: from mail-cys01nam02on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe45::617]
 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3EVf-000076-D3
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 07:06:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F7rUgn8n9PLJ2RCxN+znGewLOFYelGJqKC4QQmGLhe3czE/8bLBA6YyuubeHFQ6w68wQGtT3/d8lg2o+fbowV6GnPYzwrlj+Q83f6giopUChI6BzCM+1grLrE3i+uzwcVLJ/VOK05Fau1cXbAvWyoWnSNlbzXlLojf2MEZ3BlnKfTB2Qyae1niHOV9MDExspe173tSHqgUMghKWyROuZOZ4K4MNgH5mC/sfEqdSVOzjnGUT7THHuT70HJ/d8tjPVVAiuDg6i0DtLDJa7Vp3tOZ1yMuDI+xJhNKfI1oS8VEcuOSkc6yvxliYeAjbhhVwB53nlj4ZSZo5tQDe8Pb0mLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BhjqkoP+cfgrle1wujUhgUnrxijhKHag89STP5ESqIQ=;
 b=Vmd4x1JpRtmtRtNYZsKdG83dsrxIyLU1eHiMXdujmGJDle1Dsy/QgczfizZgS6TSWho/u9so8f2WGO/BYVKkqNNxhsmo5AbFysALV/YIKKr9gtrhaQ2wyf93YrWLr/IWMS7ol5bkLvGR+dwj7laNimgu0KKdZkildapq58l446pQq1bWFzXyodDYYN7iQke709tFbAnR+LJRDS6LjoS7bQ298lMJ/vczs3B03Q1/cenNUqofgr3xjuedRlu6g/939DtWcEgoghda2D3vT/SccroygMyp37tyhPNeodeG3KY3xWaRFAqGTOjGnNDDT73hf8zU8yej1NiOnCVUpFAjuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BhjqkoP+cfgrle1wujUhgUnrxijhKHag89STP5ESqIQ=;
 b=hGwbx72J8WJIPTYa7h7tghXAWQGA9Juhaq+sC3Qa7XNxxGk08OHnOYwjDx44om5QMWBqcviTCYn4TJa71mYNf/LS7X1FmYNVJC9B3BlvmQRWB6P8XDnf7Gk6njlcpvCpp3eSpWeNwDXsn0usOWOGj4lBOgUlYqE7/gpqsG/CdH0=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4615.namprd03.prod.outlook.com (20.179.90.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 07:06:14 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::391b:4d0f:a377:41c]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::391b:4d0f:a377:41c%4]) with mapi id 15.20.2220.013; Thu, 29 Aug 2019
 07:06:14 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v3] ARM: ftrace: remove mcount(),ftrace_caller_old() and
 ftrace_call_old()
Thread-Topic: [PATCH v3] ARM: ftrace: remove mcount(), ftrace_caller_old() and
 ftrace_call_old()
Thread-Index: AQHVWZ46Zhc7nRpNpE6gOQZveSAqyqcRuhEA
Date: Thu, 29 Aug 2019 07:06:14 +0000
Message-ID: <20190829145450.0c0f79ee@xhacker.debian>
References: <20190823182239.20f9a656@xhacker.debian>
In-Reply-To: <20190823182239.20f9a656@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY2PR01CA0041.jpnprd01.prod.outlook.com
 (2603:1096:404:ce::29) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 403d50d5-6e35-4b3b-79a2-08d72c4f615f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4615; 
x-ms-traffictypediagnostic: BYAPR03MB4615:
x-microsoft-antispam-prvs: <BYAPR03MB4615B1C499880BA23612201AEDA20@BYAPR03MB4615.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(376002)(346002)(39860400002)(199004)(189003)(446003)(99286004)(66946007)(11346002)(476003)(66446008)(64756008)(66556008)(66476007)(66066001)(8936002)(81166006)(8676002)(486006)(81156014)(478600001)(316002)(50226002)(14454004)(71190400001)(102836004)(1076003)(305945005)(386003)(110136005)(6506007)(7736002)(256004)(5660300002)(86362001)(54906003)(53936002)(6246003)(71200400001)(52116002)(186003)(9686003)(6512007)(229853002)(26005)(3846002)(6486002)(6116002)(6436002)(76176011)(25786009)(4326008)(2906002)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4615;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uqddwuvsiIzFbYBHiRNz0mbrYMh6TeEdy3ln2qS1X1uaMuW+3uw12k/E3/RABf/K5G6ll6WW13ShHMgPeegWtw6L5bccyA1zwdeFra3tWgZ5xSxE0eSSvwf4Qh6xjM+dmYgOc5ja/p11L/z6UbHWi9m5XiAYdrFBziZY2HQqUXKdvZFxcWL+kVpA2QlDfDE8fr2QjdgAFn7DdsWF7nODnT4YFONXIJK1hL7XOcKc7ISIa4A4j3IZ48dz3evhLfiP8syjjNXx7KXhldldNkB9O9Yt798BYDyakLzZx9wllrkzvVJw74AhCyAoRHQltGg27xFB/wbemaBhSJkiPtIn3tDYBDEsamX9VJbkaYOYN8lDnV71TJzc8qwDkjvatzEqOIOA1nSUihApFZbSsz/2xp+ds9fwjaNI3A5CStnAPU4=
x-ms-exchange-transport-forked: True
Content-ID: <D637AF53FFE02A4399732A3695A09051@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 403d50d5-6e35-4b3b-79a2-08d72c4f615f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 07:06:14.5858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f75y4odESQK25U9EN+ypGTMoAn/n3R1Qg+hLePVxnBU9W/D2OTtunPyQ6H3SvQ1Flt68H/XSDDkqdlbqf7oxQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_000619_749077_24AF8424 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Fri, 23 Aug 2019 18:22:39 +0800 Jisheng Zhang wrote:

> Commit d3c61619568c ("ARM: 8788/1: ftrace: remove old mcount support")
> removed the old mcount support, but forget to remove these three
> declarations. This patch removes them.

May I put this patch into your patch system?

thanks

> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> ---
> 
> Changes since v2:
>   - really remove mcount() declaration too. I made a mistake when sending out v2
> 
> Changes since v1:
>   - remove mcount() declaration too
> 
>  arch/arm/include/asm/ftrace.h | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm/include/asm/ftrace.h b/arch/arm/include/asm/ftrace.h
> index 18b0197f2384..48ec1d0337da 100644
> --- a/arch/arm/include/asm/ftrace.h
> +++ b/arch/arm/include/asm/ftrace.h
> @@ -11,7 +11,6 @@
>  #define MCOUNT_INSN_SIZE	4 /* sizeof mcount call */
>  
>  #ifndef __ASSEMBLY__
> -extern void mcount(void);
>  extern void __gnu_mcount_nc(void);
>  
>  #ifdef CONFIG_DYNAMIC_FTRACE
> @@ -23,9 +22,6 @@ static inline unsigned long ftrace_call_adjust(unsigned long addr)
>  	/* With Thumb-2, the recorded addresses have the lsb set */
>  	return addr & ~1;
>  }
> -
> -extern void ftrace_caller_old(void);
> -extern void ftrace_call_old(void);
>  #endif
>  
>  #endif


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
