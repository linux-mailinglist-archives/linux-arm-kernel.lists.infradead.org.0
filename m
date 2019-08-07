Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1198492E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MKTFnFbU2uhM4RG60ZcF1zwAi7bP7rmGrkHeAvZNZLs=; b=oUIgRicD74KL+JZlILQ/JxEFq
	5PtPe66rJ1ytJeUOwGTQkDPpof1DpmFw8OBOqbAqqOWedsmwoN8tDEFBteNWrN/ZeOjNAKks+tX7i
	Wmx7ocrcDMbDdtaVSvO+ywsf6H/NRHHzmcLEdQjvCg76d6yNvku3EQQBqrYYqPq8rS+oy0uun4E3o
	kAEZdjPBlws5Y/pZ5SlNRM0l5mzppJIxynAZh5lFWqIMvefMqsHLgfgrM02Ls1CqqeDeC1bdplEH2
	ySWfPeEwgJa62b9nru2VeoFVs/6DiTNseiObRrXNXYH6OElOFG07TJSkRdv7N3yno7c/chSj7Ghjq
	nGdMJrNZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIwQ-00041Z-IB; Wed, 07 Aug 2019 10:13:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIw2-00040o-Ah
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:12:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFCC028;
 Wed,  7 Aug 2019 03:12:42 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE71B3F575;
 Wed,  7 Aug 2019 03:12:40 -0700 (PDT)
Subject: Re: [PATCHv9 1/3] arm64: dts: qcom: sdm845: Add Coresight support
To: saiprakash.ranjan@codeaurora.org, mathieu.poirier@linaro.org,
 bjorn.andersson@linaro.org, leo.yan@linaro.org,
 alexander.shishkin@linux.intel.com, agross@kernel.org,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <be6d77eb6c7498df09d04e0a369d4d65b38f4b8e.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <b50c06d4-8298-7abe-4442-2aff336509f5@codeaurora.org>
 <b5cb08ef-ca2f-e852-f234-d0f693b58596@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <adc1ac7a-877a-73cf-4051-4e3b4017799b@arm.com>
Date: Wed, 7 Aug 2019 11:12:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b5cb08ef-ca2f-e852-f234-d0f693b58596@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_031246_413203_D4FF329D 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: rnayak@codeaurora.org, marc.w.gonzalez@free.fr,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 sibis@codeaurora.org, vivek.gautam@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2FpLAoKT24gMDcvMDgvMjAxOSAxMTowOCwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IEhp
IFN1enVraSwKPiAKPiBPbiA3LzMxLzIwMTkgMTE6MzUgQU0sIFNhaSBQcmFrYXNoIFJhbmphbiB3
cm90ZToKPj4gSGkgU3V6dWtpLAo+Pgo+PiBPbiA3LzMxLzIwMTkgMTE6MjggQU0sIFNhaSBQcmFr
YXNoIFJhbmphbiB3cm90ZToKPj4+IEFkZCBjb3Jlc2lnaHQgY29tcG9uZW50cyBmb3VuZCBvbiBR
dWFsY29tbSBTRE04NDUgU29DLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFNhaSBQcmFrYXNoIFJh
bmphbiA8c2FpcHJha2FzaC5yYW5qYW5AY29kZWF1cm9yYS5vcmc+Cj4+PiBSZXZpZXdlZC1ieTog
TWF0aGlldSBQb2lyaWVyIDxtYXRoaWV1LnBvaXJpZXJAbGluYXJvLm9yZz4KPj4+IEFja2VkLWJ5
OiBTdXp1a2kgSyBQb3Vsb3NlIDxzdXp1a2kucG91bG9zZUBhcm0uY29tPgo+Pj4gLS0tCj4+PiAg
wqAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NkbTg0NS5kdHNpIHwgNDUxICsrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCA0NTEgaW5zZXJ0aW9ucygr
KQo+Pgo+PiBJIGhhdmUgdGVzdGVkIGNvcmVzaWdodCB3aXRoIHNjYXR0ZXIgZ2F0aGVyIG9uIFNE
TTg0NSBNVFAgYW5kIE1TTTg5OTYKPj4gYmFzZWQgREI4MjBjIGJvYXJkIGFuZCBwb3N0ZWQgdGhl
IHJlc3VsdHMgaW4KPj4KPj4gLSBodHRwczovL2dpdGh1Yi5jb20vc2FpcHJha2FzaC1yYW5qYW4v
Y29yZXNpZ2h0LXRlc3QtcmVzdWx0cwo+Pgo+PiBQbGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IG5l
ZWQgc29tZSBhZGRpdGlvbmFsIHRlc3RpbmcgZG9uZS4KPj4KPj4gSSBjb3VsZCBub3QgcGVyZm9y
bSBjb3Jlc2lnaHQgdGVzdHMgb24gTVNNODk5OCBNVFAgd2l0aCBsYXRlc3QgYnVpbGQKPj4gYXMg
aXQgd2FzIHJlc3VsdGluZyBpbiBjcmFzaCBkdWUgdG8gc29tZSBBSEIgdGltZW91dHMuIFRoaXMg
d2FzIG5vdAo+PiBkdWUgdG8gc2NhdHRlci1nYXRoZXIgYW5kIG1vc3RseSBsaWtlbHkgdGhlIHBy
b2JsZW0gd2l0aCB0aGUgYnVpbGQuCj4+IE1heWJlIHdlIGNhbiBrZWVwIG1zbTg5OTgtY29yZXNp
Z2h0IG9uIGhvbGQ/Cj4+Cj4+IEJUVywgcGF0Y2hlcyBhcmUgYmFzZWQgb24gbGludXgtbmV4dC4K
Pj4KPiAKPiBBbnkgbW9yZSB0ZXN0cyB5b3Ugd291bGQgd2FudCBtZSB0byBydW4/CgpBcG9sb2dp
ZXMgZm9yIHRoZSBsYXRlIHJlc3BvbnNlLiBJIGhhZCBzZWVuIHRoZSByZXN1bHRzIGFuZCB0aGV5
IGxvb2sgZmluZS4KSSB3YXMgaGl0dGluZyBzb21lIGlzc3Vlcywgd2hpY2ggSSBoYXZlIG5vdyBy
b290IGNhdXNlZCB0byBmaXJtd2FyZSBpc3N1ZXMuClNvIHdlIGFyZSBnb29kIHRvIGdvLgoKU3V6
dWtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
