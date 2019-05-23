Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E217B27B2F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9urzXPS5HifPVaFUROW1HMp9a+yoz4JgE513zOK44yc=; b=qMaoir130u95Hv
	T4Jibzks0xtySd4iYuLOE5Dih23x8W6x2SFAhPBJd6dFYQEKGIsWhvnHHBXwGL8ETJTqxpQp6GNYW
	SreurOGi8tMqMI3ZSD0TG494qde3qzwygdAMO+TUGwNSC3NTvEwpyuSgZuM6JiSgA678JFJTyYOo0
	q37HQ7GIrCb8QnQxdmsWIgKJqDTNoqDn+Rq/YqUAGbCl5U09U2vORDHqafsLpLojHWBi5Im1TuEK5
	DvU66N4Kjaa6L89N3opV9qsPrq3QB8ShQh1UG9hXQuLJAEmIHT+nwQz80dgRXQ1XTwzBlGlLlcN4q
	qlRUhRlSj76+lp6nojcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTlPj-0003Wq-CT; Thu, 23 May 2019 10:57:35 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTlPb-0003W4-DM
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:57:28 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4NAvMjw040457;
 Thu, 23 May 2019 05:57:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558609042;
 bh=LSEJtFUDM6YDrSW3z0O5orc8crYEJg4pp8/IPEdND4A=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=qVLmnzLf8/5JMVPAdud7G3aasywLvRGgzeD59+FaCfKb8NbMWdDnt+pT35cu2besm
 +eOWb+aVHIzfww7MiPBMlwUydyxT9iPBIiLXT6OubbyVPFjItcn5NC7r6H60DZStP1
 DaWKs0SmZz7HTEBOL84qr9XDU15bGRZFDm/jCH88=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4NAvMsN119479
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 23 May 2019 05:57:22 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 23
 May 2019 05:57:22 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 23 May 2019 05:57:22 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4NAvKDO018622;
 Thu, 23 May 2019 05:57:21 -0500
Subject: Re: [PATCH v3 0/2] dmaengine: ti: edma: Polled completion support
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
References: <20190521093646.21836-1-peter.ujfalusi@ti.com>
Message-ID: <19b0d346-5249-e832-8eea-685c8e7706e2@ti.com>
Date: Thu, 23 May 2019 13:57:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190521093646.21836-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_035727_552874_1636F7B4 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Vmlub2QsCgpPbiAyMS8wNS8yMDE5IDEyLjM2LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiBIaSwK
PiAKPiBDaGFuZ2VzIHNpbmNlIHYyOgo+IC0gRml4IHR5cG8gaW4gdGhlIGNvbW1lbnQgZm9yIHBh
dGNoIDAKPiAKPiBDaGFuZ2VzIHNpbmNlIHYxOgo+IC0gQ2xlYW51cCBwYXRjaCBmb3IgdGhlIGFy
cmF5IHJlZ2lzdGVyIGhhbmRsaW5nCj4gLSB0eXBvIGZpeGVkIGluIHBhdGNoMiBjb21taXQgbWVz
c2FnZQo+IAo+IFRoZSBjb2RlIGFyb3VuZCB0aGUgYXJyYXkgcmVnaXN0ZXIgYWNjZXNzIHdhcyBw
cmV0dHkgY29uZnVzaW5nIGZvciB0aGUgZmlyc3QKPiBsb29rLCBzbyBjbGVhbiB0aGVtIHVwIGZp
cnN0IHRoZW4gdXNlIHRoZSBjbGVhbmVyIHdheSBpbiB0aGUgcG9sbGVkIGhhbmRsaW5nLgo+IAo+
IFdoZW4gYSBETUEgY2xpZW50IGRyaXZlciBkZWNpZGVzIHRoYXQgaXQgaXMgbm90IHByb3ZpZGlu
ZyBjYWxsYmFjayBmb3IKPiBjb21wbGV0aW9uIG9mIGEgdHJhbnNmZXIgKGFuZC9vciBkb2VzIG5v
dCBzZXQgdGhlIERNQV9QUkVQX0lOVEVSUlVQVCkgYnV0Cj4gaXQgd2lsbCBwb2xsIHRoZSBzdGF0
dXMgb2YgdGhlIHRyYW5zZmVyIChpbiBjYXNlIG9mIHNob3J0IG1lbWNweSBmb3IKPiBleGFtcGxl
KSB3ZSB3aWxsIG5vdCBnZXQgaW50ZXJydXB0IGZvciB0aGUgY29tcGxldGlvbiBvZiB0aGUgdHJh
bnNmZXIgYW5kCj4gd2lsbCBub3QgbWFyayB0aGUgdHJhbnNhY3Rpb24gYXMgZG9uZS4KPiAKPiBD
aGVjayB0aGUgZXZlbnQgcmVnaXN0ZXJzIChFUiBhbmQgRUVSKSBhbmQgaWYgdGhlIGNoYW5uZWwg
aXMgaW5hY3RpdmUgdGhlbgo+IHJldHVybiB3aW90aCBETUFfQ09NUExFVEUgdG8gbGV0IHRoZSBj
bGllbnQga25vdyB0aGF0IHRoZSB0cmFuc2ZlciBpcwo+IGNvbXBsZXRlZC4KClBsZWFzZSBkbyBu
b3QgcGljayB0aGlzIHVwIHlldCwgSSBnb3QgcmVwb3J0IHRoYXQgaXQgbWlnaHQgY2F1c2Ugc2lk
ZQplZmZlY3Qgd2hpY2ggSSBuZWVkIHRvIGRlYnVnIHRvIHVuZGVyc3RhbmQuCgo+IAo+IFJlZ2Fy
ZHMsCj4gUGV0ZXIKPiAtLS0KPiBQZXRlciBVamZhbHVzaSAoMik6Cj4gICBkbWFlbmdpbmU6IHRp
OiBlZG1hOiBDbGVhbiB1cCB0aGUgMngzMmJpdCBhcnJheSByZWdpc3RlciBhY2Nlc3Nlcwo+ICAg
ZG1hZW5naW5lOiB0aTogZWRtYTogRW5hYmxlIHN1cHBvcnQgZm9yIHBvbGxlZCAobWVtY3B5KSBj
b21wbGV0aW9uCj4gCj4gIGRyaXZlcnMvZG1hL3RpL2VkbWEuYyB8IDEyOSArKysrKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDgxIGluc2Vy
dGlvbnMoKyksIDQ4IGRlbGV0aW9ucygtKQo+IAoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRz
IEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9C
dXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
