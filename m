Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B81FA861B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUOEO60htdbln6+bX++U56JeMwmHsicJ3gWV3hSs8jY=; b=fQOFcHtpMpJv+q
	Vr3spuOcia2L4EXWRHg+1+Y05hjYZW99wse54De1ZLh/KeV676ZNEEATVdcC5A7+VkPUGydqbQ7Vi
	TAVt2CS4uEiAuHq8KHdfCYzZgrOopA3s/ksm+5Qx13wGnMrP5pYVfOXdEY+NCrjIAzYqca2qjtuFQ
	l8GgYeWOdEJK2RQ6nanNHMQa/4U4PpacFdMQrPV/toOE8xhVoErIyIvSW5czeIhq0opLTPQ2is8YD
	0zAX/ceq0eRZ+p7anjUdso8VwWdrmMtNt1Oz3M852jaYLw6Oxb1F1PwCM/IivgTHa7clR3GF18a9m
	emVqQaQYx96U8XkP5UYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XNY-0002QM-BD; Wed, 04 Sep 2019 15:39:28 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XNM-0002Py-MX
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:39:18 +0000
Received: by mail-qt1-f196.google.com with SMTP id j10so7217626qtp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 08:39:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=htvE8PI6P2cmKs5mB397KiMbkw9EET3SxNBCN4MoeNg=;
 b=fX8MelqqQA7kjxy2iq5px+iGyqepUkl2X1VfXR/hoOwTCJ27ZGOP8XxGrOtC9Ah0Jc
 J2IWU08xzOj830oPl7Vx7uRzKfaB4lWA8GywyLb6Z/AYoEhem1F2eaqzPImBc8eIycTK
 n5bpXu6nutFfNa+yxB3SxOOxkA0brlcxMGUug72UAAFqWeSelDgpvpzL3nKBM2QL5/6W
 waU91BzfGABjdvwftDrL2Lbpy0Dchz/lh3Lw4epkwPXpp9CSvsnIQTFj6jad+Cujg181
 LwZFCc03NVKp7zPqTsABznTlb1mH9sjHUBmvMqvz1zOgqyL2nLxQjRAlISWOQpGGNobx
 Zcsw==
X-Gm-Message-State: APjAAAVSMXR+aqjLRyNcoUrx4rk5ipX1XC5207mMQoJVBjhSayeeYt2x
 DyHhUtNGjpbIjdUGCTsm41iovjBDf3B5dqQNVw5JXw==
X-Google-Smtp-Source: APXvYqxdCUXxR4KtW2XXifmECO0Vapy0x9ekuIt4VtpX4NYh/UHHOWdO381NhgIchWY6x7bn/Gse4j0xqzjyXM6HqaA=
X-Received: by 2002:ac8:5306:: with SMTP id t6mr26349272qtn.204.1567611555832; 
 Wed, 04 Sep 2019 08:39:15 -0700 (PDT)
MIME-Version: 1.0
References: <87h85two0r.fsf@FE-laptop>
 <CAK8P3a0BqjtVoTrUedDGHBUv8gwL23XWqYM2831v7G+23i8++A@mail.gmail.com>
