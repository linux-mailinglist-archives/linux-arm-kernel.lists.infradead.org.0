Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD9532B29
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1fsqEpo/U4wIKsIVZ3i2seLsmRCgCn7+MQb5BccEzAo=; b=gKRXFKaoJv9OisQIEwQx130Oc
	uBArHv4Xk14zxoPu8bOEEWwJfibs1PzTee753Y6ZZHsxePz6pA4jI3J1QapOfbczGX8pRKUvfX5jX
	z7EaBGBxvKce1i0yaxXoNUkFJDHYP6ZIK66LZb9iQ5Dmkid71s+2F3+v/4s+v1TOw8iSgmhn5O3+M
	kNHAxKAI8n+v/m4m+VsvSRm2U+zX5C6RmDVY8Iy3BBo8JOK73WeOvfzC8RYv493684lncVsB6KYz0
	qJfKfUFgbox/FuKSjhTfOa9frVgQUOLwWzzUgoP6p3f1AlbePwk7cm0w7Rx9xC2kAS0trEnkW4+4N
	xcn3xMPvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXihR-0007NF-TW; Mon, 03 Jun 2019 08:52:13 +0000
Received: from mx01.hilscher.com ([46.189.19.166])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXihK-0007Ma-Lc
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:52:08 +0000
Received: from [10.13.5.83] (10.13.5.83) by maiser03.hilscher.local
 (192.168.100.44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 3 Jun
 2019 10:51:49 +0200
Subject: Re: [PATCH] ARM: delete netx machine
To: Linus Walleij <linus.walleij@linaro.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190521012801.15355-1-linus.walleij@linaro.org>
From: Michael Trensch <MTrensch@hilscher.com>
Message-ID: <3d7f4030-0076-5027-16a9-2abc10953e35@hilscher.com>
Date: Mon, 3 Jun 2019 10:51:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190521012801.15355-1-linus.walleij@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.13.5.83]
X-ClientProxiedBy: maiser03.hilscher.local (192.168.100.44) To
 maiser03.hilscher.local (192.168.100.44)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_015206_705970_2E9DDF25 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.189.19.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Robert Schwebel <r.schwebel@pengutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjEuMDUuMjAxOSAwMzoyOCwgTGludXMgV2FsbGVpaiB3cm90ZToKPiBBZnRlciBkaXNjdXNz
