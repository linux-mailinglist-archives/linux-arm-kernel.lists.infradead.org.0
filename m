Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C86154C3A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 20:27:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K1XM4wN+/TcAGZfMmXvVw6E2Ey7Mq60VPJLjq56vWik=; b=mB3z9zOtujMDDm+3GQ9/sLsTY5
	p8nqqx3qP74gCvjF+kIGX8ardSCYXg1jR4yC8xe1wbmO1p7wKjQxXAf8fgG5b73dT9uqwCzvBS8Lr
	GMAPUA7us0jAc/dshP6WtzndIMVcF7MG7UeEesNqnnnURqBEgMxgsY9uEKibQqfmQkHdI72C91u0V
	wU7fOa+07w/nXWKrhxyBqau3H1uE0fj9IhzOZkVfF/OFF44o2weuI4yFT7nLeVOkECD6zUuGi8sdb
	xZhk+EG1OjVy5oG/Bu25bpe1KiVtIKdBCThN5ueU6G7eUfK7h5o+KCzcIoXFaiC9f2AjTzOR83xK0
	ZXtClN0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmnj-0003sJ-O4; Thu, 06 Feb 2020 19:26:59 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmnd-0003rw-Rt
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 19:26:55 +0000
Received: by mail-vs1-xe43.google.com with SMTP id a2so4560181vso.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 11:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=S7KpLMUY7LiWZq/Kj/eAi+yNVL0NiKccJvwviJrN6LU=;
 b=Tv8MZfQyvsljJl/L3IaZhjvF0zhvW7SGNWz006rU+AEOnWunbxolvEn+ld89B6WyJW
 yn7gHQ2DktgOFMcX/tw2hqsr4MwhiimED2xSWJRNi0Apz814aNulaQTHc9vuGeK9IDNT
 It5U1ReUUYb4xFG50FuVrDTevCZD9OT1L6gMNuK6aOR8E6g97ydSvQuyTUAWyDPrMdh6
 vnjEkFc16T2U61hgk19+NgLZQA6IzseSsUaAl2CKt1oSsru/HYy478Lyv/RNrNgsMfJg
 E34mx0+Ekt0XJqgazqxe82zwubl03+fz1uevMPW37HhjqMn6CPFGAdE0XsKrux2KOFyn
 AYyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=S7KpLMUY7LiWZq/Kj/eAi+yNVL0NiKccJvwviJrN6LU=;
 b=MFuyrOZNhhCq+Rc7G0ve5lH9ZJozaXQQUROfIDbwhJ/PIYP4uxgGOZkV3dFFr9PaNU
 fsl0hZ6Vv1YPBBcMVH7l4vTy56HJsE6BuHg3TbBBqypjLtH4jIK3DbLzgOVZGaRFk6ln
 1yXpPom8bI3DZHUNc3f4lkGJmbvL2PeDmhnK5ZG8Z1XMPqarY53Mewi5jsnGnB4jZixb
 BAO5g0UbSpHT1B644/rUAWPJdpkGUsBxptvIbw/GlHibDpYGm2FcHm+Bvgdb93gSvn5j
 ZOMjgXmcBQsyB4IaTJacMkXEHLifN94oJNTS8EI62vp9pJNW46a+7BPimBZI/qvDBKBE
 9lWw==
X-Gm-Message-State: APjAAAWhDeAL7BLZYt4bmucFhDoT/xQ0f1uzy1sbXz8llVlI7DVqLOvS
 cHv75odJ8vCoYPvM+A7PpiF0K/y7W9bdSAyZsaYYEw==
X-Google-Smtp-Source: APXvYqwoojhOiE1bY8Keza3r5GUPbzrgIujBGiCbM5sfzEmHarjYTwY433tNBdAO58ymcgqBI0TN5G4Kv1fiGkD0b+o=
X-Received: by 2002:a67:d011:: with SMTP id r17mr2575599vsi.159.1581017212681; 
 Thu, 06 Feb 2020 11:26:52 -0800 (PST)
MIME-Version: 1.0
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <CAHLCerPWEDqEE8LRUiO5GpeP+BfnestocndBQq6oXAxVN=+3ow@mail.gmail.com>
 <20200206155703.fyry7nh473mc7pqy@core.my.home>
