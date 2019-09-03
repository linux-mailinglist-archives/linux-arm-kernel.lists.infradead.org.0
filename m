Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0588A75E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 23:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fo2OZSwMvgMlj/8ZF7/0WlJvzZFXhGFB917a0qhnNVI=; b=IQVn/S8HFJO3tp
	XhWyhAu27/4gY0AFMcUCZPyABGWcNwDTPZCrgrxmyv4OlwWer6sSsbGT4Y5GoQZB44dc9OcjkMz54
	9pn80I9KG9rrVYnGVxA+fOyVg8ZvCchzIxo6A5GF8daTo78ebJriiOiC0i7QEzz2krdzBfyA3P6lu
	AZst3Md8Za8cZwzvEdmq2/AdBZbgvuGX4KCvEQEXVv76u+zQle/XmMqjgzDsMvtJINqtmWmo94J2v
	kiZVzuw0WAfKg+SomOBFr7YS1nk+yC42/pAB9aOSwU58lINivVUKnHUVWdKjUtF7X/rhvQAF+g5na
	mZfX5S+x06aeTTRY3jgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5G0D-0002Nt-Gq; Tue, 03 Sep 2019 21:06:13 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5G04-0002NV-0E
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 21:06:05 +0000
Received: by mail-qk1-f193.google.com with SMTP id x134so7364432qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 14:06:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=35MiKAVesjxYuqIteXBpKI/BpoY9P9IK3sJQP+bqifQ=;
 b=a5YdEb/M5kRINsBPDq68GjYgY1IXZQjq+7ur+r1+TXocpYp678LLgY+Rjofapn50mR
 HOoV0O7ashJNa5WgkNEw1qBSsCkSfvu5XZOnfYFtAkHDmfmwpPyqwi46MGKBNPjcIkIZ
 NW9RJT0ZanHjEUe1wlMwCkm+fdd3g7W79Sbf6tptufabB/P+Qz+QUXrwtRqhhaUZ2h39
 2vP24Bwtaec3k6QIcFgdGaha5GispkEMpMv76+/j/B4Zxv1iE9UFvAJdGxh3/al8UCvr
 AerH8M++JObJRtQGLuL9GHlKgtrD1UPuuhnwaPA32VoLn1I4E9o0MtgH1IfwhwRPK4oZ
 tc3A==
X-Gm-Message-State: APjAAAWu1cBPhf7kB5qzuwOU4pxuZY0tHdnrO4hP36A7g10XkVnqpc0q
 jNrUvR5paOD6Fe0yf7pKPEsWVQSoaLyuYA9jumk=
X-Google-Smtp-Source: APXvYqwFbch8Ds8/MdtLhUURpt7kBwpLboqssnYZlB0SqtCOJJbG6esna9Yhkm/LMMXGD0eF68Juo+E19Zs1LC7oeMM=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr35542218qka.3.1567544762983; 
 Tue, 03 Sep 2019 14:06:02 -0700 (PDT)
MIME-Version: 1.0
References: <87h85two0r.fsf@FE-laptop>
In-Reply-To: <87h85two0r.fsf@FE-laptop>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 23:05:47 +0200
Message-ID: <CAK8P3a0BqjtVoTrUedDGHBUv8gwL23XWqYM2831v7G+23i8++A@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: mvebu: dt64 for v5.4 (#2)
To: Gregory CLEMENT <gregory.clement@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_140604_044901_967F3AEC 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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

T24gVHVlLCBTZXAgMywgMjAxOSBhdCAyOjQxIFBNIEdyZWdvcnkgQ0xFTUVOVAo8Z3JlZ29yeS5j
bGVtZW50QGJvb3RsaW4uY29tPiB3cm90ZToKPiBIZXJlIGlzIHRoZSBzZWNvbmQgcHVsbCByZXF1
ZXN0IGZvciBkdDY0IGZvciBtdmVidSBmb3IgdjUuNC4KPgo+IEZvciB0aGUgVHVycmlzIE1veCBi
b2FyZCB0aGVyZSB3YXMgZGVwZW5kZW5jaWVzIHdpdGggbW94dGV0IGhlYWRlciB3aGljaAo+IHdh
cyBhbHJlYWR5IG1lcmdlZCBpbiB5b3VyIGFybS9kcml2ZXJzIGJyYW5jaC4gVGhhdCB0aGUgcmVh
c29uIHdoeSBJCj4gbWVyZ2VkIHRoaXMgYnJhbmNoIGluIG15IG12ZWJ1L2R0NjQgYnJhbmNoLgo+
Cj4gTGV0IG1lIGtub3cgaWYgaXQgaXMgYSBwcm9ibGVtIGFuZCBpZiB5b3Ugd2FudCB0aGF0IEkg
ZG8gaXQgaW4gYQo+IGRpZmZlcmVudCB3YXkuCgpJIGRvbid0IHJlYWxseSBsaWtlIHRoaXMsIGJ1
dCBpdCdzIHRvbyBsYXRlIHRvIGRvIGl0IHJpZ2h0IG5vdy4gVGhlIHByb2JsZW0gaXMKdGhhdCBJ
IHNob3VsZCBoYXZlIG5vdCBwaWNrZWQgdXAgdGhlIHBhdGNoZXMgZnJvbSB0aGUgbGlzdCBpbiB0
aGUgZmlyc3QKcGxhY2UgaWYgdGhlcmUgYXJlIHRoZXNlIGRlcGVuZGVuY2llcy4KClRoaXMgY291
bGQgaGF2ZSBiZWVuIGNvbW11bmljYXRlZCBiZXR0ZXIgaW4gdGhlIHBhdGNoIHNlcmllcywgYnV0
Cml0IHJlYWxseSBteSBvd24gZmF1bHQuCgo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBtdmVidSBkdDY0IGZvciA1LjQg
KHBhcnQgMikKPgo+IEFkZCBzdXBwb3J0IGZvciBUdXJyaXMgTW94IGJvYXJkIChBcm1hZGEgMzcy
MCBTb0MgYmFzZWQpCj4KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gTWFyZWsgQmVow7puICgzKToKPiAgICAgICBhcm02
NDogZHRzOiBtYXJ2ZWxsOiBhcm1hZGEtMzd4eDogYWRkIFNQSSBDUzEgcGluY3RybAo+ICAgICAg
IGR0LWJpbmRpbmdzOiBtYXJ2ZWxsOiBkb2N1bWVudCBUdXJyaXMgTW94IGNvbXBhdGlibGUKPiAg
ICAgICBhcm02NDogZHRzOiBtYXJ2ZWxsOiBhZGQgRFRTIGZvciBUdXJyaXMgTW94CgpJIHRoaW5r
IHRoZSBiZXN0IHdheSBmb3J3YXJkIHdvdWxkIGJlIGZvciBtZSB0byBhcHBseSB0aGUKcmVtYWlu
aW5nIHBhdGNoZXMgb24gdG9wIG9mIHRoZSBhcm0vZHJpdmVycyBicmFuY2gsIHRvIGF2b2lkCmFs
c28gcHVsbGluZyBpbiB5b3VyIG90aGVyIERUIGNoYW5nZXMgaW50byBhcm0vZHJpdmVycywgb3Ig
cHVsbGluZwppbiBhbGwgb2YgYXJtL2RyaXZlcnMgaW50byBhcm0vZHQuCgpXb3VsZCB0aGF0IHdv
cmsgZm9yIHlvdT8KCiAgICAgICBBcm5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
