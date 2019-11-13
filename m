Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B87FB31E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 16:02:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVfnhT07P9G2PBGPmfgAQG6bmDushXYyWS5590jBfMI=; b=KjUhhUHqM/l/5/
	/d3DoLrbI3xc2NV7b9Ao43PpCLpj2EJNUSGv1cBNkSbEOGZO5SLHDds6fDUBYtQtytyOMsm/fUKeZ
	cYKHw3IDTHvk+uib4Ramu/g5AzP9qw/zfnLySQtQKgeBVkGppQdrDbLax1VPGz+fknKOapy5iFleM
	t4TCbX/BHeNcjvXAEUruvv7V2zZ9rqAzv1qmiFOTkcLGfofzQfCbHD6C5ucJCMCIgBtj2XjTeSMoB
	KsX1bkqscNwTHDMILrsLXjXPiaX7iWereFk8/2fC949GJZPOCywJsYOgBR5yV4lD3hXHQKtVT/KAJ
	Icj5mSRRhQAay3YjyL5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUuA8-0000id-Lj; Wed, 13 Nov 2019 15:02:28 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUu9z-0000hb-0p; Wed, 13 Nov 2019 15:02:21 +0000
Received: by mail-qt1-x844.google.com with SMTP id o3so2866256qtj.8;
 Wed, 13 Nov 2019 07:02:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=2YLxw/q3FZr6omCXRBp0Mr2j6AnQdam6b70u/Sm0jVk=;
 b=gjVppIURWTLm0d9f+NpI7+qhqC0RgjrlzJPi+DxWuNshyIHwuw+phyL/BMoj3G4YmA
 6e2oLholw5RkSk3ErtcdWN+g2ZH3qKAHOytODEIBfMevF3UGLIxsSUKbAwEg0XbqPpPM
 yWIn1lj1TaHJhQlanRV6yHN8gqAcLRrfQDiXwcd1JvjZGspAPlemzocVzxF+5pUIElCS
 Xg3/ahIPlKjoPbf0U+a8BPGT9lRz77GjDsIdn2TANsfxpvRf2rjWU0lbeUrEA6vfuNLD
 /e8sBMidAiB4FSt+z05qAlyR65R4hQ9/o+ZQPQgwTT86XFqdgbHOhCoeaUi+UjN4ZEnd
 gf/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=2YLxw/q3FZr6omCXRBp0Mr2j6AnQdam6b70u/Sm0jVk=;
 b=B4PaoWdhvOj1DxSEMtoHMzqjsDnYqSSDJu3eZZ2YGhBY098+3tgNCBIz0msKPsAaiK
 Zpl+eD/pGq312nU+ybQ8urWLdYzIdwQIdnQbIqSe375aF9/0r7t7bCed4T4vv4vtfWj7
 OekbkH0kKN2jcmh6TxuLqPLen35AlxF4/AERx8+FHwqkGApZvmPqPyakd798+nXpmPJa
 B2UoykRvR3xgMMi7pdXjx0PFkMxBzoZaZL3NT446qR7FeML2VJeFyRo3zdFfFT0QrRCs
 bNFsoyPzyNKYO4IKCROhiDbFl1/vy+oJg0ZfLJjmuvVEDwr8C3I3KzPupcodtjut2vQ8
 06jw==
X-Gm-Message-State: APjAAAWi8Yj0kPHKNuXh5WKA9o7vqS492DYWv5PSXMcQfLfNk+mTnyV0
 2CDhbDh1CVp1nUH4AWoyIZU=
X-Google-Smtp-Source: APXvYqxuRs8sA9jAIhaudhBYPysRL+KIZ16g39NQsNFkMulcQ7y1LnOmmIAhcqDfR0webSA6QL1wcQ==
X-Received: by 2002:aed:3702:: with SMTP id i2mr2845791qtb.312.1573657337005; 
 Wed, 13 Nov 2019 07:02:17 -0800 (PST)
