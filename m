Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47227C8EA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkjTryWnrL0DWOTtIZ9ibn2psm4Gw/gFzQ5j0+mbPqg=; b=BwSySvM91wlLps
	uWuIbdmxjhr9UaV/rNcJy8Bg+XXuVyoKIvhjKGJdYnxL5Zjy+EqGJ81roIXo4nIugxu5K/9RmbN6z
	pZLzcGcGJQYdvNPVr+3atrl5pytCumgV/MXiVcCaRpwp5ix8+ufEAgWYWZ+qNuZTluga7BH1L2JJp
	abAV6auzqjLCbeWYQU1oO0UPU0uPh38PwLeVnmfWiP8Z6u8GMwqWR/dXI4p4NBz01g5C0hi5a0hZ/
	BL933KAuxKUIxLZB/wSRCaMLLQWr/yrFPB5KFVwGyRa5ETjeEjP227W33LlAh0vrWI/chRg54E0ZO
	78Ni1mOtIEQPOU8ODX0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhie-0002K1-Pu; Wed, 02 Oct 2019 16:43:16 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhiV-0002Ja-PH
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:43:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id q15so7265931pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 09:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QK5cQenUnemNJViz1kVO+QhJytyn5MMK01TencotaHM=;
 b=Y5QQ47fO98HpZlG4XFz9lifNrd0YQu5kMkfq9RSto01NpB14U/A8vgCqNi66JRbHnx
 k+ZIJzwejuUJoOrPvz2bLHmclgwsQA6n4xZYGR+Nn8iI7M8i+EOAAnPAsTPc9tRxrFpr
 9/2cAwR6jB4vGLNoQC8E7P2uIgABe++bsKcNwdjUUaBtAm4gBY7YapWffdsjIuDghjTM
 J7Gt7AVuEWkrw4+L5MblaZYE+zPQe/kW7b4UBL1YtD9a+G7Rmc+ZiwGxDjvoWLSYQbCD
 UVgKkKFkq02ZXVsECgLjpmXAjbt+ILkXOc2mIxCvaw0+8ugrMWfWRwDG9tcPJDsNMHoU
 GkEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=QK5cQenUnemNJViz1kVO+QhJytyn5MMK01TencotaHM=;
 b=CYYGZ5oQZkhTchArcv852noa4VyBK1hcAWby1t5vxfy39n0UlNk4fSeEnUndTaVmB/
 YPwhJt/dKXB5Z+v2idZOuUbqzRH4rc9CVCSxKXPHsma0HMOAiDZNpRvNoaC1gtI0kwqY
 54eHiFUo2jZUyWZjBKaCdCvYWv4HqVKx7Fo6kANK6Jras7C4W96RVFukC+/V3gcj6qj5
 SEM/fjAJnjiGD0LeaJH/lc8+FCyM9F5K4fEeKvwV8dPXI9cs+gGGKFVFrjXvTPsT3Nnv
 QvMdRgf3Jn82I6DmGBuQ3B4RWkw01GPmoSBIO32nb2FML0sY9kZgnrR/gECYb0mwvmEn
 ZnSA==
X-Gm-Message-State: APjAAAUpp2t9eO/OnXV7IfMB4F3OAt0hKFrclPWbuJpNNEbsXYSSO2ey
 iUtMCnVqfottQyvk2Y4oIPNIyO9s
X-Google-Smtp-Source: APXvYqzO8bmhXIVnLHckbWjmCIkNnNpuCw+mANeepW0J0qhhN+OE7h4WA20hVK3TcUGw1zT54a8dOA==
X-Received: by 2002:a17:902:5983:: with SMTP id
 p3mr4794279pli.156.1570034586819; 
 Wed, 02 Oct 2019 09:43:06 -0700 (PDT)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id d6sm22958396pgj.22.2019.10.02.09.43.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Oct 2019 09:43:05 -0700 (PDT)
Subject: Re: [PATCH V3 7/8] ARM: dts: Add minimal Raspberry Pi 4 support
To: Stefan Wahren <wahrenst@gmx.net>, Florian Fainelli
 <f.fainelli@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-8-git-send-email-wahrenst@gmx.net>
 <77b0a773-912a-aa5b-6eb5-5423c2c07e58@gmail.com>
 <7d0414bb-fea8-e3e5-8b85-c18615a56c94@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <e9e6491e-c53e-7255-98cc-dabdfa7ba753@gmail.com>
