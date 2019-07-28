Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F5377F64
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 14:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDWWci3ApJvGX2IMPXfG2/yBywV0c4w+fQLi5L4DD1c=; b=EgIz6sDOVVnfs9
	Sgk8m88954M0+rS9OFmG5o2VjS+fH+MbpxBv8K5lnLt3upsBeGFhLFnClgRXdaG0vCBun1JgxbYPA
	8k9fXQRnp/RHq39E3xs5s841SJdIM3I6FOFgBzzjEePAbZhXHkH9xbxAVejFTj/EJGWfZPlQhwEbr
	R86fYuSWZh8/sdTkGnHaem5oSWnFr9Ns1u1YUqKQs/MrquuZp5Bg2pw5bhJ8xgLniM+uRQKaEreXh
	6GBx4mjtq61ig088Y4ueQGdltCM/sGuevHQXRgcQGtAano4ugjJ16fXflVb/+wcDjSfMOZ7Z0/chI
	MrhYy/lP7T4vLc0oNQRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hri1t-0004TD-JZ; Sun, 28 Jul 2019 12:11:57 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hri1a-0004Sn-UM
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 12:11:40 +0000
Received: by mail-io1-xd43.google.com with SMTP id j5so110042460ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 05:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=o8O9KAxzmVM0BrX/bXbNzEeKG4RYTTsXUCROZXRKIPs=;
 b=DKLddTl0Ubsuhb1y9AdP2vx2S5qIlO/qY5kf0m1lLc6Ep9c3CAohxTzAgU9K6LvhMy
 AMeCY5bKM0YGvGxzLLouaHCV+vd7Sk6JQd0hPeuXLqX7yVfHVhQ7rv3HRH3nvl7XtXEd
 tafXjCxauDCJNn+NTxFOa/i82DwP435DE+KL0VbZ6D159c4ORblD7vZBmrl4TR2YidAb
 ShsBMiG95oH6tWFIQj/qxXujTgQVu/YwnPIhSMqq0WLHyl8cH2QGM5YwVhnvdiJ/FI23
 gZYOHSR8kbwtmsvI/sJpt8bQuftlVAOb5tUJJ0hy7td4u7KWEUcY6Hz3TfNcLuvLpoSK
 ovlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=o8O9KAxzmVM0BrX/bXbNzEeKG4RYTTsXUCROZXRKIPs=;
 b=ZR4tRkTuKZmdJtrD0Ghto9j/XXbXXP78n1KiAfgu/O5tFAfYhbU3NcHAYQAp0XBPW2
 R4hIzuB/87QUlDEzu7rT59e/pjgGdiIdce0gF/VUgc4B8L/i0J6Do21Qxj+aNZhGb5Pc
 n0WtbRgH/VvLANytZkMgK3e/NBylMUeRvmDA1otavLYhRqEU58WF0RvhrNWfVoAcYA7g
 tMoQ1nOO1oHVlygpO8mUjLcQSBTBGnr723MZnA2Y7sU3M4GW80oL7ravO0JL09bQl7jI
 LaOpvize/HTjmzCG1mSpPF59mO2Jb0OdvSctWezICv7gbsRmLvZziQucpQmgzEVGM27X
 TUCw==
X-Gm-Message-State: APjAAAUlW2SI3JhXkn3+DtircWLsqD7kKHwY2y1rv+ZFSuKOt66vaEE7
 Qrkz2vD0TA6CQaVOOjuGrdTz8Jm4Gtb/hpvw+TA=
X-Google-Smtp-Source: APXvYqzEXVVQr+yEjzGumnkJQQ+h79xROdJi30P9BPu7P1IxBEoj9A1yKVecXdyKDF6kc4QihNgv2OEyr8efRwzmhYE=
X-Received: by 2002:a5d:9416:: with SMTP id v22mr27344509ion.4.1564315897025; 
 Sun, 28 Jul 2019 05:11:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
 <CA+E=qVfhDEQER2UTj65hR9erzej9Ey2FrUa9GV=iCFYsWZ2ztw@mail.gmail.com>
 <CA+E=qVdAUFJM27cNL6WRkk5moX=mEk7WUs6UBoX58Y7ove40oQ@mail.gmail.com>
 <CA+E=qVdw+DG7Bj4xg5-wjatyHMH76q2usanZ7Ty6pGHuaA_=5Q@mail.gmail.com>
