Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3863118E1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 17:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SrN/kx2ZxPamiz9NlNVJwAkNR9ei8/saIzN+KVfcdNw=; b=exMYyV9hHQhcZY
	uPPGsjkOfoTFW8OC2jeQbwMxLEQAwBYEXIwxu8mPObGNYv5+JCYmi1X4kgBzNydIqbDct+wqV8Ull
	C/wK/GSRVuQqTVLikzmomu1G+MMk/CwkA2RMK5iNFQXBzG0RUjrrIF62dza2GQsnAy2ki8RAXdoPn
	4vinPYgoTW1zRY0viN7MAEWLCMm+wrvSMAS+kyqCkiuIum5QWMkZkzjt5ACmxjWKKkFyQarl6o9w6
	irojFydewGHBCCH8X7zGNJXqYOJJGT5Kj/AGVYY1w/FmESARgjdTKl6Wk7mtxK2SomJuvU/l6Eg1h
	+yySJEcYPDN6kYI+wISg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieigb-00076p-Dd; Tue, 10 Dec 2019 16:48:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieigU-00076P-Pk
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 16:48:27 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0688B207FF
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 16:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575996506;
 bh=R33HTSexU1kbb824ncW7/1smobUzWfbTBjTiOaZwbr4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xMD67H81d0rp4JlhSYv1MoGQjhVBvSBRrcQrfvMaUV/rshK9dgLMGQgqo5z4NjcdK
 jxWfkYEMimmj7J965YbYsbYVsynwmdBWIm+UgMowjc1wUvpOwajun7sSYs3nvp7Zwx
 eDKMLOXpXw1a8WZl44k8KAsREU20jmY7ev/JU1Ek=
Received: by mail-qk1-f174.google.com with SMTP id k6so16992595qki.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 08:48:25 -0800 (PST)
X-Gm-Message-State: APjAAAUAk1mDTc/ONLHm7I06Pu2lhBR/PdZR2ic2LNBXYdVYN5/RPrzR
 Wy0r9wOqfCIDNsSpY1uZcRMcWMvNcl8h9ipk/Q==
X-Google-Smtp-Source: APXvYqx9dzG7yP7Wuz5at60Qc6xU1g9ebTuNbbK6+p8S0ZoNXrD/Xdz8GC+/TsRt7j+zA0yyIQg0bEtIgkzleZIfQv8=
X-Received: by 2002:a37:a70b:: with SMTP id q11mr13613735qke.393.1575996505147; 
 Tue, 10 Dec 2019 08:48:25 -0800 (PST)
MIME-Version: 1.0
References: <20191119175319.16561-1-peron.clem@gmail.com>
 <20191121072408.GE4345@gilmour.lan>
In-Reply-To: <20191121072408.GE4345@gilmour.lan>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 10 Dec 2019 10:48:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJevcG2qv+BYKTnP=out0jPxuEcdYuLq7idxK04Q05fag@mail.gmail.com>
Message-ID: <CAL_JsqJevcG2qv+BYKTnP=out0jPxuEcdYuLq7idxK04Q05fag@mail.gmail.com>
Subject: Re: [PATCH v7 0/8] Add support for H6 PWM
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_084826_854582_F9455029 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>, devicetree@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMToyNCBBTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vy
bm8udGVjaD4gd3JvdGU6Cj4KPiBPbiBUdWUsIE5vdiAxOSwgMjAxOSBhdCAwNjo1MzoxMVBNICsw
MTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBIaSwKPiA+Cj4gPiBUaGlzIGlzIGEgcmV3
b3JrIG9mIEplcm5laidzIHByZXZpb3VzIHdvcmtbMV0gdGFraW5nIGFjY291bnQgYWxsIHRoZQo+
ID4gcHJldmlvdXMgcmVtYXJrcy4KPiA+Cj4gPiBCaW5kaW5ncyBpcyBzdGlsbCBzdHJpY3QgYnV0
IHByb2JlIGluIHRoZSBkcml2ZXIgYXJlIG5vdyBvcHRpb25uYWxzLgo+ID4KPiA+IElmIHNvbWVv
bmUgY291bGQgY29uZmlybSB0aGF0IHRoZSBQV00gaXMgbm90IGJyb2tlbiwgYXMgbXkgYm9hcmQK
PiA+IGRvZXNuJ3Qgb3V0cHV0IGl0Lgo+ID4KPiA+IEkgZGlkbid0IGFkZCB0aGUgYWNrZWQtdGFn
cyBhcyB0aGVyZSBhcmUgYmlnIGNoYW5nZXMuCj4KPiBBcHBsaWVkIDEgYW5kIDcgZm9yIDUuNiwg
dGhhbmtzIQoKSSBiZWxpZXZlIHBhdGNoIDcgYnJlYWtzIGxpbnV4LW5leHQ6CgpFcnJvcjogRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3
bS5leGFtcGxlLmR0czozNS4zNy0zOApzeW50YXggZXJyb3IKRkFUQUwgRVJST1I6IFVuYWJsZSB0
byBwYXJzZSBpbnB1dCB0cmVlCm1ha2VbMV06ICoqKiBbRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS5leGFtcGxlLmR0LnlhbWxdCkVy
cm9yIDEKClVzdWFsbHkgdGhhdCdzIGR1ZSB0byBhIG1pc3NpbmcgaW5jbHVkZS4KClJvYgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
