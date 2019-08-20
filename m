Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3368C966E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J+05gWov1eMLU+cyDu24540+KXzYWOguuJ7LDABFfDA=; b=ZzwjNAEjBiMX5ilbH5ScL+Yh1g
	C8cXUd3lRISmHqw9WPGrLaNkfAEa7gdmUP4pLSk3R2Gq2bpLX3lfCEAeCHVtztIuV0Fnvs+iaULGx
	fhxS6Ho1slNWy85Bun9hHZpzxv5CMq5uRxEE7x0MH7tp9FwIpnP8gO4vCAmqWbZ+ULw8fXG02DF7a
	KqOjpI4v0M3fOCxFPzn3M4/0jQtVDht81D/hQT+RUvcEZ1O2N1lZle4U0A4HnsJF9HB29KMal8cDM
	MONnq+TlZ52TsFcoKxrSYC7uq4U7Np0PMbsyhPwgzUOSuq2YDHzG6nWqt64P6FlkXZAJNfRBIqxGB
	r4Xg1LiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07Ro-0000rV-NK; Tue, 20 Aug 2019 16:57:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i07Rf-0000me-2U
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:57:20 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92119230F2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 16:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566320238;
 bh=XXjiYxQkert7CQKwnQYwS/DJ9k/U3UTDnEKYjjCX/3Q=;
 h=References:In-Reply-To:From:Date:Subject:To:From;
 b=2jX2Ag8APIFwCLyU4kAtKBfXXb5lV2endNabWcuWxLvWLoywws5J1NWZ3jhvOolz1
 21Gyotmv1EcMF9cr0YZwBagfs2iDSHfxsTScMZfVVdQ13/8sSyk2/8nrJPCz54HUIF
 Ggt4fV6axtAZrFH7DH3IG0RL35pbuGbZLHiApFbY=
Received: by mail-qt1-f179.google.com with SMTP id e8so6801619qtp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 09:57:18 -0700 (PDT)
X-Gm-Message-State: APjAAAXJKrmkrF3AilcO05YRsfXtsmfynaJfl8gorhBr00QhpqSCMtBB
 oeIBB/GMKjo8vTMpZGSTqH37XLePGPeKhik4wg==
X-Google-Smtp-Source: APXvYqyXzp+QqhlPh4ms6hvrPcB1uD6IRBalVujsZrtIEmK/kh6+PbQH7E0GTYlHODGJjOvZfk0fqz3SyXtNfugq1Q4=
X-Received: by 2002:ac8:386f:: with SMTP id r44mr27730593qtb.300.1566320237772; 
 Tue, 20 Aug 2019 09:57:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190820145343.29108-1-megous@megous.com>
 <20190820145343.29108-3-megous@megous.com>
 <CAL_JsqLHeA6A_+ZgmCzC42Y6yJrEq6+D3vKn8ETh2D7LJ+1_-g@mail.gmail.com>
 <20190820163433.sr4lvjxmmhjtbtcb@core.my.home>
In-Reply-To: <20190820163433.sr4lvjxmmhjtbtcb@core.my.home>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 20 Aug 2019 11:57:06 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJHNL91KMAP5ya97eiyTypGniCJ+tbP=NchPJK502i5FQ@mail.gmail.com>
Message-ID: <CAL_JsqJHNL91KMAP5ya97eiyTypGniCJ+tbP=NchPJK502i5FQ@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: net: sun8i-a83t-emac: Add phy-io-supply
 property
