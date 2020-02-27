Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FB91711A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 08:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yew13GU1PexAmDLiqvJHYE5dBEG8MRugjR8rerccdJw=; b=gYMNcHjhzr0oaO
	A54Bjkaqz7MbvVwkrLEtHGg2o6fcDB5y6d3Jlh6hVStcMATbbgqq7vAm7BeZQU/sVOW6IyQ9/KQ6s
	TSp4s+E8c9D9FY/+qhTn8CSKe7u/lgl1sf6DQfy5Yuc+0XB2yXEIFevn+OvrxDcO9p3QiSwp5M3XK
	XvaqgsbXfajlefGLM4mT0JQ6gik/a06q2Vha0AhoBWZU2M/IBwcR6QS324o2YN85WUWq8qi73XZ/a
	rQyhM/DisZmFQslKvk07nDV1dNrxfqlnN626e9SwY95tRbZTbsm+gzYY13tBhpI8h0CuIAL1Ug4kC
	z6Uhz2hCUMRZ00o165Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7DrL-0006m7-Tq; Thu, 27 Feb 2020 07:45:27 +0000
Received: from mail-dm6nam12on2068.outbound.protection.outlook.com
 ([40.107.243.68] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7DrB-0006k5-9X
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 07:45:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ii5kyFTDK2fS2Sm1mvA1RAdQPJTnKXFYq5WBSAWIKnNbIi6r2BvRGciQQKPs4Dt8X0vFKlJJn290dDySTiDLV6fZ1PQEAnYx4pQV/2n6iKFiswy6oHedX/laOGLQNhVAZrpqFP3MFUKzt1uAeg/RbGD0VSfPtALp+UNJM85DqUgqgxubEnNMoljmZPcUrCjKIRkMWtXhZuVsVMtir3DGZs++QXjqcWBTQUg1Osf93BIJh38Mkx7fLobmtzeHqbWASWY447YYge/Fnkzj+mefGM6tN0E8w/3NFtygjlbM6z1NBKIPF1zrPXflAY+Z8/+TnVjzEpdlOvW+WSPHg7a7sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=akZi8cmjc/vuquXyEQCeRmFYUUHvBAj0FWnjpsQIB5g=;
 b=eh+uQUljBOKVOes1kz68BXs/f4NP0OEizJMu97tCwblFnZoFRQF0NEV9mmB/K/KWycf5ojCXutShh0aZADNlfrr90b5tLDlILJe3nZMSM8XSlZoVyD7KV7VFWKCt8saxsBOhaIW3t5v3Od3syMxCU+rJss0muWWVCbAD9l5k6oOEaGGnhoR/t55O1j/l5PTkqamvydmglMmCk0b2jG2wTiGzxdSkP7fiOZZAEAOXuPODR0gmxzyD5xxUfkvP0fokWnoo3M1I/Fi4GTamsorRkRrjYnwTvQWnfJApoNhlsgKjiiZa4EDJM3mebnE4f8SUYQ3o+tUh09tKzexYIxbwqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=akZi8cmjc/vuquXyEQCeRmFYUUHvBAj0FWnjpsQIB5g=;
 b=ozgbh7ueTH7ez62MatS78SnrnGdMAIfzPHnbwL1RUtfByk0d55A/2I142WcMGwJ8GfoaPG2b3UZ6rasH4bzZoe8odHxnxp/2w5OsRHz7FIE/+sySpIQQkqIGgw0AEaNdixB8k5NUlLsyqDYKOcxnvWIK/Qrh9YpLIuOUut+1jfA=
Received: from SN1PR12CA0046.namprd12.prod.outlook.com (2603:10b6:802:20::17)
 by DM6PR02MB7066.namprd02.prod.outlook.com (2603:10b6:5:25b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Thu, 27 Feb
 2020 07:45:14 +0000
Received: from SN1NAM02FT033.eop-nam02.prod.protection.outlook.com
 (2603:10b6:802:20:cafe::e9) by SN1PR12CA0046.outlook.office365.com
 (2603:10b6:802:20::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21 via Frontend
 Transport; Thu, 27 Feb 2020 07:45:14 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT033.mail.protection.outlook.com (10.152.72.133) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2772.15
 via Frontend Transport; Thu, 27 Feb 2020 07:45:13 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j7Dr7-0005ZU-Bp; Wed, 26 Feb 2020 23:45:13 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j7Dr2-0004Lb-8i; Wed, 26 Feb 2020 23:45:08 -0800
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j7Dqs-00042E-9d; Wed, 26 Feb 2020 23:44:58 -0800
Subject: Re: [PATCH] ARM: dts: zynq: Add support for Z-turn Lite board
To: =?UTF-8?Q?Joni_Lepist=c3=b6?= <joni.m.lepisto@gmail.com>,
 robh+dt@kernel.org, mark.rutland@arm.com
References: <20200226090337.16065-1-joni.m.lepisto@gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <5e1b9f81-af5c-3091-5d62-ea2d938bae83@xilinx.com>
Date: Thu, 27 Feb 2020 08:44:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200226090337.16065-1-joni.m.lepisto@gmail.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(199004)(189003)(2616005)(70586007)(70206006)(9786002)(426003)(31696002)(316002)(4326008)(31686004)(44832011)(6666004)(356004)(8936002)(36756003)(4744005)(8676002)(26005)(186003)(81156014)(478600001)(81166006)(5660300002)(336012)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB7066; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 74095eaa-2d58-40bd-55e6-08d7bb58fafa
X-MS-TrafficTypeDiagnostic: DM6PR02MB7066:
X-Microsoft-Antispam-PRVS: <DM6PR02MB70663E8770A9EFB0691533EBC6EB0@DM6PR02MB7066.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 03264AEA72
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +r8l93wR/mHolSjyOi0u+PajAz3zn6X0B3GlufAFDSwUkYvyjk9a/uyCaVTIhRSo2ibsSsmqAc8q9VqI73nqc5GOYbmiEFARn71zSg6hjBeYtzx8JipadPsZCIgZKmNbeOQB0320Q0MlROcRKXkNSGSLTqXqhQOiOSM8jKRPx8dw9/nJYlvgF0eadqex6YrJy1SuqFon/mrHzrTXNHuoQoKAW4mvcdchUn/+6yoZMYobsHnR4wATU1WTy3bep8bCzR9v6lP86ck+hhemcOuy1p7qSCN1pC+fR38mng9PtoPh+pzVtHGFMUVJ/C5MigTy0zrYQcTY4ztgJ+6ORJiwh4I0b+L1AQ6IKZluS3xPBhAdQS/sxIRT3YQU2KqDdMjDYoB/9YJ48KKD3hhsVNIxBt7+VGC5fExXdv40/fXodY8YNC6rNhXdTYkpviLZl/x2
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2020 07:45:13.7319 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 74095eaa-2d58-40bd-55e6-08d7bb58fafa
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB7066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_234517_342000_B395F545 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.68 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjYuIDAyLiAyMCAxMDowMywgSm9uaSBMZXBpc3TDtiB3cm90ZToKPiBBZGQgYSBkdHMgZm9y
IE1ZSVIgWi10dXJuIExpdGUgYW5kIHJlc3BlY3RpdmUgdGFyZ2V0IGluIE1ha2VmaWxlCj4gYmFz
ZWQgb24gdGhlIGV4aXN0aW5nIFotdHVybiBkdHMgd2hpY2ggaXMgY29tcGF0aWJsZSBleGNlcHQg
Zm9yCj4gbWVtb3J5IHNpemUuCgpKdXN0IGEgc2lkZSBub3RlIC0gSSBjYW4ndCBzZWUgYW55IHJl
YXNvbiB0byBkdXBsaWNhdGUgdGhlIHdob2xlIGR0cwpmaWxlIGlmIGl0IGlzIGp1c3QgdGhlIHNh
bWUgLSB5b3UgY2FuIHNpbXBseSAjaW5jbHVkZSAienlucS16dHVybi5kdHMiCmFuZCB0aGVuIGNo
YW5nZS9yZXdyaXRlIHRoaW5ncy4KClNlY29uZCB0aGluZyBpcyB0aGF0IG15aXIsenlucS16dHVy
biBpcyBub3QgZXZlbiBsaXN0ZWQgaW4gYW55IHlhbWwKYmluZGluZyBmaWxlIHRoYXQncyB3aHkg
ZHRic19jaGVjayB3aWxsIGZhaWwuCgpJIGV4cGVjdCB5b3UgdXNlIHN0YW5kYXJkIGJvb3QgZmxv
dyB2aWEgdS1ib290IHdoaWNoIGNhbiBkZXRlY3QgYW5kCnVwZGF0ZSBtZW1vcnkgc2l6ZSBhdXRv
bWF0aWNhbGx5IGZvciB5b3UuIEl0IG1lYW5zIGZvciBrZXJuZWwgeW91IGNhbgpldmVuIHBsYWNl
IHRoZXJlIDwwIDA+IGFuZCB1LWJvb3Qgd2lsbCBmaWxsIGl0LgoKSnVzdCBhIHN1bW1hcnkgSSBk
b24ndCB0aGluayBpdCBpcyB3b3J0aCB0byBhZGQgc3VwcG9ydCB0byB0aGlzIGJvYXJkIGluCkxp
bnV4LiBBbmQgaW4gVS1Cb290IHlvdSBzaG91bGQgZW5hYmxlIG1lbW9yeSBhdXRvZGV0ZWN0aW9u
IGFuZCB5b3Ugd2lsbApnZXQgc3VwcG9ydCBmb3IgdGhpcyBsaXRlIGJvYXJkIGZvciBmcmVlLgoK
VGhhbmtzLApNaWNoYWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
