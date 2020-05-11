Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 633EE1CDA7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbYoBtMjnWaRqeIWmpS1pBLQexlpu5lZbvaRmf5102s=; b=APsVGT5vYWGxAV
	xVOs3tX3qjUJEeDA/YIFejdyguj7SAebdhLzYMsZ9OkgESwy1irYKIsRh7OGH1QIsqXj0l6LdkTR/
	bC8/IFKtJlcl78lxOEcGdDuVJ8nwtRfbMe0AtnLsJ4Lpie9pM0dBdkCaidF17FfEuIwBAbcq6o+jT
	+gZ+tdOD9S+Rb6/+nRmj6xJvkBv01gyGV6wykZ/Xrbj/OdrqhsjoCoZ3exg0JplIjhFKQstMAuTVI
	zNaMk2zeoWyhVzdy0p+aTKPpfl+YMkzNuUdhMIHVzL+M5uViX/UyXzdLTD1oilRokJjiqQjL6SDZH
	3GHXhJb7EftkP0HX47LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7vo-0005ZE-GA; Mon, 11 May 2020 12:53:16 +0000
Received: from mail-co1nam04on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe4d::618]
 helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7vh-0005YQ-9M
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 12:53:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MjWZ0jJCfrA+NECWGshNHnMx7sflrch0VeFR1+IP8gr1rp8/bM0ASo0B9fH6Mtx5zCl2SJMc+A8S8Ud0ADrEtxg96peHsRM7qZu9EaP/ntNm7ixg7CxWmJNNomFy54EvT7HYLkneLvrYUXAqt7KKDggtewdGjhhqmauhDkW4RqvAPE/ufiNQzgN+rlTrMlmjDzsdC+zO3g/vE5dcv0J3dNtGYmJblyTfkKtL3WattcakMJzimO01tEILd0VnMtWYcLN4EZDhDvoLysxLCOSD5fR4THzktrRS3cdIqJ/+E74xiMgTtJf3l/eO4zZA7MJFsPHxaMCm/24y1I2th28TQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EzKrZlEB3SW3jYqgBUXJjeyJzaabF1yCPC9N4YjsQ60=;
 b=deVJO9LtqZsHltgu+z4d4xAYoQ/GZu7n4S06U/QgqwA0aELFbRPPVGtsA7pqfsDBz33PZcgI7svsZmq5G2cIY7KBhrWfeyT5IFDe0PNbAma8cOHIFiwJroTrmw93ECf0+JYMspmHD9kV7BQbfoJlTVJ1egzXHNdg5HIb6gIAxABEVNvCNct4vNP06iRUhjwVyC0IAIT5BnY1v0EAeteaAgt75MEmoBadFwiZFkIvObnBQdh7kgisc6XhrRDeCLTsSpXkEEEE9zdZxqLrb4sr87tGW/Iy94QmP5p8tIAztUc3C1yoMUGlssVWOAuD19AYMg4UZOpUgK8U5g6mhX4xRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=collabora.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EzKrZlEB3SW3jYqgBUXJjeyJzaabF1yCPC9N4YjsQ60=;
 b=tdnZIujIZXDk6woNNNLArqbyPl3oLJMx61i8zXdL2LG7qyWADswB2UCXY6M+DgOXWVcnxRRHeyPhxmaSnTYwiVXMLfO54xIjc5Lh9VnuWjeV9bI7mvvtGKVG1CU/JeCNIwlIWyNKm+LY28fYer48XFqMJz92WHxzMgIPLbjeWt8=
