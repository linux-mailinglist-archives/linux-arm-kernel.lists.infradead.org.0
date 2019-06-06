Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1880F37BAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3k2wGF9T/rS4pUNvd+I3tJtBzyqb9scnaXTdP6Mrdso=; b=F6XQy542IXxTq0
	43NTHhqqOV8R6VPn8nNFQbub3fwWyBXCfp3MvtbDSe5n0gx+l2gjq/s0V4JLwWO+yJbN9jwsq/TFE
	WyMEtr+ueCh7LQzUphD/gLh94WgDzt3AquECGJpXrhYyclmtGt/BxV8pULFZ7/YVdULdpJQPfkmI0
	SM0v07N0Vf0M0rrrc9XsWAGTr3okIUogzepbt5oh33/9Sw071wW5GBwxQ36nw6ds66JJP9GHYgvuv
	A4RyQXYuQD9BRZHTTzZDqI2FKPL23WK3Y/DMCApTIbDkvXRDf4WqrIHC5SjjiEoMBQeL2chzc8JAG
	Dh9LlYu59zSHUYIB17EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwdL-0005MJ-Ml; Thu, 06 Jun 2019 17:57:03 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwdE-0005LY-9f
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 17:56:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id cl9so1209522plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 10:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=wg/L+X/jg6qit00t5YFiyAIPQXlMXYdfO4PWqxYv4KM=;
 b=dA8vBvHVwB5tyIZL6HFsZQA+oM7gbRX2BD/7asX66sUe55DoUOmY3CcZ++I+fKFlFs
 oRtoMCloCYkyyxraPI/r329rVZdvdMnaYRmrcMERLV9VjuzrrlGBvhJbHs2leafOmQKY
 x7NgGEAgtwYwYd70a+G1XOdwp/unQ7R3QOhLk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=wg/L+X/jg6qit00t5YFiyAIPQXlMXYdfO4PWqxYv4KM=;
 b=nuvXkLT34hmh8K/gxJPR2HMmv1fftsbmLEqPIIL/EYmDR26VtarjVk/2cq82+FCqDQ
 dg3NH82KuNYy8Nxa+4dZOgRYQigt/RpUghqXWGyzrYI2fTzlOID05kvuGCryWlfkkO52
 OULPJDnSLUCV6xlQq/t0BS9WbxHfN8RoQII95pWUqInP1/8hhr/X9wYsopAuhEWOe0dr
 6z1KQCEsWw9CjIe2fUFLrDz9qPN5nAQl+B5tODIx5XQmTJBEY821SUrF2uplB2KxYq6H
 YJKUuq5gv7/VYQ/Fs9odgMWAaCAMOdaZ/grjTkVHhpgV3qHeFVu6s18+CLucgh72tvU6
 ZDxQ==
X-Gm-Message-State: APjAAAUd/mwuafQ4r9p13syt52SdSMdj3Amad/goSv0z1axYm9bbdufF
 hd1kBI3BA5HhsImarwm9mGzd7g==
X-Google-Smtp-Source: APXvYqwmDqEW/o38wEXDtX8dBjNG0P26I5CKLLWhjKj39nna/Xy2ryhansQqw0pXWqo/EvXbqhoqvg==
X-Received: by 2002:a17:902:8a83:: with SMTP id
 p3mr52200787plo.88.1559843815549; 
 Thu, 06 Jun 2019 10:56:55 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id f13sm2645865pfa.182.2019.06.06.10.56.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 10:56:55 -0700 (PDT)
Date: Thu, 6 Jun 2019 10:56:54 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as
 wake-up signal on veyron
Message-ID: <20190606175654.GQ40515@google.com>
References: <20190605204320.22343-1-mka@chromium.org>
 <20190605212427.GP40515@google.com> <2828678.vPWIEPrON5@diego>
 <3394571.WlNFeu2Orz@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3394571.WlNFeu2Orz@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_105656_358562_EA22B9A6 
