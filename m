Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B425F89A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eysLkF28kma4aLpB7sb2jrP8XUTfE+BpWm90r3iEIro=; b=iAZR+YSqhjIujy
	Tv7L9vU9zCYHzZ3J8VuE+ACeuE+J8ZNgYdxrH4s+cbRWRmlJdtfF9mp7Ds2gw/wucjHJqIbvXbEjd
	/04Rs9b9go3n4yanNmUEzOMlArWNG4VwWHjWvHxyeDs8uANxSbqjHLwpRO4R8WOAKRxQnOUBcyNRk
	jT97hqU9W4vjM2WkIXXiCJ7+Itpz/yq5DEo1zalOSw0BT6K14cK3a9yclTJz9zyZcz8O5paVIya/D
	E/4blHt6uE++MpU3vxC88ogM8xSDJMa10QJqgrRbvrq2PT8522ulV+I62fqPbwPPRhQkxLNzuTxOX
	oVHmdOSjQBzLAHQbDaqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQXY-00051g-GY; Tue, 12 Nov 2019 07:24:40 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQXL-00050S-0o
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:24:28 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAC7OLls037267;
 Tue, 12 Nov 2019 01:24:21 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573543461;
 bh=9ZjEggkK3tYtTfvVyv4LxqBOLJcpeT8JiS+RxzIUC7I=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=QcMaLS2gpVQKfVjYt3+Pr40c87QkE10hjw6CtAoXzDYohl5rT3zKu1DCZbHNbB9u6
 NUQDbUctWfRnd/2xcL2F/P5CAILp10Zh94rxHybOYz51g802mD9lsVjXqjBbsuRyiC
 B6H8Vzvg10kZWBVNETmTPG5mFxxCmhz8szpl1zD4=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAC7OLOM028549
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 Nov 2019 01:24:21 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 01:24:03 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 01:24:03 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAC7OHG7089194;
 Tue, 12 Nov 2019 01:24:17 -0600
Subject: Re: [PATCH v4 15/15] dmaengine: ti: k3-udma: Add glue layer for non
 DMAengine users
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-16-peter.ujfalusi@ti.com>
 <20191111061258.GS952516@vkoul-mobl>
 <6d4d2fcc-502b-4b41-cd71-8942741f4ad8@ti.com>
 <20191112053714.GX952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <b6b38b97-216f-c297-a414-e3c1f5703a68@ti.com>
Date: Tue, 12 Nov 2019 09:25:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191112053714.GX952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_232427_141651_6F897236 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi8xMS8yMDE5IDcuMzcsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMTEtMTEtMTksIDEy
OjMxLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4KPj4KPj4gT24gMTEvMTEvMjAxOSA4LjEyLCBW
aW5vZCBLb3VsIHdyb3RlOgo+Pj4gT24gMDEtMTEtMTksIDEwOjQxLCBQZXRlciBVamZhbHVzaSB3
cm90ZToKPj4+PiBGcm9tOiBHcnlnb3JpaSBTdHJhc2hrbyA8Z3J5Z29yaWkuc3RyYXNoa29AdGku
Y29tPgo+Pj4+Cj4+Pj4gQ2VydGFpbiB1c2VycyBjYW4gbm90IHVzZSByaWdodCBub3cgdGhlIERN
QWVuZ2luZSBBUEkgZHVlIHRvIG1pc3NpbmcKPj4+PiBmZWF0dXJlcyBpbiB0aGUgY29yZS4gUHJp
bWUgZXhhbXBsZSBpcyBOZXR3b3JraW5nLgo+Pj4+Cj4+Pj4gVGhlc2UgdXNlcnMgY2FuIHVzZSB0
aGUgZ2x1ZSBsYXllciBpbnRlcmZhY2UgdG8gYXZvaWQgbWlzdXNlIG9mIERNQWVuZ2luZQo+Pj4+
IEFQSSBhbmQgd2hlbiB0aGUgY29yZSBnYWlucyB0aGUgbmVlZGVkIGZlYXR1cmVzIHRoZXkgY2Fu
IGJlIGNvbnZlcnRlZCB0bwo+Pj4+IHVzZSBnZW5lcmljIEFQSS4KPj4+Cj4+PiBDYW4geW91IGFk
ZCBzb21lIG5vdGVzIG9uIHdoYXQgYWxsIGZlYXR1cmVzIGRvZXMgdGhpcyBsYXllciBpbXBsZW1l
bnQuLgo+Pgo+PiBJbiB0aGUgY29tbWl0IG1lc3NhZ2Ugb3IgaW4gdGhlIGNvZGU/Cj4gCj4gY29t
bWl0IGhlcmUgc28gdGhhdCB3ZSBrbm93IHdoYXQgdG8gZXhwZWN0LgoKQ2FuIHlvdSBjaGVjayB0
aGUgdjUgY29tbWl0IG1lc3NhZ2UgaWYgaXQgaXMgc3VmZmljaWVudD8gSWYgbm90LCBJIGNhbgpt
YWtlIGl0IG1vcmUgdmVyYm9zZSBmb3IgdjYuCgotIFDDqXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMg
RmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1
c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