In-Reply-To: <CAK8P3a0BqjtVoTrUedDGHBUv8gwL23XWqYM2831v7G+23i8++A@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 17:38:59 +0200
Message-ID: <CAK8P3a0igyBe-MQ9QcVMwCF4sx76MBVwtcsF=nFJf_sgYe2G2A@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: mvebu: dt64 for v5.4 (#2)
To: Gregory CLEMENT <gregory.clement@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_083916_739659_FD753CC8 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 =?UTF-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMywgMjAxOSBhdCAxMTowNSBQTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRi
LmRlPiB3cm90ZToKPgo+IE9uIFR1ZSwgU2VwIDMsIDIwMTkgYXQgMjo0MSBQTSBHcmVnb3J5IENM
RU1FTlQKPiA8Z3JlZ29yeS5jbGVtZW50QGJvb3RsaW4uY29tPiB3cm90ZToKPiA+IEhlcmUgaXMg
dGhlIHNlY29uZCBwdWxsIHJlcXVlc3QgZm9yIGR0NjQgZm9yIG12ZWJ1IGZvciB2NS40Lgo+ID4K
PiA+IEZvciB0aGUgVHVycmlzIE1veCBib2FyZCB0aGVyZSB3YXMgZGVwZW5kZW5jaWVzIHdpdGgg
bW94dGV0IGhlYWRlciB3aGljaAo+ID4gd2FzIGFscmVhZHkgbWVyZ2VkIGluIHlvdXIgYXJtL2Ry
aXZlcnMgYnJhbmNoLiBUaGF0IHRoZSByZWFzb24gd2h5IEkKPiA+IG1lcmdlZCB0aGlzIGJyYW5j
aCBpbiBteSBtdmVidS9kdDY0IGJyYW5jaC4KPiA+Cj4gPiBMZXQgbWUga25vdyBpZiBpdCBpcyBh
IHByb2JsZW0gYW5kIGlmIHlvdSB3YW50IHRoYXQgSSBkbyBpdCBpbiBhCj4gPiBkaWZmZXJlbnQg
d2F5Lgo+Cj4gSSBkb24ndCByZWFsbHkgbGlrZSB0aGlzLCBidXQgaXQncyB0b28gbGF0ZSB0byBk
byBpdCByaWdodCBub3cuIFRoZSBwcm9ibGVtIGlzCj4gdGhhdCBJIHNob3VsZCBoYXZlIG5vdCBw
aWNrZWQgdXAgdGhlIHBhdGNoZXMgZnJvbSB0aGUgbGlzdCBpbiB0aGUgZmlyc3QKPiBwbGFjZSBp
ZiB0aGVyZSBhcmUgdGhlc2UgZGVwZW5kZW5jaWVzLgo+Cj4gVGhpcyBjb3VsZCBoYXZlIGJlZW4g
Y29tbXVuaWNhdGVkIGJldHRlciBpbiB0aGUgcGF0Y2ggc2VyaWVzLCBidXQKPiBpdCByZWFsbHkg
bXkgb3duIGZhdWx0Lgo+Cj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiBtdmVidSBkdDY0IGZvciA1LjQgKHBhcnQg
MikKPiA+Cj4gPiBBZGQgc3VwcG9ydCBmb3IgVHVycmlzIE1veCBib2FyZCAoQXJtYWRhIDM3MjAg
U29DIGJhc2VkKQo+ID4KPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+IE1hcmVrIEJlaMO6biAoMyk6Cj4gPiAgICAg
ICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBhcm1hZGEtMzd4eDogYWRkIFNQSSBDUzEgcGluY3RybAo+
ID4gICAgICAgZHQtYmluZGluZ3M6IG1hcnZlbGw6IGRvY3VtZW50IFR1cnJpcyBNb3ggY29tcGF0
aWJsZQo+ID4gICAgICAgYXJtNjQ6IGR0czogbWFydmVsbDogYWRkIERUUyBmb3IgVHVycmlzIE1v
eAo+Cj4gSSB0aGluayB0aGUgYmVzdCB3YXkgZm9yd2FyZCB3b3VsZCBiZSBmb3IgbWUgdG8gYXBw
bHkgdGhlCj4gcmVtYWluaW5nIHBhdGNoZXMgb24gdG9wIG9mIHRoZSBhcm0vZHJpdmVycyBicmFu
Y2gsIHRvIGF2b2lkCj4gYWxzbyBwdWxsaW5nIGluIHlvdXIgb3RoZXIgRFQgY2hhbmdlcyBpbnRv
IGFybS9kcml2ZXJzLCBvciBwdWxsaW5nCj4gaW4gYWxsIG9mIGFybS9kcml2ZXJzIGludG8gYXJt
L2R0Lgo+Cj4gV291bGQgdGhhdCB3b3JrIGZvciB5b3U/CgpJIGVuZGVkIHVwIGNyZWF0aW5nIGFu
IGFybS9sYXRlIGJyYW5jaCBmb3Igb3RoZXIgcmVhc29ucywgcHV0CnRoaXMgYnJhbmNoIGluIHRo
ZXJlIGFzIHdlbGwuCgogICAgICBBcm5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
