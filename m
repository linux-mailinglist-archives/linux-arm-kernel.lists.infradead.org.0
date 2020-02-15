Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FA715FB84
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 01:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kX8tl59yCorrf9896Tw/0PiNbqTX0u2pN8sqyGVuK0Y=; b=qePyvT/cRucqGvp3dbM6mz9px
	yJQ7g8EqeVX2ZOP8kfQDFmyHseRTqMOdluYKhZic7DIbSPTUBZDJE90QT93OkfDJIFD+wv5ifNUjK
	7FFZpqH3h5V9JFcQVUW/eoEvGXFevZQG+KFYE6vXhWuNkNOLl8bOJEy/ICLU2dlmlt6WHPvx/xKPK
	oiT/jxc8rSKDFdKpznre2CbhiEqXVKdDIVpYnuuwOTyr/KjK4cGnMWuz8LlAm+7W4Z2tbwPs525pk
	2Nji5ZJqZlPxNskx59fgo8d+k4rFwRtWQNPzTJKYJxM2f5w5Lr9+h1IAkqLvguUj835Nzd3I11d9g
	O9EitTT4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2lSo-0000Of-2N; Sat, 15 Feb 2020 00:37:42 +0000
Received: from mail-bn8nam11on2077.outbound.protection.outlook.com
 ([40.107.236.77] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2lSe-0000NK-Pd
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 00:37:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lal7GOGfXlyyecBOkkKwzAZ5BEFFEGWsOsfDJxDeIw2gVFts4NSumRXML9a41W5YRwUvQNCl03PTR9psLZbN4lkdwwUdUrTkzYBZYa/p2L4GbOyL2M6PIBtvy3mnQXDlNpGP5SMtJM2kS4PsIUWim+aM3awFF4qPAu//PR2fhkSQn0OwLJFk0mab380eoLTKikaX9Kjhvfy8brBk2HvB6D0uMXUB4soeBBFcLg0DOou82bfu66wyrZ83qxwKW+/6rlIVkHZzWYWX2bRuJLGwW7mSqEaNzniAWfuC850izv7EJRWUVZ4RS9uUzNM2K+eU4xHhKC4Cn0PamD3Evrq3yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KTVZuSyp8EMT2HKD39vRBzg/EbHKvnw/CY36uQpP5mc=;
 b=KMHvStgpa1hp5NCDmtm9+0TW9OeM6PKntj45erv6WEu+LzJohgjEdthv8c7cxwJdTTVHZcS5/fhIx1c2yntQ9SGc/XdbYJkMaNE7zOW2mGX+TcguffbGZcxXqv2KnakD18SS2w/RnOHYXBR0nMYtQqIWy3BniIF7fQIVMpvVo/bF8rKlr+VAaAU/5kjuG83Z5dA/+/ikTFywDf/A9K4CwcVA3wCdLvLgEth33Vsj+vEp9/dc/RzgGnajPA39JSFazUnRDztF/tj7O2BFLbxebdtytnve6uMlLtxyyBH3oGocOwBTyOjDj+YmDPfN/e4QJYqM+xNgc/0XqbcTJIH+uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KTVZuSyp8EMT2HKD39vRBzg/EbHKvnw/CY36uQpP5mc=;
 b=rOfyZAp/T8gYqcy6ZrHZMdNqs9BV7xJNPG+noCvuAJa0y8KumBCber18ZGz7aSDhhERN0P7/9Eh7rYxAaKwRFfyHRnsX/JWKQgSYEsvAXxg61E4QxrwFct+2BByZOssXCIqImSTyrf53Ejzg10U3SB8LMYO8QzCKKS2Y+cnuFYk=
Received: from BN6PR02CA0039.namprd02.prod.outlook.com (2603:10b6:404:5f::25)
 by MN2PR02MB6000.namprd02.prod.outlook.com (2603:10b6:208:112::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.23; Sat, 15 Feb
 2020 00:37:26 +0000
Received: from SN1NAM02FT035.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::207) by BN6PR02CA0039.outlook.office365.com
 (2603:10b6:404:5f::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22 via Frontend
 Transport; Sat, 15 Feb 2020 00:37:26 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT035.mail.protection.outlook.com (10.152.72.145) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Sat, 15 Feb 2020 00:37:25 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j2lSX-00053z-Gm; Fri, 14 Feb 2020 16:37:25 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j2lSS-0005cp-Cz; Fri, 14 Feb 2020 16:37:20 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01F0bGLX010039; 
 Fri, 14 Feb 2020 16:37:16 -0800
Received: from [172.19.0.52] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jollys@xilinx.com>)
 id 1j2lSO-0005cd-J1; Fri, 14 Feb 2020 16:37:16 -0800
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
To: "'Greg KH'" <gregkh@linuxfoundation.org>,
 Jolly Shah <jolly.shah@xilinx.com>
References: <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
 <20200124060339.GB2906795@kroah.com>
 <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
 <20200128062814.GA2097606@kroah.com>
 <4EF659A1-2844-46B9-9ED6-5A6A20401D9D@xilinx.com>
 <20200131061038.GA2180358@kroah.com>
 <BYAPR02MB40559D6B62C4532C0EAD0281B7070@BYAPR02MB4055.namprd02.prod.outlook.com>
 <20200131093646.GA2271937@kroah.com>
 <3ef20e9d-052f-665c-7fc8-69a1f8bc9bd2@xilinx.com>
 <20200214171005.GB4034785@kroah.com>
From: Jolly Shah <jolly.shah@xilinx.com>
Message-ID: <c2914eae-bf95-ad51-79a4-07f199f37e27@xilinx.com>
Date: Fri, 14 Feb 2020 16:37:16 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200214171005.GB4034785@kroah.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(376002)(199004)(189003)(54906003)(110136005)(9786002)(5660300002)(31696002)(81166006)(81156014)(8936002)(316002)(8676002)(336012)(478600001)(36756003)(186003)(2906002)(31686004)(26005)(44832011)(53546011)(70206006)(426003)(70586007)(7416002)(2616005)(356004)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6000; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2414580e-71e9-495f-6948-08d7b1af3ade
X-MS-TrafficTypeDiagnostic: MN2PR02MB6000:
X-Microsoft-Antispam-PRVS: <MN2PR02MB6000A625D07DCE3AF3498442B8140@MN2PR02MB6000.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 03142412E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ipcVGRrniD/A6m+ChqyCb2xBvbXYKNhMfUqSEmRT1npdBwgAFN7xvW55GUlMlyWcZrr4idLrM8AWtLHCEU0pDDGUBw7L8KDLN4OXJwmCFi1jcd3aAtfzUGLHpoMchlBQEBZKrCrHpLX7boId6xmxucOCqcpr6g2Khq2ozqVweoKFvI4ioeXRbLr5N0LKImLYJb3+Fl/bqNnwkS8D7aVOgPJArq6XtfSyfr/MZUHoIM2MrIGkNfHnS4PDPYErqwINuiqoaBORhD0sObN+XkG0QKlwZnzWaqhEBo4Txp3Xp+TQnErX+HnZBX/d7JSxkauDmd91O1dRb7suIIBGW+K1PCSexXYFGHBg6CPdrLpxzNWeCcmTZBgF4/VI6rSbGdOdy5qjXEGOSY1UrHnE5UpmYy3OsOXQzYycj/bk9SOf8C5tdhObhaYRKNWGeLuhVyjv9U3f05/FRZeXBdfBjUw69pnIwT/Jn7mhVsl2+grZziUZldKqrKlALgxEJd/eHn1EOLiRbZZbq4UZtpNs++eDfQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2020 00:37:25.9430 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2414580e-71e9-495f-6948-08d7b1af3ade
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_163732_903362_265F860E 
X-CRM114-Status: GOOD (  31.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.77 listed in list.dnswl.org]
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
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3JlZywKClRoYW5rcyBmb3IgdGhlIHJlc3BvbnNlLgoKID4gLS0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tLQogPiBGcm9tOiAnR3JlZyBLaCcgPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3Jn
PgogPiBTZW50OiAgRnJpZGF5LCBGZWJydWFyeSAxNCwgMjAyMCA5OjEwQU0KID4gVG86IEpvbGx5
IFNoYWggPGpvbGx5LnNoYWhAeGlsaW54LmNvbT4KID4gQ2M6IFJhamFuIFZhamEgPFJBSkFOVkB4
aWxpbnguY29tPiwgQXJkLmJpZXNoZXV2ZWxAbGluYXJvLm9yZyAKPGFyZC5iaWVzaGV1dmVsQGxp
bmFyby5vcmc+LCBNaW5nb0BrZXJuZWwub3JnIDxtaW5nb0BrZXJuZWwub3JnPiwgCk1hdHRAY29k
ZWJsdWVwcmludC5jby51ayA8bWF0dEBjb2RlYmx1ZXByaW50LmNvLnVrPiwgClN1ZGVlcC5ob2xs
YUBhcm0uY29tIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4sIEhrYWxsd2VpdDFAZ21haWwuY29tIAo8
aGthbGx3ZWl0MUBnbWFpbC5jb20+LCBLZWVzY29va0BjaHJvbWl1bS5vcmcgPGtlZXNjb29rQGNo
cm9taXVtLm9yZz4sIApEbWl0cnkudG9yb2tob3ZAZ21haWwuY29tIDxkbWl0cnkudG9yb2tob3ZA
Z21haWwuY29tPiwgTWljaGFsIFNpbWVrIAo8bWljaGFsc0B4aWxpbnguY29tPiwgTGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnIAo8bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnPiwgTGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZyAKPGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc+CiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMS80XSBmaXJtd2FyZTog
eGlsaW54OiBBZGQgc3lzZnMgaW50ZXJmYWNlCiA+Cj4gT24gTW9uLCBGZWIgMTAsIDIwMjAgYXQg
MDQ6NTc6MDFQTSAtMDgwMCwgSm9sbHkgU2hhaCB3cm90ZToKPj4gSGkgR3JlZywKPj4KPj4+IC0t
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLS0KPj4+IEZyb206ICdHcmVnIEtoJyA8Z3JlZ2toQGxp
bnV4Zm91bmRhdGlvbi5vcmc+Cj4+PiBTZW50OiAgRnJpZGF5LCBKYW51YXJ5IDMxLCAyMDIwIDE6
MzZBTQo+Pj4gVG86IFJhamFuIFZhamEgPFJBSkFOVkB4aWxpbnguY29tPgo+Pj4gQ2M6IEpvbGx5
IFNoYWggPEpPTExZU0B4aWxpbnguY29tPiwgQXJkIEJpZXNoZXV2ZWwKPj4gPGFyZC5iaWVzaGV1
dmVsQGxpbmFyby5vcmc+LCBNaW5nbyA8bWluZ29Aa2VybmVsLm9yZz4sIE1hdHQKPj4gPG1hdHRA
Y29kZWJsdWVwcmludC5jby51az4sIFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+
LCBIa2FsbHdlaXQxCj4+IDxoa2FsbHdlaXQxQGdtYWlsLmNvbT4sIEtlZXNjb29rIDxrZWVzY29v
a0BjaHJvbWl1bS5vcmc+LCBEbWl0cnkgVG9yb2tob3YKPj4gPGRtaXRyeS50b3Jva2hvdkBnbWFp
bC5jb20+LCBNaWNoYWwgU2ltZWsgPG1pY2hhbHNAeGlsaW54LmNvbT4sCj4+IExpbnV4LWFybS1r
ZXJuZWwgPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz4sIExpbnV4LWtlcm5l
bAo+PiA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4KPj4+IFN1YmplY3Q6IFJlOiBbUEFU
Q0ggdjIgMS80XSBmaXJtd2FyZTogeGlsaW54OiBBZGQgc3lzZnMgaW50ZXJmYWNlCj4+Pgo+Pj4g
T24gRnJpLCBKYW4gMzEsIDIwMjAgYXQgMDk6MDU6MTVBTSArMDAwMCwgUmFqYW4gVmFqYSB3cm90
ZToKPj4+PiBIaSBHcmVnLAo+Pj4+Cj4+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+
Pj4+IEZyb206IEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+Pj4+PiBTZW50
OiAzMSBKYW51YXJ5IDIwMjAgMTE6NDEgQU0KPj4+Pj4gVG86IEpvbGx5IFNoYWggPEpPTExZU0B4
aWxpbnguY29tPgo+Pj4+PiBDYzogYXJkLmJpZXNoZXV2ZWxAbGluYXJvLm9yZzsgbWluZ29Aa2Vy
bmVsLm9yZzsgbWF0dEBjb2RlYmx1ZXByaW50LmNvLnVrOwo+Pj4+PiBzdWRlZXAuaG9sbGFAYXJt
LmNvbTsgaGthbGx3ZWl0MUBnbWFpbC5jb207IGtlZXNjb29rQGNocm9taXVtLm9yZzsKPj4+Pj4g
ZG1pdHJ5LnRvcm9raG92QGdtYWlsLmNvbTsgTWljaGFsIFNpbWVrIDxtaWNoYWxzQHhpbGlueC5j
b20+OyBSYWphbiBWYWphCj4+Pj4+IDxSQUpBTlZAeGlsaW54LmNvbT47IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgtCj4+Pj4+IGtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmcKPj4+Pj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAxLzRdIGZpcm13YXJlOiB4aWxpbng6IEFk
ZCBzeXNmcyBpbnRlcmZhY2UKPj4+Pj4KPj4+Pj4gRVhURVJOQUwgRU1BSUwKPj4+Pj4KPj4+Pj4g
T24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgMTE6NTk6MDNQTSArMDAwMCwgSm9sbHkgU2hhaCB3cm90
ZToKPj4+Pj4+IEhpIEdyZWcsCj4+Pj4+Pgo+Pj4+Pj4g77u/T24gMS8yNy8yMCwgMTA6MjggUE0s
ICJsaW51eC1rZXJuZWwtb3duZXJAdmdlci5rZXJuZWwub3JnIG9uIGJlaGFsZiBvZiBHcmVnCj4+
Pj4+IEtIIiA8bGludXgta2VybmVsLW93bmVyQHZnZXIua2VybmVsLm9yZyBvbiBiZWhhbGYgb2YK
Pj4+Pj4gZ3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+ICAg
ICAgIE9uIE1vbiwgSmFuIDI3LCAyMDIwIGF0IDExOjAxOjI3UE0gKzAwMDAsIEpvbGx5IFNoYWgg
d3JvdGU6Cj4+Pj4+PiAgICAgICA+ICAgICA+ID4gPiArICAgICByZXQgPSBrc3RydG9sKHRvaywg
MTYsICZ2YWx1ZSk7Cj4+Pj4+PiAgICAgICA+ICAgICA+ID4gPiArICAgICBpZiAocmV0KSB7Cj4+
Pj4+PiAgICAgICA+ICAgICA+ID4gPiArICAgICAgICAgICAgIHJldCA9IC1FRkFVTFQ7Cj4+Pj4+
PiAgICAgICA+ICAgICA+ID4gPiArICAgICAgICAgICAgIGdvdG8gZXJyOwo+Pj4+Pj4gICAgICAg
PiAgICAgPiA+ID4gKyAgICAgfQo+Pj4+Pj4gICAgICAgPiAgICAgPiA+ID4gKwo+Pj4+Pj4gICAg
ICAgPiAgICAgPiA+ID4gKyAgICAgcmV0ID0gZWVtaV9vcHMtPmlvY3RsKDAsIHJlYWRfaW9jdGws
IHJlZywgMCwgcmV0X3BheWxvYWQpOwo+Pj4+Pj4gICAgICAgPiAgICAgPiA+Cj4+Pj4+PiAgICAg
ICA+ICAgICA+ID4gVGhpcyBmZWVscyAidHJpY2t5IiwgaWYgeW91IHRpZSB0aGlzIHRvIHRoZSBk
ZXZpY2UgeW91IGhhdmUgeW91ciBkcml2ZXIKPj4+Pj4+ICAgICAgID4gICAgID4gPiBib3VuZCB0
bywgd2lsbCB0aGlzIG1ha2UgaXQgZWFzaWVyIGluc3RlYWQgb2YgaGF2aW5nIHRvIGdvIHRocm91
Z2ggdGhlCj4+Pj4+PiAgICAgICA+ICAgICA+ID4gaW9jdGwgY2FsbGJhY2s/Cj4+Pj4+PiAgICAg
ICA+ICAgICA+ID4KPj4+Pj4+ICAgICAgID4gICAgID4KPj4+Pj4+ICAgICAgID4gICAgID4gR0dT
KGdlbmVyYWwgZ2xvYmFsIHN0b3JhZ2UpIHJlZ2lzdGVycyBhcmUgaW4gUE1VIHNwYWNlIGFuZCBs
aW51eAo+Pj4+PiBkb2Vzbid0IGhhdmUgYWNjZXNzIHRvIGl0Cj4+Pj4+PiAgICAgICA+ICAgICA+
IEhlbmNlIGlvY3RsIGlzIHVzZWQuCj4+Pj4+PiAgICAgICA+Cj4+Pj4+PiAgICAgICA+ICAgICBX
aHkgbm90IGp1c3QgYSAicmVhbCIgY2FsbCB0byB0aGUgZHJpdmVyIHRvIG1ha2UgdGhpcyB0eXBl
IG9mIHJlYWRpbmc/Cj4+Pj4+PiAgICAgICA+ICAgICBZb3UgZG9uJ3QgaGF2ZSBpb2N0bHMgd2l0
aGluIHRoZSBrZXJuZWwgZm9yIG90aGVyIGRyaXZlcnMgdG8gY2FsbCwKPj4+Pj4+ICAgICAgID4g
ICAgIHRoYXQncyBub3QgbmVlZGVkIGF0IGFsbC4KPj4+Pj4+ICAgICAgID4KPj4+Pj4+ICAgICAg
ID4gdGhlc2UgcmVnaXN0ZXJzIGFyZSBmb3IgdXNlcnMgIGFuZCBmb3Igc3BlY2lhbCBuZWVkcyB3
aGVyZSB1c2VycyB3YW50cwo+Pj4+Pj4gICAgICAgPiB0byByZXRhaW4gdmFsdWVzIG92ZXIgcmVz
ZXRzLiBidXQgYXMgdGhleSBiZWxvbmcgdG8gUE1VIGFkZHJlc3Mgc3BhY2UsCj4+Pj4+PiAgICAg
ICA+IHRoZXNlIGludGVyZmFjZSBBUElzIGFyZSBwcm92aWRlZC4gVGhleSBkb27igJl0IGFsbG93
IGFjY2VzcyB0byBhbnkKPj4+Pj4+ICAgICAgID4gb3RoZXIgcmVnaXN0ZXJzLgo+Pj4+Pj4KPj4+
Pj4+ICAgICAgIFRoYXQncyBub3QgdGhlIGlzc3VlIGhlcmUuICBUaGUgaXNzdWUgaXMgeW91IGFy
ZSB1c2luZyBhbiAiaW50ZXJuYWwiCj4+Pj4+PiAgICAgICBpb2N0bCwgaW5zdGVhZCBqdXN0IG1h
a2UgYSAicmVhbCIgY2FsbC4KPj4+Pj4+Cj4+Pj4+PiBTb3JyeSBJIGFtIG5vdCBjbGVhci4gRG8g
eW91IG1lYW4gdGhhdCB3ZSBzaG91bGQgdXNlIGxpbnV4IHN0YW5kYXJkCj4+Pj4+PiBpb2N0bCBp
bnRlcmZhY2UgaW5zdGVhZCBvZiBpbnRlcm5hbCBpb2N0bCBieSBtZW50aW9uaW5nICJyZWFsIiA/
Cj4+Pj4+Cj4+Pj4+IE5vLCB5b3Ugc2hvdWxkIGp1c3QgbWFrZSBhICJyZWFsIiBmdW5jdGlvbiBj
YWxsIHRvIHRoZSBleGFjdCB0aGluZyB5b3UKPj4+Pj4gd2FudCB0byBkby4gIE5vdCBoYXZlIGFu
IGludGVybmFsIG11bHRpLXBsZXhvciBpb2N0bCgpIGNhbGwgdGhhdCBvdGhlcnMKPj4+Pj4gdGhl
biBjYWxsLiAgVGhpcyBpc24ndCBhIG1pY3Jva2VybmVsIDopCj4+Pj4gW1JhamFuXSBTb3JyeSBm
b3IgbXVsdGlwbGUgYmFjayBhbmQgZm9ydGggYnV0IGFzIEkgdW5kZXJzdGFuZCwgeW91IGFyZSBz
dWdnZXN0aW5nIHRvIGNyZWF0ZSBhIG5ldyBBUEkgZm9yCj4+Pj4gUmVhZC93cml0ZSBvZiBHR1Mg
cmVnaXN0ZXIgaW5zdGVhZCBvZiB1c2luZyBQTV9JT0NUTCBBUEkgKGVlbWlfb3BzLT5pb2N0bCkg
Zm9yIG11bHRpcGxlIHB1cnBvc2UuIElzIG15IHVuZGVyc3RhbmRpbmcgY29ycmVjdD8KPj4+Cj4+
PiBUaGF0IGlzIGNvcnJlY3QuCj4+Cj4+Cj4+Cj4+IFdvdWxkIGxpa2UgdG8gY2xhcmlmeSBwdXJw
b3NlIG9mIGhhdmluZyBpb2N0bCBBUEkgdG8gYXZvaWQgYW55IGNvbmZ1c2lvbi4KPj4gZWVtaSBp
bnRlcmZhY2UgYXBpcyBhcmUgZGVmaW5lZCB0byBiZSBwbGF0Zm9ybSBpbmRlcGVuZGVudCBhbmQg
YWxsb3dzIGNsb2NrLAo+PiByZXNldCwgcG93ZXIgZXRjIG1hbmFnZW1lbnQgdGhyb3VnaCBmaXJt
d2FyZSBidXQgYXBhcnQgZnJvbSB0aGVzZSBnZW5lcmljCj4+IG9wZXJhdGlvbnMsIHRoZXJlIGFy
ZSBzb21lIG9wZXJhdGlvbnMgd2hpY2ggbmVlZHMgc2VjdXJlIGFjY2VzcyB0aHJvdWdoCj4+IGZp
cm13YXJlLiBFeGFtcGxlcyBhcmUgYWNjZXNzaW5nIHNvbWUgc3RvcmFnZSByZWdpc3RlcnMoZ2dz
IGFuZCBwZ2dzKSBmb3IKPj4gaW50ZXIgYWdlbnQgY29tbXVuaWNhdGlvbiwgY29uZmlndXJpbmcg
YW5vdGhlciBhZ2VudChSUFUpIG1vZGUsIGJvb3QgZGV2aWNlCj4+IGNvbmZpZ3VyYXRpb24gZXRj
LiBUaG9zZSBvcGVyYXRpb25zIGFyZSBjb3ZlcmVkIGFzIGlvY3RscyBhcyB0aGV5IGFyZSB2ZXJ5
Cj4+IHBsYXRmb3JtIHNwZWNpZmljLiBBbHNvIG9ubHkgd2hpdGVsaXN0ZWQgb3BlcmF0aW9ucyBh
cmUgYWxsb3dlZCB0aHJvdWdoCj4+IGlvY3RsIGFuZCBpcyBub3QgZXhwb3NlZCB0byB1c2VyIGZv
ciBhbnkgcmFuZG9tIHJlYWQvd3JpdGUgb3BlcmF0aW9uLgo+Pgo+PiBPbG9mIGVhcmxpZXIgaGFk
IHNhbWUgY29uY2VybnMuIFdlIGhhZCBjbGFyaWZpZWQgdGhlIHB1cnBvc2UgYW5kIHdpdGggaGlz
Cj4+IGFncmVlbWVudCwgaW5pdGlhbCBzZXQgb2YgaW9jdGxzIHdlcmUgYWNjZXB0ZWQuCj4+ICho
dHRwczovL3d3dy5sa21sLm9yZy9sa21sLzIwMTgvOS8yNC8xNTcwKQo+Pgo+PiBQbGVhc2Ugc3Vn
Z2VzdCB0aGUgYmVzdCBhcHByb2FjaCB0byBoYW5kbGUgdGhpcyBmb3IgY3VycmVudCBhbmQgZnV0
dXJlCj4+IHBhdGNoZXMuCj4gCj4gT2ssIGluIGxvb2tpbmcgZnVydGhlciBhdCB0aGlzLCBpdCdz
IGJvdGggYmV0dGVyIHRoYW4gSSB0aG91Z2h0LCBhbmQKPiB0b3RhbGx5IHdvcnNlLgo+IAo+IFRo
aXMgaW50ZXJmYWNlIHlvdSBhbGwgYXJlIHVzaW5nIHdoZXJlIHlvdSBhc2sgdGhlIGZpcm13YXJl
IGRyaXZlciBmb3IgYQo+IHBvaW50ZXIgdG8gYSBzZXQgb2Ygb3BlcmF0aW9uIGZ1bmN0aW9ucyBh
bmQgdGhlbiBtYWtlIGNhbGxzIHRocm91Z2ggdGhhdAo+IGlzIGluZGljaXRpdmUgb2YgYW4gYXBp
IHRoYXQgaXMgTk9UIHdoYXQgd2Ugbm9ybWFsbHkgdXNlIGluIExpbnV4IGF0Cj4gYWxsLgo+IAo+
IEp1c3QgbWFrZSB0aGUgZGlyZWN0IGNhbGwgdG8gdGhlIGZpcm13YXJlIGRyaXZlciwgbm8gbmVl
ZCB0byBtdWNrIGFyb3VuZAo+IHdpdGggdGFibGVzIG9mIGZ1bmN0aW9uIHBvaW50ZXJzLiAgSW4g
ZmFjdCwgd2l0aCB0aGUgc3BlY3RyZSBjaGFuZ2VzLAo+IHlvdSBqdXN0IG1hZGUgdGhpbmdzIHNs
b3dlciB0aGFuIG5lZWRlZCwgYW5kIHlvdSBjYW4gZ2V0IGJhY2sgYSBidW5jaCBvZgo+IHRocm91
Z2hwdXQgYnkgcmVtb3ZpbmcgdGhhdCB3aG9sZSBtaWRkbGUgbGF5ZXIuCj4gCgphcm0sc2NwaSBp
cyBkb2luZyB0aGUgc2FtZSB3YXkgYW5kIHdlIHRob3VnaHQgdGhpcyBhcHByb2FjaCB3aWxsIGJl
IG1vcmUgCmFjY2VwdGFibGUgdGhhbiBkaXJlY3QgZnVuY3Rpb24gY2FsbHMgYnV0IGhhcHB5IHRv
IGNoYW5nZSBhcyBzdWdnZXN0ZWQuCgo+IFNvIGdvIGRvIHRoYXQgZmlyc3QgcGxlYXNlLCBiZWZv
cmUgYWRkaW5nIGFueSBuZXcgc3R1ZmYuCj4gCj4gTm93IGZvciB0aGUgaW9jdGwsIHllYWgsIHRo
YXQncyBub3QgYSAibm9ybWFsIiBwYXR0ZXJuIGVpdGhlci4gIEJ1dAo+IHJpZ2h0IG5vdyB5b3Ug
b25seSBoYXZlIDIgImRpZmZlcmVudCIgaW9jdGxzIHRoYXQgeW91IGNhbGwuICBTbyB3aHkgbm90
Cj4ganVzdCB0dXJuIHRob3NlIDIgaW50byByZWFsIGZ1bmN0aW9uIGNhbGxzIGFzIHdlbGwgdGhh
dCB0aGVuIG1ha2VzIHRoZQo+ICJpb2N0bCIgY2FsbCB0byB0aGUgaGFyZHdhcmU/ICBUaGF0IG1h
a2VzIHRoaW5ncyBhIGxvdCBtb3JlIG9idmlvdXMgb24KPiB0aGUga2VybmVsIGRyaXZlciBzaWRl
IGV4YWN0bHkgd2hhdCBpcyBnb2luZyBvbi4KPiAKClN1cmUgYXMgaSB1bmRlcnN0YW5kIGZpcm13
YXJlIGRyaXZlciB3aWxsIHByb3ZpZGUgcmVhbCBmdW5jdGlvbiBjYWxscyB0byAKYmUgdXNlZCBi
eSB1c2VyIGRyaXZlcnMgYW5kIHVuZGVybmVhdGggaXQgd2lsbCBjYWxsIGlvY3RsIGZvciBkZXNp
cmVkIApvcGVyYXRpb24uIFBsZWFzZSBjb3JyZWN0IGlmIEkgbWlzdW5kZXJzdG9vZC4KClRoYW5r
cywKSm9sbHkgU2hhaAoKCj4gSWYgeW91IG5lZWQgdG8gYWRkIG1vcmUgImlvY3RsIiBsaWtlIGNh
bGxzLCBqdXN0IGFkZCB0aGVtIGFzIG1vcmUKPiBmdW5jdGlvbnMsIG5vIGJpZyBkZWFsLiAgSG93
IG1hbnkgbW9yZSBvZiB0aGVzZSBhcmUgeW91IGdvaW5nIHRvIG5lZWQKPiBvdmVyIHRpbWU/Cj4g
Cj4gQnV0IHRoYXQncyBub3QgYWxsIHRoYXQgYmlnIG9mIGEgZGVhbCByaWdodCBub3csIGdldCBy
aWQgb2YgdGhhdCB3aG9sZQo+IG1pZGRsZS1sYXllciBmaXJzdCwgdGhhdCdzIG1vcmUgaW1wb3J0
YW50IHRvIGNsZWFuIHVwLiAgWW91IHdpbGwgZ2V0IHJpZAo+IG9mIGEgbG90IG9mIHVubmVlZGVk
IGNvZGUgYW5kIGluZGlyZWN0aW9uIHRoYXQgd2F5LCBtYWtpbmcgaXQgc2ltcGxlcgo+IGFuZCBl
YXNpZXIgdG8gdW5kZXJzdGFuZCB3aGF0IGV4YWN0bHkgaXMgaGFwcGVuaW5nLgo+IAo+IHRoYW5r
cywKPiAKPiBncmVnIGstaAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
