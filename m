Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E84B7964
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlabCGTiS5HB57BrkIypc1nShyDTni21OS6kPooD+ak=; b=SXxRNwKw5XdhLX
	80Ix0qjPElmn0Y302fPw8GxoLwme2DslEeidl7Do4e7cr+6auEA0nOAVGdgOTbWLDvEkRUOmyzLdw
	oscj8tcqW7rgJEulre+gj3ozGm/6lOQAR6bdFeQIv9Pa9Luxl1sfYZi+Y7nE44DKbNJQRY6/oG5d6
	uGF3c5X45UUA4UMITl8ClwGNpIHXzAfvjtLYB+OsLmqq9BuUBWQ/tvPjSPWkwCJXpHnBVxBaFqmX3
	feZu+qbnUQF0Qvcax3aKrY8sIYbm45otREowyQTbeMk8ef9ZLTYzA0F/v94F6z9QOfZNbBjGq5VS1
	v4wwZSo58MTbQkihUH8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvXQ-0002JF-Pf; Thu, 19 Sep 2019 12:27:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvWx-0002HI-No
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 12:27:29 +0000
Received: by mail-lj1-x243.google.com with SMTP id e17so3337295ljf.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 05:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ha8X1gKXM2OgP5GKW2tjKlU9Tsz3Jx+NT2gwBoAbABE=;
 b=cwwo/KcykJf98xSlrAY+vAVmmGvDO8Bn9SEgV585oayTN2l3r/qlG2aC7vKu/9HUN5
 rGD74FkjjOIILRuNlG1XLOumz0vYsdmWS6ORX7YXEP8pCc7ICYYeR3LGluvP4UWCITSg
 oVhc90ug2H7xKd2EuIaid23fT365NZd3hQfiJgUFXQsVhNsAJEnfgfs23pRtXTjilfmX
 xcEOoIwA9s/nn616bxCmWfpRU7VFXAqhWKrklmCqUisBDsgBG0pdLYkuKpAMf9YM2WcJ
 9pyhJiUtKKhyFCB+wHDLzpvvN0gcgF9ISsGbj7OmhZg/01dKL0hXhgAVpsFhTqcZZ+Zn
 iZbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ha8X1gKXM2OgP5GKW2tjKlU9Tsz3Jx+NT2gwBoAbABE=;
 b=MBCqv9R5rZukiEknTrGNn1svgz2WnLeldAg4GA0tatRVSJqOGtrrUQuNT86tHfpay7
 Nuiq8NFzJJ27O5bKSPzvdn7uJd1m0fq8hQ8MDPr1kXfBxSiYotQJGQ/5a9eKrvLvwomd
 /hdQ6SkDFKH7Kc/278Cai3KSUXkqVyGhqPPW4yW3RasLTgHrmKEkcEga3fItKYQ5Yz50
 Jb+NL/FwP5YiEqRRw41NE68bio+VNp9yvDz5qPg/2s/3PYcSm/6cTnX+Cb/08NqdT5v2
 o6oUs0PZfvsK94DMoYKH+rltt7W2BKv8e8vfg06OijNyduQEjuo47iP2oCLgCJ1ytkGp
 +5zA==
X-Gm-Message-State: APjAAAX0pFjvUp1PlSP0WAzAIpdDNMJgk1HLyhwIM2mVUWJseMMojW8L
 lWrjk9uzdB0F3jbfGa1ejCk7/pO6ZApK+wC9Cq+PEQ==
X-Google-Smtp-Source: APXvYqxFLG5Rrlb4Yn4UZ9AF1znVYz0eTF1PaF1sJEcTRVYqMZm1CPPuMjs37H9GlpwvU6XSY5dmjKfCXH+ybaEQkrk=
X-Received: by 2002:a2e:9a0c:: with SMTP id o12mr1336490lji.204.1568896045516; 
 Thu, 19 Sep 2019 05:27:25 -0700 (PDT)
MIME-Version: 1.0
References: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
 <d5100b2d-46c4-5811-8274-8b06710d2594@arm.com>
 <20190830145501.zadfv2ffuu7j46ft@e107158-lin.cambridge.arm.com>
 <1567689999.2389.5.camel@mtkswgap22>
 <CAKfTPtC3txstND=6YkWBJ16i06cQ7xueUpD5j-j-UfuSf0-z-g@mail.gmail.com>
 <1568892135.4892.10.camel@mtkswgap22>
