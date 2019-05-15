Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A721ED47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zL7pEvVknZXs1KQWTD63pAGv/83P87kVRk/CR4CJU0c=; b=V9RaMDWXJqnlKE
	mGaVI8i5a3ECsS73KsI39Eu3PbXfxvIE/cyNwkPQVcAKeIhLunwG1tcX8dBrFWHXoIvpZDXHl5sCR
	GxvxVeYSkRN6IABU6E/bBTFlg5TCeqVYl6MA/RM1hTDa3tms7O+GmSgYR5Z7fj2l764F/QDWf3jz6
	X0/D7syJ+AdERbJnf1FuBNgysAvlB6P6yIL1K8I+TY3CxCTdfnwOU74Syghmcxl4okCbmKAf5EfPw
	QJ+9RxQjwStpsHsOqN1Q3i85jd6vgwcCoLImoQJepBFdJlhDMZUaP8q1Qot12uZPo0YAmHNnhpdav
	nszUyzot0NY2mw61y9Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrlG-0005Eh-Qk; Wed, 15 May 2019 11:07:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrl9-0005Dv-6k
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:07:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id j187so2059880wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 04:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WLYROLqwvq+iq4Tg13SMOpkpNE1f0nENSLKE//G0bsk=;
 b=euq/YjOxetpfM+ZIRd16tqOJMUNMAQ639aAlV8Z7Ibig9LpEwqAJTeSnRJZv9QFR0A
 n3DaSssaT4KUsdSZYEJF2jvAGai5fUuS8T0WPRkz4o4p20gpJt7tecOOpF/0sXYuCt4c
 +gkH9sxfIb3PHS15GjRWakzRNBq90imKo8mOxdUlQBch12slcyqyLT1bNw+kIeI5Y2BK
 hqlOAm4od8MxLkFSusv/wFPi/FAd6Jl5afhpMqIgF782USJg1GQqr6rRATkZmQKNyr4T
 Reyohk2YroZHi9UP9N4sj4WdzXhQOZgyYey7kYxrPMDf/koP7KIAwgEvhf/7CifOKhnp
 mmaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WLYROLqwvq+iq4Tg13SMOpkpNE1f0nENSLKE//G0bsk=;
 b=sZvjqruH5nMFIczl/FN6KrhgjORIkHLUxkOXlovPxRzFynH02uGsJDHtKaf2CKONSP
 Ur1CVRc5+0FHZx7FtvlBjd+aayg05LL7FdUqaSFzVh4TLBVnpox43QPrz+J0BcsRrWYS
 bOxPkIFuacel5PHsjnMY1N6z2WLfuvwKeMjDMSCKLN2+6LeNzq+qMCnjTV0eVOdmhMUY
 pIrsBfqpNnu0qNJi8fe/gvAKdmNwrSS6ad/qGwc+ThNBrELK4B61bdElvb1t4hc1/fWW
 sb8//mMoad5BnbNjCSCqQm+F2lbAW0lTC2W3996ClWlHSZildDfX6rL98SciyalrvPZ5
 6a9w==
X-Gm-Message-State: APjAAAWoJFWhqQ9BcKGm5f1sCaRwn4GdJRqFZkUmctu86CGQo9bZlPf/
 QJ14/RJdwNItdpDcNNIuHi+mq7ix0Vs=
X-Google-Smtp-Source: APXvYqyk+jOEfdcEqATmFYCA0jxw/O5gBV5d9uEck/eUQUqWql3DtCIln4vAuhSqj4YJxAvSRHH8IQ==
X-Received: by 2002:a1c:f407:: with SMTP id z7mr22070590wma.34.1557918459197; 
 Wed, 15 May 2019 04:07:39 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id 130sm1924399wmd.15.2019.05.15.04.07.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 04:07:38 -0700 (PDT)
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
To: Quentin Perret <quentin.perret@arm.com>
References: <20190515082318.7993-3-quentin.perret@arm.com>
 <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
 <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
 <698400c0-e0a4-4a86-b9df-cdb9bd683c0f@linaro.org>
 <20190515100748.q3t4kt72h2akdpcs@queper01-lin>
 <cf1474cb-7e31-7070-b988-a0c4d3f6f081@linaro.org>
 <20190515102200.s6uq63qnwea6xtpl@vireshk-i7>
 <20190515104043.vogspxgkapp6qsny@queper01-lin>
 <20190515104651.tv5odug7ce4zlupc@queper01-lin>
 <5b55e432-f8b0-91ae-a7de-fe02e0cad322@linaro.org>
 <20190515110156.ru2wxqvwffqgq3t3@queper01-lin>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <a4c0ab68-f8d0-a70d-58e5-b8de55199000@linaro.org>
