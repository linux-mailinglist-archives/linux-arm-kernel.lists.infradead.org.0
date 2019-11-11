Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E91F8358
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 00:20:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyCa7HRhJzGqO/MUS5EBpNU2qsSRBCfHuWYOm4utwaI=; b=eAMiDbK2OviK4U
	v+kX4D2GZFk9slZcK1Dcsg4XpuZ/46KADKZPKBdudrok7UNyQtsKGBZmQgsPVJTarY/cuJBugSUKF
	Hh3WSQ0PNn5ulCYhwYEV4yBuqQ+n9xD/2uTbAlkbtm2ZJRhtWtVrpYxrjtvsXj/Me9m0uqdmwsxSD
	sc/TXeKfPTgLFh/EpymHT3JQWeBSCSx/e0sVGFq6mcez4dxdUH4IGX9GS/wsEU2NtL79o9EtZP9wq
	DePhk+Ra7g0C0rID+LY7i268qXyxk9KO8R0A39a9ExvhQyPP4qcw2x0mITF0dFKdWUbPVM2AFX4zu
	HMpZ8vPQgI4G6nOhD0Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUIyi-0001WX-MH; Mon, 11 Nov 2019 23:20:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUIyQ-0001W0-AT
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 23:19:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id t1so16493090wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 15:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=S8S5DPbkJUeuS0msuewZK6ytnsqOwMF+XHe7JKmZJ8Q=;
 b=guk/cB4SALjmTWo06lOmPQCfirOWm5hC8o53ccneMsCRkFC9QHiI/xB15Zyz7SC3nk
 aGyIYavYYaSeEMzuWn02kb1tCSZGZqG3Z3Tb3ASsKg6LKlbt1He/tCyKidF/mn14JaTL
 FhySs/SeSryiYFdkbhPU1KAtWLAxKwAIJRqW08MKt0nK8cyCRKDstHISEzYgN7FMFNU+
 PYS/gKX8IPjKx9i4TNNs14fvkcNfVneHr5rR4F1CGEnxs2se7NtsA3fhVRRmE2FlPv84
 M1eoWBwEoxGzcvroxQhiE9H2+F6Tkn1s5duXbFdkfdnxlvFeXzJHaZjrqSCtTC7Vc8eE
 hKuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=S8S5DPbkJUeuS0msuewZK6ytnsqOwMF+XHe7JKmZJ8Q=;
 b=cx/z+K0k7Osy68xyvDHiHVP+YzqFwT9Q7dmS8yHFPsAcj+9C6Zj52nw4hKxuQQDQN7
 i9T016XXd4luNWD5R5DoEGJQCN4oePjXITZ3mfEsrfHBrRtD3S45D9u7IWwnjt6Vb8IN
 4iFfEUbdroI4buXh6Z2lhsPhC6sluQgnZPH2OKgURRxVv11+gMOs3oP9O04vdlaMcFVT
 wqRWY5swxxWq8FC/5QVYJ9r8gBpr9vQiMyOcfLOdx+2aTd/85M3xSaIaVnKWPEprzoy5
 M1Wh0WurVKrSAVWFBqZ75CSJVYgyCA/P0Mh7KOsL/EggvBN/L2mkUAMC62ndfDm3w8aP
 +aLw==
X-Gm-Message-State: APjAAAUnpP9oR7XSLvxwyJdOf0UyVLd67+fMnP4dARxqiJFRwqWmVi36
 n9pSSbiohM7aQWlq83zADf+B171TE5k=
X-Google-Smtp-Source: APXvYqw72aIe/celjP64cfcn7BsbhSwJGpB7wvaG0aGHvTDm9lDToXMurYqYpCb3UrV1PSywUttkMA==
X-Received: by 2002:adf:dc0e:: with SMTP id t14mr23102815wri.170.1573514392256; 
 Mon, 11 Nov 2019 15:19:52 -0800 (PST)
Received: from [192.168.1.221] ([195.245.39.207])
 by smtp.gmail.com with ESMTPSA id q124sm779492wme.13.2019.11.11.15.19.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Nov 2019 15:19:51 -0800 (PST)
