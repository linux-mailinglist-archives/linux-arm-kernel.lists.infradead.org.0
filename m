Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1225914392C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUJWyBhNJJ6CEUJK4zbRCUZS+ELyfuJMFC/KLUwNbyg=; b=h389hggM76NyQx
	ISZ5xPT49sEXyt/jV9CKxC9XAwGi9zwMaCW4AmmYU//7qEjrsF6p7diVTv+Di5efsvYoDNFL0z0+b
	1WZlpT5R1MzRqkxJeoslYWJhYc3/P6ZmO4weOk7LWcfkWtVfsXb8uEzxmiSBb1wGW1OiD6SXduWLd
	Bn4JQv9Jz4/uGgnzZ6qQ9O9IXjrp3c7bT69djyLpN5B09J2f67TTStBWmCDB3hmBMKawiWXM2Xrtc
	/7wOXdMYEVnKw6UBbpuoO/CoQdWrxW4Vk3lHJQHGS2FmnDpF2jty8vPid3pNmtuPdoQIJnCgxsn4k
	umTsyaaB3UNiCFNZZEmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpYc-00079l-Oc; Tue, 21 Jan 2020 09:10:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpYI-000781-1t; Tue, 21 Jan 2020 09:10:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 707D31FB;
 Tue, 21 Jan 2020 01:10:24 -0800 (PST)
Received: from [192.168.0.7] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED5023F6C4;
 Tue, 21 Jan 2020 01:10:17 -0800 (PST)
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
To: Lukasz Luba <lukasz.luba@arm.com>, Quentin Perret <qperret@google.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
 <20200117105437.GA211774@google.com>
 <40587d98-0e8d-cbac-dbf5-d26501d47a8c@arm.com>
 <20200120150918.GA164543@google.com>
 <8332c4ac-2a7d-1e2d-76e9-7c979a666257@arm.com>
 <b02da0ed-9e0b-36db-9813-daa334cbf2ba@arm.com>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <c9910c74-ab47-0c78-a1c7-4f3978e1dd09@arm.com>
Date: Tue, 21 Jan 2020 10:10:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <b02da0ed-9e0b-36db-9813-daa334cbf2ba@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_011026_194558_0DB842E1 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, khilman@kernel.org,
 agross@kernel.org, daniel.lezcano@linaro.org, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, linux-imx@nxp.com,
 rui.zhang@intel.com, kernel-team@android.com, mgorman@suse.de, daniel@ffwll.ch,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, ionela.voinescu@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAvMDEvMjAyMCAxOTozOCwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gCj4gCj4gT24gMS8yMC8y