In-Reply-To: <CA+E=qVdw+DG7Bj4xg5-wjatyHMH76q2usanZ7Ty6pGHuaA_=5Q@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sun, 28 Jul 2019 20:11:25 +0800
Message-ID: <CAEExFWsCKWdwciC2x4jNpF4+Gk4ezCS+7RHvk1t3fU_xk90jMQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/11] add thermal driver for h6
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_051138_983592_110C616E 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 paulmck@linux.ibm.com, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SEkgVmFzaWx5LAoKT24gU2F0LCBKdWwgMjcsIDIwMTkgYXQgMTo0NiBBTSBWYXNpbHkgS2hvcnV6
aGljayA8YW5hcnNvdWxAZ21haWwuY29tPiB3cm90ZToKPgo+IEhleSBZYW5ndGFvLAo+Cj4gQXJl
IHlvdSBwbGFubmluZyB0byBzZW5kIHY1IGFueXRpbWUgc29vbj8KClllYWgsIFRoYW5rIHlvdSBm
b3IgeW91ciBjb250cmlidXRpb24uCgpUaGlzIG1vbnRoIGlzIGEgYml0IGJ1c3ksIEkgd2lsbCBw
cm9iYWJseSBzdGFydCB0aGUgVjUgdmVyc2lvbiBzb29uLgpUaGUgbmV4dCB2ZXJzaW9uIHdpbGwg
YWRkIHlvdXIgQTY0IHN1cHBvcnQsIGFuZCBwb3NzaWJseSBINSBzdXBwb3J0CmZyb20gaWNlbm93
eS4KCllvdXJz77yMCllhbmd0YW8KCj4KPiBPbiBTYXQsIEp1bCAxMywgMjAxOSBhdCAxMTowMSBB
TSBWYXNpbHkgS2hvcnV6aGljayA8YW5hcnNvdWxAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBP
biBXZWQsIEp1bCAxMCwgMjAxOSBhdCA0OjA5IFBNIFZhc2lseSBLaG9ydXpoaWNrIDxhbmFyc291
bEBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBTdW4sIEp1biAyMywgMjAxOSBhdCA5
OjQyIEFNIFlhbmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4K
PiA+ID4gPiBUaGlzIHBhdGNoc2V0IGFkZCBzdXBwb3J0IGZvciBIMyBhbmQgSDYgdGhlcm1hbCBz
ZW5zb3IuCj4gPiA+ID4KPiA+ID4gPiBCVFksIGRvIGEgY2xlYW51cCBpbiB0aGVybWFsIG1ha2Zp
bGUuCj4gPiA+ID4KPiA+ID4gPiBZYW5ndGFvIExpICgxMSk6Cj4gPiA+ID4gICB0aGVybWFsOiBz
dW44aTogYWRkIHRoZXJtYWwgZHJpdmVyIGZvciBoNgo+ID4gPiA+ICAgZHQtYmluZGluZ3M6IHRo
ZXJtYWw6IGFkZCBiaW5kaW5nIGRvY3VtZW50IGZvciBoNiB0aGVybWFsIGNvbnRyb2xsZXIKPiA+
ID4gPiAgIHRoZXJtYWw6IGZpeCBpbmRlbnRhdGlvbiBpbiBtYWtlZmlsZQo+ID4gPiA+ICAgdGhl
cm1hbDogc3VuOGk6IGdldCB0aHMgc2Vuc29yIG51bWJlciBmcm9tIGRldmljZSBjb21wYXRpYmxl
Cj4gPiA+ID4gICB0aGVybWFsOiBzdW44aTogcmV3b3JrIGZvciBzdW44aV90aHNfZ2V0X3RlbXAo
KQo+ID4gPiA+ICAgdGhlcm1hbDogc3VuOGk6IGdldCB0aHMgaW5pdCBmdW5jIGZyb20gZGV2aWNl
IGNvbXBhdGlibGUKPiA+ID4gPiAgIHRoZXJtYWw6IHN1bjhpOiByZXdvcmsgZm9yIHRocyBpcnEg
aGFuZGxlciBmdW5jCj4gPiA+ID4gICB0aGVybWFsOiBzdW44aTogc3VwcG9ydCBhaGIgY2xvY2tz
Cj4gPiA+ID4gICB0aGVybWFsOiBzdW44aTogcmV3b3JrIGZvciB0aHMgY2FsaWJyYXRlIGZ1bmMK
PiA+ID4gPiAgIGR0LWJpbmRpbmdzOiB0aGVybWFsOiBhZGQgYmluZGluZyBkb2N1bWVudCBmb3Ig
aDMgdGhlcm1hbCBjb250cm9sbGVyCj4gPiA+ID4gICB0aGVybWFsOiBzdW44aTogYWRkIHRoZXJt
YWwgZHJpdmVyIGZvciBoMwo+ID4gPgo+ID4gPiBJdCB3b3VsZCBiZSBuaWNlIHRvIGFkZCBkdHMg
Y2hhbmdlcyB0byB0aGlzIHNlcmllcy4gSXQncyB1bmxpa2VseSB0aGF0Cj4gPiA+IHlvdSdsbCBn
ZXQgYW55ICJUZXN0ZWQtYnkiIG90aGVyd2lzZS4KPiA+Cj4gPiBJIGFkZGVkIEE2NCBzdXBwb3J0
IG9uIHRvcCBvZiB0aGlzIHNlcmllcywgc2VlCj4gPiBodHRwczovL2dpdGh1Yi5jb20vYW5hcnNv
dWwvbGludXgtMi42L3RyZWUvdjUuMi10aGVybWFsCj4gPgo+ID4gQnJhbmNoIGFsc28gY29udGFp
bnMgcGF0Y2hlcyB0byBlbmFibGUgRFZGUyBvbiBBNjQsIGZlZWwgZnJlZSB0bwo+ID4gY2hlcnJ5
IHBpY2sgb25seSB0aG9zZSByZWxhdGVkIHRvIHRoZXJtYWwgZHJpdmVyIGlmIHlvdSB3YW50IHRv
Cj4gPiBpbmNsdWRlIEE2NCBzdXBwb3J0IGludG8gdjUgc2VyaWVzLgo+ID4KPiA+ID4KPiA+ID4g
PiAgLi4uL2JpbmRpbmdzL3RoZXJtYWwvc3VuOGktdGhlcm1hbC55YW1sICAgICAgIHwgIDk0ICsr
Kwo+ID4gPiA+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgIDcgKwo+ID4gPiA+ICBkcml2ZXJzL3RoZXJtYWwvS2NvbmZpZyAgICAgICAgICAgICAgICAg
ICAgICAgfCAgMTQgKwo+ID4gPiA+ICBkcml2ZXJzL3RoZXJtYWwvTWFrZWZpbGUgICAgICAgICAg
ICAgICAgICAgICAgfCAgIDkgKy0KPiA+ID4gPiAgZHJpdmVycy90aGVybWFsL3N1bjhpX3RoZXJt
YWwuYyAgICAgICAgICAgICAgIHwgNTM0ICsrKysrKysrKysrKysrKysrKwo+ID4gPiA+ICA1IGZp
bGVzIGNoYW5nZWQsIDY1NCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4gPiA+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJt
YWwvc3VuOGktdGhlcm1hbC55YW1sCj4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L3RoZXJtYWwvc3VuOGlfdGhlcm1hbC5jCj4gPiA+ID4KPiA+ID4gPiAtLS0KPiA+ID4gPiB2NDoK
PiA+ID4gPiAtYWRkIGgzIHN1cHBvcnQKPiA+ID4gPiAtZml4IHlhbWwgZmlsZQo+ID4gPiA+IC0t
LQo+ID4gPiA+IDIuMTcuMQo+ID4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiA+IGxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0Cj4gPiA+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gPiA+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
