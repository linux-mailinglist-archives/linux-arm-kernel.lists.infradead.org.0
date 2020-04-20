Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D6D1B0E2D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 16:20:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:From:References:To:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GwveM++Q3MbpaICtH3dd1npj2FW8FJZBwsJ6k3IExm0=; b=agy9QWa4tJFKp0Qwvs4XeIM/6
	KtPXFZvrMTk6XP5xCrF13gQKqULNMltaio00RHj3sh4YX6dMS9hNdptl7wFOUdk4/he1A5SA/XgoV
	QazYazNMv8LlUP/bAwZCvtodGZyUW2YZBOwtKlucKbE8iyxIQ9ufp0tK6I37ICYBR5G7VPJde8jYR
	WBXEcbTTjIbuSSHKoFkukl435OShqWFuMEGzD+UIbi47CPp0lI8tHc4Z7YTWTNTlAcUMCVGOn1Xh0
	dlqClaAzIZ5IkwEsNnp97xxsUv7nifQ9LmCpfLNIgw4V5DegKN/N5OofSbC7rfQkDft8N1V3erV55
	D3LBdxArg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXHD-0002oh-D4; Mon, 20 Apr 2020 14:19:59 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXH5-0002ni-I4
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 14:19:52 +0000
Received: by mail-pg1-x541.google.com with SMTP id o15so4550648pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 07:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:to:references:from:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=7B/LXMOm0voTdgUI+ifynbQOYjuUKN27/q+UqAFqkRc=;
 b=t2CozfZAPyz/NaYojLBmjI5RNpQfJfzQZC5gzRW4IivEIt3sPU9V8o/DMe7AeAMfOn
 zGjWvGF739M6yCv7E0bKpq323LKV3WuZ6KAL8GAdTPmD4z6ZIOfOXmdkUWYHxa24KGsd
 EfQurt9weJ3HbiqHEG+stMxZp2YNG71VNETnakc+mK3JJ9RTYxkQivogktXvNpFIzARE
 gGkLVhGvCeaUGEnjT6r0/Fbgofgc2LpMTRTVrkYOZkk539hOEAdYIVCu2QRN73vnwDqX
 B5aotR/Y+cO29c9kU5FTc9wotWEVbihrTbfp6u91UmxqiQrC3dxoTkE4Dh0cJNivRfVb
 ooDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:to:references:from:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=7B/LXMOm0voTdgUI+ifynbQOYjuUKN27/q+UqAFqkRc=;
 b=bE4GLdGNBZuK4EflEjoEKQ1qnNoQYNpt/S+9cqJy1dUPnXVtY41P/Do8C4FECLJIOt
 nVjoj2VNNQC+QYU8KIJbfwCHMqzIJiokvv1jkK2UeuW+v05DuTUfw198wA9IlHR4ITtQ
 koxeXXTSPiM4Ficyir0dWxVXWxDYNpVotSYIHYzwnAdZpekeP8V8HIFH44NoX3b3jOz4
 JMuMhcLyAkKZK3zbS9Aai99il64kvafWgRluuzsc6r/8+jNDecQOlv7ShlmxmChxIWT2
 mpcQczLanw00G8hSeOYEw9HOzGimykkYk2sZblywqa2/H9Y8pKvwgGjGH5yqks9asl5R
 DCmQ==
X-Gm-Message-State: AGi0PuaoZI+oZc0CKAmIRKjHDqZHEHYk31MBX00LI1CusyXv05rFxDQz
 L13mTNtud6BoOLlxYwQX9NRLwuc+
X-Google-Smtp-Source: APiQypKh9UX1CHQfTUvGuMYFpFinbgf83oyAr/Qc6skJXohPd+tQh798UPm0MPbRGreVNpQ1c3xYvg==
X-Received: by 2002:a63:2a08:: with SMTP id q8mr1742352pgq.442.1587392389212; 
 Mon, 20 Apr 2020 07:19:49 -0700 (PDT)
