Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2911566A1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 11:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSxDxMbZ58bVGX14DEnEWjD3wfumnY/zTZZrkqMJHHc=; b=eHCkZhBxRZHbkC
	Crgsl0FNd3eo42pUOXZufqidTou+5kknxCj5ljM05mN00RK12LCMnhu+ZT7p60C7BVqgR4v4Rsg4i
	CpQj7+ZH+4Bwfa63+KMoWoaUnTa2DJ6v9zWWprANXcaDtqyCfvMfssGLxKZQZJDA7RLNA589bZwzl
	mUdEnVCvmjcpI8KMYWNfdl6DjjIyC4UFRFGYqeNMPk4jSBj3pOZFzPW8c1MW3T46R366eyPybnDqW
	9kEQtZFwzbA90Q8T4F13qAwTveyVyojGlg8Et26aTkD4XA2l1F5jQ9QSsUNnCQMCXeAFpwoWsO7z0
	yP2QtBqU3xkdJV77EGRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hls2R-0004K5-IF; Fri, 12 Jul 2019 09:40:23 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hls1y-0004DP-QE
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 09:39:56 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2855610000>; Fri, 12 Jul 2019 02:39:45 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 12 Jul 2019 02:39:50 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 12 Jul 2019 02:39:50 -0700
Received: from [10.26.11.231] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 12 Jul
 2019 09:39:48 +0000
Subject: Re: [PATCH v2 1/6] ARM: tegra: Remove cpuidle drivers
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Daniel Lezcano
 <daniel.lezcano@linaro.org>
References: <20190711031312.10038-1-digetx@gmail.com>
 <20190711031312.10038-2-digetx@gmail.com>
 <c087a5cb-2ffa-1cf6-f0bf-631234759a22@nvidia.com>
 <a6e4b43e-369c-c501-6d2e-69d5b940ff9c@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <73781434-d25a-b17b-aacb-95ace5ac5f95@nvidia.com>
Date: Fri, 12 Jul 2019 10:39:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <a6e4b43e-369c-c501-6d2e-69d5b940ff9c@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562924385; bh=BjEEnlO9O+zgudZW6w3hxaxX8/FGppOMM/Qa3Jlnws0=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=p8V9Fe27cbTQDdxy6BaYPu1UaWNdHPFxaBAXSh3B1eFXjKn9t1rFMWge+n48VM1jx
 sAyEzqcX2d+5dRWWMaoUjfTegYfTtOZexWga1qzERUVFWsPtCvYgRq5Tkw84niUv9r
 L7jvU+fM/uKU70UxnhEgLMMDymy/j4Ikxivsyo/+iH39a1/lGeAIpTY/IrpUz4jTeA
 rFy1ZDxrbIkjVX3HMwQMtHmYi/S9cTseqW33SZQK5E/WDPMFSekeO5UGYyxHgCzA5U
 F8WhlXjZtrjk6007ZMoVZCSOT+OxHa7KUsp9MLsjpUQaZlKmTEnUzjl4bw3q5N0uvd
 ffDfg49DVV1Ow==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_023955_064528_CB8250E3 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDExLzA3LzIwMTkgMTg6MDMsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPiAxMS4wNy4yMDE5
