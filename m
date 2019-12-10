Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A966011953B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NelHn3Zgh5JEekrToRT+orvVJbHE7y3TR01JMW382kk=; b=QaD5JQLD38Siu1
	h4832J9yh1WM8AZze+PtMl8ZSpzwtP31p5b3UoHxZd52l3mJM7t/zockyHSbHfpDNuP9N3tbUXIsq
	HUKCUCMnLIjCS5tUDy3Rx6dmBWHciDSonVHZJEzABfT5z9zV0gjZAe5QEjE5xzdp44Lnmu4Cv7v2v
	G3l+HdtRygvDEySEVdiSF4AAOWAb9uoM0BreBTl1kc6iiKL1G1BVDPGknoyatQAtOxM78ApZm16iz
	uOkFTrpsNDYygO9Kb3suWIrWnOhjbQah9RnfVDlK7In2ajW4JZLbR19+mr4pmcxxmkIyIKXk5xpVq
	0ZOITAYDIOUb/jtgjjQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemvd-0004e9-Ak; Tue, 10 Dec 2019 21:20:21 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemvT-0004HE-JW
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:20:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id 21so21582784ljr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 13:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PdJmML1RZGVFcbiPDJBu5BgCMo3ptS7UEYDZPzxcYFI=;
 b=wzZlxiNDjMe8vZhvUh2um9RITIElPVEV8lrjzI2TvWaAsFTGhkPxVChUtnHpz5IubF
 vLeuFn1qF56x20H7ZfUYJ7oy/H3msW2QIztOuw1Di8NXgJVjJA3NXqmJ2e1eyaUY3V0a
 QtwlCFFGu8+3b0ptNFjLRya2ULZxPcklIjckwCYglcrdAUIol0jiqr9/dnihjs+7i+4J
 yYONmF5r7EChpldxyBDnkbUGAE0tFl6eDz3yEK1ME49dkyFF5GcHX58kiz/9IbfbWfvL
 hxxKk/n86Fg05zmbSwSGQ10Bm7C9rmVkJzL97av4V9T9CcoiSLx4vWQmH3gXgHFWlENA
 n36w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PdJmML1RZGVFcbiPDJBu5BgCMo3ptS7UEYDZPzxcYFI=;
 b=C4Ivw8suzTnH8dIh9YwXPJ5m8UAGLWT4DPqPbqWavack3HrnwVEFGR3p3P3xI3Op9n
 rZHR5HYy8Z0L+t0E0PirehUGd7G8rkCjc9c4Y0KXOzh5XI6QxVm5XUWAwP1BPgVHGP3l
 L71MB6LP8piVNksJlmSqU8m/oECrlvC7Rt4F9voYoOTzpLK/5ALdTbcbd/JVu9LG8CsG
 G6XMOob08UE2fxko19joKr08FwNqvoMfUUw7tQaAGJYQMxvfj3Yx8Fc4xo81BPtEyHjX
 2hwUpFU3S18Nr42dh1I5rQ3PzxoMTvbRZN3VQxHPtKmDwFq2Rq0gdz0EJDQxURwQjEwl
 buww==
X-Gm-Message-State: APjAAAV+0yKtPlt3kPcFNdPM8FAI5uDvp829b0nuBb3vymJ7/GewdQ3v
 kxiZ2BmSfiIybwTzllwpPovDusrQ8zqS4vaEVOo0nuqNjts=
X-Google-Smtp-Source: APXvYqxPryBPpUWRlqdLAE1oyDni8eIugFkA8i9jVJwRSGyXf+xKXOv5Pn1OB5QZOskOWfitC5oGGD2KT1bwnb9T9Is=
X-Received: by 2002:a05:651c:1049:: with SMTP id
 x9mr21448202ljm.233.1576012806884; 
 Tue, 10 Dec 2019 13:20:06 -0800 (PST)
MIME-Version: 1.0
References: <20190107194523.2772-1-u.kleine-koenig@pengutronix.de>
 <CACRpkdbYizVLtQxh8_ZXWC-d6+E-k0T6Zq67qRJ7ascFGWTXig@mail.gmail.com>
 <20190111150441.rsmize5dudrmgu52@pengutronix.de>
 <CACRpkdbY=ZS0hb2wQfLQMr_=vNAGuMUGnAmwgwZi-hZ-fNdD=Q@mail.gmail.com>
 <20191210171524.dg4vkqp3dhupsgbm@pengutronix.de>
