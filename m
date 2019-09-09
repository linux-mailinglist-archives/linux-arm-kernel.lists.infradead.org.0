Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8AFADF43
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 21:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zp059AhDZLkAGfHHgYqVA/e7FYb/jKdkV/ByiU2FIZI=; b=apgeNE7uK8dhMo
	NvB9YnWKGcqRzPCF/kuEUpodpYL6cI1PtF49eY1T8AV/YFOJlD8+Q4Ca7RsSVRIkdylsI/jVih/fj
	YkFGtQOaDmcgB1Ds9r5Y6qyoXzECUoP3TyF1d2HMAX33VfaIZdlaNvJK4ZYtNKDPwfTTYVE9D0yEM
	8X4fXX+IbVo9b7lAxtrh0WE1Dy+VxZlpv2Jix6bfC2fING1dG4xAml5flRPl+7n6Ty9xBfwb3KM0M
	uGXBcwsCibPmCLZK8qAvIVchpBeAs7OdNCg9nEozDTXdYoT14mQTJtLnhh6yJaSDB5UEVeqowlUQF
	jRtASbzPHsZidvygNpfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7PCG-00029c-78; Mon, 09 Sep 2019 19:19:32 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7PC8-000299-3U
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 19:19:25 +0000
Received: by mail-io1-xd44.google.com with SMTP id h144so31422093iof.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 12:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=itY8GiF4v2ICnk3w7fmpHKt0Jrf4g4tgby4BDHrpXnA=;
 b=UmDHiRpalMxsNVmUuJrpSU7F/aXt3LVtEpUq0X4urb7xXw2TAWHTdi8ok31DEKB/xu
 5bcHIDJ6ApFP9vzR7o66a4fCG3jIS2SIhH174WknxHSftO/ErTgWVUBL2R9puCaU4ZGq
 z9ec/kPpCbkFXV4h71gcgyx4bcbQERUKt6ixJa07MakYsZNE9JxUpXvyW/3GHJFUSJJh
 Y5DXf7zi++e3hASYrkCIz4JrIHNZwRH4OHYITGdC2n6yz7jwSpuMRQMDGIimLybfYK15
 5fN/FFI5fadPsQK/fyOdRJ/FKV141VzFJe/2wBluDkF8pqvI8V5Xbeim0n1moyMio8AW
 5hsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=itY8GiF4v2ICnk3w7fmpHKt0Jrf4g4tgby4BDHrpXnA=;
 b=P9XbNz+x8ACgOZ36d9uRRFvC1DgNgm1kMhZlFz2/xEPxHF7d3iJEjgI9HT5qmCXolA
 G7SXAVzSTTuecPgIqd0GrpnSy3Fd4O6ooAgx+S+0BogKXCUNObKjXWFEeC73m9Q65wXL
 ZBBArn4bIs6XbcIqQdtPnZEilkEF95k0+IrlHaQehtwkjwJIQ4h5mMnuPTN6Gm+xAEq7
 b5PA2yemJ9qxAIOmxvUuMGG3wKQ5xmNdcpP6wMnBYBZKE0Ug9XNcFIX8njY9tcPUBj4s
 WPmD67LD5g3ElNMTApY8Fkw7VmFep4qHzZDgNmQz2uhitNxavgdWI4fXfUB8dIIwsetL
 U7/w==
X-Gm-Message-State: APjAAAWWn/UKIw4N7+xpCF5716MVpQloo4JAbOg2GQ8Q7KvDCWFQXIoa
 e4m7vumQMp10LueUXZ353KqwjA3ZKmPJbUx6GBA=
X-Google-Smtp-Source: APXvYqxT9Ew0lOrb9R8fk94nzjDz8DT5vh9012Iq9slXFuwohedopVo8D4BVhibQba0Usn8X8gpTxix7KzsPRpHRXdY=
X-Received: by 2002:a02:b395:: with SMTP id p21mr28626183jan.52.1568056762576; 
 Mon, 09 Sep 2019 12:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
 <CAHCN7xL0fbr=Sv+b=0AuGB1PPhAAFdAFLEd_iBM+ZMTkUw5sHQ@mail.gmail.com>
 <CAHCN7xL-Gfxe0qF5w7BUsHnyhcNNpmCnchdKErnmiqggXfsLWw@mail.gmail.com>
 <20190909134033.s26eiurpat3iekse@pali> <20190909163543.GQ52127@atomide.com>