IDEyOjI2LCBKb24gSHVudGVyINC/0LjRiNC10YI6Cj4+Cj4+IE9uIDExLzA3LzIwMTkgMDQ6MTMs
IERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4+IFJlbW92ZSB0aGUgb2xkIGRyaXZlcnMgdG8gcmVw
bGFjZSB0aGVtIGNsZWFubHkgd2l0aCBhIG5ldyBvbmUgbGF0ZXIgb24uCj4+Pgo+Pj4gU2lnbmVk
LW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+Pj4gLS0tCj4+PiAg
YXJjaC9hcm0vbWFjaC10ZWdyYS9NYWtlZmlsZSAgICAgICAgICAgfCAgMTMgLS0KPj4+ICBhcmNo
L2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUtdGVncmExMTQuYyB8ICA4OSAtLS0tLS0tLS0tLQo+Pj4g
IGFyY2gvYXJtL21hY2gtdGVncmEvY3B1aWRsZS10ZWdyYTIwLmMgIHwgMjEyIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUtdGVncmEzMC5j
ICB8IDEzMiAtLS0tLS0tLS0tLS0tLS0KPj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUu
YyAgICAgICAgICB8ICA1MCAtLS0tLS0KPj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUu
aCAgICAgICAgICB8ICAyMSAtLS0KPj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL2lycS5jICAgICAg
ICAgICAgICB8ICAxOCAtLS0KPj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL2lycS5oICAgICAgICAg
ICAgICB8ICAxMSAtLQo+Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEvcG0uYyAgICAgICAgICAgICAg
IHwgICA3IC0KPj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL3BtLmggICAgICAgICAgICAgICB8ICAg
MSAtCj4+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9yZXNldC1oYW5kbGVyLlMgICAgfCAgMTEgLS0K
Pj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL3Jlc2V0LmggICAgICAgICAgICB8ICAgOSArLQo+Pj4g
IGFyY2gvYXJtL21hY2gtdGVncmEvc2xlZXAtdGVncmEyMC5TICAgIHwgMTkwICstLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLmggICAgICAgICAgICB8
ICAxMiAtLQo+Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEvdGVncmEuYyAgICAgICAgICAgIHwgICAz
IC0KPj4+ICBkcml2ZXJzL3NvYy90ZWdyYS9LY29uZmlnICAgICAgICAgICAgICB8ICAgMSAtCj4+
PiAgaW5jbHVkZS9zb2MvdGVncmEvY3B1aWRsZS5oICAgICAgICAgICAgfCAgIDQgLQo+Pj4gIDE3
IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNzc5IGRlbGV0aW9ucygtKQo+Pj4gIGRl
bGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUtdGVncmExMTQuYwo+
Pj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUtdGVncmEy
MC5jCj4+PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtdGVncmEvY3B1aWRsZS10
ZWdyYTMwLmMKPj4+ICBkZWxldGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVp
ZGxlLmMKPj4+ICBkZWxldGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVpZGxl
LmgKPj4+ICBkZWxldGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC10ZWdyYS9pcnEuaAo+Pgo+
PiBCeSByZW1vdmluZyBhbGwgdGhlIGFib3ZlLCBpdCBpcyByZWFsbHkgaGFyZCB0byByZXZpZXcg
dGhlIGRpZmYuIElzCj4+IHRoZXJlIGFueSB3YXkgeW91IGNvdWxkIGZpcnN0IGNvbnNvbGlkYXRl
IHRoZSBjcHVpZGxlIGRyaXZlcnMgaW50byBzYXkKPj4gdGhlIGV4aXN0aW5nIGFyY2gvYXJtL21h
Y2gtdGVncmEvY3B1aWRsZS10ZWdyYTIwLmMgYW5kIHRoZW4gbW92ZSB0bwo+PiBkcml2ZXJzL2Nw
dWlkbGU/Cj4gCj4gSSdtIGFmcmFpZCB0aGF0IGl0IHdpbGwgbWFrZSByZXZpZXdpbmcgZXZlbiBt
b3JlIGRpZmZpY3VsdCBiZWNhdXNlCj4gZXZlcnl0aGluZyB0aGF0IGlzIHJlbW92ZWQgaGVyZSBp
cyBub3QgcmV0dXJuZWQgaW4gdGhlIGZ1cnRoZXIgcGF0Y2hlcy4KPiBUaGUgbmV3IGRyaXZlciBp
cyBiYXNlZCBvbiB0aGUgb2xkZXIgb25lcywgYnV0IEkgd3JvdGUgaXQgZnJvbSBzY3JhdGNoCj4g
YW5kIGl0J3Mgbm90IG9ubHkgbG9va3MgZGlmZmVyZW50LCBidXQgYWxzbyB3b3JrcyBhIGJpdCBk
aWZmZXJlbnQgYXMgeW91Cj4gbWF5IHNlZS4KPiAKPiBDb3VsZCB5b3UgcGxlYXNlIGNsYXJpZnkg
d2hhdCBleGFjdGx5IG1ha2VzIGl0IGhhcmQgdG8gcmV2aWV3PyBUaGUgZGlmZgo+IGxvb2tzIHBy
ZXR0eSBjbGVhbiB0byBtZSwgd2hpbGUgc3F1YXNoaW5nIGV2ZXJ5dGhpbmcgaW50byBleGlzdGlu
Zwo+IGRyaXZlciBzaG91bGQgYmUgcXVpdGUgYSBtZXNzLgoKSWRlYWxseSBhIHBhdGNoIHNob3Vs
ZCBzdGFuZGFsb25lIGFuZCBjYW4gYmUgcmV2aWV3ZWQgYnkgaXRzZWxmLgpIb3dldmVyLCB0byBy
ZXZpZXcgdGhpcywgd2UgbmVlZCB0byByZXZpZXcgcGF0Y2hlcyAxLCAyIGFuZCAzIGF0IHRoZQpz
YW1lIHRpbWUuIFNvIElNTyBpdCBpcyBub3QgdGhhdCBjb252ZW5pZW50IGZyb20gYSByZXZpZXdl
cnMKcGVyc3BlY3RpdmUuIEZ1cnRoZXJtb3JlLCBwYXRjaGVzIDEgYW5kIDMgYXJlIGxhcmdlIGFu
ZCBzbyBlYXN5IHRvIG1pc3MKc29tZXRoaW5nLgoKSXMgdGhlcmUgcmVhbGx5IG5vIHdheSB0byBo
YXZlIGEgcGF0Y2ggdG8gY29tYmluZWQgdGhlIGV4aXN0aW5nIGRyaXZlcnMsCnRoZW4gYSBwYXRj
aCB0byBjb252ZXJ0IHRoZW0gaW50byB0aGUgbmV3ZXIgcmV3cml0dGVuIHZlcnNpb24geW91IGhh
dmUKaW1wbGVtZW50ZWQsIHRoZW4gbW92ZSB0aGUgZHJpdmVyPwoKSm9uCgotLSAKbnZwdWJsaWMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
