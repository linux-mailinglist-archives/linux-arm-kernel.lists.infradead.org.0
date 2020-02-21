Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C64167912
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 10:11:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wKurIkCKoHRpyIVYlXHIDHggyZWe0/819+orKpeVYc=; b=WNStLUeE65OYQE
	c1OH1xXvTjnFQJ4xO7at9sv14rPexGGGQldDC8kjhZT9PIO6Zh45HzmH8Me4VVhIszelh1cToziBY
	LdvyCi0TulMyjQceL9bfQmc2TAhaOge+vkv5ANiUBeBWeVE5G7wSHRqvLp25zveEaMayEDJ9k2s/o
	HrvdPTz/DYfVbAC0ku90WJ6o7M85Ro/QDJvn0lGVo5XhJX55ybGfEdBVO6n29qOmlA8f1jZ3EHg4D
	xccvDijs4i5yJ3H2xq46pfrBuGeI5AJMCWB8cs+IUDZhBXKNozT2HxoMEeYaMbFcjeJN/GdAAuXB9
	J93LGGeeraLloB0UVUZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54LA-0000tW-7o; Fri, 21 Feb 2020 09:11:20 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54Kt-0000rd-Hg
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 09:11:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so855274wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 01:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lC2Ok05wDBJ11Mc+7XUHky9ZjVue0L36+JAbszAfxLM=;
 b=nitPb5hY8JFvy36A15Vy2ZNcfH2vIQLKpCa9o97VvY+nLx1A5fr8PkdsPflphtORSp
 t54HsjYCc0zoXbu5sC/2qwW9+Yj4gbdN7ZoPKJuicxkhz1tv1TCGZcbyhI5kWG1Dn/Bt
 Fq8bqIouteP/5SuVrB3YVm+8pqUvR+dz1bDl06pTL9qWfnasz7flQ5Pu2qorpwJ0bKCc
 JsX0XqsQcQv8PQNpdvZIC1VzRErxIu+tPstIRiuU7fMJfQsjY+Wu7iT5aCkJI2ne662b
 o3vfGzOmsjso1ikg8zHPxqckRuw/jLhPcsy+0zpNfx1Pp80DUoVzSi2FuruoYUtgFE47
 mv4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=lC2Ok05wDBJ11Mc+7XUHky9ZjVue0L36+JAbszAfxLM=;
 b=Jw8AfMJU5mVviLdEyvFOHrAW0FBe4OBMrIOkY41FLJBgpVoE6fWX/v4yVzV58g+LFQ
 MK5ckFERV0GvizYg8eZgagf/cysg165U0havN6AuEnCFhaO4MLjuVRk1uXWXVEMmriw9
 sDpOvltXPfMeKqTdc7DcAhS8nXxq/Tvfo5d51EnJEZprmWZworWQexc7LL7CrkPBoRdc
 ySBwC1VtMjNz+XlliHgwyIdPqHKUG97+rW7ZF8rFefchUAc2jpSKZnssE5kj1AfQWu0m
 kO6Si7Dh+E2dMB6qHtKVSj9CloYQgOn3mEeIhlHhnnhYkMIOo79lx0nXRDEtfWwmnYAU
 U+Ew==
X-Gm-Message-State: APjAAAXqD6oc1QpaWjzybq5eDYk0N3bRWhjT/mbe6s/8/wz7h4mx5cGV
 xv1W4gLOzNcS3R8L/VRwjhucrw==
X-Google-Smtp-Source: APXvYqzW+erZHPEVYlb4cjR9TwZjlpd5fW07F9ngwXZnZ9+r5FiohTmukOgiek6LvZ+Pt5tBb+VSpw==
X-Received: by 2002:a1c:4b0f:: with SMTP id y15mr2478639wma.87.1582276261828; 
 Fri, 21 Feb 2020 01:11:01 -0800 (PST)
Received: from ?IPv6:2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858?
 ([2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858])
 by smtp.gmail.com with ESMTPSA id a22sm3025856wmd.20.2020.02.21.01.11.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Feb 2020 01:11:01 -0800 (PST)
Subject: Re: [PATCH v3 2/3] usb: dwc3: gadget: Add support for disabling SS
 instances in park mode
To: Jun Li <lijun.kernel@gmail.com>
References: <20200219141817.24521-1-narmstrong@baylibre.com>
 <20200219141817.24521-3-narmstrong@baylibre.com>
 <CAKgpwJXVo_Psyu45+KfRKsTRBc6LRWSvUw2CWdUQseAoKd2p9g@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <b2439923-5590-349e-754b-6b047d4becaf@baylibre.com>
Date: Fri, 21 Feb 2020 10:10:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAKgpwJXVo_Psyu45+KfRKsTRBc6LRWSvUw2CWdUQseAoKd2p9g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_011103_589165_80FD80EF 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Felipe Balbi <balbi@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 khilman@baylibre.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tim <elatllat@gmail.com>, Dongjin Kim <tobetter@gmail.com>,
 linux-amlogic@lists.infradead.org, Thinh Nguyen <thinhn@synopsys.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjEvMDIvMjAyMCAwMjo1OSwgSnVuIExpIHdyb3RlOgo+IE5laWwgQXJtc3Ryb25nIDxuYXJt
