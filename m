Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7812ABC8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 21:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyOcIJJdhxM38ZeL5XsRQJcQJUKlFBtf/pR206pnDXs=; b=no0qo66SOy9iqj
	51bLzeYApjTD7CiGTplV1LivHTtMgOulREljgyWyDg4r29zcUYrcsj70PQiBuScGD5KbfZ/0jPlfn
	N/dCfm9peS39mAF1XBfNU3R2N7QhW+I2Pc6OF0DUJ/gEEgirxD9TDvlc8yyy7EWcaG1uHI1hvy+TU
	pJnu2eyeXF3USEAx8+XZTnpBaDkVUINe/kqzqkdOeoXfOtQ7KIcOzlHyNEPlY8PwNbrU3UeOfBw+k
	9KhzX3Pl2sIXubai31r7gHlXzaPJ4z/tWlv8Hcj9X88hRuFJujGKZJ4+cAkI6t7kQLn5pErAgAaPE
	ZkVbrXPrfOO0mnhJxJrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUyWF-0005Ag-Ds; Sun, 26 May 2019 19:09:19 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUyW7-0005A9-UY
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 19:09:13 +0000
Received: by mail-yw1-xc44.google.com with SMTP id e74so5804542ywe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 12:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=afnFp8Qj6zuCgzLE0dd47oL4y3p86FHahzySe9xFq38=;
 b=P225AtmgLXa4AQY4cLPTI/vGK0XNkInPnL3TFJ67fgeH0aM7EbwXlurnLETHJqJwIh
 fZ9Gsxb9n8ok3a7vfE7NH6onYvFkrBRxB1DwC2NKEkqBC+k25HTZIy4M2EXfc9gk5akm
 tz84YkSiT4qKaiZhDM1DHw448nfsm6oak5ZuC7DmpLyDNabMOXdhhn+gj4HvAMH9HB1U
 Z6qcoTwwIwjws0tJAp0I7zCPBTkXcBBSoTklqbJzbhc9oNfllaGHm4MMPQsgY/M0jND/
 ECBOOGlgt9/FKvSsRPiADIXyFnhQD3IQ6YuPzbgM5MtDOOxqNOWP61PGGAPKNH6YxORJ
 oYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=afnFp8Qj6zuCgzLE0dd47oL4y3p86FHahzySe9xFq38=;
 b=ZBYZdbrGm0d/EN8E4bUZ9L5gbueiUXwCdSdIK3OBa37vc8tXt/CBBJOUmnUAzSYiTl
 d+rrFHaRWiPC5KauZP4eiMiMGORZzFKgetU+lY4vpEiZXWr9oa8wu2a53m9W447m8GLV
 civ18uTjhT+trxesqCvBsqeXV0C45EQAbJErQN/wVxfZeJBoMh8XcVvISViLq0U+zh80
 2OSlxL3JKH6HRzT3uhaqg3ZxIzLt7GTn+Jvr7c0tinw39obPmNCX5tBZVBcebt5pjr4S
 UONltSWrFnOmd461tZjkKlQE5O0jNH87jsvvHqbP/TlaC5ZDOGU3VS1O92T8czdcnzRB
 qAxg==
X-Gm-Message-State: APjAAAVHqFbne9Miva43WUDkrmBfzieRJWM5sP9Y1ajZ+EUUYMqHMrCb
 A4yVXExqiqCpSbWE0VH4cNC5VuZI5sb500XvBQI=
X-Google-Smtp-Source: APXvYqzuO7uis+Ag6d0Dm4SMdjW5wXGBTZf9kN4/BqjULwWAZx1N7dZqSDycF4Wb4W9vS79yjtRH9ARh5G62qavqBn4=
X-Received: by 2002:a81:cf03:: with SMTP id u3mr23678220ywi.306.1558897750823; 
 Sun, 26 May 2019 12:09:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190525180923.6105-1-peron.clem@gmail.com>
 <20190525180923.6105-2-peron.clem@gmail.com>
 <20190526190217.257pxcc5s7ykhfor@flea>
In-Reply-To: <20190526190217.257pxcc5s7ykhfor@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 26 May 2019 21:08:59 +0200
Message-ID: <CAJiuCcdpaw8jLMFUAAqvHr82+UZ4Lf1rrVvB1ksYQ1xcQqTDAg@mail.gmail.com>
Subject: Re: [PATCH 01/10] dt-bindings: media: A31 compatible
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_120912_010060_90687152 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gU3VuLCAyNiBNYXkgMjAxOSBhdCAyMTowMiwgTWF4aW1lIFJpcGFyZCA8
bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiBTYXQsIE1heSAyNSwgMjAx
OSBhdCAwODowOToxNFBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBTaW5jZSBB
bGx3aW5lciBBMzEgYWxsIHRoZSBTb0MgaGF2ZSBhIGRpZmZlcmVudGUgbWVtb3J5IG1hcHBpbmcu
Cj4gPgo+ID4gSW50cm9kdWNlIHRoaXMgYmluZGluZ3MgdG8gbWFrZSBhIGRpZmZlcmVuY2Ugc2lu
Y2UgdGhpcyBnZW5lcmF0aW9uLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJv
biA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4KPiBNZW50aW9ubmluZyB3aGF0IHRob3NlIGRpZmZl
cmVuY2VzIGFyZSB3b3VsZCBiZSBncmVhdAoKV2lsbCBkbywKVGhhbmtzIGZvciB0aGUgcmV2aWV3
LApDbMOpbWVudAoKPgo+IE1heGltZQo+Cj4gLS0KPiBNYXhpbWUgUmlwYXJkLCBCb290bGluCj4g
RW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwo+IGh0dHBzOi8vYm9vdGxpbi5j
b20sICJNaXNzaW5nIGRtYS1yZXF1ZXN0cywgdXNpbmcgJXUuXG4iLAo+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICBETUFfQ0hBTl9NQVhfRFJRX0EzMSk7Cj4gPiAtICAgICAgICAgICAgIHNkYy0+
bWF4X3JlcXVlc3QgPSBETUFfQ0hBTl9NQVhfRFJRX0EzMTsKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgRE1BX0NIQU5fTUEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