Received: from [192.168.0.4] ([211.243.117.64])
 by smtp.gmail.com with ESMTPSA id o63sm1378702pjb.40.2020.04.20.07.19.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 07:19:48 -0700 (PDT)
Message-ID: <5e9daf84.1c69fb81.7404a.34ba@mx.google.com>
Subject: Re: [PATCH v8 3/3] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
To: Hyunki Koo <hyunki00.koo@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200420013300.17249-1-hyunki00.koo@samsung.com>
 <CGME20200420013332epcas2p381793b8c09d71269d3e8c38a196a1c74@epcas2p3.samsung.com>
 <20200420013300.17249-3-hyunki00.koo@samsung.com>
From: Hyunki Koo <hyunki00.koo@gmail.com>
Date: Mon, 20 Apr 2020 23:19:44 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200420013300.17249-3-hyunki00.koo@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_071951_599246_CBDCD491 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hyunki00.koo[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

c29ycnksIGNvdmVyLWxldHRlciBbUEFUQ0ggdjggMC8zXSBkb2VzIG5vdCBzZW50LCBJIHdpbGwg
c2VuZCBjb3ZlciAKbGV0dGVyIHRvbW9ycm93CgphbGwgaW5mb3JtYXRpb24gb2YgdmVyc2lvbiBj
b250cm9sIGlzIGluY2x1ZGVkIGluIGNvdmVyIGxldHRlci4KCk9uIDIwLiA0LiAyMC4g7Jik7KCE
IDEwOjMyLCBIeXVua2kgS29vIHdyb3RlOgo+IFN1cHBvcnQgMzItYml0IGFjY2VzcyBmb3IgdGhl
IFRYL1JYIGhvbGQgcmVnaXN0ZXJzIFVUWEggYW5kIFVSWEguCj4KPiBUaGlzIGlzIHJlcXVpcmVk
IGZvciBzb21lIG5ld2VyIFNvQ3MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBIeXVua2kgS29vIDxoeXVu
a2kwMC5rb29Ac2Ftc3VuZy5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL3R0eS9zZXJpYWwvc2Ftc3Vu
Z190dHkuYyB8IDYyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9zYW1zdW5nX3R0eS5jIGIvZHJpdmVycy90dHkv
c2VyaWFsL3NhbXN1bmdfdHR5LmMKPiBpbmRleCAzMjZiMDE2NDYwOWMuLmJkZjFkNGQxMmNiMSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3R0eS9zZXJpYWwvc2Ftc3VuZ190dHkuYwo+ICsrKyBiL2Ry
aXZlcnMvdHR5L3NlcmlhbC9zYW1zdW5nX3R0eS5jCj4gQEAgLTE1NCwxMiArMTU0LDQ3IEBAIHN0
cnVjdCBzM2MyNHh4X3VhcnRfcG9ydCB7Cj4gICAjZGVmaW5lIHBvcnRhZGRybChwb3J0LCByZWcp
IFwKPiAgIAkoKHVuc2lnbmVkIGxvbmcgKikodW5zaWduZWQgbG9uZykoKHBvcnQpLT5tZW1iYXNl
ICsgKHJlZykpKQo+ICAgCj4gLSNkZWZpbmUgcmRfcmVnKHBvcnQsIHJlZykgKHJlYWRiX3JlbGF4
ZWQocG9ydGFkZHIocG9ydCwgcmVnKSkpCj4gK3N0YXRpYyB1MzIgcmRfcmVnKHN0cnVjdCB1YXJ0
X3BvcnQgKnBvcnQsIHUzMiByZWcpCj4gK3sKPiArCXN3aXRjaCAocG9ydC0+aW90eXBlKSB7Cj4g
KwljYXNlIFVQSU9fTUVNOgo+ICsJCXJldHVybiByZWFkYl9yZWxheGVkKHBvcnRhZGRyKHBvcnQs
IHJlZykpOwo+ICsJY2FzZSBVUElPX01FTTMyOgo+ICsJCXJldHVybiByZWFkbF9yZWxheGVkKHBv
cnRhZGRyKHBvcnQsIHJlZykpOwo+ICsJZGVmYXVsdDoKPiArCQlyZXR1cm4gMDsKPiArCX0KPiAr
CXJldHVybiAwOwo+ICt9Cj4gKwo+ICAgI2RlZmluZSByZF9yZWdsKHBvcnQsIHJlZykgKHJlYWRs
X3JlbGF4ZWQocG9ydGFkZHIocG9ydCwgcmVnKSkpCj4gICAKPiAtI2RlZmluZSB3cl9yZWcocG9y
dCwgcmVnLCB2YWwpIHdyaXRlYl9yZWxheGVkKHZhbCwgcG9ydGFkZHIocG9ydCwgcmVnKSkKPiAr
c3RhdGljIHZvaWQgd3JfcmVnKHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQsIHUzMiByZWcsIHUzMiB2
YWwpCj4gK3sKPiArCXN3aXRjaCAocG9ydC0+aW90eXBlKSB7Cj4gKwljYXNlIFVQSU9fTUVNOgo+
ICsJCXdyaXRlYl9yZWxheGVkKHZhbCwgcG9ydGFkZHIocG9ydCwgcmVnKSk7Cj4gKwkJYnJlYWs7
Cj4gKwljYXNlIFVQSU9fTUVNMzI6Cj4gKwkJd3JpdGVsX3JlbGF4ZWQodmFsLCBwb3J0YWRkcihw
b3J0LCByZWcpKTsKPiArCQlicmVhazsKPiArCX0KPiArfQo+ICsKPiAgICNkZWZpbmUgd3JfcmVn
bChwb3J0LCByZWcsIHZhbCkgd3JpdGVsX3JlbGF4ZWQodmFsLCBwb3J0YWRkcihwb3J0LCByZWcp
KQo+ICAgCj4gK3N0YXRpYyB2b2lkIHdyX3JlZ19iYXJyaWVyKHN0cnVjdCB1YXJ0X3BvcnQgKnBv
cnQsIHUzMiByZWcsIHUzMiB2YWwpCj4gK3sKPiArCXN3aXRjaCAocG9ydC0+aW90eXBlKSB7Cj4g
KwljYXNlIFVQSU9fTUVNOgo+ICsJCXdyaXRlYih2YWwsIHBvcnRhZGRyKHBvcnQsIHJlZykpOwo+
ICsJCWJyZWFrOwo+ICsJY2FzZSBVUElPX01FTTMyOgo+ICsJCXdyaXRlbCh2YWwsIHBvcnRhZGRy
KHBvcnQsIHJlZykpOwo+ICsJCWJyZWFrOwo+ICsJfQo+ICt9Cj4gKwo+ICAgLyogQnl0ZS1vcmRl
ciBhd2FyZSBiaXQgc2V0dGluZy9jbGVhcmluZyBmdW5jdGlvbnMuICovCj4gICAKPiAgIHN0YXRp
YyBpbmxpbmUgdm9pZCBzM2MyNHh4X3NldF9iaXQoc3RydWN0IHVhcnRfcG9ydCAqcG9ydCwgaW50
IGlkeCwKPiBAQCAtMTk3NCw3ICsyMDA5LDcgQEAgc3RhdGljIGludCBzM2MyNHh4X3NlcmlhbF9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCXN0cnVjdCBkZXZpY2Vfbm9k
ZSAqbnAgPSBwZGV2LT5kZXYub2Zfbm9kZTsKPiAgIAlzdHJ1Y3QgczNjMjR4eF91YXJ0X3BvcnQg
Km91cnBvcnQ7Cj4gICAJaW50IGluZGV4ID0gcHJvYmVfaW5kZXg7Cj4gLQlpbnQgcmV0Owo+ICsJ
aW50IHJldCwgcHJvcCA9IDA7Cj4gICAKPiAgIAlpZiAobnApIHsKPiAgIAkJcmV0ID0gb2ZfYWxp
YXNfZ2V0X2lkKG5wLCAic2VyaWFsIik7Cj4gQEAgLTIwMDAsMTAgKzIwMzUsMjcgQEAgc3RhdGlj
IGludCBzM2MyNHh4X3NlcmlhbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICAgCQkJZGV2X2dldF9wbGF0ZGF0YSgmcGRldi0+ZGV2KSA6Cj4gICAJCQlvdXJwb3J0LT5kcnZf
ZGF0YS0+ZGVmX2NmZzsKPiAgIAo+IC0JaWYgKG5wKQo+ICsJaWYgKG5wKSB7Cj4gICAJCW9mX3By
b3BlcnR5X3JlYWRfdTMyKG5wLAo+ICAgCQkJInNhbXN1bmcsdWFydC1maWZvc2l6ZSIsICZvdXJw
b3J0LT5wb3J0LmZpZm9zaXplKTsKPiAgIAo+ICsJCWlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihu
cCwgInJlZy1pby13aWR0aCIsICZwcm9wKSA9PSAwKSB7Cj4gKwkJCXN3aXRjaCAocHJvcCkgewo+
ICsJCQljYXNlIDE6Cj4gKwkJCQlvdXJwb3J0LT5wb3J0LmlvdHlwZSA9IFVQSU9fTUVNOwo+ICsJ
CQkJYnJlYWs7Cj4gKwkJCWNhc2UgNDoKPiArCQkJCW91cnBvcnQtPnBvcnQuaW90eXBlID0gVVBJ
T19NRU0zMjsKPiArCQkJCWJyZWFrOwo+ICsJCQlkZWZhdWx0Ogo+ICsJCQkJZGV2X3dhcm4oJnBk
ZXYtPmRldiwgInVuc3VwcG9ydGVkIHJlZy1pby13aWR0aCAoJWQpXG4iLAo+ICsJCQkJCQlwcm9w
KTsKPiArCQkJCXJldCA9IC1FSU5WQUw7Cj4gKwkJCQlicmVhazsKPiArCQkJfQo+ICsJCX0KPiAr
CX0KPiArCj4gICAJaWYgKG91cnBvcnQtPmRydl9kYXRhLT5maWZvc2l6ZVtpbmRleF0pCj4gICAJ
CW91cnBvcnQtPnBvcnQuZmlmb3NpemUgPSBvdXJwb3J0LT5kcnZfZGF0YS0+Zmlmb3NpemVbaW5k
ZXhdOwo+ICAgCWVsc2UgaWYgKG91cnBvcnQtPmluZm8tPmZpZm9zaXplKQo+IEBAIC0yNjEyLDcg
KzI2NjQsNyBAQCBzdGF0aWMgdm9pZCBzYW1zdW5nX2Vhcmx5X3B1dGMoc3RydWN0IHVhcnRfcG9y
dCAqcG9ydCwgaW50IGMpCj4gICAJZWxzZQo+ICAgCQlzYW1zdW5nX2Vhcmx5X2J1c3l1YXJ0KHBv
cnQpOwo+ICAgCj4gLQl3cml0ZWIoYywgcG9ydC0+bWVtYmFzZSArIFMzQzI0MTBfVVRYSCk7Cj4g
Kwl3cl9yZWdfYmFycmllcihwb3J0LCBTM0MyNDEwX1VUWEgsIGMpOwo+ICAgfQo+ICAgCj4gICBz
dGF0aWMgdm9pZCBzYW1zdW5nX2Vhcmx5X3dyaXRlKHN0cnVjdCBjb25zb2xlICpjb24sIGNvbnN0
IGNoYXIgKnMsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
