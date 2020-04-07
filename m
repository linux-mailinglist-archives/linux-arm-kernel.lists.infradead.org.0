Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E331A0E16
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 15:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6VjYEE5NSzUl/f2rUvGBp7edoJmiga9w9t1hwD71uEs=; b=JJ9ZMu0E3V4SdBS/sJk5LSEV2
	R9XCDSB1NMRCE77VctpzLhd8K9n25Yv3Y9bWGjIBWY88VpN7IVrNz+PD/nkGwomTOMznt6Lvl0yv5
	iRVg3b1FQYGLuw90bwG/+S3WxopC89uD2DllqdnQZwVXeFlTx2RhBRFMaJ1BELMEn3HnjBvuA9ASE
	/XG4NX+YMM6ZyM28I3FIzF0+IgulcMmB3OfxIMgxpwVz8L1hKcONjMBDC0dyy1BU/+9YpNC/W+X+7
	+ywuxSV2GT84uZVZQEs+3ugRdQboyuVzXH/WKAiYWl6H447liKwg4iXOAG/OyGMwoy32g4Du8aJR8
	vxJXQhJZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnt8-00059T-Rh; Tue, 07 Apr 2020 13:03:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnt2-00058q-5z
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 13:03:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0839E31B;
 Tue,  7 Apr 2020 06:03:27 -0700 (PDT)
Received: from [10.37.12.154] (unknown [10.37.12.154])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F210D3F68F;
 Tue,  7 Apr 2020 06:03:24 -0700 (PDT)
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
To: saiprakash.ranjan@codeaurora.org
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
 <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
 <906d374d-a4d6-f2f2-6845-88b97a5ff7d9@arm.com>
 <39a2b3fff165a108fa59d72b630b5f14@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <bb209f80-ac02-6321-dac4-ebf9ee6fa9a0@arm.com>
Date: Tue, 7 Apr 2020 14:08:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <39a2b3fff165a108fa59d72b630b5f14@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_060328_264139_966A2B66 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, leo.yan@linaro.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQvMDcvMjAyMCAxMjoyOSBQTSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IEhpIFN1
enVraSwKPiAKPiBUaGFua3MgZm9yIGxvb2tpbmcgaW50byB0aGlzIGlzc3VlLgo+IAo+IE9uIDIw
MjAtMDQtMDcgMTU6NTQsIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6Cj4+IE9uIDA0LzA3LzIwMjAg
MTA6NDYgQU0sIFNhaSBQcmFrYXNoIFJhbmphbiB3cm90ZToKPj4KPj4gVGhlcmUgc2VlbXMgdG8g
YmUgdHdvIHJlcGxpY2F0b3JzIGJhY2sgdG8gYmFjayBoZXJlLiBXaGF0IGlzIGNvbm5lY3RlZAo+
PiB0byB0aGUgb3RoZXIgb3V0cHV0IG9mIGJvdGggb2YgdGhlbSA/IEFyZSB0aGVyZSBhbnkgVFBJ
VXMgPyBXaGF0IGhhcHBlbnMKPj4gaWYgeW91IGNob29zZSBhIHNpbmsgb24gdGhlIG90aGVyIGVu
ZCBvZiAic3dhb19yZXBsaWNhdG9yIiAoRVRCID8pCj4+Cj4gCj4gVGhlIG90aGVyIG91dHBvcnQg
b2Ygc3dhbyByZXBsaWNhdG9yIGlzIGNvbm5lY3RlZCB0byBFVUQgd2hpY2ggaXMgYQo+IFFDT00g
c3BlY2lmaWMgSFcgd2hpY2ggY2FuIGJlIHVzZWQgYXMgYSBzaW5rIGxpa2UgVVNCLgo+IEFuZCB0
aGUgb3RoZXIgb3V0cG9ydCBvZiBvdGhlciByZXBsaWNhdG9yKHJlcGxpY2F0b3Jfb3V0KSBpcyBj
b25uZWN0ZWQgdG8KPiBUUElVLgo+IAo+PiBBZnRlciBib290LCB3aGF0IGRvIHRoZSBpZGZpbHRl
ciByZWdpc3RlcnMgcmVhZCBmb3IgYm90aCB0aGUgCj4+IHJlcGxpY2F0b3JzID8KPj4KPiAKPiBB
ZGRlZCBzb21lIHByaW50cyBpbiByZXBsaWNhdG9yX3Byb2JlLgo+IAo+ICDCoHJlcGxpY2F0b3Ig
cHJvYmUgcmV0PS01MTcgZGV2bmFtZT02MDQ2MDAwLnJlcGxpY2F0b3IgaWRmaWx0ZXIwPTB4MCAK
PiBpZGZpbHRlcjE9MHgwCj4gIMKgcmVwbGljYXRvciBwcm9iZSByZXQ9MCBkZXZuYW1lPTZiMDYw
MDAucmVwbGljYXRvciBpZGZpbHRlcjA9MHhmZiAKPiBpZGZpbHRlcjE9MHhmZgo+ICDCoHJlcGxp
Y2F0b3IgcHJvYmUgcmV0PTAgZGV2bmFtZT02MDQ2MDAwLnJlcGxpY2F0b3IgaWRmaWx0ZXIwPTB4
ZmYgCj4gaWRmaWx0ZXIxPTB4ZmYKCkN1cmlvdXMgdG8gc2VlIGhvdyB0aGUgaWRmaWx0ZXJYIGlz
IHNldCB0byAwOgoJIGlmIHRoYXQgaXMgbmV2ZXIgdXNlZC4KCQlPcgoJIGlmIHRoZSB1c2VyIGRv
ZXNuJ3QgcmVzZXQgaXQgYmFjayB0byAweGZmLgoKRG9lcyB5b3VyIHRlc3QgZXZlciB0b3VjaCBF
VUQgKGVuYWJsZSB0aGUgcG9ydCBmb3IgRVVEIGF0CnN3YW8tcmVwbGljYXRvcikgPyBXaGF0IGFy
ZSB0aGUgdmFsdWVzIGJlZm9yZSB5b3UgcnVuIHlvdXIgdGVzdCA/CgoKU3V6dWtpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