In-Reply-To: <1568892135.4892.10.camel@mtkswgap22>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 19 Sep 2019 14:27:13 +0200
Message-ID: <CAKfTPtCuWrpW_o6r5cmGhLf_84PFHJhBk0pJ3fcbU_YgcBnTkQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] sched/rt: avoid contend with CFS task
To: Jing-Ting Wu <jing-ting.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_052727_777363_6CFCC6B7 
X-CRM114-Status: GOOD (  44.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: wsd_upstream@mediatek.com, Peter Zijlstra <peterz@infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Qais Yousef <qais.yousef@arm.com>, LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxOSBTZXAgMjAxOSBhdCAxMzoyMiwgSmluZy1UaW5nIFd1IDxqaW5nLXRpbmcud3VA
bWVkaWF0ZWsuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgMjAxOS0wOS0wNSBhdCAxNjowMSArMDIw
MCwgVmluY2VudCBHdWl0dG90IHdyb3RlOgo+ID4gSGkgSmluZy1UaW5nLAo+ID4KPiA+IE9uIFRo
dSwgNSBTZXAgMjAxOSBhdCAxNToyNiwgSmluZy1UaW5nIFd1IDxqaW5nLXRpbmcud3VAbWVkaWF0
ZWsuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gRnJpLCAyMDE5LTA4LTMwIGF0IDE1OjU1ICsw
MTAwLCBRYWlzIFlvdXNlZiB3cm90ZToKPiA+ID4gPiBPbiAwOC8yOS8xOSAxMTozOCwgVmFsZW50
aW4gU2NobmVpZGVyIHdyb3RlOgo+ID4gPiA+ID4gT24gMjkvMDgvMjAxOSAwNDoxNSwgSmluZy1U
aW5nIFd1IHdyb3RlOgo+ID4gPiA+ID4gPiBBdCBvcmlnaW5hbCBsaW51eCBkZXNpZ24sIFJUICYg
Q0ZTIHNjaGVkdWxlciBhcmUgaW5kZXBlbmRlbnQuCj4gPiA+ID4gPiA+IEN1cnJlbnQgUlQgdGFz
ayBwbGFjZW1lbnQgcG9saWN5IHdpbGwgc2VsZWN0IHRoZSBmaXJzdCBjcHUgaW4KPiA+ID4gPiA+
ID4gbG93ZXN0X21hc2ssIGV2ZW4gaWYgdGhlIGZpcnN0IENQVSBpcyBydW5uaW5nIGEgQ0ZTIHRh
c2suCj4gPiA+ID4gPiA+IFRoaXMgbWF5IHB1dCBSVCB0YXNrIHRvIGEgcnVubmluZyBjcHUgYW5k
IGxldCBDRlMgdGFzayBydW5uYWJsZS4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gU28gd2Ugc2Vs
ZWN0IGlkbGUgY3B1IGluIGxvd2VzdF9tYXNrIGZpcnN0IHRvIGF2b2lkIHByZWVtcHRpbmcKPiA+
ID4gPiA+ID4gQ0ZTIHRhc2suCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gUmVnYXJk
aW5nIHRoZSBSVCAmIENGUyB0aGluZywgdGhhdCdzIHdvcmtpbmcgYXMgaW50ZW5kZWQuIFJUIGlz
IGEgd2hvbGUKPiA+ID4gPiA+IGNsYXNzIGFib3ZlIENGUywgaXQgc2hvdWxkbid0IGhhdmUgdG8g
d29ycnkgYWJvdXQgQ0ZTLgo+ID4gPiA+ID4KPiA+ID4gPiA+IE9uIHRoZSBvdGhlciBzaWRlIG9m
IHRoaW5ncywgQ0ZTIGRvZXMgd29ycnkgYWJvdXQgUlQuIFdlIGhhdmUgdGhlIGNvbmNlcHQKPiA+
ID4gPiA+IG9mIFJULXByZXNzdXJlIGluIHRoZSBDRlMgc2NoZWR1bGVyLCB3aGVyZSBSVCB0YXNr
cyB3aWxsIHJlZHVjZSBhIENQVSdzCj4gPiA+ID4gPiBjYXBhY2l0eSAoc2VlIGZhaXIuYzo6c2Nh
bGVfcnRfY2FwYWNpdHkoKSkuCj4gPiA+ID4gPgo+ID4gPiA+ID4gQ1BVIGNhcGFjaXR5IGlzIGxv
b2tlZCBhdCBvbiBDRlMgd2FrZXVwIChzZWUgd2FrZV9jYXAoKSBhbmQKPiA+ID4gPiA+IGZpbmRf
aWRsZXN0X2NwdSgpKSwgYW5kIHRoZSBwZXJpb2RpYyBsb2FkIGJhbGFuY2VyIHRyaWVzIHRvIHNw
cmVhZCBsb2FkCj4gPiA+ID4gPiBvdmVyIGNhcGFjaXR5LCBzbyBpdCdsbCB0ZW5kIHRvIHB1dCBs
ZXNzIHRoaW5ncyBvbiBDUFVzIHRoYXQgYXJlIGFsc28KPiA+ID4gPiA+IHJ1bm5pbmcgUlQgdGFz
a3MuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSWYgUlQgd2VyZSB0byBzdGFydCBhdm9pZGluZyBycXMg
d2l0aCBDRlMgdGFza3MsIHdlJ2QgZW5kIHVwIHdpdGggYSBuYXN0eQo+ID4gPiA+ID4gc2l0dWF0
aW9uIHdlcmUgYm90aCBhcmUgYXZvaWRpbmcgZWFjaCBvdGhlci4gSXQncyBldmVuIG1vcmUgc3Ry
aWtpbmcgd2hlbgo+ID4gPiA+ID4geW91IHNlZSB0aGF0IFJUIHByZXNzdXJlIGlzIGRvbmUgd2l0
aCBhIHJxLXdpZGUgUlQgdXRpbF9hdmcsIHdoaWNoCj4gPiA+ID4gPiAqZG9lc24ndCogZ2V0IG1p
Z3JhdGVkIHdoZW4gYSBSVCB0YXNrIG1pZ3JhdGVzLiBTbyBpZiB5b3UgZGVjaWRlIHRvIG1vdmUK
PiA+ID4gPiA+IGEgUlQgdGFzayB0byBhbiBpZGxlIENQVSAiQiIgYmVjYXVzZSBDUFUgIkEiIGhh
ZCBydW5uYWJsZSBDRlMgdGFza3MsIHRoZQo+ID4gPiA+ID4gQ0ZTIHNjaGVkdWxlciB3aWxsIGtl
ZXAgc2VlaW5nIENQVSAiQiIgYXMgbm90IHNpZ25pZmljYW50bHkgUlQtcHJlc3N1cmVkCj4gPiA+
ID4gPiB3aGlsZSB0aGF0IHV0aWxfYXZnIHNpZ25hbCByYW1wcyB1cCwgd2hlcmVhcyBpdCB3b3Vs
ZCBjb3JyZWN0bHkgc2VlIENQVQo+ID4gPiA+ID4gIkEiIGFzIFJULXByZXNzdXJlZCBpZiB0aGUg
UlQgdGFzayBwcmV2aW91c2x5IHJhbiB0aGVyZS4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBTbyBvdmVy
YWxsIEkgdGhpbmsgdGhpcyBpcyB0aGUgd3JvbmcgYXBwcm9hY2guCj4gPiA+ID4KPiA+ID4gPiBJ
IGxpa2UgdGhlIGlkZWEsIGJ1dCB5ZWFoIHRlbmQgdG8gYWdyZWUgdGhlIGN1cnJlbnQgYXBwcm9h
Y2ggbWlnaHQgbm90IGJlCj4gPiA+ID4gZW5vdWdoLgo+ID4gPiA+Cj4gPiA+ID4gSSB0aGluayB0
aGUgbWFqb3IgcHJvYmxlbSBoZXJlIGlzIHRoYXQgb24gZ2VuZXJpYyBzeXN0ZW1zIHdoZXJlIENG
UyBpcyBhIGZpcnN0Cj4gPiA+ID4gY2xhc3MgY2l0aXplbiwgUlQgdGFza3MgY2FuIGJlIGhvc3Rp
bGUgdG8gdGhlbSAtIG5vdCBhbHdheXMgbmVjZXNzYXJpbHkgZm9yIGEKPiA+ID4gPiBnb29kIHJl
YXNvbi4KPiA+ID4gPgo+ID4gPiA+IFRvIGZ1cnRoZXIgY29tcGxpY2F0ZSB0aGUgbWF0dGVyLCBl
dmVuIGFtb25nIENGUyB0YXNrcyB3ZSBjYW4ndCB0ZWxsIHdoaWNoIGFyZQo+ID4gPiA+IG1vcmUg
aW1wb3J0YW50IHRoYW4gdGhlIG90aGVycyAtIHRob3VnaCBob3BlZnVsbHkgbGF0ZW5jeS1uaWNl
IHByb3Bvc2FsIHdpbGwKPiA+ID4gPiBtYWtlIHRoZSBzaXR1YXRpb24gYmV0dGVyLgo+ID4gPiA+
Cj4gPiA+ID4gU28gSSBhZ3JlZSB3ZSBoYXZlIGEgcHJvYmxlbSBoZXJlLCBidXQgSSB0aGluayB0
aGlzIHBhdGNoIGlzIGp1c3QgYSB0ZW1wb3JhcnkKPiA+ID4gPiBiYW5kIGFpZCBhbmQgd2UgbmVl
ZCB0byBkbyBiZXR0ZXIuIFRob3VnaCBJIGhhdmUgbm8gY29uY3JldGUgc3VnZ2VzdGlvbiB5ZXQg
b24KPiA+ID4gPiBob3cgdG8gZG8gdGhhdC4KPiA+ID4gPgo+ID4gPiA+IEFub3RoZXIgdGhpbmcg
SSBjb3VsZG4ndCBxdWFudGlmeSB5ZXQgaG93IGNvbW1vbiBhbmQgaG93IHNldmVyZSB0aGlzIHBy
b2JsZW0gaXMKPiA+ID4gPiB5ZXQuIEppbmctVGluZywgaWYgeW91IGNhbiBzaGFyZSB0aGUgZGV0
YWlscyBvZiB5b3VyIHVzZSBjYXNlIHRoYXQnZCBiZSBncmVhdC4KPiA+ID4gPgo+ID4gPiA+IENo
ZWVycwo+ID4gPiA+Cj4gPiA+ID4gLS0KPiA+ID4gPiBRYWlzIFlvdXNlZgo+ID4gPgo+ID4gPgo+
ID4gPiBJIGFncmVlIHRoYXQgdGhlIG5hc3R5IHNpdHVhdGlvbiB3aWxsIGhhcHBlbi5UaGUgY3Vy
cmVudCBhcHByb2FjaCBhbmQgdGhpcyBwYXRjaCBtaWdodCBub3QgYmUgZW5vdWdoLgo+ID4KPiA+
IFJUIHRhc2sgc2hvdWxkIG5vdCBoYXJtIGl0cyBjYWNoZSBob3RuZXNzIGFuZCByZXNwb25zaXZl
bmVzcyBmb3IgdGhlCj4gPiBiZW5lZml0IG9mIGEgQ0ZTIHRhc2sKPiA+Cj4KPiBZZXMsIGl04oCZ
cyBhIGdvb2QgcG9pbnQgdG8gYm90aCBjb25zaWRlciBjYWNoZSBob3RuZXNzLiBXZSBoYXZlIHJl
dmlzZWQKPiB0aGUgaW1wbGVtZW50YXRpb24gdG8gc2VsZWN0IGEgYmV0dGVyIGlkbGUgQ1BVIGlu
IHRoZSBzYW1lIHNjaGVkX2RvbWFpbgo+IG9mIHByZXZfY3B1ICh3aXRoIHRoZSBzYW1lIGNhY2hl
IGhvdG5lc3MpIHdoZW4gdGhlIFJUIHRhc2sgd2FrZXVwLgo+Cj4gSSBtb2RpZnkgdGhlIGNvZGUg
b2YgZmluZF9sb3dlc3RfcnEgYXMgZm9sbG93aW5nOgo+IEBAIC0xNjQ4LDYgKzE2MjksOSBAQCBz
dGF0aWMgaW50IGZpbmRfbG93ZXN0X3JxKHN0cnVjdCB0YXNrX3N0cnVjdAo+ICp0YXNrKQo+ICAg
ICAgICAgc3RydWN0IGNwdW1hc2sgKmxvd2VzdF9tYXNrID0KPiB0aGlzX2NwdV9jcHVtYXNrX3Zh
cl9wdHIobG9jYWxfY3B1X21hc2spOwo+ICAgICAgICAgaW50IHRoaXNfY3B1ID0gc21wX3Byb2Nl
c3Nvcl9pZCgpOwo+ICAgICAgICAgaW50IGNwdSAgICAgID0gdGFza19jcHUodGFzayk7Cj4gKyAg
ICAgICBpbnQgaTsKPiArICAgICAgIHN0cnVjdCBycSAqcHJldl9ycSA9IGNwdV9ycShjcHUpOwo+
ICsgICAgICAgc3RydWN0IHNjaGVkX2RvbWFpbiAqcHJldl9zZDsKPgo+ICAgICAgICAgLyogTWFr
ZSBzdXJlIHRoZSBtYXNrIGlzIGluaXRpYWxpemVkIGZpcnN0ICovCj4gICAgICAgICBpZiAodW5s
aWtlbHkoIWxvd2VzdF9tYXNrKSkKPiBAQCAtMTY1OSw2ICsxNjQzLDI0IEBAIHN0YXRpYyBpbnQg
ZmluZF9sb3dlc3RfcnEoc3RydWN0IHRhc2tfc3RydWN0Cj4gKnRhc2spCj4gICAgICAgICBpZiAo
IWNwdXByaV9maW5kKCZ0YXNrX3JxKHRhc2spLT5yZC0+Y3B1cHJpLCB0YXNrLCBsb3dlc3RfbWFz
aykpCj4gICAgICAgICAgICAgICAgIHJldHVybiAtMTsgLyogTm8gdGFyZ2V0cyBmb3VuZCAqLwo+
Cj4gKyAgICAgICAvKiBDaG9vc2UgcHJldmlvdXMgY3B1IGlmIGl0IGlzIGlkbGUgYW5kIGl0IGZp
dHMgbG93ZXN0X21hc2sgKi8KPiArICAgICAgIGlmIChjcHVtYXNrX3Rlc3RfY3B1KGNwdSwgbG93
ZXN0X21hc2spICYmIGlkbGVfY3B1KGNwdSkpCj4gKyAgICAgICAgICAgICAgIHJldHVybiBjcHU7
Cj4gKwo+ICsgICAgICAgcmN1X3JlYWRfbG9jaygpOwo+ICsgICAgICAgcHJldl9zZCA9IHJjdV9k
ZXJlZmVyZW5jZShwcmV2X3JxLT5zZCk7Cj4gKwo+ICsgICAgICAgaWYgKHByZXZfc2QpIHsKPiAr
ICAgICAgICAgICAgICAgLyogQ2hvb3NlIGlkbGVfY3B1IGFtb25nIGxvd2VzdF9tYXNrIGFuZCBp
dCBpcyBjbG9zZXN0Cj4gdG8gb3VyIGhvdCBjYWNoZSBkYXRhICovCj4gKyAgICAgICAgICAgICAg
IGZvcl9lYWNoX2NwdShpLCBsb3dlc3RfbWFzaykgewo+ICsgICAgICAgICAgICAgICAgICAgICAg
IGlmIChpZGxlX2NwdShpKSAmJiBjcHVtYXNrX3Rlc3RfY3B1KGksCj4gc2NoZWRfZG9tYWluX3Nw
YW4ocHJldl9zZCkpKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByY3VfcmVh
ZF91bmxvY2soKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBpOwo+
ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgfQo+ICsgICAgICAg
fQo+ICsgICAgICAgcmN1X3JlYWRfdW5sb2NrKCk7Cj4gKwo+ICAgICAgICAgLyoKPiAgICAgICAg
ICAqIEF0IHRoaXMgcG9pbnQgd2UgaGF2ZSBidWlsdCBhIG1hc2sgb2YgQ1BVcyByZXByZXNlbnRp
bmcgdGhlCj4gICAgICAgICAgKiBsb3dlc3QgcHJpb3JpdHkgdGFza3MgaW4gdGhlIHN5c3RlbS4g
IE5vdyB3ZSB3YW50IHRvIGVsZWN0Cj4KPgo+Cj4gPiA+IEJ1dCBmb3IgcmVxdWlyZW1lbnQgb2Yg
cGVyZm9ybWFuY2UsIEkgdGhpbmsgaXQgaXMgYmV0dGVyIHRvIGRpZmZlcmVudGlhdGUgYmV0d2Vl
biBpZGxlIENQVSBhbmQgQ1BVIGhhcyBDRlMgdGFzay4KPiA+ID4KPiA+ID4gRm9yIGV4YW1wbGUs
IHdlIHVzZSBydC1hcHAgdG8gZXZhbHVhdGUgcnVubmFibGUgdGltZSBvbiBub24tcGF0Y2hlZCBl
bnZpcm9ubWVudC4KPiA+ID4gVGhlcmUgYXJlIChOUl9DUFVTLTEpIGhlYXZ5IENGUyB0YXNrcyBh
bmQgMSBSVCBUYXNrLiBXaGVuIGEgQ0ZTIHRhc2sgaXMgcnVubmluZywgdGhlIFJUIHRhc2sgd2Fr
ZXMgdXAgYW5kIGNob29zZSB0aGUgc2FtZSBDUFUuCj4gPiA+IFRoZSBDRlMgdGFzayB3aWxsIGJl
IHByZWVtcHRlZCBhbmQga2VlcCBydW5uYWJsZSB1bnRpbCBpdCBpcyBtaWdyYXRlZCB0byBhbm90
aGVyIGNwdSBieSBsb2FkIGJhbGFuY2UuCj4gPiA+IEJ1dCBsb2FkIGJhbGFuY2UgaXMgbm90IHRy
aWdnZXJlZCBpbW1lZGlhdGVseSwgaXQgd2lsbCBiZSB0cmlnZ2VyZWQgdW50aWwgdGltZXIgdGlj
ayBoaXRzIHdpdGggc29tZSBjb25kaXRpb24gc2F0aXNmaWVkKGV4LiBycS0+bmV4dF9iYWxhbmNl
KS4KPiA+Cj4gPiBZZXMgeW91IHdpbGwgaGF2ZSB0byB3YWl0IGZvciB0aGUgbmV4dCB0aWNrIHRo
YXQgd2lsbCB0cmlnZ2VyIGFuIGlkbGUKPiA+IGxvYWQgYmFsYW5jZSBiZWNhdXNlIHlvdSBoYXZl
IGFuIGlkbGUgY3B1IGFuZCAyIHJ1bm5hYmxlIHRhY2sgKDEgUlQgKwo+ID4gMUNGUykgb24gdGhl
IHNhbWUgQ1BVLiBCdXQgeW91IHNob3VsZCBub3Qgd2FpdCBmb3IgbW9yZSB0aGFuICAxIHRpY2sK
PiA+Cj4gPiBUaGUgY3VycmVudCBsb2FkX2JhbGFuY2UgZG9lc24ndCBoYW5kbGUgY29ycmVjdGx5
IHRoZSBzaXR1YXRpb24gb2YgMQo+ID4gQ0ZTIGFuZCAxIFJUIHRhc2sgb24gc2FtZSBDUFUgd2hp
bGUgMSBDUFUgaXMgaWRsZS4gVGhlcmUgaXMgYSByZXdvcmsKPiA+IG9mIHRoZSBsb2FkX2JhbGFu
Y2UgdGhhdCBpcyB1bmRlciByZXZpZXcgb24gdGhlIG1haWxpbmcgbGlzdCB0aGF0Cj4gPiBmaXhl
cyB0aGlzIHByb2JsZW0gYW5kIHlvdXIgQ0ZTIHRhc2sgc2hvdWxkIG1pZ3JhdGUgdG8gdGhlIGlk
bGUgQ1BVCj4gPiBmYXN0ZXIgdGhhbiBub3cKPiA+Cj4KPiBQZXJpb2QgbG9hZCBiYWxhbmNlIHNo
b3VsZCBiZSB0cmlnZ2VyZWQgd2hlbiBjdXJyZW50IGppZmZpZXMgaXMgYmVoaW5kCj4gcnEtPm5l
eHRfYmFsYW5jZSwgYnV0IHJxLT5uZXh0X2JhbGFuY2UgaXMgbm90IG9mdGVuIGV4YWN0bHkgdGhl
IHNhbWUKPiB3aXRoIG5leHQgdGljay4KPiBJZiBjcHVfYnVzeSwgaW50ZXJ2YWwgPSBzZC0+YmFs
YW5jZV9pbnRlcnZhbCAqIHNkLT5idXN5X2ZhY3RvciwgYW5kCgpCdXQgaWYgdGhlcmUgaXMgYW4g
aWRsZSBDUFUgb24gdGhlIHN5c3RlbSwgdGhlIG5leHQgaWRsZSBsb2FkIGJhbGFuY2UKc2hvdWxk
IGFwcGx5IHNob3J0bHkgYmVjYXVzZSB0aGUgYnVzeV9mYWN0b3IgaXMgbm90IHVzZWQgZm9yIHRo
aXMgQ1BVCndoaWNoIGlzICBub3QgYnVzeS4KSW4gdGhpcyBjYXNlLCB0aGUgbmV4dF9iYWxhbmNl
IGludGVydmFsIGlzIHNkX3dlaWdodCB3aGljaCBpcyBwcm9iYWJseQo0bXMgYXQgY2x1c3RlciBs
ZXZlbCBhbmQgOG1zIGF0IHN5c3RlbSBsZXZlbCBpbiB5b3VyIGNhc2UuIFRoaXMgbWVhbnMKYmV0
d2VlbiAxIGFuZCAyIHRpY2tzCgpsb25nZXIgaW50ZXJ2YWwgbWVhbnMgdGhhdCA6Ci1hbGwgY3B1
IGFyZSBidXN5LAotdGhlIGNwdSBoYXMgdHJpZ2dlciBhbiBhbGxfcGlubmVkIGNhc2UKLXRoZSBp
ZGxlIGxvYWQgYmFsYW5jZSBmYWlscyB0byBtaWdyYXRlIHRoZSB0YXNrLiBBbmQgdGhpcyBpcyBw
cm9iYWJseQp0aGUgeW91ciBjYXNlLiBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsv
cGF0Y2gvMTEyOTExNy8gc2hvdWxkCnJlZHVjZSB0aW1lIGJlZm9yZSBtaWdyYXRpbmcgdGhlIENG
UyB0YXNrIHRvIDEtMiB0aWNrcwoKPiBpbnRlcnZhbCBpcyBjbGFtcGVkIGJ5IDEgdG8gbWF4X2xv
YWRfYmFsYW5jZV9pbnRlcnZhbC4KPiBCeSBleHBlcmltZW50LCBpbiBhIHN5c3RlbSB3aXRoIEha
PTI1MCwgYXZhaWxhYmxlX2NwdXMgPSA4LCB0aGUKPiBtYXhfbG9hZF9iYWxhbmNlX2ludGVydmFs
ID0gSFogKiBhdmFpbGFibGVfY3B1cyAvIDEwID0gMjUwICogOCAvIDEwID0KPiAyMDAgamlmZmll
cywKPiBJdCB3b3VsZCBsZXQgcnEtPm5leHRfYmFsYW5jZSA9IHNkLT5sYXN0X2JhbGFuY2UgKyBp
bnRlcnZhbCwgdGhlIG1heGltdW0KPiBpbnRlcnZhbCA9IDIwMCBqaWZmaWVzLCByZXN1bHQgaW4g
bW9yZSB0aGFuIDEgc2NoZWQtdGljayB0byBtaWdyYXRlIGEKPiBDRlMgdGFzay4KPgo+Cj4KPiA+
ID4gQ0ZTIHRhc2tzIG1heSBiZSBydW5uYWJsZSBmb3IgYSBsb25nIHRpbWUuIEluIHRoaXMgdGVz
dCBjYXNlLCBpdCBpbmNyZWFzZSAzMzIuMDkxIG1zIHJ1bm5hYmxlIHRpbWUgZm9yIENGUyB0YXNr
Lgo+ID4gPgo+ID4gPiBUaGUgZGV0YWlsZWQgbG9nIGlzIHNob3duIGFzIGZvbGxvd2luZywgQ0ZT
IHRhc2sodGhyZWFkMS02NTgwKSBpcyBwcmVlbXB0ZWQgYnkgUlQgdGFzayh0aHJlYWQwLTY2NzQp
IGFib3V0IDMzMm1zOgo+ID4KPiA+IDMzMm1zIGlzIHF1aXRlIGxvbmcgYW5kIGlzIHByb2JhYmx5
IG5vdCBhbiBpZGxlIGxvYWQgYmxhbmFjZSBidXQgYQo+ID4gYnVzeSBsb2FkIGJhbGFuY2UKPiA+
Cj4gPiA+IHRocmVhZDEtNjU4MCAgWzAwM10gZG5oMiAgICA5NC40NTI4OTg6IHNjaGVkX3dha2V1
cDogY29tbT10aHJlYWQwIHBpZD02Njc0IHByaW89ODkgdGFyZ2V0X2NwdT0wMDMKPiA+ID4gdGhy
ZWFkMS02NTgwICBbMDAzXSBkLi4yICAgIDk0LjQ1MjkxNjogc2NoZWRfc3dpdGNoOiBwcmV2X2Nv
bW09dGhyZWFkMSBwcmV2X3BpZD02NTgwIHByZXZfcHJpbz0xMjAgcHJldl9zdGF0ZT1SID09PiBu
ZXh0X2NvbW09dGhyZWFkMCBuZXh0X3BpZD02Njc0IG5leHRfcHJpbz04OQo+ID4gPiAuLi4uIDMz
Mi4wOTFtcwo+ID4gPiBrcnRhdG0tMTkzMCAgWzAwMV0gZC4uMiAgICA5NC43ODUwMDc6IHNjaGVk
X21pZ3JhdGVfdGFzazogY29tbT10aHJlYWQxIHBpZD02NTgwIHByaW89MTIwIG9yaWdfY3B1PTMg
ZGVzdF9jcHU9MQo+ID4gPiBrcnRhdG0tMTkzMCAgWzAwMV0gZC4uMiAgICA5NC43ODUwMjA6IHNj
aGVkX3N3aXRjaDogcHJldl9jb21tPWtydGF0bSBwcmV2X3BpZD0xOTMwIHByZXZfcHJpbz0xMDAg
cHJldl9zdGF0ZT1TID09PiBuZXh0X2NvbW09dGhyZWFkMSBuZXh0X3BpZD02NTgwIG5leHRfcHJp
bz0xMjAKPiA+Cj4gPiB5b3VyIENGUyB0YXNrIGhhcyBub3QgbW92ZWQgb24gdGhlIGlkbGUgQ1BV
IGJ1dCBoYXMgcmVwbGFjZWQgYW5vdGhlciB0YXNrCj4gPgo+Cj4gSSB0aGluayBpdCBpcyBtaW5v
ciBhbmQgcmVhc29uYWJsZSwgYmVjYXVzZSBDUFUxIGhhcyB0cmlnZ2VyZWQgaWRsZQo+IGJhbGFu
Y2UgKHdoZW4ga3J0YXRtIHRhc2sgaXMgdGhlIGxhc3QgdGFzayBsZWF2aW5nIENQVTEpIHRvIHB1
bGwgdGhlCj4gdGhyZWFkMS02NTgwLgoKc28gaXQgd2FzIGEgbmV3bHktaWRsZSBsb2FkX2JhbGFu
Y2Ugbm90IGFuIGlkbGUgbG9hZCBiYWxhbmNlCgo+Cj4KPgo+IEJlc3QgcmVnYXJkcywKPiBKaW5n
LVRpbmcgV3UKPgo+ID4gUmVnYXJkcywKPiA+IFZpbmNlbnQKPiA+ID4KPiA+ID4gU28gSSB0aGlu
ayBjaG9vc2UgaWRsZSBDUFUgYXQgUlQgd2FrZSB1cCBmbG93IGNvdWxkIHJlZHVjZSB0aGUgQ0ZT
IHJ1bm5hYmxlIHRpbWUuCj4gPiA+Cj4gPiA+Cj4gPiA+IEJlc3QgcmVnYXJkcywKPiA+ID4gSmlu
Zy1UaW5nIFd1Cj4gPiA+Cj4gPiA+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