In-Reply-To: <20190909163543.GQ52127@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 9 Sep 2019 14:19:10 -0500
Message-ID: <CAHCN7x+7aafrZTtDFqbYJFtrozi8jCmiFE8SyFSmEhyd_Xh6tQ@mail.gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_121924_149896_976E5113 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali.rohar@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBTZXAgOSwgMjAxOSBhdCAxMTozNSBBTSBUb255IExpbmRncmVuIDx0b255QGF0b21p
ZGUuY29tPiB3cm90ZToKPgo+ICogUGFsaSBSb2jDoXIgPHBhbGkucm9oYXJAZ21haWwuY29tPiBb
MTkwOTA5IDEzOjQxXToKPiA+IE9uIE1vbmRheSAwOSBTZXB0ZW1iZXIgMjAxOSAwODozNzowOSBB
ZGFtIEZvcmQgd3JvdGU6Cj4gPiA+IEkgYXBwbGllZCB0aGlzIG9uIDUuMyBhbmQgaXQgaXMgd29y
a2luZy4gIEkgYXNzdW1lIHRoZSBzYW1lIGlzIHRydWUgaW4gZm9yLW5leHQuCj4KPiBIbW0gSSBu
b3RpY2VkIEkgc3RvcHBlZCBnZXR0aW5nIFJORyBkYXRhIGFmdGVyIHNldmVyYWwgcm1tb2QgbW9k
cHJvYmUKPiBjeWNsZXMsIG9yIHNldmVyYWwgaGQgL2Rldi9yYW5kb20gcmVhZHMuIEFueWJvZHkg
ZWxzZSBzZWVpbmcgdGhhdD8KCk9uIHRoZSBMb2dpYyBQRCBUb3JwZWRvLCBJIHdhcyBhYmxlIHRv
IHJlYWQgZnJvbSAvZGV2L2h3cm5nIGFuZAovZGV2L3JhbmRvbSAxMHggd2l0aG91dCBpc3N1ZQpJ
IGhhdmUgaW5zdGFsbGVkIHJuZy10b29scyBhbmQgSSBoYXZlIHNzaGQgcnVubmluZyBhbmQgc29t
ZSBvdGhlcgpzdHVmZiB0aGF0IG1pZ2h0IGdldCBpbiB0aGUgd2F5IGlmIEkgZG8gYW4gcm1tb2Qg
dG9vIG11Y2gsIGJ1dCBJCnJlbW92ZWQgYW5kIG1vZHByb2JlZCB0aGUgb21hcC1ybmcgM3ggYW5k
IG5ldmVyIHNhdyBhbiBpc3N1ZSByZWFkaW5nCmVpdGhlciAvZGV2L2h3cm5nIG9yIC9kZXYvcmFu
ZG9tLgoKSSBoYXZlIGJlZW4gbWVhbmluZyB0byB0ZXN0IHRoaXMgb24gdGhlIEFNMzUxNyBhbmQg
aGF2ZW4ndCBnb3R0ZW4gdG8KaXQgeWV0LCBidXQgSSBhc3N1bWUgeW91J3ZlIG9ubHkgdGVzdGVk
IG9tYXAzNjMwLCBpcyB0aGF0IHRydWU/CgphZGFtCj4KPiA+ID4gRG8geW91IHdhbnQgdG8gc3Vi
bWl0IGEgZm9ybWFsIHBhdGNoPyAgSSAgY2FuIG1hcmsgaXQgYXMgJ3Rlc3RlZC1ieScKPiA+ID4g
VGhpcyByZWFsbHkgaGVscHMgc3BlZWQgdXAgdGhlIHN0YXJ0dXAgc2VxdWVuY2Ugb24gYm9hcmRz
IHdpdGggc3NoZAo+ID4gPiBiZWNhdXNlIGl0IGRlbGF5cyBmb3IgbmVhcmx5IDgwIHNlY29uZHMg
d2FpdGluZyBmb3IgZW50cm9weSB3aXRob3V0Cj4gPiA+IHRoZSBod3JuZy4KPiA+Cj4gPiBIaSEg
V2hlbiBhcHBseWluZyBhIHBhdGNoLCBjb3VsZCB5b3UgcGxlYXNlIGRpc2FibGUgdGhpcyBybmcg
Zm9yIG45MDA/Cj4gPgo+ID4gSW4gb21hcDMtbjkwMC5kdHMgZm9yIHJuZyBzaG91bGQgYmUgc3Rh
dHVzID0gImRpc2FibGVkIiAoYXMgVG9ueSBhbHJlYWR5Cj4gPiB3cm90ZSksIHNpbWlsYXJseSBs
aWtlIGZvciBhZXMuCj4KPiBZZWFoIEknbGwgcG9zdCBhIHByb3BlciBwYXRjaCBhZnRlciAtcmMx
Lgo+Cj4gUmVnYXJkcywKPgo+IFRvbnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