Date: Wed, 2 Oct 2019 09:43:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7d0414bb-fea8-e3e5-8b85-c18615a56c94@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_094307_851051_63328C85 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, devicetree@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMi8xOSA5OjI0IEFNLCBTdGVmYW4gV2FocmVuIHdyb3RlOgo+IEhpIEZsb3JpYW4sCj4g
Cj4gQW0gMjguMDkuMTkgdW0gMjE6NTggc2NocmllYiBGbG9yaWFuIEZhaW5lbGxpOgo+Pgo+PiBP
biA5LzI4LzIwMTkgNTowNyBBTSwgU3RlZmFuIFdhaHJlbiB3cm90ZToKPj4KPj4+ICsJbWVtb3J5
QDAgewo+Pj4gKwkJZGV2aWNlX3R5cGUgPSAibWVtb3J5IjsKPj4+ICsJCXJlZyA9IDwwIDAgMHgw
MDAwMDAwMD47Cj4+PiArCX07Cj4+PiArCj4+IFtzbmlwXQo+Pgo+Pj4gKyNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4+PiArI2luY2x1ZGUgPGR0
LWJpbmRpbmdzL3NvYy9iY20yODM1LXBtLmg+Cj4+PiArCj4+PiArLyB7Cj4+PiArCWNvbXBhdGli
bGUgPSAiYnJjbSxiY20yNzExIjsKPj4+ICsKPj4+ICsJI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4+
PiArCSNzaXplLWNlbGxzID0gPDE+Owo+PiBUcnlpbmcgdG8gc2VlIGlmIHdlIG1heSBuZWVkIGEg
I3NpemUtY2VsbHMgcHJvcGVydHkgdmFsdWUgb2YgMiBoZXJlLCBmb3IKPj4gdGhlIDRHQiBtb2Rl
bCwgSSB3b3VsZCBhc3N1bWUgdGhhdCB3ZSB3b3VsZCBoYXZlIHRvLCB1bmxlc3Mgd2UgYXJlIGZp
bmUKPj4gd2l0aCBzdXBwb3J0aW5nIDRHQiAtIDFieXRlIG9mIERSQU0/Cj4gSSB3aWxsIHRyeSB1
bmxlc3MgdGhpcyByZXF1aXJlcyBhIGxvdCBvZiBhZGp1c3RtZW50cyBvciBicmVhayB0aGUKPiBi
b290bG9hZGVyLgoKT0suCgo+Pgo+Pj4gKwo+Pj4gKwlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWN2
Mj47Cj4+PiArCj4+PiArCXNvYyB7Cj4+PiArCQlyYW5nZXMgPSA8MHg3ZTAwMDAwMCAgMHgwIDB4
ZmUwMDAwMDAgIDB4MDE4MDAwMDA+LAo+Pj4gKwkJCSA8MHg3YzAwMDAwMCAgMHgwIDB4ZmMwMDAw
MDAgIDB4MDIwMDAwMDA+LAo+Pj4gKwkJCSA8MHg0MDAwMDAwMCAgMHgwIDB4ZmY4MDAwMDAgIDB4
MDA4MDAwMDA+Owo+PiBNaWdodCBiZSBuaWNlIHRvIGdldCBzb21lIGNvbW1lbnRzIGFib3V0Cj4g
cmFuZ2VzID0gPDB4N2UwMDAwMDDCoCAweDAgMHhmZTAwMDAwMMKgIDB4MDE4MDAwMDA+LMKgIC8v
IENvbW1vbiBCQ00yODN4Cj4gcGVyaXBoZXJhbHMKPiDCoMKgwqAgwqA8MHg3YzAwMDAwMMKgIDB4
MCAweGZjMDAwMDAwwqAgMHgwMjAwMDAwMD4swqAgLy8gQkNNMjcxMS1zcGVjaWZpYwo+IHBlcmlw
aGVyYWxzCj4gCj4gwqDCoMKgIMKgPDB4NDAwMDAwMDDCoCAweDAgMHhmZjgwMDAwMMKgIDB4MDA4
MDAwMDA+O8KgIC8vIEFSTS1sb2NhbCBwZXJpcGhlcmFscwo+IAo+IEkgd2lsbCBzaW1wbHkgZm9y
d2FyZCB0aGUgYW5zd2VyIGZyb20gdGhlIFJQaSBndXlzLgo+IAo+IElzIGl0IHdoYXQgeW91IGhh
ZCBpbiBtaW5kPyBPdGhlcndpc2UgcGxlYXNlIGJlIG1vcmUgc3BlY2lmaWMuCgpZZXMsIHRoYXQg
aXMgd2hhdCBJIHdhbnRlZCB0byBzZWUgYmVpbmcgYWRkZWQsIHRoYW5rcy4KLS0gCkZsb3JpYW4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