X-CRM114-Status: GOOD (  23.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMDYsIDIwMTkgYXQgMTI6NDY6MDNQTSArMDIwMCwgSGVpa28gU3R1ZWJuZXIg
d3JvdGU6Cj4gQW0gTWl0dHdvY2gsIDUuIEp1bmkgMjAxOSwgMjM6NTI6MDAgQ0VTVCBzY2hyaWVi
IEhlaWtvIFN0w7xibmVyOgo+ID4gQW0gTWl0dHdvY2gsIDUuIEp1bmkgMjAxOSwgMjM6MjQ6Mjcg
Q0VTVCBzY2hyaWViIE1hdHRoaWFzIEthZWhsY2tlOgo+ID4gPiBPbiBXZWQsIEp1biAwNSwgMjAx
OSBhdCAxMToxMToxMlBNICswMjAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+ID4gPiBBbSBN
aXR0d29jaCwgNS4gSnVuaSAyMDE5LCAyMjo0MzoyMCBDRVNUIHNjaHJpZWIgTWF0dGhpYXMgS2Fl
aGxja2U6Cj4gPiA+ID4gPiBUaGlzIGVuYWJsZXMgd2FrZSB1cCBvbiBCbHVldG9vdGggYWN0aXZp
dHkgd2hlbiB0aGUgZGV2aWNlIGlzCj4gPiA+ID4gPiBzdXNwZW5kZWQuIFRoZSBCVF9IT1NUX1dB
S0Ugc2lnbmFsIGlzIG9ubHkgY29ubmVjdGVkIG9uIGRldmljZXMKPiA+ID4gPiA+IHdpdGggQlQg
bW9kdWxlIHRoYXQgYXJlIGNvbm5lY3RlZCB0aHJvdWdoIFVBUlQuCj4gPiA+ID4gPiAKPiA+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9y
Zz4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21p
dW0ub3JnPgo+ID4gPiA+IAo+ID4gPiA+IEhvdXNla2VlcGluZyBxdWVzdGlvbiwgd2l0aCB0aGUg
dHdvIFNpZ25lZC1vZmYtYnkgbGluZXMsIGlzIERvdWcgdGhlCj4gPiA+ID4gb3JpZ2luYWwgYXV0
aG9yLCBvciB3YXMgdGhpcyBDby1kZXZlbG9wZXItYnk/Cj4gPiA+IAo+ID4gPiBHb29kIHF1ZXN0
aW9uLCBpdCdzIGRlcml2ZWQgZnJvbSBEb3VnJ3MgcGF0Y2ggZm9yIENyT1MgMy4xNCBhbmQKPiA+
ID4gaHR0cHM6Ly9jcnJldi5jb20vYy8xNTc1NTU2IGFsc28gZnJvbSBEb3VnLiBMZXQncyBzYXkg
SSBkaWQgdGhlCj4gPiA+IHBvcnRpbmcgdG8gdXBzdHJlYW0sIGJ1dCBJJ20gcHJldHR5IHN1cmUg
RG91ZyBzcGVudCBtb3JlIHRpbWUgb24gaXQuCj4gPiA+IAo+ID4gPiBNYXliZSBJIHNob3VsZCBy
ZXNlbmQgaXQgd2l0aCBEb3VnIGFzIGF1dGhvciBhbmQgaW5jbHVkZSB0aGUgb3JpZ2luYWwKPiA+
ID4gY29tbWl0IG1lc3NhZ2UsIHdoaWNoIGhhcyBtb3JlIGluZm9ybWF0aW9uLgo+ID4gCj4gPiBJ
dCdzIGp1c3QgdGhhdCB0aGUgZmlyc3QgU2lnbmVkLW9mZiBzaG91bGQgYmUgZnJvbSB0aGUgb3Jp
Z2luYWwgYXV0aG9yLgo+ID4gKEFuZCB0aGUgc2VuZGVyIHRoZSBzZWNvbmQpCj4gPiBJbiB0aGUg
Y28tZGV2ZWxvcGVkLWJ5IGNhc2UgKHNlZSBLZXJuZWwgZG9jdW1lbnRhdGlvbikgdGhlIG9yZGVy
Cj4gPiBkb2Vzbid0IG1hdHRlci4KPiAKPiBIb2xkaW5nIG9mZiBvbiB0aGlzIHBhdGNoIHRpbGwg
d2UgY291bGQgY2xhcmlmeSB0aGUgYXV0aG9yc2hpcC4KCkknZCBzYXkgbGV0J3MgYXR0cmlidXRl
IHRoZSBhdXRob3JzaGlwIHRvIERvdWcuIEZUUiwgdGhlIG9yaWdpbmFsCmRvd25zdHJlYW0gQ2hy
b21lIE9TIHBhdGNoIGlzIGh0dHBzOi8vY3JyZXYuY29tL2MvMjc4MTkwLgoKTm90IHN1cmUgaWYg
dGhlIGluZm9ybWF0aW9uIGluIHRoZSBjb21taXQgbWVzc2FnZSBvZiB0aGUgb3JpZ2luYWwKcGF0
Y2ggaXMgcmVsZXZhbnQgZm9yIHRoZSB1cHN0cmVhbSB2ZXJzaW9uLCBpbiB0aGUgZW5kIGl0IHNl
ZW1zIExQTQp3YXMgbmV2ZXIgaW1wbGVtZW50ZWQsIHNvIGl0IHNob3VsZCBiZSBzdWZmaWNpZW50
IHRvIHNheSB3aGF0IGlzCmFjdHVhbGx5IGRvbmUgdG9kYXkuCgpJbiBzdW1tYXJ5LCBJIHByb3Bv
c2UgdG8gdGFrZSB0aGUgcGF0Y2ggd2l0aCB0aGUgY3VycmVudCBjb21taXQKbWVzc2FnZSwgd2l0
aCBEb3VnIGFzIHRoZSBhdXRob3IuIEhlaWtvLCBjYW4geW91IGNoYW5nZSB0aGUgYXV0aG9yc2hp
cApvciBzaG91bGQgSSBzZW5kIGEgbmV3IHZlcnNpb24/CgpEb3VnIGlmIHlvdSBoYXZlIG9iamVj
dGlvbnMgb3Igd2FudCB1cGRhdGVzIGluIHRoZSBjb21taXQgbWVzc2FnZQooeW91cnMgdGVuZCB0
byBiZSBtb3JlIHZlcmJvc2UgOy0pLCBob2xsZXIuCgpUaGFua3MKCk1hdHRoaWFzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