Subject: Re: [PATCH] ARM: ep93xx: Avoid soc_device_to_device()
To: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 Hartley Sweeten <hsweeten@visionengravers.com>
References: <20191111223722.2364-1-afaerber@suse.de>
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Message-ID: <ef0dcc43-1b5d-0617-4d1e-4d6eb366e39d@gmail.com>
Date: Tue, 12 Nov 2019 00:17:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191111223722.2364-1-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_151954_388401_FF636690 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.sverdlin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpPbiAxMS8xMS8yMDE5IDIzOjM3LCBBbmRyZWFzIEbDpHJiZXIgd3JvdGU6Cj4gZXA5M3h4
X2luaXRfc29jKCkgdXNlcyBzb2NfZGV2aWNlX3RvX2RldmljZSgpIHRvIHJldHVybiBhIGRldmlj
ZQo+IHRvIGVwOTN4eF9pbml0X2RldmljZXMoKSwgd2hlcmUgaXQgaXMgcGFzc2VkIG9uIHRvIGl0
cyBjYWxsZXJzLAo+IHdobyBhbGwgaWdub3JlIHRoZSByZXR1cm4gdmFsdWUuIEFzIHRoaXMgaGVs
cGVyIGlzIGRlcHJlY2F0ZWQsCj4gY2hhbmdlIHRoZSByZXR1cm4gdHlwZSBvZiBlcDkzeHhfaW5p
dF9kZXZpY2VzKCkgdG8gdm9pZCBhbmQKPiBoYXZlIGVwOTN4eF9pbml0X3NvYygpIHJldHVybiB0
aGUgc29jX2RldmljZSBpbnN0ZWFkLgo+IAo+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdr
aEBsaW51eGZvdW5kYXRpb24ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8
YWZhZXJiZXJAc3VzZS5kZT4KCkFja2VkLWJ5OiBBbGV4YW5kZXIgU3ZlcmRsaW4gPGFsZXhhbmRl
ci5zdmVyZGxpbkBnbWFpbC5jb20+Cgo+IC0tLQo+ICBhcmNoL2FybS9tYWNoLWVwOTN4eC9jb3Jl
LmMgICAgIHwgMTIgKysrKy0tLS0tLS0tCj4gIGFyY2gvYXJtL21hY2gtZXA5M3h4L3BsYXRmb3Jt
LmggfCAgMiArLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1lcDkzeHgvY29yZS5jIGIvYXJj
aC9hcm0vbWFjaC1lcDkzeHgvY29yZS5jCj4gaW5kZXggNmZiMTlhMzkzZmQyLi43YTBjODJiMzA1
NjQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1lcDkzeHgvY29yZS5jCj4gKysrIGIvYXJj
aC9hcm0vbWFjaC1lcDkzeHgvY29yZS5jCj4gQEAgLTkzNyw3ICs5MzcsNyBAQCBzdGF0aWMgY29u
c3QgY2hhciBfX2luaXQgKmVwOTN4eF9nZXRfbWFjaGluZV9uYW1lKHZvaWQpCj4gIAlyZXR1cm4g
a2FzcHJpbnRmKEdGUF9LRVJORUwsIiVzIiwgbWFjaGluZV9kZXNjLT5uYW1lKTsKPiAgfQo+ICAK
PiAtc3RhdGljIHN0cnVjdCBkZXZpY2UgX19pbml0ICplcDkzeHhfaW5pdF9zb2Modm9pZCkKPiAr
c3RhdGljIHN0cnVjdCBzb2NfZGV2aWNlIF9faW5pdCAqZXA5M3h4X2luaXRfc29jKHZvaWQpCj4g
IHsKPiAgCXN0cnVjdCBzb2NfZGV2aWNlX2F0dHJpYnV0ZSAqc29jX2Rldl9hdHRyOwo+ICAJc3Ry
dWN0IHNvY19kZXZpY2UgKnNvY19kZXY7Cj4gQEAgLTk1OCwxMyArOTU4LDExIEBAIHN0YXRpYyBz
dHJ1Y3QgZGV2aWNlIF9faW5pdCAqZXA5M3h4X2luaXRfc29jKHZvaWQpCj4gIAkJcmV0dXJuIE5V
TEw7Cj4gIAl9Cj4gIAo+IC0JcmV0dXJuIHNvY19kZXZpY2VfdG9fZGV2aWNlKHNvY19kZXYpOwo+
ICsJcmV0dXJuIHNvY19kZXY7Cj4gIH0KPiAgCj4gLXN0cnVjdCBkZXZpY2UgX19pbml0ICplcDkz
eHhfaW5pdF9kZXZpY2VzKHZvaWQpCj4gK3ZvaWQgX19pbml0IGVwOTN4eF9pbml0X2RldmljZXMo
dm9pZCkKPiAgewo+IC0Jc3RydWN0IGRldmljZSAqcGFyZW50Owo+IC0KPiAgCS8qIERpc2FsbG93
IGFjY2VzcyB0byBNYXZlcmlja0NydW5jaCBpbml0aWFsbHkgKi8KPiAgCWVwOTN4eF9kZXZjZmdf
Y2xlYXJfYml0cyhFUDkzWFhfU1lTQ09OX0RFVkNGR19DUEVOQSk7Cj4gIAo+IEBAIC05NzUsNyAr
OTczLDcgQEAgc3RydWN0IGRldmljZSBfX2luaXQgKmVwOTN4eF9pbml0X2RldmljZXModm9pZCkK
PiAgCQkJICAgICAgIEVQOTNYWF9TWVNDT05fREVWQ0ZHX0dPTklERSB8Cj4gIAkJCSAgICAgICBF
UDkzWFhfU1lTQ09OX0RFVkNGR19IT05JREUpOwo+ICAKPiAtCXBhcmVudCA9IGVwOTN4eF9pbml0
X3NvYygpOwo+ICsJZXA5M3h4X2luaXRfc29jKCk7Cj4gIAo+ICAJLyogR2V0IHRoZSBHUElPIHdv
cmtpbmcgZWFybHksIG90aGVyIGRldmljZXMgbmVlZCBpdCAqLwo+ICAJcGxhdGZvcm1fZGV2aWNl
X3JlZ2lzdGVyKCZlcDkzeHhfZ3Bpb19kZXZpY2UpOwo+IEBAIC05ODksOCArOTg3LDYgQEAgc3Ry
dWN0IGRldmljZSBfX2luaXQgKmVwOTN4eF9pbml0X2RldmljZXModm9pZCkKPiAgCXBsYXRmb3Jt
X2RldmljZV9yZWdpc3RlcigmZXA5M3h4X3dkdF9kZXZpY2UpOwo+ICAKPiAgCWdwaW9fbGVkX3Jl
Z2lzdGVyX2RldmljZSgtMSwgJmVwOTN4eF9sZWRfZGF0YSk7Cj4gLQo+IC0JcmV0dXJuIHBhcmVu
dDsKPiAgfQo+ICAKPiAgdm9pZCBlcDkzeHhfcmVzdGFydChlbnVtIHJlYm9vdF9tb2RlIG1vZGUs
IGNvbnN0IGNoYXIgKmNtZCkKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1lcDkzeHgvcGxh
dGZvcm0uaCBiL2FyY2gvYXJtL21hY2gtZXA5M3h4L3BsYXRmb3JtLmgKPiBpbmRleCBiNDA0NWEx
ODYyMzkuLjhhM2EyYmU1MGYxMSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLWVwOTN4eC9w
bGF0Zm9ybS5oCj4gKysrIGIvYXJjaC9hcm0vbWFjaC1lcDkzeHgvcGxhdGZvcm0uaAo+IEBAIC0z
NCw3ICszNCw3IEBAIHZvaWQgZXA5M3h4X3JlZ2lzdGVyX2FjOTcodm9pZCk7Cj4gIHZvaWQgZXA5
M3h4X3JlZ2lzdGVyX2lkZSh2b2lkKTsKPiAgdm9pZCBlcDkzeHhfcmVnaXN0ZXJfYWRjKHZvaWQp
Owo+ICAKPiAtc3RydWN0IGRldmljZSAqZXA5M3h4X2luaXRfZGV2aWNlcyh2b2lkKTsKPiArdm9p
ZCBlcDkzeHhfaW5pdF9kZXZpY2VzKHZvaWQpOwo+ICBleHRlcm4gdm9pZCBlcDkzeHhfdGltZXJf
aW5pdCh2b2lkKTsKPiAgCj4gIHZvaWQgZXA5M3h4X3Jlc3RhcnQoZW51bSByZWJvb3RfbW9kZSwg
Y29uc3QgY2hhciAqKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