To: Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_095719_158828_A57AE9F1 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMTE6MzQgQU0gT25kxZllaiBKaXJtYW4gPG1lZ291c0Bt
ZWdvdXMuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgQXVnIDIwLCAyMDE5IGF0IDExOjIwOjIyQU0g
LTA1MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4gT24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgOTo1
MyBBTSA8bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBGcm9tOiBPbmRyZWog
SmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+ID4KPiA+ID4gU29tZSBQSFlzIHJlcXVpcmUg
c2VwYXJhdGUgcG93ZXIgc3VwcGx5IGZvciBJL08gcGlucyBpbiBzb21lIG1vZGVzCj4gPiA+IG9m
IG9wZXJhdGlvbi4gQWRkIHBoeS1pby1zdXBwbHkgcHJvcGVydHksIHRvIGFsbG93IGVuYWJsaW5n
IHRoaXMKPiA+ID4gcG93ZXIgc3VwcGx5Lgo+ID4KPiA+IFBlcmhhcHMgc2luY2UgdGhpcyBpcyBu
ZXcsIHN1Y2ggcGh5cyBzaG91bGQgaGF2ZSAqLXN1cHBseSBpbiB0aGVpciBub2Rlcy4KPgo+IFll
cywgSSBqdXN0IGRvbid0IHVuZGVyc3RhbmQsIHNpbmNlIGV4dGVybmFsIGV0aGVybmV0IHBoeXMg
YXJlIHNvIGNvbW1vbiwKPiBhbmQgdGhleSByZXF1aXJlIHBvd2VyLCBob3cgdGhlcmUncyBubyBm
YWlybHkgZ2VuZXJpYyBtZWNoYW5pc20gZm9yIHRoaXMKPiBhbHJlYWR5IGluIHRoZSBQSFkgc3Vi
c3lzdGVtLCBvciBzb21ld2hlcmU/CgpCZWNhdXNlIGdlbmVyaWMgbWVjaGFuaXNtcyBmb3IgdGhp
cyBkb24ndCB3b3JrLiBGb3IgZXhhbXBsZSwgd2hhdApoYXBwZW5zIHdoZW4gdGhlIDIgc3VwcGxp
ZXMgbmVlZCB0byBiZSB0dXJuZWQgb24gaW4gYSBjZXJ0YWluIG9yZGVyCmFuZCB3aXRoIGNlcnRh
aW4gdGltaW5ncz8gQW5kIHRoZW4gYWRkIGluIHJlc2V0IG9yIGNvbnRyb2wgbGluZXMgaW50bwp0
aGUgbWl4Li4uIFlvdSBjYW4gc2VlIGluIHRoZSBiaW5kaW5ncyB3ZSBhbHJlYWR5IGhhdmUgc29t
ZSBvZiB0aGF0LgoKPiBJdCBsb29rcyBsaWtlIG90aGVyIGV0aGVybmV0IG1hYyBkcml2ZXJzIGFs
c28gaW1wbGVtZW50IHN1cHBsaWVzIG9uIHBoeXMKPiBvbiB0aGUgRU1BQyBub2Rlcy4gSnVzdCBn
cmVwIHBoeS1zdXBwbHkgdGhyb3VnaCBkdC1iaW5kaW5ncy9uZXQuCj4KPiBIaXN0b3JpY2FsIHJl
YXNvbnMsIG9yIGFtIEkgbWlzc2luZyBzb21ldGhpbmc/IEl0IGFsbW9zdCBzZWVtcyBsaWtlIEkg
bXVzdAo+IGJlIG1pc3Npbmcgc29tZXRoaW5nLCBzaW5jZSBwdXR0aW5nIHRoZXNlIHByb3BlcnRp
ZXMgdG8gcGh5IG5vZGVzCj4gc2VlbXMgc28gb2J2aW91cy4KClRoaW5ncyBnZXQgYWRkZWQgb25l
IGJ5IG9uZSBhbmQgb25lIG5ldyBwcm9wZXJ0eSBpc24ndCB0aGF0CmNvbnRyb3ZlcnNpYWwuIFdl
J3ZlIGdlbmVyYWxseSBsZWFybmVkIHRoZSBsZXNzb24gYW5kIGF2b2lkIHRoaXMKcGF0dGVybiBu
b3csIGJ1dCBldGhlcm5ldCBwaHlzIGFyZSBvbmUgb2YgdGhlIG9sZGVyIGJpbmRpbmdzLgoKUm9i
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
