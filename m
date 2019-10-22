Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC773E0842
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SrQSI+fl8zEQz7QreHhoo/fmqKyKRFxMkoWiKpO2dyA=; b=n3Xk4PLrTpcwxp
	EE2dKj0DhCbFhq+/IbZpkBDu/gUUPZzTsWqQG6GqL2jIHYePGOYIoAR2z00pp80+Hng2P8r0MPJPe
	VKpGH564AKrkrJx7EdeXHXzr7GSqxvy0z52FEqEjcdleBiOcSHPwqCDaoxGeenoLQXW9bW0cs3ZDc
	0yVbYCvrWkeDf22oq0m8Rbi0k88L0Epk7S6xgFn79CMf5HRSv/5rjkzqDyaa4tUAjnur61bmvj8jg
	wZgWJLbuzkzTvt2txjSHWJR0Vwj+AOhFJ+xtD2vyqNo8sFPjRMDuf6nmuP9cyejE6/N0R09GnHU31
	EDjgDqxfe2MJ46B8iqtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwgY-000890-HX; Tue, 22 Oct 2019 16:07:02 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwgN-00087r-UH
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:06:53 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 4304680FA;
 Tue, 22 Oct 2019 16:07:21 +0000 (UTC)
Date: Tue, 22 Oct 2019 09:06:43 -0700
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
Message-ID: <20191022160643.GR5610@atomide.com>
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
 <CAHCN7xL0fbr=Sv+b=0AuGB1PPhAAFdAFLEd_iBM+ZMTkUw5sHQ@mail.gmail.com>
 <CAHCN7xL-Gfxe0qF5w7BUsHnyhcNNpmCnchdKErnmiqggXfsLWw@mail.gmail.com>
 <20190909134033.s26eiurpat3iekse@pali>
 <20190909163543.GQ52127@atomide.com>
 <CAHCN7xJjMNOLT5oPn8CArApM5b2ksPon8eALq=gUi0ZqoLjGHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xJjMNOLT5oPn8CArApM5b2ksPon8eALq=gUi0ZqoLjGHQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_090652_014214_EB40062F 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT4gWzE5MTAyMiAxMjoxM106Cj4gT24gTW9u
LCBTZXAgOSwgMjAxOSBhdCAxMTozNSBBTSBUb255IExpbmRncmVuIDx0b255QGF0b21pZGUuY29t
PiB3cm90ZToKPiA+Cj4gPiAqIFBhbGkgUm9ow6FyIDxwYWxpLnJvaGFyQGdtYWlsLmNvbT4gWzE5
MDkwOSAxMzo0MV06Cj4gPiA+IE9uIE1vbmRheSAwOSBTZXB0ZW1iZXIgMjAxOSAwODozNzowOSBB
ZGFtIEZvcmQgd3JvdGU6Cj4gPiA+ID4gSSBhcHBsaWVkIHRoaXMgb24gNS4zIGFuZCBpdCBpcyB3
b3JraW5nLiAgSSBhc3N1bWUgdGhlIHNhbWUgaXMgdHJ1ZSBpbiBmb3ItbmV4dC4KPiA+Cj4gPiBI
bW0gSSBub3RpY2VkIEkgc3RvcHBlZCBnZXR0aW5nIFJORyBkYXRhIGFmdGVyIHNldmVyYWwgcm1t
b2QgbW9kcHJvYmUKPiA+IGN5Y2xlcywgb3Igc2V2ZXJhbCBoZCAvZGV2L3JhbmRvbSByZWFkcy4g
QW55Ym9keSBlbHNlIHNlZWluZyB0aGF0Pwo+ID4KPiA+ID4gPiBEbyB5b3Ugd2FudCB0byBzdWJt
aXQgYSBmb3JtYWwgcGF0Y2g/ICBJICBjYW4gbWFyayBpdCBhcyAndGVzdGVkLWJ5Jwo+ID4gPiA+
IFRoaXMgcmVhbGx5IGhlbHBzIHNwZWVkIHVwIHRoZSBzdGFydHVwIHNlcXVlbmNlIG9uIGJvYXJk
cyB3aXRoIHNzaGQKPiA+ID4gPiBiZWNhdXNlIGl0IGRlbGF5cyBmb3IgbmVhcmx5IDgwIHNlY29u
ZHMgd2FpdGluZyBmb3IgZW50cm9weSB3aXRob3V0Cj4gPiA+ID4gdGhlIGh3cm5nLgo+ID4gPgo+
ID4gPiBIaSEgV2hlbiBhcHBseWluZyBhIHBhdGNoLCBjb3VsZCB5b3UgcGxlYXNlIGRpc2FibGUg
dGhpcyBybmcgZm9yIG45MDA/Cj4gPiA+Cj4gPiA+IEluIG9tYXAzLW45MDAuZHRzIGZvciBybmcg
c2hvdWxkIGJlIHN0YXR1cyA9ICJkaXNhYmxlZCIgKGFzIFRvbnkgYWxyZWFkeQo+ID4gPiB3cm90
ZSksIHNpbWlsYXJseSBsaWtlIGZvciBhZXMuCj4gPgo+ID4gWWVhaCBJJ2xsIHBvc3QgYSBwcm9w
ZXIgcGF0Y2ggYWZ0ZXIgLXJjMS4KPiAKPiBUb255LAo+IAo+IEkgYW0ganVzdCBmb2xsb3dpbmcg
dXAgb24gdGhpcy4gIFdpdGhvdXQgdGhlIEhXUk5HIHRoZXJlIGFyZSBzb21lCj4gdG9vbHMgYW5k
IGRhZW1vbnMgbGlrZSBzc2hkIHdoaWNoIHdhaXQgYSBsb25nIHRpbWUgYXQgc3RhcnR1cC4gIFRo
ZQo+IHBhdGNoIHlvdSBzZW50IHJlYWxseSBoZWxwcyBzcGVlZCB1cCB0aGUgc3RhcnR1cCB0aW1l
IGluIHRoZXNlIGNhc2VzLgo+IEF0IGxlYXN0IGluIG15IGNhc2UsIGl0IHNoYXZlcyA4MCBzZWNv
bmRzIG9mZiBieSBlbGltaW5hdGluZyB0aGUKPiBkZWxheXMuCj4gCj4gRG8geW91IHRoaW5rIHlv
dSdsbCBoYXZlIHRpbWUgdG8gcG9zdCBhIG1vcmUgZm9ybWFsIHBhdGNoPyAgSWYgbm90LCBJCj4g
Y2FuIGRvIGl0LiAgSSBqdXN0IGRvbid0IGtub3cgd2hpY2ggbWFpbGluZyBsaXN0IGlzIHRoZSBt
b3JlCj4gYXBwcm9wcmlhdGUuICBJIHdhcyBhYmxlIHRvIHZlcml0eSB5b3VyIHBhdGNoIG9uIGEg
RE0zNzMwIGFuZCBPTUFQMzUzMAoKWWVhaCBzb3JyeSBmb3IgdGhlIGRlbGF5cywgSSdsbCBwb3N0
IGl0IHdoZW4gSSBnZXQgYSBjaGFuY2UgdG8Kd29yayBvbiB0aGF0IGFnYWluLiBJIG5lZWQgdG8g
Zmlyc3QgZGVhbCB3aXRoIHRoZSBvdGhlciBwZW5kaW5nCnBhdGNoZXMgZm9yIHY1LjUsIGFuZCB3
ZSd2ZSBoYWQgcXVpdGUgYSBmZXcgZml4ZXMgZm9yIHY1LjQuCgpSZWdhcmRzLAoKVG9ueQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