MCA2OjI3IFBNLCBEaWV0bWFyIEVnZ2VtYW5uIHdyb3RlOgo+PiBPbiAyMC8wMS8yMDIwIDE2OjA5
LCBRdWVudGluIFBlcnJldCB3cm90ZToKPj4+IEhleSBMdWthc3osCj4+Pgo+Pj4gT24gTW9uZGF5
IDIwIEphbiAyMDIwIGF0IDE0OjUyOjA3ICgrMDAwMCksIEx1a2FzeiBMdWJhIHdyb3RlOgo+Pj4+
IE9uIDEvMTcvMjAgMTA6NTQgQU0sIFF1ZW50aW4gUGVycmV0IHdyb3RlOgoKWy4uLl0KCj4+IEl0
J3MgdHJ1ZSB0aGF0IHdlIG5lZWQgdGhlIHBvbGljeS0+Y3B1cyBjcHVtYXNrIG9ubHkgZm9yIGNw
dSBkZXZpY2VzIGFuZAo+PiB3ZSBoYXZlIGl0IGF2YWlsYWJsZSB3aGVuIHdlIGNhbGwgZW1fcmVn
aXN0ZXJfcGVyZl9kb21haW4oKQo+PiBbc2NtaS1jcHVmcmVxLmMgZHJpdmVyXSBvciB0aGUgT1BQ
IHdyYXBwZXIgZGV2X3BtX29wcF9vZl9yZWdpc3Rlcl9lbSgpCj4+IFtlLmcuIGNwdWZyZXEtZHQu
YyBkcml2ZXJdLgo+Pgo+PiBBbmQgd2Ugc2hvdWxkbid0IG1ha2UgRU0gY29kZSBkZXBlbmRlbnQg
b24gT1BQLgo+Pgo+PiBCdXQgY2FuJ3Qgd2UgYWRkICdzdHJ1Y3QgY3B1bWFzayAqbWFzaycgYXMg
YW4gYWRkaXRpb25hbCBhcmd1bWVudCB0bwo+PiBib3RoIHdoaWNoIGNhbiBiZSBzZXQgdG8gTlVM
TCBmb3IgKGRldmZyZXEpIGRldmljZXM/Cj4+Cj4+IFdlIGNhbiBjaGVjayBpbiBlbV9yZWdpc3Rl
cl9wZXJmX2RvbWFpbigpIHRoYXQgd2UgZ290IGEgdmFsaWQgY3B1bWFzawo+PiBmb3IgYSBjcHUg
ZGV2aWNlIGFuZCBpZ25vcmUgaXQgZm9yIChkZXZmcmVxKSBkZXZpY2VzLgo+Pgo+IAo+IEkgdGhp
bmsgd2UgY291bGQgYXZvaWQgdGhpcyBhZGRpdGlvbmFsIGFyZ3VtZW50ICdjcHVtYXNrJy4gSSBo
YXZlCj4gY2hlY2tlZCB0aGUgY3B1ZnJlcV9jcHVfZ2V0IGZ1bmN0aW9uLCB3aGljaCBzaG91bGQg
ZG8gYmUgZ29vZCBmb3IgdGhpczoKPiAKPiAtLS0tLS0tLS0tPjgtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gc3RhdGljIGludCBfZ2V0X3NoYXJpbmdfY3B1cyhzdHJ1Y3QgZGV2aWNlICpjcHVf
ZGV2LCBzdHJ1Y3QgY3B1bWFzayAqc3BhbikKPiB7Cj4gwqDCoMKgwqDCoMKgwqAgc3RydWN0IGNw
dWZyZXFfcG9saWN5ICpwb2xpY3k7Cj4gCj4gwqDCoMKgwqDCoMKgwqAgcG9saWN5ID0gY3B1ZnJl
cV9jcHVfZ2V0KGNwdV9kZXYtPmlkKTsKPiDCoMKgwqDCoMKgwqDCoCBpZiAocG9saWN5KSB7Cj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNwdW1hc2tfY29weShzcGFuLCBwb2xpY3kt
PmNwdXMpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcHVmcmVxX2NwdV9wdXQo
cG9saWN5KTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4gwqDC
oMKgwqDCoMKgwqAgfSBlbHNlIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIC1FSU5WQUw7Cj4gwqDCoMKgwqDCoMKgwqAgfQo+IH0KPiAtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLTg8LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IAo+IEl0IHdvdWxkIGJl
IGEgcmVwbGFjZW1lbnQgZm9yOgo+IHJldCA9IGRldl9wbV9vcHBfZ2V0X3NoYXJpbmdfY3B1cyhk
ZXYsIHNwYW4pOwoKVHJ1ZS4gQnV0IHRoZW4gd2UgaGFyZC1jb2RlIHRoYXQgYSBDUFUgZGV2aWNl
IHBlcmZvcm1hbmNlIGRvbWFpbiBjYW4Kb25seSBiZSBhIGZyZXF1ZW5jeSBkb21haW4gKHdoaWNo
IGlzIHRydWUgdG9kYXkpLgoKVGhlIHRhc2sgc2NoZWR1bGVyIChidWlsZF9wZXJmX2RvbWFpbnMo
KSkgYW5kIHRoZXJtYWwgYXJlIGFscmVhZHkgdXNpbmcKY3B1ZnJlcV9jcHVfZ2V0KCkgdG8gYWNj
ZXNzIHRoZSBjcHVmcmVxIHBvbGljeS4gTm93IHRoZSBFTSBmcmFtZXdvcmsKd291bGQgdG9vIGZv
ciBDUFUgZGV2aWNlcy4gSSBhc3N1bWUgdGhhdCBjb3VsZCB3b3JrIHdpdGggYSBjb3VwbGUgb2YK
YWRhcHRhdGlvbnMgaW4gRG9jdW1lbnRhdGlvbi9wb3dlci9lbmVyZ3ktbW9kZWwucnN0LgoKQlRX
LCB0aGVyZSBpcyBhIHNpbWlsYXIgaW50ZXJmYWNlIGNwdWZyZXFfZ2V0X3BvbGljeSgpIGluIGNw
dWZyZXEuYwp3aGljaCBpcyB1c2VkIGxlc3Mgb2Z0ZW4/CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
