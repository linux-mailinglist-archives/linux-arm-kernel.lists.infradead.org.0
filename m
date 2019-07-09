Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4659463B47
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvAcUL4zOFX3EmjYenPk/vctJx7E9w2h+TppHS7JRhw=; b=Moo5RPjKaZgL4w
	J0J58F8m7oxazfaMaN3Go24/h1uaMT2M1bdPwXtYF2sv/CoTC0gSvlaOGFNj43tXeh6Kp4QEM+P+H
	4+Rk/cnkJ3BV5Hb2y21ZrEm1sLXGR1FBwKqY0HDxIdzXENEaN3OLWyDGmPXaKkcQOxXNyNQYpmGOH
	PiFEEot0r1KKcD5owT/Zgzy7z1m5qx6fR/q/UKpKNwlvLQDp2/H6xSmW94WgN5LAwqWl1kBCT7kDk
	+ebuMxBGOEtIgpoHQG2FnaKQT27EB9TNhayEvZlShHqTjN10huAgDm+oA7VgCqyyR4mB5vXc7L/y+
	7soSd9tRb85wZzZP7g3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkv3f-0004Fz-Vl; Tue, 09 Jul 2019 18:41:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkv3U-0004EK-6J
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:41:34 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C26A621537
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  9 Jul 2019 18:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562697691;
 bh=jIiJEaeQzkGgslYzOQrb/gG6tj9ALGXUZbsHRs3NNWY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MMKQDxT3LDTZvHD6APJXizIt44/oJyOIkl8VJjR8WgxtcMvV0uwtr7wOJZOkQDdY/
 1a84KZboSSYeDHgxBOvQ9+l88huJp5u4ajZR1oTqAUmBjF79kvOiLTjqsJpha/LXrd
 rPOa24uqYwCcdCNGXi81700eqWl6S7Fm5DHMMgTg=
Received: by mail-qt1-f182.google.com with SMTP id k10so15061075qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 11:41:31 -0700 (PDT)
X-Gm-Message-State: APjAAAV/hRSPj9y0JHiQvuvJJGrtW/xEgFQtwRsgM5i/rfJr8k/gdHE9
 68YJimCSA9benQ4gi0ZgCpjvcD6X0PVvR3xLkQ==
X-Google-Smtp-Source: APXvYqzkX7bt2ZiLmD+YpYn58+9JlkhqcI/fqW87d86Ei0oxUWPrhPUrbnVr6uZt3o1wNV1dhvSwtS21IJOZDuI3OEs=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr20461479qtc.300.1562697691079; 
 Tue, 09 Jul 2019 11:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190618212229.32302-4-robh@kernel.org>
 <20190709171508.GA10127@Mani-XPS-13-9360>
 <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 9 Jul 2019 12:41:19 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+=rAafEFq+3pUc3A35aLzf9gtgGzj1aheHzoQ+MSiO1Q@mail.gmail.com>
Message-ID: <CAL_Jsq+=rAafEFq+3pUc3A35aLzf9gtgGzj1aheHzoQ+MSiO1Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings to
 json-schema
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_114132_272909_07F09F7D 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgOSwgMjAxOSBhdCAxMjoyOSBQTSBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgSnVsIDksIDIwMTkgYXQgMTE6MTUgQU0gTWFuaXZhbm5h
biBTYWRoYXNpdmFtCj4gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3cm90ZToK
PiA+Cj4gPiBIaSBSb2IsCj4gPgo+ID4gT24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMDM6MjI6MjhQ
TSAtMDYwMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPiA+IENvbnZlcnQgUkRBIE1pY3JvIFNvQyBi
aW5kaW5ncyB0byBEVCBzY2hlbWEgZm9ybWF0IHVzaW5nIGpzb24tc2NoZW1hLgo+ID4gPgo+ID4g
PiBDYzogIkFuZHJlYXMgRsOkcmJlciIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4gPiA+IENjOiBNYW5p
dmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+ID4gPiAtLS0K
PiA+ID4gQW5kcmVhcywgVXBkYXRlIHRoZSBsaWNlbnNlIG9uIHRoaXMgb25lIHRvbyB0byBkdWFs
IGxpY2Vuc2VkIGlmIHlvdQo+ID4gPiB3YW50Lgo+ID4KPiA+IEknbSBmaW5lIHdpdGggR1BMLTIu
MC4gU2luY2UgdGhlcmUgaXNuJ3QgYW55IG90aGVyIFJEQSBzcGVjaWZpYyBwYXRjaGVzCj4gPiBp
biBteSB0cmVlLCB5b3Ugd2FudCB0byB0YWtlIHRoaXMgcGF0Y2g/IEVsc2UgSSBoYXZlIHRvIHNl
bmQgdGhlIFB1bGwKPiA+IFJlcXVlc3QgdG8gQVJNIFNvQyBmb2xrcyB3aXRoIHRoaXMgcGF0Y2gg
YWxvbmUuCj4KPiBPa2F5LCBJIGNhbiB0YWtlIGl0LiBUaGUgcHJlZmVyZW5jZSBpcyBhY3R1YWxs
eSBkdWFsIGxpY2Vuc2VkIHdoaWNoIGlzCj4gd2h5IEkgYXNrZWQsIGJ1dCB0aGF0IGNhbiBiZSBk
b25lIGxhdGVyLgoKQW5kIGlzIHRoYXQgYW4gYWNrIGZyb20geW91PwoKUm9iCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