In-Reply-To: <20200206155703.fyry7nh473mc7pqy@core.my.home>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 7 Feb 2020 00:56:41 +0530
Message-ID: <CAHLCerMLFYRNUfPAzbUTZkn33P7LG5PtHMNiSJ2GMCoJ=0k74w@mail.gmail.com>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
To: Amit Kucheria <amit.kucheria@verdurent.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>, 
 Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, 
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM list <linux-pm@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lakml <linux-arm-kernel@lists.infradead.org>, 
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_112653_902332_97E62807 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBGZWIgNiwgMjAyMCBhdCA5OjI3IFBNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVn
b3VzLmNvbT4gd3JvdGU6Cj4KPiBIaSBBbWl0LAo+Cj4gT24gVGh1LCBGZWIgMDYsIDIwMjAgYXQg
MDc6NDM6NTlQTSArMDUzMCwgQW1pdCBLdWNoZXJpYSB3cm90ZToKPiA+IEhpIFZhc2lseSwKPiA+
Cj4gPiBGb3IgdGhpcyBlbnRpcmUgc2VyaWVzLCB0aGUgRFRTIGZpbGVzIGRvbid0IGNvbnRhaW4g
YW55IHRyaXAgcG9pbnRzLgo+ID4gRGlkIEkgbWlzcyBzb21lIG90aGVyIHNlcmllcz8KPiA+Cj4g
PiBBdCBhIG1pbmltdW0sIHlvdSBzaG91bGQgYWRkIHNvbWUgImhvdCIgb3IgImNyaXRpY2FsIiB0
cmlwIHBvaW50cwo+ID4gc2luY2UgdGhlbiBkb24ndCByZXF1aXJlIGEgY29vbGluZy1tYXAgd2l0
aCB0aHJvdHRsaW5nIGFjdGlvbnMuIElmIHlvdQo+ID4gaGF2ZSAicGFzc2l2ZSIgdHJpcCBwb2lu
dHMsIHRoZW4geW91IG5lZWQgdG8gcHJvdmlkZSBjb29saW5nLW1hcHMuCj4gPgo+ID4gU2luY2Ug
dGhpcyBzZXJpZXMgaGFzIGJlZW4gbWVyZ2VkLCBjb3VsZCB5b3UgcGxlYXNlIGZvbGxvdyB1cCB3
aXRoIGEKPiA+IGZpeHVwIHNlcmllcyB0byBhZGQgdGhlIHRyaXAgcG9pbnRzPwo+Cj4gSSBkb24n
dCB0aGluayBsYWNrIG9mIHRyaXAgcG9pbnRzIGNhdXNlcyBydW50aW1lIGlzc3Vlcy4gT3IgZG9l
cyBpdD8gSSBwbGFubmVkCj4gdG8gc2VuZCB1cGRhdGUgd2l0aCBzb21lIHRyaXAgcG9pbnRzIGFu
ZCBjb29saW5nIG1hcHMgZm9yIDUuNyBtZXJnZSB3aW5kb3cuCj4gSXMgdGhpcyBhY2NlcHRhYmxl
PwoKWWVzLCBJIHRoaW5rIHRoYXQgd291bGQgYmUgZmluZS4KCj4gSWYgbm90LCBJIGNhbiBzZW5k
IGEgcGF0Y2ggdGhhdCBhZGRzOgo+Cj4gKyB0cmlwcyB7Cj4gKyAgICAgICAgIGNwdS12ZXJ5LWhv
dCB7Cj4gKyAgICAgICAgICAgICAgICAgdGVtcGVyYXR1cmUgPSA8MTAwMDAwPjsKPiArICAgICAg
ICAgICAgICAgICBoeXN0ZXJlc2lzID0gPDA+Owo+ICsgICAgICAgICAgICAgICAgIHR5cGUgPSAi
Y3JpdGljYWwiOwo+ICsgICAgICAgICB9Owo+ICsgfTsKPgo+IGFuZAo+Cj4gKyB0cmlwcyB7Cj4g
KyAgICAgICAgIGdwdS12ZXJ5LWhvdCB7Cj4gKyAgICAgICAgICAgICAgICAgdGVtcGVyYXR1cmUg
PSA8MTAwMDAwPjsKPiArICAgICAgICAgICAgICAgICBoeXN0ZXJlc2lzID0gPDA+Owo+ICsgICAg
ICAgICAgICAgICAgIHR5cGUgPSAiY3JpdGljYWwiOwo+ICsgICAgICAgICB9Owo+ICsgfTsKPgo+
IGV2ZXJ5d2hlcmUgd2hlcmUgYXBwcm9wcmlhdGUuIFRob3VnaCB0aGF0IHdpbGwgbWFrZSByZWJh
c2Ugb2Ygb3V0IG9mCj4gdHJlZSBwYXRjaGVzIHRoYXQgYWxyZWFkeSBoYXZlIGEgbW9yZSBjb21w
bGljYXRlZCBzZXR1cCB0byBiZSBzZW50IGZvciB0aGUgbmV4dAo+IG1lcmdlIHdpbmRvdyBhIGJp
dCB0ZWRpb3VzLgoKUmlnaHQsIGRvbid0IGRvIHRoYXQuCgo+IHRoYW5rIHlvdSwKPiAgICAgICAg
IE9uZHJlago+Cj4gPiBSZWdhcmRzLAo+ID4gQW1pdAo+ID4gcC5zLiBXZSBzaG91bGQgY2F0Y2gg
YWxsIHRoaXMgYXV0b21hdGljYWxseSwgSSdsbCBzZW5kIG91dCB5YW1sCj4gPiBiaW5kaW5ncyBm
b3IgdGhlIHRoZXJtYWwgZnJhbWV3b3JrIHNvb24gdGhhdCBzaG91bGQgY2F0Y2ggdGhpcyBzdHVm
Zi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