Received: from SN6PR05CA0022.namprd05.prod.outlook.com (2603:10b6:805:de::35)
 by DM5PR02MB3385.namprd02.prod.outlook.com (2603:10b6:4:68::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Mon, 11 May
 2020 12:53:04 +0000
Received: from SN1NAM02FT038.eop-nam02.prod.protection.outlook.com
 (2603:10b6:805:de:cafe::cd) by SN6PR05CA0022.outlook.office365.com
 (2603:10b6:805:de::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.11 via Frontend
 Transport; Mon, 11 May 2020 12:53:04 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; collabora.com; dkim=none (message not signed)
 header.d=none;collabora.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT038.mail.protection.outlook.com (10.152.72.69) with Microsoft SMTP
 Server id 15.20.2979.29 via Frontend Transport; Mon, 11 May 2020 12:53:04
 +0000
Received: from [149.199.38.66] (port=53576 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jY7vN-0003sv-5A; Mon, 11 May 2020 05:52:49 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jY7vc-0007FL-2D; Mon, 11 May 2020 05:53:04 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 04BCqrgR008129; 
 Mon, 11 May 2020 05:52:53 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jY7vR-0007Bj-4N; Mon, 11 May 2020 05:52:53 -0700
Subject: Re: [PATCH v2 3/6] ARM: dts: zynq: add port definitions to hdmi-tx@39
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Michal Simek <michal.simek@xilinx.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-4-ricardo.canuelo@collabora.com>
 <28fa96d51523448656c71656dc80177d08c481ed.camel@collabora.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <9d3a0eea-578d-3138-f386-a3f47fed4233@xilinx.com>
Date: Mon, 11 May 2020 14:52:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <28fa96d51523448656c71656dc80177d08c481ed.camel@collabora.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(39860400002)(346002)(376002)(46966005)(33430700001)(356005)(81166007)(110136005)(5660300002)(2616005)(31686004)(54906003)(31696002)(44832011)(70586007)(8676002)(82740400003)(9786002)(82310400002)(336012)(47076004)(426003)(478600001)(70206006)(4326008)(316002)(26005)(186003)(2906002)(36756003)(33440700001)(8936002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0f2bf8b1-ac9c-4d6f-9f09-08d7f5aa3ee3
X-MS-TrafficTypeDiagnostic: DM5PR02MB3385:
X-Microsoft-Antispam-PRVS: <DM5PR02MB33853636F7E1B4D114C3622BC6A10@DM5PR02MB3385.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 73GYutVjEqWfECQinwIFGhFUkamUkZ5u8skiNLLMKLuKzy4wkCI9uGe7kvqrgdbU3MSw0BmLy76WXjGBxsISFnTZ5FNqO5u9pat5H8N9UccgSXKotsg0CoGoV2duhCG6W51zBb9DpjwFYD8b0AfzUSDgooBvfIImsVGuxnfPzfg4vvpZVKCtBqhDwb80FNMapz3K29KCkF1/IUoTGMVHr75wRkgb6eehvxGeWMOK7A+buAnePaitIkdcQ1KYVx/Dpf3lRlsuJ8URAUHf+qg3We/Ht1kMWgiN8KiTehv0ElhYWc68lN0V/b+Tbugs/bfOeaZMn+7q2P8nFKNrf6MLMRKNdTfOx4ceFTzC98p1c4zqZKJRwflzbgUc/tbprilzsYzhFTu/4MgpSm3skxB8MDD5nJ5ZxRcs7Vuw2x7Y/v1xx7yhS/LdzSqxz8ZcZVzpZMs+LspWVn98x1DtlcJ+Wp6LVH9QoVEiF/IJBSVA0iOAAKUe1ui4qN6UD8o2mWpNrQaTUvMwC+jKexpYNvnkQDs5kQqOYy9CyRVmkjf1yqhtMwXgV7HS2Nq4bz2aRGTk4dRETSpbH2m186ngSHZb26+KgLXU7nqJ6cSdb7HtMd0=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 12:53:04.4414 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f2bf8b1-ac9c-4d6f-9f09-08d7f5aa3ee3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3385
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_055309_329056_1BF3F251 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 kernel@collabora.com,
 =?UTF-8?Q?Ricardo_Ca=c3=b1uelo?= <ricardo.canuelo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEuIDA1LiAyMCAxNDoyNCwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+IChBZGRpbmcgTWlj
aGFsKQo+IAo+IE9uIE1vbiwgMjAyMC0wNS0xMSBhdCAxMzowNiArMDIwMCwgUmljYXJkbyBDYcOx
dWVsbyB3cm90ZToKPj4gRGVmaW5lIGEgJ3BvcnRzJyBub2RlIGZvciAnYWR2NzUxMTogaGRtaS10
eEAzOScgdG8gbWFrZSBpdCBjb21wbGlhbnQgd2l0aAo+PiB0aGUgYWRpLGFkdjc1MTEgRFQgYmlu
ZGluZy4KPj4KPj4gVGhpcyBmaWxscyB0aGUgbWluaW11bSByZXF1aXJlbWVudHMgdG8gbWVldCB0
aGUgYmluZGluZyByZXF1aXJlbWVudHMsCj4+IHJlbW90ZSBlbmRwb2ludHMgYXJlIG5vdCBkZWZp
bmVkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIENhw7F1ZWxvIDxyaWNhcmRvLmNhbnVl
bG9AY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICBhcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAy
LmR0cyB8IDEwICsrKysrKysrKysKPj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3p5bnEtemM3MDYuZHRz
IHwgMTAgKysrKysrKysrKwo+PiAgMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCj4+
Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0cyBiL2FyY2gv
YXJtL2Jvb3QvZHRzL3p5bnEtemM3MDIuZHRzCj4+IGluZGV4IDI3Y2Q2Y2I1MmYxYi4uNzlmZDIz
NmVkZGVkIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0cwo+
PiArKysgYi9hcmNoL2FybS9ib290L2R0cy96eW5xLXpjNzAyLmR0cwo+PiBAQCAtMTM1LDYgKzEz
NSwxNiBAQAo+PiAgCQkJCWFkaSxpbnB1dC1jbG9jayA9ICIxeCI7Cj4+ICAJCQkJYWRpLGlucHV0
LXN0eWxlID0gPDM+Owo+PiAgCQkJCWFkaSxpbnB1dC1qdXN0aWZpY2F0aW9uID0gInJpZ2h0IjsK
Pj4gKwkJCQlwb3J0cyB7Cj4+ICsJCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiArCQkJCQkj
c2l6ZS1jZWxscyA9IDwwPjsKPj4gKwkJCQkJcG9ydEAwIHsKPj4gKwkJCQkJCXJlZyA9IDwwPjsK
Pj4gKwkJCQkJfTsKPj4gKwkJCQkJcG9ydEAxIHsKPj4gKwkJCQkJCXJlZyA9IDwxPjsKPj4gKwkJ
CQkJfTsKPj4gKwkJCQl9Owo+PiAgCQkJfTsKPj4gIAkJfTsKPj4gIAo+PiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvenlucS16YzcwNi5kdHMgYi9hcmNoL2FybS9ib290L2R0cy96eW5x
LXpjNzA2LmR0cwo+PiBpbmRleCA3Nzk0M2MxNmQzM2YuLjk5ZmE1MWJhNmU5MyAxMDA2NDQKPj4g
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvenlucS16YzcwNi5kdHMKPj4gKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvenlucS16YzcwNi5kdHMKPj4gQEAgLTkzLDYgKzkzLDE2IEBACj4+ICAJCQkJYWRp
LGlucHV0LWNsb2NrID0gIjF4IjsKPj4gIAkJCQlhZGksaW5wdXQtc3R5bGUgPSA8Mz47Cj4+ICAJ
CQkJYWRpLGlucHV0LWp1c3RpZmljYXRpb24gPSAiZXZlbmx5IjsKPj4gKwkJCQlwb3J0cyB7Cj4+
ICsJCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiArCQkJCQkjc2l6ZS1jZWxscyA9IDwwPjsK
Pj4gKwkJCQkJcG9ydEAwIHsKPj4gKwkJCQkJCXJlZyA9IDwwPjsKPj4gKwkJCQkJfTsKPj4gKwkJ
CQkJcG9ydEAxIHsKPj4gKwkJCQkJCXJlZyA9IDwxPjsKPj4gKwkJCQkJfTsKPj4gKwkJCQl9Owo+
PiAgCQkJfTsKPj4gIAkJfTsKPj4gIAo+PiAtLSAKPj4gMi4xOC4wCj4+Cj4+Cj4gCj4gCgpKdXN0
IGMmcCBMYXVyZW50J3MgcmVwbHkgdG8gUmljYXJkbyBhYm91dCBpdC4KCiJDb21wbGV0aW5nIHRo
ZSBib2FyZCBkZWZpbml0aW9uIGlzIGJlc3QgSSBiZWxpZXZlLiBTb21ldGltZXMgdGhlCmVuZHBv
aW50IGlzIHJlbGF0ZWQgdG8gYW4gYWRkLW9uIGJvYXJkIHRoYXQgaXNuJ3QgZGVzY3JpYmVkIGFz
IHBhcnQgb2YKdGhlIGJhc2UgRFRTLiBUaGUgcG9ydHMgYXJlIHJlcXVpcmVkIGFzIHRoZXkgZGVz
Y3JpYmUgaGFyZHdhcmUKaW50ZXJmYWNlcywgYnV0IGhhdmluZyBubyBlbmRwb2ludCBpbiBhIHBv
cnQgc2hvdWxkbid0IGJlIGEgcHJvYmxlbSwgaXQKanVzdCBtZWFucyB0aGUgcG9ydCBpcyBub3Qg
Y29ubmVjdGVkLiIKCkkgYW0gb2sgd2l0aCBpdCB0b28gdGhhdCdzIHdoeQoKQWNrZWQtYnk6IE1p
Y2hhbCBTaW1layA8bWljaGFsLnNpbWVrQHhpbGlueC5jb20+CgpUaGFua3MsCk1pY2hhbHQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