Date: Wed, 15 May 2019 13:07:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515110156.ru2wxqvwffqgq3t3@queper01-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_040743_252988_79A7072C 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 amit.kachhap@gmail.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 will.deacon@arm.com, edubezval@gmail.com, mka@chromium.org,
 catalin.marinas@arm.com, rui.zhang@intel.com, javi.merino@kernel.org,
 ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTUvMDUvMjAxOSAxMzowMSwgUXVlbnRpbiBQZXJyZXQgd3JvdGU6Cj4gT24gV2VkbmVzZGF5
IDE1IE1heSAyMDE5IGF0IDEyOjUxOjU3ICgrMDIwMCksIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+
PiBPbiAxNS8wNS8yMDE5IDEyOjQ2LCBRdWVudGluIFBlcnJldCB3cm90ZToKPj4+IE9uIFdlZG5l
c2RheSAxNSBNYXkgMjAxOSBhdCAxMTo0MDo0NCAoKzAxMDApLCBRdWVudGluIFBlcnJldCB3cm90
ZToKPj4KPj4gWyAuLi4gXQo+Pgo+Pj4+ICsjaWZkZWYgQ09ORklHX1RIRVJNQUxfR09WX1BPV0VS
X0FMTE9DQVRPUgo+Pj4+ICAgICAgICAgaWYgKGNhcGFjaXRhbmNlKSB7Cj4+Pj4gICAgICAgICAg
ICAgICAgIHJldCA9IHVwZGF0ZV9mcmVxX3RhYmxlKGNwdWZyZXFfY2RldiwgY2FwYWNpdGFuY2Up
Owo+Pj4+ICAgICAgICAgICAgICAgICBpZiAocmV0KSB7Cj4+Pj4gICAgICAgICAgICAgICAgICAg
ICAgICAgY2RldiA9IEVSUl9QVFIocmV0KTsKPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICBn
b3RvIHJlbW92ZV9pZGE7Cj4+Pj4gICAgICAgICAgICAgICAgIH0KPj4+PiAtCj4+Pj4gLSAgICAg
ICAgICAgICAgIGNvb2xpbmdfb3BzID0gJmNwdWZyZXFfcG93ZXJfY29vbGluZ19vcHM7Cj4+Pj4g
LSAgICAgICB9IGVsc2Ugewo+Pj4+IC0gICAgICAgICAgICAgICBjb29saW5nX29wcyA9ICZjcHVm
cmVxX2Nvb2xpbmdfb3BzOwo+Pj4+ICAgICAgICAgfQo+Pj4+ICsjZW5kaWYKPj4+PiArICAgICAg
IGNvb2xpbmdfb3BzID0gJmNwdWZyZXFfY29vbGluZ19vcHM7Cj4+Pgo+Pj4gQXJnaCwgdGhhdCBp
cyBhY3R1YWxseSBicm9rZW4gd2l0aCAhY2FwYWNpdGFuY2UgYW5kCj4+PiBUSEVSTUFMX0dPVl9Q
T1dFUl9BTExPQ0FUT1I9eSAuLi4gUGVyaGFwcyBpdCdzIGJlc3QgdG8ga2VlcCB0aGUgdHdvCj4+
PiB0aGVybWFsX2Nvb2xpbmdfZGV2aWNlX29wcyBzdHJ1Y3Qgc2VwYXJhdGVkIGluIHRoZSBlbmQu
Cj4+Cj4+IE9yIGFsdGVybmF0aXZlbHkgeW91IGNhbiBrZWVwIG9uZSBzdHJ1Y3R1cmUgYnV0IGlu
c3RlYWQgb2YgZmlsbGluZyB0aGUKPj4gc3RhdGUycG93ZXIscG93ZXIyc3RhdGUgYW5kIGdldHJl
cXVlc3RlZHBvd2VyIGZpZWxkcyBpbiB0aGUgZGVjbGFyYXRpb24sCj4+IHlvdSBmaWxsIHRoZW0g
aW4gdGhlIGlmIChjYXBhY2l0YW5jZSkgYmxvY2ssIG5vPwo+IAo+IFNvbWV0aGluZyBsaWtlIHRo
ZSBiZWxvdyA/IFllcywgdGhhdCB3b3JrcyB0b28uIEknbGwgd3JpdGUgYSBwcm9wZXIKPiBwYXRj
aCBhbmQgc2VuZCB0aGF0IG5leHQgd2VlayBvciBzby4KClllcywgZXhhY3RseS4gQW5kIElNSE8s
IHRoYXQgaGVscHMgZm9yIHRoZSB1bmRlcnN0YW5kaW5nIG9mIGNvZGUgYWxzby4KCj4gLS0tPjgt
LS0KPiAKPiAgLyogQmluZCBjcHVmcmVxIGNhbGxiYWNrcyB0byB0aGVybWFsIGNvb2xpbmcgZGV2
aWNlIG9wcyAqLwo+IAo+ICBzdGF0aWMgc3RydWN0IHRoZXJtYWxfY29vbGluZ19kZXZpY2Vfb3Bz
IGNwdWZyZXFfY29vbGluZ19vcHMgPSB7Cj4gLSAgICAgICAuZ2V0X21heF9zdGF0ZSA9IGNwdWZy
ZXFfZ2V0X21heF9zdGF0ZSwKPiAtICAgICAgIC5nZXRfY3VyX3N0YXRlID0gY3B1ZnJlcV9nZXRf
Y3VyX3N0YXRlLAo+IC0gICAgICAgLnNldF9jdXJfc3RhdGUgPSBjcHVmcmVxX3NldF9jdXJfc3Rh
dGUsCj4gLX07Cj4gLQo+IC1zdGF0aWMgc3RydWN0IHRoZXJtYWxfY29vbGluZ19kZXZpY2Vfb3Bz
IGNwdWZyZXFfcG93ZXJfY29vbGluZ19vcHMgPSB7Cj4gICAgICAgICAuZ2V0X21heF9zdGF0ZSAg
ICAgICAgICA9IGNwdWZyZXFfZ2V0X21heF9zdGF0ZSwKPiAgICAgICAgIC5nZXRfY3VyX3N0YXRl
ICAgICAgICAgID0gY3B1ZnJlcV9nZXRfY3VyX3N0YXRlLAo+ICAgICAgICAgLnNldF9jdXJfc3Rh
dGUgICAgICAgICAgPSBjcHVmcmVxX3NldF9jdXJfc3RhdGUsCj4gLSAgICAgICAuZ2V0X3JlcXVl
c3RlZF9wb3dlciAgICA9IGNwdWZyZXFfZ2V0X3JlcXVlc3RlZF9wb3dlciwKPiAtICAgICAgIC5z
dGF0ZTJwb3dlciAgICAgICAgICAgID0gY3B1ZnJlcV9zdGF0ZTJwb3dlciwKPiAtICAgICAgIC5w
b3dlcjJzdGF0ZSAgICAgICAgICAgID0gY3B1ZnJlcV9wb3dlcjJzdGF0ZSwKPiAgfTsKPiAKPiAg
LyogTm90aWZpZXIgZm9yIGNwdWZyZXEgcG9saWN5IGNoYW5nZSAqLwo+IEBAIC02NzQsMTggKzY2
NywxOSBAQCBfX2NwdWZyZXFfY29vbGluZ19yZWdpc3RlcihzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgIHByX2RlYnVnKCIlczogZnJlcToldSBLSHpcbiIs
IF9fZnVuY19fLCBmcmVxKTsKPiAgICAgICAgIH0KPiAKPiArICAgICAgIGNvb2xpbmdfb3BzID0g
JmNwdWZyZXFfY29vbGluZ19vcHM7Cj4gKyNpZmRlZiBDT05GSUdfVEhFUk1BTF9HT1ZfUE9XRVJf
QUxMT0NBVE9SCj4gICAgICAgICBpZiAoY2FwYWNpdGFuY2UpIHsKPiAgICAgICAgICAgICAgICAg
cmV0ID0gdXBkYXRlX2ZyZXFfdGFibGUoY3B1ZnJlcV9jZGV2LCBjYXBhY2l0YW5jZSk7Cj4gICAg
ICAgICAgICAgICAgIGlmIChyZXQpIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBjZGV2ID0g
RVJSX1BUUihyZXQpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gcmVtb3ZlX2lkYTsK
PiAgICAgICAgICAgICAgICAgfQo+IC0KPiAtICAgICAgICAgICAgICAgY29vbGluZ19vcHMgPSAm
Y3B1ZnJlcV9wb3dlcl9jb29saW5nX29wczsKPiAtICAgICAgIH0gZWxzZSB7Cj4gLSAgICAgICAg
ICAgICAgIGNvb2xpbmdfb3BzID0gJmNwdWZyZXFfY29vbGluZ19vcHM7Cj4gKyAgICAgICAgICAg
ICAgIGNvb2xpbmdfb3BzLT5nZXRfcmVxdWVzdGVkX3Bvd2VyID0gY3B1ZnJlcV9nZXRfcmVxdWVz
dGVkX3Bvd2VyOwo+ICsgICAgICAgICAgICAgICBjb29saW5nX29wcy0+c3RhdGUycG93ZXIgPSBj
cHVmcmVxX3N0YXRlMnBvd2VyOwo+ICsgICAgICAgICAgICAgICBjb29saW5nX29wcy0+cG93ZXIy
c3RhdGUgPSBjcHVmcmVxX3Bvd2VyMnN0YXRlOwo+ICAgICAgICAgfQo+IC0KPiArI2VuZGlmCj4g
ICAgICAgICBjZGV2ID0gdGhlcm1hbF9vZl9jb29saW5nX2RldmljZV9yZWdpc3RlcihucCwgZGV2
X25hbWUsIGNwdWZyZXFfY2RldiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvb2xpbmdfb3BzKTsKPiAgICAgICAgIGlmIChJU19FUlIoY2Rldikp
Cj4gCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cu
ZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29t
LyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJs
b2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