Received: from [192.168.109.33] ([208.91.121.54])
 by smtp.gmail.com with ESMTPSA id t2sm1042720qkt.95.2019.11.13.07.02.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 Nov 2019 07:02:16 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] arm64: dts: rockchip: add analog audio nodes on
 rk3399-rockpro64
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <CA+E=qVcXcUJCa86ru+0=wwY7_3GFLJaGQtLeZ1wVZZqqG4-KrA@mail.gmail.com>
Date: Wed, 13 Nov 2019 10:02:10 -0500
X-Clacks-Overhead: GNU Terry Pratchett
Message-Id: <FEA6221E-A09B-46F2-A3F3-3771CE2368B3@gmail.com>
References: <20190907174833.19957-1-katsuhiro@katsuster.net>
 <CA+E=qVdvKxzFcU-09Ucn1Fr0FdkwSsPcLr8vPn2wsu6-DD1gqg@mail.gmail.com>
 <abc648cc-0b5d-b407-b74b-639833ba196b@katsuster.net>
 <CA+E=qVdy-wqmR+XOms5S2zMp+B0vM7Dj_fk9N=08-1WjfKDm0Q@mail.gmail.com>
 <CA+E=qVdLzHbNTemMSmhA=-0dsNumQZJhjE-EnXBDu+j7sXTnVw@mail.gmail.com>
 <81666aeb-f3d0-e653-6597-0711a05f9b8d@katsuster.net>
 <CA+E=qVcgs=2T_9axUCJwTKgmKhjsJJ9mUfvYJbyjg59rGGjcTg@mail.gmail.com>
 <CA+E=qVe5QmJ8-zSbKj23mb-GksjD+qN=aFaCT7OGUYPYc9Y_ow@mail.gmail.com>
 <1ecd115a-1d33-020d-4a09-6fc451588920@katsuster.net>
 <CA+E=qVcXcUJCa86ru+0=wwY7_3GFLJaGQtLeZ1wVZZqqG4-KrA@mail.gmail.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_070219_068979_4C6FA535 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sigmaris[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gMTIgTm92IDIwMTksIGF0IDE0OjQ2LCBWYXNpbHkgS2hvcnV6aGljayA8YW5hcnNvdWxA
Z21haWwuY29tPiB3cm90ZToKPiAKPiBPbiBUdWUsIE5vdiAxMiwgMjAxOSBhdCAxMDozNCBBTSBL
YXRzdWhpcm8gU3V6dWtpCj4gPGthdHN1aGlyb0BrYXRzdXN0ZXIubmV0PiB3cm90ZToKPj4gCj4+
IE9uIDIwMTkvMTEvMTIgMTQ6NDksIFZhc2lseSBLaG9ydXpoaWNrIHdyb3RlOgo+Pj4gT24gTW9u
LCBOb3YgMTEsIDIwMTkgYXQgOTo0MyBQTSBWYXNpbHkgS2hvcnV6aGljayA8YW5hcnNvdWxAZ21h
aWwuY29tPiB3cm90ZToKPj4+PiAKPj4+PiBPbiBNb24sIE5vdiAxMSwgMjAxOSBhdCA5OjM0IFBN
IEthdHN1aGlybyBTdXp1a2kKPj4+PiA8a2F0c3VoaXJvQGthdHN1c3Rlci5uZXQ+IHdyb3RlOgo+
Pj4+PiAKPj4+Pj4gSGVsbG8gVmFzaWx5LAo+Pj4+PiAKPj4+Pj4gVGhhbmsgeW91IGZvciB2YWx1
YWJsZSBpbmZvcm1hdGlvbi4KPj4+Pj4gCj4+Pj4+IE9uIDIwMTkvMTEvMTIgNDoyNSwgVmFzaWx5
IEtob3J1emhpY2sgd3JvdGU6Cj4+Pj4+PiBPbiBTdW4sIE5vdiAxMCwgMjAxOSBhdCA5OjQwIFBN
IFZhc2lseSBLaG9ydXpoaWNrIDxhbmFyc291bEBnbWFpbC5jb20+IHdyb3RlOgo+Pj4+Pj4+IAo+
Pj4+Pj4+IE9uIFN1biwgTm92IDEwLCAyMDE5IGF0IDc6MzAgUE0gS2F0c3VoaXJvIFN1enVraQo+
Pj4+Pj4+IDxrYXRzdWhpcm9Aa2F0c3VzdGVyLm5ldD4gd3JvdGU6Cj4+Pj4+Pj4+IAo+Pj4+Pj4+
PiBIZWxsbyBWYXNpbHksCj4+Pj4+Pj4gCj4+Pj4+Pj4gSGkgS2F0c3VoaXJvLAo+Pj4+Pj4+IAo+
Pj4+Pj4+IFRoYW5rcyBmb3IgcmVzcG9uc2UhCj4+Pj4+PiAKPj4+Pj4+IExvb2tzIGxpa2Ugb24g
bXkgYm9hcmQgY29kZWMgc2l0cyBhdCBhZGRyZXNzIDB4MTAsIGFuZCBhY2NvcmRpbmcgdG8KPj4+
Pj4+IHNjaGVtYXRpY3MgdGhhdCdzIHdoYXQgaXRzIGFkZHJlc3MgaXMgc3VwcG9zZWQgdG8gYmUu
Cj4+Pj4+PiAKPj4+Pj4+IFNlZSBodHRwOi8vZmlsZXMucGluZTY0Lm9yZy9kb2Mvcm9ja3BybzY0
L3JvY2twcm82NF92MjEtU0NILnBkZgo+Pj4+Pj4gCj4+Pj4+PiBDb2RlYyBhZGRyZXNzIGlzIHNl
bGVjdGVkIGJ5IHBpbiBDRSBvZiBFUzgzMTYsIGFuZCBvbiByb2NrcHJvNjQgaXQKPj4+Pj4+IGdv
ZXMgdG8gR05EIHRocm91Z2ggUjIyNi4gU28gYWRkcmVzcyBzaG91bGQgYmUgMHgxMC4KPj4+Pj4+
IAo+Pj4+PiAKPj4+Pj4gWWVzLCBJIGFncmVlLiBUaGUgc2NoZW1hdGljcyBib3RoIHYyLjAgYW5k
IHYyLjEgc2F5IHRoYXQgRVM4MzE2Cj4+Pj4+IGFkZHJlc3MgaXMgMHgxMC4gVGhhbmsgeW91IGZv
ciBwb2ludGluZy4KPj4+Pj4gCj4+Pj4+IEJ1dCBJIHdvbmRlciB0aGF0IG15IFJvY2tQcm82NCBi
ZWhhdmlvciBpcyBzdHJhbmdlLCBoZSBpcyBpbiBhZGRyZXNzCj4+Pj4+IDB4MTEuIChSMjI2IG9u
IG15IGJvYXJkIGlzIGJyb2tlbi4uLj8/KQo+Pj4+PiAKPj4+Pj4gcm9vdEByb2NrcHJvNjQ6fiMg
aTJjZGV0ZWN0IDEKPj4+Pj4gV0FSTklORyEgVGhpcyBwcm9ncmFtIGNhbiBjb25mdXNlIHlvdXIg
STJDIGJ1cywgY2F1c2UgZGF0YSBsb3NzIGFuZCB3b3JzZSEKPj4+Pj4gSSB3aWxsIHByb2JlIGZp
bGUgL2Rldi9pMmMtMS4KPj4+Pj4gSSB3aWxsIHByb2JlIGFkZHJlc3MgcmFuZ2UgMHgwMy0weDc3
Lgo+Pj4+PiBDb250aW51ZT8gW1kvbl0geQo+Pj4+PiAgICAgICAwICAxICAyICAzICA0ICA1ICA2
ICA3ICA4ICA5ICBhICBiICBjICBkICBlICBmCj4+Pj4+IDAwOiAgICAgICAgICAtLSAtLSAtLSAt
LSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLQo+Pj4+PiAxMDogLS0gVVUgLS0gLS0gLS0gLS0g
LS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0KPj4+Pj4gMjA6IC0tIC0tIC0tIC0tIC0tIC0t
IC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tCj4+Pj4+IDMwOiAtLSAtLSAtLSAtLSAtLSAt
LSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLQo+Pj4+PiA0MDogLS0gLS0gLS0gLS0gLS0g
LS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0KPj4+Pj4gNTA6IC0tIC0tIC0tIC0tIC0t
IC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tCj4+Pj4+IDYwOiAtLSAtLSAtLSAtLSAt
LSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLQo+Pj4+PiA3MDogLS0gLS0gLS0gLS0g
LS0gLS0gLS0gLS0KPj4+Pj4gCj4+Pj4+IEkgcGxhbiB0byBjaGVjayBSMjI2IHJlc2lzdGFuY2Ug
dmFsdWUgdG8ganVkZ2UgUjIyNiBpcyBicm9rZW4gb3Igbm90Cj4+Pj4+IGFmdGVyIHJldHVybiB0
byBob21lLiBBbmQgc2hhcmUgdGhlIHJlc3VsdCB3aXRoIHlvdS4KPj4+Pj4gUGxlYXNlIGdpdmUg
bWUgYSB0aW1lLgo+Pj4+IAo+Pj4+IFRoYW5rcyBmb3IgY29uZmlybWluZyB0aGF0IG9uIHlvdXIg
Ym9hcmQgaXQncyBvbiBhZGRyZXNzIDB4MTEuIEkKPj4+PiBjaGVja2VkIHdpdGggc29tZSBvdGhl
ciByb2NrcHJvNjQgb3duZXJzIGFuZCB0aGV5IGhhdmUgaXQgb24gMHgxMCwgYnV0Cj4+Pj4gbG9v
a3MgbGlrZSB3ZSBoYXZlIGJvYXJkcyB3aXRoIGNvZGVjIG9uIGRpZmZlcmVudCBhZGRyZXNzIGlu
IHRoZSB3aWxkLgo+Pj4gCj4+PiBBbm90aGVyIGRhdGFwb2ludCBpcyB0aGF0IG15IGJvYXJkIGlz
IDIuMC4gSWYgeW91cnMgaXMgMi4xIGl0IGNhbiBiZSBhCj4+PiBkaWZmZXJlbmNlIGJldHdlZW4g
Mi4wIGFuZCAyLjEuCj4+PiAKPj4gCj4+IEknbSB1c2luZyB2Mi4xIGJvYXJkLgo+PiAKPj4gCj4+
IEknbGwgc2hhcmUgdGhlIGNoZWNraW5nIHJlc3VsdC4gSXQncyBhIGxpdHRsZSBzdHJhbmdlLgo+
PiAKPj4gMSkgVm9sdGFnZSBvZiBDRSBwaW4gb2YgRVM4MzE2Cj4+IAo+PiBJdCBpcyAxLjhWIHdo
ZW4gYm9vdGluZyBsaW51eC1uZXh0IGtlcm5lbC4KPj4gCj4+IAo+PiAyKSBNeSBib2FyZAo+PiAK
Pj4gSSBjYW4ndCBmaW5kIG5vIGNyYWNrIG5vciBicm9rZW4gcGFydHMgb24gbXkgYm9hcmQuCj4+
IAo+PiAKPj4gMikgUjIyNSwgUjIyNgo+PiAKPj4gQXMgeW91IGtub3csIFJvY2tQcm82NCBib2Fy
ZCBoYXMgbm8gc2lsayBwcmludCBzbyB3ZSBjYW5ub3Qga25vdwo+PiBwZXJmZWN0bHkgd2hpY2gg
cmVzaXN0YW5jZSBpcyBSMjI2LiBTbyB0aGlzIGlzIG15IGFzc3VtcHRpb24uCj4+IAo+PiAgICAg
ICAgUENJZSwgU0QgY2FyZCBzbG90Cj4+ICAgICAgICAgICAodG9wKQo+PiBMQU4gKGxlZnQpRVM4
MzE2KHJpZ2h0KSBVU0IsIHJlc2V0IGJ1dHRvbgo+PiAKPj4gT24gdGhlIGxlZnQgc3BhY2Ugb2Yg
RVM4MzE2IHRoZXJlIGlzIG5vIHJlc2lzdGFuY2UsIG9ubHkgYSBwYXR0ZXJuLgo+PiBUaGlzIGlz
IG1heWJlIFIyMjUuIEFuZCAxMEsgcmVzaXN0YW5jZSBvbiB0aGUgcmlnaHQgc2lkZSBvZiBhCj4+
IHBhdHRlcm4uIEkgYXNzdW1lIHRoaXMgaXMgUjIyNi4KPj4gCj4+IElmIG15IGFzc3VtcHRpb24g
aXMgY29ycmVjdGx5LCBib2FyZCBpbXBsZW1lbnRhdGlvbiBhbmQgc2NoZW1hdGljcwo+PiBhcmUg
ZGlmZmVyZW50Lgo+PiAKPj4gc2NoZW1hdGljcyBvZiB2Mi4xIGdldHMgc29tZXRoaW5nIHdyb25n
Li4uPz8KPiAKPiBHdWVzcyB3ZSBuZWVkIGZldyBtb3JlIFJvY2tQcm82NCB2Mi4xIG93bmVycyB0
byBjb25maXJtIHRoYXQgaXQncwo+IGluZGVlZCB0aGUgY2FzZS4KCkkgYWxzbyBoYXZlIGEgUm9j
a1BybzY0IGJvYXJkIHYyLjEsIGFuZCBteSBFUzgzMTYgY29kZWMgaXMgYXQgYWRkcmVzcyAweDEx
LgpJJ20gdXNpbmcgYSBrZXJuZWwgd2l0aCBLYXRzdWhpcm8ncyBwYXRjaCBhbmQgSSBjYW4gdXNl
IGFsc2FtaXhlciBhbmQgcGxheQpzb3VuZHMgb3V0IG9mIHRoZSBhbmFsb2cgamFjay4gTXkgaTJj
ZGV0ZWN0IG91dHB1dDoKCnJvb3RAa29kaTY0On4jIGkyY2RldGVjdCAxCldBUk5JTkchIFRoaXMg
cHJvZ3JhbSBjYW4gY29uZnVzZSB5b3VyIEkyQyBidXMsIGNhdXNlIGRhdGEgbG9zcyBhbmQgd29y
c2UhCkkgd2lsbCBwcm9iZSBmaWxlIC9kZXYvaTJjLTEuCkkgd2lsbCBwcm9iZSBhZGRyZXNzIHJh
bmdlIDB4MDMtMHg3Ny4KQ29udGludWU/IFtZL25dCiAgICAgMCAgMSAgMiAgMyAgNCAgNSAgNiAg
NyAgOCAgOSAgYSAgYiAgYyAgZCAgZSAgZgowMDogICAgICAgICAgLS0gLS0gLS0gLS0gLS0gLS0g
LS0gLS0gLS0gLS0gLS0gLS0gLS0KMTA6IC0tIFVVIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0t
IC0tIC0tIC0tIC0tIC0tCjIwOiAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAt
LSAtLSAtLSAtLQozMDogLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0g
LS0gLS0KNDA6IC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0tIC0t
CjUwOiAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLSAtLQo2MDog
LS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0gLS0KNzA6IC0tIC0t
IC0tIC0tIC0tIC0tIC0tIOKAlAoKUmVnYXJkcywKSHVnaAoKPiAKPj4gCj4+Pj4+IEJlc3QgUmVn
YXJkcywKPj4+Pj4gS2F0c3VoaXJvIFN1enVraQo+Pj4+PiAKPj4+Pj4gCj4+Pj4+Pj4+IFRoYW5r
IHlvdSBmb3IgcmVwb3J0aW5nLgo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gT24gMjAxOS8xMS8xMSA5OjE3
LCBWYXNpbHkgS2hvcnV6aGljayB3cm90ZToKPj4+Pj4+Pj4+IE9uIFNhdCwgU2VwIDcsIDIwMTkg
YXQgMTA6NDggQU0gS2F0c3VoaXJvIFN1enVraQo+Pj4+Pj4+Pj4gPGthdHN1aGlyb0BrYXRzdXN0
ZXIubmV0PiB3cm90ZToKPj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+PiBUaGlzIHBhdGNoIGFkZHMgYXVk
aW8gY29kZWMgKEV2ZXJlc3QgRVM4MzE2KSBhbmQgSTJTIGF1ZGlvIG5vZGVzIGZvcgo+Pj4+Pj4+
Pj4+IFJLMzM5OSBSb2NrUHJvNjQuCj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+IEhpIEthdHN1aGlybywK
Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4gSSB0ZXN0ZWQgeW91ciBwYXRjaCB3aXRoIG15IHJvY2twcm82
NCBvbiA1LjQtcmM2IHdoaWNoIGhhcyB5b3VyIG90aGVyCj4+Pj4+Pj4+PiBwYXRjaGVzIHRvIGVz
ODMxNiBkcml2ZXIsIGJ1dCBhcHBhcmVudGx5IGl0IGRvZXNuJ3Qgd29yay4KPj4+Pj4+Pj4+IAo+
Pj4+Pj4+Pj4gJ2Fsc2FtaXhlcicgY29tcGxhaW5zICdjYW5ub3QgbG9hZCBtaXhlciBjb250cm9s
czogTm8gc3VjaCBkZXZpY2Ugb3IKPj4+Pj4+Pj4+IGFkZHJlc3MnIGFuZCBpZiBJIHRyeSB0byBw
bGF5IGF1ZGlvIHdpdGggbXBnMTIzIGl0IHByZXRlbmRzIHRoYXQgaXQKPj4+Pj4+Pj4+IHBsYXlz
IHNvbWV0aGluZyBidXQgdGhlcmUncyBubyBzb3VuZC4KPj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4gQW55
IGlkZWEgd2hhdCBjYW4gYmUgd3Jvbmc/Cj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IERv
IHlvdSB1c2UgZGVmY29uZmlnPyBJZiBzbyBJIGd1ZXNzIHdlIG5lZWQgdHVybiBvbiBtb3JlIGNv
bmZpZ3M6Cj4+Pj4+Pj4+IAo+Pj4+Pj4+PiAtIHNpbXBsZS1ncmFwaC1jYXJkIGRyaXZlciAoQ09O
RklHX1NORF9BVURJT19HUkFQSF9DQVJEKQo+Pj4+Pj4+PiAtIEVTODMxNiAoU05EX1NPQ19FUzgz
MTYpCj4+Pj4+Pj4gCj4+Pj4+Pj4gSSBoYXZlIHRoZXNlIGVuYWJsZWQsIGNhcmQgaXMgcHJlc2Vu
dCBpbiAvcHJvYy9hc291bmQvY2FyZHMsIGJ1dAo+Pj4+Pj4+IGFsc2FtaXhlciBkb2Vzbid0IHdv
cmsgd2l0aCBpdC4KPj4+Pj4+PiAKPj4+Pj4+Pj4gRllJKSBBU29DIHJlbGF0ZWQgc3RhdHVzIG9y
IGxvZ3MgaW4gbXkgZW52aXJvbm1lbnQgYXMgZm9sbG93czoKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IHJv
b3RAcm9ja3BybzY0On4jIHVuYW1lIC1hCj4+Pj4+Pj4+IExpbnV4IHJvY2twcm82NCA1LjQuMC1y
YzYtbmV4dC0yMDE5MTEwOCAjMTY5IFNNUCBQUkVFTVBUIE1vbiBOb3YgMTEgMTI6MjE6NDQgSlNU
IDIwMTkgYWFyY2g2NCBHTlUvTGludXgKPj4+Pj4+PiAKPj4+Pj4+PiBJJ20gcnVubmluZyA1LjQu
MC1yYzYgIChjb21taXQKPj4+Pj4+PiAwMGFmZjY4MzYyNDFhZTU2NTQ4OTVkY2VhMTBlNmQ0ZmM1
ODc4Y2E2KSB3aXRoIHlvdXIgcGF0Y2ggImFybTY0OiBkdHM6Cj4+Pj4+Pj4gcm9ja2NoaXA6IGFk
ZCBhbmFsb2cgYXVkaW8gbm9kZXMgb24gcmszMzk5LXJvY2twcm82NCIgb24gdG9wIG9mIGl0Lgo+
Pj4+Pj4+IAo+Pj4+Pj4+PiByb290QHJvY2twcm82NDp+IyBkbWVzZyB8IGdyZXAgLWkgYXNvYwo+
Pj4+Pj4+PiBbICAgMjEuNTA5OTAzXSBhc29jLXNpbXBsZS1jYXJkIGhkbWktc291bmQ6IGkycy1o
aWZpIDwtPiBmZjhhMDAwMC5pMnMgbWFwcGluZyBvawo+Pj4+Pj4+PiBbICAgMjEuNTEwNTUwXSBh
c29jLXNpbXBsZS1jYXJkIGhkbWktc291bmQ6IEFTb0M6IG5vIERNSSB2ZW5kb3IgbmFtZSEKPj4+
Pj4+Pj4gWyAgIDIxLjU2NzkwNl0gYXNvYy1hdWRpby1ncmFwaC1jYXJkIHNvdW5kOiBFUzgzMTYg
SGlGaSA8LT4gZmY4OTAwMDAuaTJzIG1hcHBpbmcgb2sKPj4+Pj4+Pj4gWyAgIDIxLjU2ODU2NV0g
YXNvYy1hdWRpby1ncmFwaC1jYXJkIHNvdW5kOiBBU29DOiBubyBETUkgdmVuZG9yIG5hbWUhCj4+
Pj4+Pj4gCj4+Pj4+Pj4gU2ltaWxhciBoZXJlOgo+Pj4+Pj4+IAo+Pj4+Pj4+IFt2YXNpbHlraEBy
b2NrcHJvNjQgfl0kIGRtZXNnIHwgZ3JlcCAtaSBhc29jCj4+Pj4+Pj4gWyAgIDE1LjYyNzY4NV0g
YXNvYy1hdWRpby1ncmFwaC1jYXJkIHNvdW5kOiBFUzgzMTYgSGlGaSA8LT4KPj4+Pj4+PiBmZjg5
MDAwMC5pMnMgbWFwcGluZyBvawo+Pj4+Pj4+IFsgICAxNi4yNTAxOTZdIGFzb2Mtc2ltcGxlLWNh
cmQgaGRtaS1zb3VuZDogaTJzLWhpZmkgPC0+IGZmOGEwMDAwLmkycyBtYXBwaW5nIG9rCj4+Pj4+
Pj4gCj4+Pj4+Pj4+IHJvb3RAcm9ja3BybzY0On4jIGNhdCAvcHJvYy9hc291bmQvcGNtCj4+Pj4+
Pj4+IDAwLTAwOiBmZjhhMDAwMC5pMnMtaTJzLWhpZmkgaTJzLWhpZmktMCA6IGZmOGEwMDAwLmky
cy1pMnMtaGlmaSBpMnMtaGlmaS0wIDogcGxheWJhY2sgMQo+Pj4+Pj4+PiAwMS0wMDogZmY4OTAw
MDAuaTJzLUVTODMxNiBIaUZpIEVTODMxNiBIaUZpLTAgOiBmZjg5MDAwMC5pMnMtRVM4MzE2IEhp
RmkgRVM4MzE2IEhpRmktMCA6IHBsYXliYWNrIDEgOiBjYXB0dXJlIDEKPj4+Pj4+PiAKPj4+Pj4+
PiBTYW1lIGhlcmU6Cj4+Pj4+Pj4gCj4+Pj4+Pj4gW3Zhc2lseWtoQHJvY2twcm82NCB+XSQgY2F0
IC9wcm9jL2Fzb3VuZC9wY20KPj4+Pj4+PiAwMC0wMDogZmY4OTAwMDAuaTJzLUVTODMxNiBIaUZp
IEVTODMxNiBIaUZpLTAgOiBmZjg5MDAwMC5pMnMtRVM4MzE2Cj4+Pj4+Pj4gSGlGaSBFUzgzMTYg
SGlGaS0wIDogcGxheWJhY2sgMSA6IGNhcHR1cmUgMQo+Pj4+Pj4+IDAxLTAwOiBmZjhhMDAwMC5p
MnMtaTJzLWhpZmkgaTJzLWhpZmktMCA6IGZmOGEwMDAwLmkycy1pMnMtaGlmaQo+Pj4+Pj4+IGky
cy1oaWZpLTAgOiBwbGF5YmFjawo+Pj4+Pj4+IAo+Pj4+Pj4+PiByb290QHJvY2twcm82NDp+IyBj
YXQgL3N5cy9rZXJuZWwvZGVidWcvYXNvYy9jb21wb25lbnRzCj4+Pj4+Pj4+IGhkbWktYXVkaW8t
Y29kZWMuMy5hdXRvCj4+Pj4+Pj4+IGZmOGEwMDAwLmkycwo+Pj4+Pj4+PiBmZjhhMDAwMC5pMnMK
Pj4+Pj4+Pj4gZmY4OTAwMDAuaTJzCj4+Pj4+Pj4+IGZmODkwMDAwLmkycwo+Pj4+Pj4+PiBmZjg4
MDAwMC5pMnMKPj4+Pj4+Pj4gZmY4ODAwMDAuaTJzCj4+Pj4+Pj4+IGVzODMxNi4xLTAwMTEKPj4+
Pj4+Pj4gc25kLXNvYy1kdW1teQo+Pj4+Pj4+PiBzbmQtc29jLWR1bW15Cj4+Pj4+Pj4gCj4+Pj4+
Pj4gU2FtZSBoZXJlLgo+Pj4+Pj4+IAo+Pj4+Pj4+PiByb290QHJvY2twcm82NDp+IyBjYXQgL3N5
cy9rZXJuZWwvZGVidWcvYXNvYy9kYWlzCj4+Pj4+Pj4+IGkycy1oaWZpCj4+Pj4+Pj4+IGZmOGEw
MDAwLmkycwo+Pj4+Pj4+PiBmZjg5MDAwMC5pMnMKPj4+Pj4+Pj4gZmY4ODAwMDAuaTJzCj4+Pj4+
Pj4+IEVTODMxNiBIaUZpCj4+Pj4+Pj4+IHNuZC1zb2MtZHVtbXktZGFpCj4+Pj4+Pj4gCj4+Pj4+
Pj4gU2FtZSBoZXJlLgo+Pj4+Pj4+IAo+Pj4+Pj4+IFlldCBhbHNhbWl4ZXIgZG9lc24ndCB3b3Jr
IGZvciBtZS4gSXQgdGVybWluYXRlcyB3aXRoICdjYW5ub3QgbG9hZAo+Pj4+Pj4+IG1peGVyIGNv
bnRyb2xzOiBObyBzdWNoIGRldmljZSBvciBhZGRyZXNzJy4gU3RyYWNlIHNob3dzIHRoYXQgZmFp
bHMKPj4+Pj4+PiBoZXJlOgo+Pj4+Pj4+IAo+Pj4+Pj4+IG9wZW5hdChBVF9GRENXRCwgIi9kZXYv
c25kL2NvbnRyb2xDMCIsIE9fUkRXUnxPX0NMT0VYRUMpID0gMwo+Pj4+Pj4+IGZjbnRsKDMsIEZf
U0VURkQsIEZEX0NMT0VYRUMpICAgICAgICAgICA9IDAKPj4+Pj4+PiBpb2N0bCgzLCBTTkRSVl9D
VExfSU9DVExfUFZFUlNJT04sIDB4ZmZmZmZkM2FkMDRjKSA9IDAKPj4+Pj4+PiBmY250bCgzLCBG
X0dFVEZMKSAgICAgICAgICAgICAgICAgICAgICAgPSAweDIwMDAyIChmbGFncyBPX1JEV1J8T19M
QVJHRUZJTEUpCj4+Pj4+Pj4gZmNudGwoMywgRl9TRVRGTCwgT19SRFdSfE9fTk9OQkxPQ0t8T19M
QVJHRUZJTEUpID0gMAo+Pj4+Pj4+IGlvY3RsKDMsIFNORFJWX0NUTF9JT0NUTF9FTEVNX0xJU1Qs
IDB4ZmZmZmZkM2FkMjI4KSA9IDAKPj4+Pj4+PiBpb2N0bCgzLCBTTkRSVl9DVExfSU9DVExfRUxF
TV9MSVNULCAweGZmZmZmZDNhZDIyOCkgPSAwCj4+Pj4+Pj4gaW9jdGwoMywgU05EUlZfQ1RMX0lP
Q1RMX0VMRU1fSU5GTywgMHhmZmZmZmQzYWNlMzgpID0gMAo+Pj4+Pj4+IGlvY3RsKDMsIFNORFJW
X0NUTF9JT0NUTF9FTEVNX1JFQUQsIDB4ZmZmZmZkM2FjMTYwKSA9IC0xIEVOWElPIChObwo+Pj4+
Pj4+IHN1Y2ggZGV2aWNlIG9yIGFkZHJlc3MpCj4+Pj4+Pj4gCj4+Pj4+Pj4gTG9va3MgbGlrZSBp
dCBmYWlscyB0byB0YWxrIHRvIHRoZSBjb2RlYz8KPj4+Pj4+PiAKPj4+Pj4+PiBtcGcxMjMgdGhp
bmtzIHRoYXQgaXQncyBwbGF5aW5nIGF1ZGlvLCBidXQgbXkgaGVhZHBob25lcyBjb25uZWN0ZWQg
dG8KPj4+Pj4+PiAzLjVtbSBvdXRwdXQgYXJlIHNpbGVudC4KPj4+Pj4+PiAKPj4+Pj4+PiBSZWdh
cmRzLAo+Pj4+Pj4+IFZhc2lseQo+Pj4+Pj4+IAo+Pj4+Pj4+IAo+Pj4+Pj4+PiBCZXN0IFJlZ2Fy
ZHMsCj4+Pj4+Pj4+IEthdHN1aGlybyBTdXp1a2kKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IAo+Pj4+Pj4+
Pj4gUmVnYXJkcywKPj4+Pj4+Pj4+IFZhc2lseQo+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4gU2lnbmVk
LW9mZi1ieTogS2F0c3VoaXJvIFN1enVraSA8a2F0c3VoaXJvQGthdHN1c3Rlci5uZXQ+Cj4+Pj4+
Pj4+Pj4gLS0tCj4+Pj4+Pj4+Pj4gICAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2Nr
cHJvNjQuZHRzICAgIHwgMjggKysrKysrKysrKysrKysrKysrKwo+Pj4+Pj4+Pj4+ICAgIDEgZmls
ZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4+Pj4+
Pj4+Pj4gaW5kZXggMDQwMWQ0ZWMxZjQ1Li44YjFlNjM4MmIxNDAgMTAwNjQ0Cj4+Pj4+Pj4+Pj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cwo+
Pj4+Pj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2tw
cm82NC5kdHMKPj4+Pj4+Pj4+PiBAQCAtODEsNiArODEsMTIgQEAKPj4+Pj4+Pj4+PiAgICAgICAg
ICAgICAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbzAgUktfUEIyIEdQSU9fQUNUSVZFX0xPVz47
Cj4+Pj4+Pj4+Pj4gICAgICAgICAgIH07Cj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4gKyAgICAgICBz
b3VuZCB7Cj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYXVkaW8tZ3Jh
cGgtY2FyZCI7Cj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgIGxhYmVsID0gInJvY2tjaGlwLHJr
MzM5OSI7Cj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgIGRhaXMgPSA8JmkyczFfcDA+Owo+Pj4+
Pj4+Pj4+ICsgICAgICAgfTsKPj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+Pj4gICAgICAgICAgIHZjYzEy
dl9kY2luOiB2Y2MxMnYtZGNpbiB7Cj4+Pj4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgY29tcGF0
aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4+Pj4+Pj4+ICAgICAgICAgICAgICAgICAgIHJl
Z3VsYXRvci1uYW1lID0gInZjYzEydl9kY2luIjsKPj4+Pj4+Pj4+PiBAQCAtNDcwLDYgKzQ3Niwy
MCBAQAo+Pj4+Pj4+Pj4+ICAgICAgICAgICBpMmMtc2NsLXJpc2luZy10aW1lLW5zID0gPDMwMD47
Cj4+Pj4+Pj4+Pj4gICAgICAgICAgIGkyYy1zY2wtZmFsbGluZy10aW1lLW5zID0gPDE1PjsKPj4+
Pj4+Pj4+PiAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+Pj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+
PiArICAgICAgIGVzODMxNjogY29kZWNAMTEgewo+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICBj
b21wYXRpYmxlID0gImV2ZXJlc3QsZXM4MzE2IjsKPj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAg
cmVnID0gPDB4MTE+Owo+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBT
Q0xLX0kyU184Q0hfT1VUPjsKPj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAgY2xvY2stbmFtZXMg
PSAibWNsayI7Cj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICNzb3VuZC1kYWktY2VsbHMgPSA8
MD47Cj4+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICBwb3J0IHsKPj4+Pj4+
Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICBlczgzMTZfcDBfMDogZW5kcG9pbnQgewo+Pj4+
Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0g
PCZpMnMxX3AwXzA+Owo+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+Pj4+
Pj4+Pj4gKyAgICAgICAgICAgICAgIH07Cj4+Pj4+Pj4+Pj4gKyAgICAgICB9Owo+Pj4+Pj4+Pj4+
ICAgIH07Cj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4gICAgJmkyYzMgewo+Pj4+Pj4+Pj4+IEBAIC01
MDUsNiArNTI1LDE0IEBACj4+Pj4+Pj4+Pj4gICAgICAgICAgIHJvY2tjaGlwLHBsYXliYWNrLWNo
YW5uZWxzID0gPDI+Owo+Pj4+Pj4+Pj4+ICAgICAgICAgICByb2NrY2hpcCxjYXB0dXJlLWNoYW5u
ZWxzID0gPDI+Owo+Pj4+Pj4+Pj4+ICAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+Pj4+Pj4+
Pj4gKwo+Pj4+Pj4+Pj4+ICsgICAgICAgaTJzMV9wMDogcG9ydCB7Cj4+Pj4+Pj4+Pj4gKyAgICAg
ICAgICAgICAgIGkyczFfcDBfMDogZW5kcG9pbnQgewo+Pj4+Pj4+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgIGRhaS1mb3JtYXQgPSAiaTJzIjsKPj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAg
ICAgICAgICBtY2xrLWZzID0gPDI1Nj47Cj4+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgcmVtb3RlLWVuZHBvaW50ID0gPCZlczgzMTZfcDBfMD47Cj4+Pj4+Pj4+Pj4gKyAgICAgICAg
ICAgICAgIH07Cj4+Pj4+Pj4+Pj4gKyAgICAgICB9Owo+Pj4+Pj4+Pj4+ICAgIH07Cj4+Pj4+Pj4+
Pj4gCj4+Pj4+Pj4+Pj4gICAgJmkyczIgewo+Pj4+Pj4+Pj4+IC0tCj4+Pj4+Pj4+Pj4gMi4yMy4w
LnJjMQo+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4gbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPj4+Pj4+Pj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwKPj4+Pj4+Pj4+IAo+Pj4+Pj4+PiAKPj4+Pj4+IAo+Pj4+PiAK
Pj4+IAo+PiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
