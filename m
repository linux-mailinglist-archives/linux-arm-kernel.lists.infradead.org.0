Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC53D18153F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tUSHZLwXHrPzmqZ6xssQc53LeYAKn+vKy538AszurGM=; b=uKdf1NfF+4AJL4EJV77+CzdQn
	HtgflPJ37+pDQSBXQolq83Opavi6FYrkZCOT95q6UGA/pe3tBfP0fyGBn3+u9pitafiL4nQO337aw
	Lg9vCrzj4tSUipJ6KGtsFG7bc1CVM9U+Q6mvLBLIVyrt2YEKjP8bR1y8ew9lYg+sLmAM/ZkDjAqy0
	LM5Nbd/TNc4GyX2+E3sMjSlV9mpnBbl89e4iwrZLa3TXuLx+p95RV/HVz1/HRZGNl3uU8GAWwri15
	vxcR9TGqqOZmOOHK8//x7RD4oqLJdot4aNqg5zjPPvj2UBRhP8opyAkJr3WuVnPWg135fdMmoNx0h
	ssw9JoBIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxwX-00007g-U5; Wed, 11 Mar 2020 09:46:25 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxwQ-000070-Kj
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 09:46:20 +0000
Received: from LHREML714-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id BD410DA3ED635537FCE3;
 Wed, 11 Mar 2020 09:46:09 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML714-CAH.china.huawei.com (10.201.108.37) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 11 Mar 2020 09:46:09 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 11 Mar
 2020 09:46:09 +0000
Subject: Re: [PATCH RFC 0/3] perf/imx_ddr: Add system PMU support
To: Joakim Zhang <qiangqing.zhang@nxp.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
References: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
 <DB7PR04MB46185CDECB2475CC81CC405FE6FC0@DB7PR04MB4618.eurprd04.prod.outlook.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <80120a24-6fa5-d93b-1b3f-58100fe24024@huawei.com>
Date: Wed, 11 Mar 2020 09:46:08 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <DB7PR04MB46185CDECB2475CC81CC405FE6FC0@DB7PR04MB4618.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml735-chm.china.huawei.com (10.201.108.86) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_024618_827032_BEF822EC 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMDMvMjAyMCAwODo1MiwgSm9ha2ltIFpoYW5nIHdyb3RlOgo+IAo+IEtpbmRseSBQaW5n
Li4uCj4gCj4gQmVzdCBSZWdhcmRzLAo+IEpvYWtpbSBaaGFuZwo+IAo+PiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAu
Y29tPgo+PiBTZW50OiAyMDIwxOoy1MIyNsjVIDE1OjM1Cj4+IFRvOiBqb2huLmdhcnJ5QGh1YXdl
aS5jb207IHdpbGxAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb20KPj4gQ2M6IGRsLWxp
bnV4LWlteCA8bGludXgtaW14QG54cC5jb20+OyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPj4gU3ViamVjdDogW1BBVENIIFJGQyAwLzNdIHBlcmYvaW14X2RkcjogQWRkIHN5
c3RlbSBQTVUgc3VwcG9ydAo+Pgo+PiBIaSBKb2huLAo+Pgo+PiBUaGUgc3lzZnMgbG9jYXRpb24g
Zm9yIHVzZXJzcGFjZSB0byBnZXQgdGhlIFBNVSBpZGVudGlmaWVyIGhhcyBjaGVuZ2VkIGEgYml0
LAo+PiB0aGlzIGNvdWxkIGJlIG1vcmUgZm9ybWFsLgo+PiAJL3N5cy9idXMvZXZlbnRfc291cmNl
L2RldmljZXMvPFBNVSBERVZJQ0U+L2lkZW50aWZpZXIgU21hbGwgdXBkYXRlCj4+IHNob3VkIGJl
IGRvbmUgZnJvbSB1c2Vyc3BhY2UgOi0pCgpUbyBtZSwgdGhhdCBsb29rcyBvay4gTWF5YmUgTWFy
ayBvciBXaWxsIHdvdWxkIGxpa2UgdGhlIGZpbGUgCnJlbmFtZWQvcmVsb2NhdGVkLgoKQW5kIEkg
YWxyZWFkeSBnYXZlIGEgY29tbWVudCBvbiAiIFtQQVRDSCBSRkMgMi8zXSBiaW5kaW5ncy9wZXJm
L2lteC1kZHI6IAp1cGRhdGUgY29tcGF0aWJsZSBzdHJpbmciCgpUaGFua3MsCkpvaG4KCj4+Cj4+
IEhpIFdpbGwsIE1hcmssCj4+Cj4+IEFzIHdlIGRpc2N1c3NlZCBiZWZvcmUsIHRoaXMgcGF0Y2gg
c2V0IGludGVuZHMgdG8gZXhwb3NlIHN5c3RlbSBQTVUgaWRlbnRpZmllcgo+PiBmb3IgdXNlcnNw
YWNlLiBBbnlvbmUgd2FudHMgdG8gc3VwcG9ydCBzeXN0ZW0gUE1VIG11c3QgZXhwb3NlIHRoaXMK
Pj4gImlkZW50aWZpZXIiIHByb3BlcnR5LCBzaW5jZSBKb2huIHdpbGwgYWx3YXlzIHJlYWQgdGhp
cyBmaWxlIHRvIGdldCBzeXN0ZW0gUE1VJ3MKPj4gaWRlbnRpZmllci4KPj4KPj4gQW55IGNvbW1l
bnRzPwo+Pgo+PiBSZWdhcmRzLAo+PiBKb2FraW0KPj4KPj4gSm9ha2ltIFpoYW5nICgzKToKPj4g
ICAgcGVyZi9pbXhfZGRyOiBBZGQgc3lzdGVtIFBNVSBpZGVudGlmaWVyIGZvciB1c2Vyc3BhY2UK
Pj4gICAgYmluZGluZ3MvcGVyZi9pbXgtZGRyOiB1cGRhdGUgY29tcGF0aWJsZSBzdHJpbmcKPj4g
ICAgYXJjaDogYXJtNjQ6IGlteDhtcS9tL246IHJlbW92ZSB1bnVzZWQgY29tcGF0aWJsZSBzdHJp
bmcKPj4KPj4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wZXJmL2ZzbC1pbXgtZGRyLnR4dCAg
fCAgNCArLQo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS5kdHNpICAg
ICB8ICAyICstCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1uLmR0c2kg
ICAgIHwgIDIgKy0KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRz
aSAgICAgfCAgMiArLQo+PiAgIGRyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jICAgICAg
ICAgICAgICB8IDQ1ICsrKysrKysrKysrKysrKysrLS0KPj4gICA1IGZpbGVzIGNoYW5nZWQsIDQ4
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4+Cj4+IC0tCj4+IDIuMTcuMQo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