c3Ryb25nQGJheWxpYnJlLmNvbT4g5LqOMjAyMOW5tDLmnIgxOeaXpeWRqOS4iSDkuIvljYgxMDox
OOWGmemBk++8mgo+Pgo+PiBJbiBjZXJ0YWluIGNpcmN1bXN0YW5jZXMsIHRoZSBYSENJIFN1cGVy
U3BlZWQgaW5zdGFuY2UgaW4gcGFyayBtb2RlCj4+IGNhbiBmYWlsIHRvIHJlY292ZXIsIHRodXMg
b24gQW1sb2dpYyBHMTJBL0cxMkIvU00xIFNvQ3Mgd2hlbiB0aGVyZSBpcyBoaWdoCj4+IGxvYWQg
b24gdGhlIHNpbmdsZSBYSENJIFN1cGVyU3BlZWQgaW5zdGFuY2UsIHRoZSBjb250cm9sbGVyIGNh
biBjcmFzaCBsaWtlOgo+PiAgeGhjaS1oY2QgeGhjaS1oY2QuMC5hdXRvOiB4SENJIGhvc3Qgbm90
IHJlc3BvbmRpbmcgdG8gc3RvcCBlbmRwb2ludCBjb21tYW5kLgo+PiAgeGhjaS1oY2QgeGhjaS1o
Y2QuMC5hdXRvOiBIb3N0IGhhbHQgZmFpbGVkLCAtMTEwCj4+ICB4aGNpLWhjZCB4aGNpLWhjZC4w
LmF1dG86IHhIQ0kgaG9zdCBjb250cm9sbGVyIG5vdCByZXNwb25kaW5nLCBhc3N1bWUgZGVhZAo+
PiAgeGhjaS1oY2QgeGhjaS1oY2QuMC5hdXRvOiB4SENJIGhvc3Qgbm90IHJlc3BvbmRpbmcgdG8g
c3RvcCBlbmRwb2ludCBjb21tYW5kLgo+PiAgaHViIDItMS4xOjEuMDogaHViX2V4dF9wb3J0X3N0
YXR1cyBmYWlsZWQgKGVyciA9IC0yMikKPj4gIHhoY2ktaGNkIHhoY2ktaGNkLjAuYXV0bzogSEMg
ZGllZDsgY2xlYW5pbmcgdXAKPj4gIHVzYiAyLTEuMS1wb3J0MTogY2Fubm90IHJlc2V0IChlcnIg
PSAtMjIpCj4+Cj4+IFNldHRpbmcgdGhlIFBBUktNT0RFX0RJU0FCTEVfU1MgYml0IGluIHRoZSBE
V0MzX1VTQjNfR1VDVEwxIG1pdGlnYXRlcwo+PiB0aGUgaXNzdWUuIFRoZSBiaXQgaXMgZGVzY3Jp
YmVkIGFzIDoKPj4gIldoZW4gdGhpcyBiaXQgaXMgc2V0IHRvICcxJyBhbGwgU1MgYnVzIGluc3Rh
bmNlcyBpbiBwYXJrIG1vZGUgYXJlIGRpc2FibGVkIgo+Pgo+PiBTeW5vcHN5cyBleHBsYWlucyBp
biBbMV06Cj4+IFRoZSBHVUNUTDEuUEFSS01PREVfRElTQUJMRV9TUyBpcyBvbmx5IGF2YWlsYWJs
ZSBpbgo+PiBkd2NfdXNiMyBjb250cm9sbGVyIHJ1bm5pbmcgaW4gaG9zdCBtb2RlLgo+PiBUaGlz
IHNob3VsZCBub3QgYmUgc2V0IGZvciBvdGhlciBJUHMuCj4+IFRoaXMgY2FuIGJlIGRpc2FibGVk
IGJ5IGRlZmF1bHQgYmFzZWQgb24gSVAsIGJ1dCBJIHJlY29tbWVuZCB0byBoYXZlIGEKPj4gcHJv
cGVydHkgdG8gZW5hYmxlIHRoaXMgZmVhdHVyZSBmb3IgZGV2aWNlcyB0aGF0IG5lZWQgdGhpcy4K
Pj4KPj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXVzYi80NTIxMmRiOS1lMzY2
LTI2NjktNWMwYS0zYzViZDA2Mjg3ZjZAc3lub3BzeXMuY29tCj4gCj4gVGhpcyBpcyBub3QgZm9y
IGdhZGdldCwgcGF0Y2ggdGl0bGUgc2hvdWxkIGJlOgo+IAo+IHVzYjogZHdjMzogY29yZTogYWRk
IHN1cHBvcnQuLi4KPiAKPiBMaSBKdW4KPiAKCkluZGVlZC4uLiB0aW1lIGZvciBhIHY0LgoKVGhh
bmtzLAoKTmVpbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