aW5nIHdpdGggdGhlIHN1YmFyY2ggbWFpbnRhaW5lcnMgYW5kIEhpbHNjaGVyLAo+IHdlIGNvbmNs
dWRlZCB0aGF0IHRoZSBuZXR4IHN1YmFyY2hpdGVjdHVyZSAoTmV0eCAxMDAvNTAwKQo+IGlzIG5v
IGxvbmdlciBtYWludGFpbmVkIG9yIHRlc3RlZCwgYW5kIG5vb25lIHdpbGwgbWlzcyBpdAo+IGlm
IHdlIGRlbGV0ZSBpdC4gU28gZGVsZXRlIGl0Lgo+Cj4gVGhlcmUgaXMgYSBuZXdlciBOZXR4IDQw
MDAgYXJjaGl0ZWN0dXJlIHdoaWNoIHdlIG1heSBzZWUKPiBpbmNsdWRlZCBhdCBzb21lIHBvaW50
LCBidXQgdGhpcyB3aWxsIGJlIHN1cHBvcnRlZCB1c2luZwo+IHRoZSBzdGFuZGFyZCBtdWx0aXBs
YXRmb3JtIGFuZCBkZXZpY2V0cmVlIG1lY2hhbmlzbXMgYW5kIGlzCj4gZWFzaWVyIHRvIGRldmVs
b3AgZnJvbSBzY3JhdGNoLgo+Cj4gQ2M6IE1pY2hhZWwgVHJlbnNjaCA8TVRyZW5zY2hAaGlsc2No
ZXIuY29tPgo+IENjOiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gQ2M6
IFJvYmVydCBTY2h3ZWJlbCA8ci5zY2h3ZWJlbEBwZW5ndXRyb25peC5kZT4KPiBTaWduZWQtb2Zm
LWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4gLS0tCgpBY2tl
ZC1ieTogTWljaGFlbCBUcmVuc2NoIDxNVHJlbnNjaEBoaWxzY2hlci5jb20+CgoKU29ycnkgZm9y
IHRoZSBkZWxheSwgSSBoYWQgc29tZSB3ZWVrcyBvZmYuCgoKTWl0IGZyZXVuZGxpY2hlbiBHcsO8
w59lbiAvIEJlc3QgcmVnYXJkcwoKTWljaGFlbCBUcmVuc2NoCi0tCk1pY2hhZWwgVHJlbnNjaCB8
IG5ldFggU3lzdGVtClBob25lOiArNDkgKDApIDYxOTAgOTkwNy0wIHwgRmF4OiArNDkgKDApIDYx
OTAgOTkwNy01MAoKSGlsc2NoZXIgR2VzZWxsc2NoYWZ0IGbDvHIgU3lzdGVtYXV0b21hdGlvbiBt
YkggICB8ICBSaGVpbnN0cmFzc2UgMTUgIHwgIDY1Nzk1IEhhdHRlcnNoZWltICB8ICBHZXJtYW55
ICB8ICB3d3cuaGlsc2NoZXIuY29tPGh0dHA6Ly93d3cuaGlsc2NoZXIuY29tPgpTaXR6IGRlciBH
ZXNlbGxzY2hhZnQgLyBwbGFjZSBvZiBidXNpbmVzczogSGF0dGVyc2hlaW0gIHwgIEdlc2Now6Rm
dHNmw7xocmVyIC8gbWFuYWdpbmcgZGlyZWN0b3I6IERpcGwuLUluZy4gSGFucy1Kw7xyZ2VuIEhp
bHNjaGVyCkhhbmRlbHNyZWdpc3RlciAvIGNvbW1lcmNpYWwgcmVnaXN0ZXI6IEZyYW5rZnVydCBC
IDI2ODczICB8ICBVc3QuIElkbnIuIC8gVkFUIE5vLjogREUxMTM4NTI3MTUKUmVnaXN0ZXJnZXJp
Y2h0IC8gcmVnaXN0ZXIgY291cnQ6IEFtdHNnZXJpY2h0IEZyYW5rZnVydC9NYWluCgpJbXBvcnRh
bnQgSW5mb3JtYXRpb246ClRoaXMgZS1tYWlsIG1lc3NhZ2UgaW5jbHVkaW5nIGl0cyBhdHRhY2ht
ZW50cyBjb250YWlucyBjb25maWRlbnRpYWwgYW5kIGxlZ2FsbHkgcHJvdGVjdGVkIGluZm9ybWF0
aW9uIHNvbGVseSBpbnRlbmRlZCBmb3IgdGhlIGFkZHJlc3NlZS4gSWYgeW91IGFyZSBub3QgdGhl
IGludGVuZGVkIGFkZHJlc3NlZSBvZiB0aGlzIG1lc3NhZ2UsIHBsZWFzZSBjb250YWN0IHRoZSBh
ZGRyZXNzZXIgaW1tZWRpYXRlbHkgYW5kIGRlbGV0ZSB0aGlzIG1lc3NhZ2UgaW5jbHVkaW5nIGl0
cyBhdHRhY2htZW50cy4gVGhlIHVuYXV0aG9yaXplZCBkaXNzZW1pbmF0aW9uLCBjb3B5aW5nIGFu
ZCBjaGFuZ2Ugb2YgdGhpcyBlLW1haWwgYXJlIHN0cmljdGx5IGZvcmJpZGRlbi4gVGhlIGFkZHJl
c3NlciBzaGFsbCBub3QgYmUgbGlhYmxlIGZvciB0aGUgY29udGVudCBvZiBzdWNoIGNoYW5nZWQg
ZS1tYWlscy4KCldpY2h0aWdlciBIaW53ZWlzOgpEaWVzZSBFLU1haWwgZWluc2NobGllw59saWNo
IGlocmVyIEFuaMOkbmdlIGVudGjDpGx0IHZlcnRyYXVsaWNoZSB1bmQgcmVjaHRsaWNoIGdlc2No
w7x0enRlIEluZm9ybWF0aW9uZW4sIGRpZSBudXIgZsO8ciBkZW4gQWRyZXNzYXRlbiBiZXN0aW1t
dCBzaW5kLiBTb2xsdGVuIFNpZSBuaWNodCBkZXIgYmV6ZWljaG5ldGUgQWRyZXNzYXQgc2Vpbiwg
c28gdGVpbGVuIFNpZSBkaWVzIGJpdHRlIGRlbSBBYnNlbmRlciB1bWdlaGVuZCBtaXQgdW5kIGzD
tnNjaGVuIFNpZSBkaWVzZSBOYWNocmljaHQgdW5kIGlocmUgQW5ow6RuZ2UuIERpZSB1bmJlZnVn
dGUgV2VpdGVyZ2FiZSwgZGFzIEFuZmVydGlnZW4gdm9uIEtvcGllbiB1bmQgamVkZSBWZXLDpG5k
ZXJ1bmcgZGVyIEUtTWFpbCBpc3QgdW50ZXJzYWd0LiBEZXIgQWJzZW5kZXIgaGFmdGV0IG5pY2h0
IGbDvHIgSW5oYWx0ZSB2b24gdmVyw6RuZGVydGVuIEUtTWFpbHMuCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