In-Reply-To: <20191210171524.dg4vkqp3dhupsgbm@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Dec 2019 22:19:55 +0100
Message-ID: <CACRpkdb3dZ0WKtReMcmt2boRy3ooh+yj-QKTG3vRR8=4G7w9nw@mail.gmail.com>
Subject: Re: [PATCH] bus: ts-nbus: remove bus driver without user
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_132011_854202_447F2082 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, kernel <kernel@savoirfairelinux.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Jerome Oufella <jerome.oufella@savoirfairelinux.com>,
 Sebastien Bourdelin <sebastien.bourdelin@savoirfairelinux.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBEZWMgMTAsIDIwMTkgYXQgNjoxNSBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiBPbiBGcmksIEphbiAxMSwgMjAxOSBh
dCAwODo1Njo0OVBNICswMTAwLCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+ID4gT24gRnJpLCBKYW4g
MTEsIDIwMTkgYXQgNDowNCBQTSBVd2UgS2xlaW5lLUvDtm5pZwo+ID4gPHUua2xlaW5lLWtvZW5p
Z0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPgo+ID4gPiBBY2suIEZvciBub3cgSSdkIHNheSBh
IHN0YXRlbWVudCBmcm9tIHNvbWVvbmUgd2hvIHVzZXMgdGhpcyBzdHVmZiBhYm91dAo+ID4gPiB0
aGlzIGZhY3Qgd291bGQgYmUgZ29vZCBlbm91Z2guIEdpdmVuIHRoYXQgc29tZSB0aW1lIGFnbyBJ
IHNlbnQgcGF0Y2hlcwo+ID4gPiBmb3IgdGhpcyBkcml2ZXIgYW5kIGRpZG4ndCBnZXQgYW55IGZl
ZWRiYWNrIGZyb20gYW4gaW50ZXJlc3RlZCBwYXJ0eVsxXQo+ID4gPiBJIHRyaWVkIHdpdGggdGhh
dCBwYXRjaCBhZGRpbmcgc29tZSBtb3JlIHBlb3BsZSBmcm9tCj4gPiA+IHNhdm9pcmZhaXJlbGlu
dXguY29tIC4uLgo+ID4KPiA+IEkgZm9yd2FyZGVkIHRoZSBjb252ZXJzYXRpb24gdG8gSmVyb21l
IE91ZmVsbGEgYXQgc2F2b2lyZmFpcmVsaW51eCwKPiA+IGxldCdzIHNlZSB3aGF0IGhlIHNheXMu
Cj4KPiBIZSBkb2Vzbid0IHNlZW0gdG8gc2F5IHNvbWV0aGluZy4gSXMgdGhpcyB0aGUgcGVybWlz
c2lvbiB0byBzaG9vdAo+IHRzLW5idXM/CgpNeSBwb2ludCBvZiB2aWV3IGlzIGluY2x1c2lvbmlz
dCwgaS5lLiBJIG9ubHkgZGVsZXRlIGNvZGUgaWYgaXQgaXMgY2F1c2luZwpwcm9ibGVtcyBmb3Ig
b3RoZXJzLCBzdWNoIGFzIHdoZW4gd2UgZGVsZXRlZCBCbGFja2ZpbiBiZWNhdXNlIGl0IHdhcwph
IG1lc3MgdG8gcmVmYWN0b3IgZ2VuZXJhbCBkcml2ZXJzIHNpbmNlIHRoZSBibGFja2ZpbiBib2Fy
ZGZpbGVzCndlcmUgYWxsIG92ZXIgdGhlIHBsYWNlLCBvciB3aGVuIEkgZGVsZXRlZCB0aGUgRk1D
IHN1YnN5c3RlbQpiZWNhdXNlIGl0IGhhcyBpdHMgb3duIEdQSU8gaW1wbGVtZW50YXRpb24gYW5k
IG5vb25lIHdhcyByZWFsbHkKd2lsbGluZyB0byBoZWxwIHRlc3QgcGF0Y2hlcyBvciBpbXByb3Zl
IG9uIGl0LgoKU28gSSB3b3VsZCByYXRoZXIgYXNrOiB3aG8gaXMgaHVydCBieSBpdCBiZWluZyBh
cm91bmQ/CgpKdXN0IG15IOKCrDAuMDEKCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
