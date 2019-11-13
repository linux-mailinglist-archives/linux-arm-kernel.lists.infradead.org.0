Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26591FB128
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:16:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFAm5f5MvLhEwsXxdYUs0afD9c+j5SEGIyOgR37eHJo=; b=J24ROkWikUdJLB
	hHrh38wyWroNq0OIQSb7QiOmavgy+GXXeEwHXcsik+nl8NFu7ftTdH3KzPbRER3/fichUXX00Hoso
	6G2vhwAuxBInKjoEiftsApJscaxM4dRAfRwImVPC7jXtfaGlTmp1yD5RJy5kG7VuJPwZ2Tt4ObaDO
	YIczFMtAqBsNVREgcgLovqTUJFiyNA+uXIJ751DRE8Z3d0+8DFyQp4PpF3EuvT6jQZTuNk3tW1Vjo
	KTRYeefb+J82Tkv25bIjEHEEelJTgMeV+l4S3LYiFj9OVAJBI5+wQz3oXxuAYZLaKf8uLbciTKZqA
	hV/bX63kHb0szdPoTUng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsVs-0007l7-Ik; Wed, 13 Nov 2019 13:16:48 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsVj-0007ka-5f
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:16:40 +0000
Received: by mail-oi1-f193.google.com with SMTP id i185so1700631oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:16:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cSGBlD/MkH4Bnh7ItCxdQ0EtQ4Pg4gMvYf3Uqe0+y+A=;
 b=aZYAUaHFPaqxX5TJYlhp/zqmTmKLys7+zvayhBm/dj+lz6sfyqXCwTIDAyeWlqeZXF
 mVXTEx+vyIfTVkuQvLir9SZ8Ug8HuUuaN6eSdaXxen6x5Bi/lJ9KtGFMup0mx7jCNDqy
 PX84vO3NQhw9pCF9bDKcbO0ctMhd7js47BeCQh6L5mlBpYTTuMlketgmV/l84H10R+CO
 jmMgg1FfkQQDSN1u+n1g85CjvibNZTNReMdygRzRK9ep/sIOannoLJfBcFVfp1NejkNa
 zYvoVKUTwL2UzX564UDAbxA4n9h8rOUOnnO8cd9aHygL5cODLkoN0bzkwS0t+FLkVQny
 CRBg==
X-Gm-Message-State: APjAAAWhpzPfxgu09J0nbNJijR2JJLHop+yvWeRYMGC/hAqOOXMk/CbR
 4gNuu8ccs8OfJ1IOvjtyqzIwoWxRYjzR/QrofMc=
X-Google-Smtp-Source: APXvYqxu0M+7o/f4NAj+E5PDesnooXsHgcWL8sXg+H53VtVwN40+X7BEW7gWLMiEGymuOz7VbjQeT3ePf9c4fQwwr9Q=
X-Received: by 2002:aca:4ac5:: with SMTP id x188mr3050451oia.148.1573650997821; 
 Wed, 13 Nov 2019 05:16:37 -0800 (PST)
MIME-Version: 1.0
References: <20191113102729.29303-1-geert+renesas@glider.be>
 <20191113104037.e45j37xoxeztvut3@pengutronix.de>
In-Reply-To: <20191113104037.e45j37xoxeztvut3@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 13 Nov 2019 14:16:26 +0100
Message-ID: <CAMuHMdW5+=Wek1pYoWbYjsWM_FC08PjambxJQAc6jaiu8+QvqA@mail.gmail.com>
Subject: Re: [PATCH/RFC] ARM: boot: Relax kernel image alignment for RZ/A with
 CS3 SDRAM
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_051639_211298_C13CDEE8 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>, Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gV2VkLCBOb3YgMTMsIDIwMTkgYXQgMTE6NDAgQU0gVXdlIEtsZWluZS1Lw7Zu
aWcKPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gT24gV2VkLCBOb3Yg
MTMsIDIwMTkgYXQgMTE6Mjc6MjlBTSArMDEwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+
ID4gVGhlIFJaQTJNRVZCIHN1YiBib2FyZCBoYXMgNjQgTWlCIG9mIFNEUkFNIGF0IDB4MEMwMDAw
MDAgKENTMyBzcGFjZSkuCj4KPiBUaGlzIHdvcmRpbmcgaXMgbWlzbGVhZGluZy4gWW91IGRvbid0
IGFkYXB0IHRoZSBsaW1pdCBiZWNhdXNlIDEyOCBNaUIgPgo+IHRoZSBhbW91bnQgb2YgUkFNIG9u
IHRoYXQgcGxhdGZvcm0gYnV0IGJlY2F1c2UgdGhlIGFsaWdubWVudCBvZiB0aGUgQ1MzCj4gc3Bh
Y2UgaXNuJ3QgYSBtdWx0aXBsZSBvZiAxMjggTWlCLiBTbyBJIHN1Z2dlc3Q6CgpZZWFoLCBiZWNh
dXNlIG9mIHRoZSAiYXQgMHgwQzAwMDAwMCIuCgo+ICAgICAgICAgT24gdGhlIFJaQTJNRVZCIHRo
ZSBTRFJBTSdzIGJhc2UgaXMgYXQgMHgwQzAwMDAwMCB3aGljaCBpc24ndAo+ICAgICAgICAgYWxp
Z25lZCB0byAxMjggTWlCLiBTbyB0byBlbnN1cmUgdGhlIGFzc3VtcHRpb25zIG9mIHRoZQo+ICAg
ICAgICAgZGVjb21wcmVzc29yIGFyZSB2YWxpZCB0aGUgdXNlZCBhbGlnbm1lbnQgbXVzdCBiZSBk
ZWNyZWFzZWQuCgpUaGFua3MsIHNvdW5kcyBiZXR0ZXIhCgpHcntvZXRqZSxlZXRpbmd9cywKCiAg
ICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRo
ZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoK
SW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBt
eXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVz
dCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
