Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFE12B91A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 18:31:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0eiRVg5Ji3JR07DWkg0cFscMzgJNgEkxdwHmDnWFvn4=; b=faCZnLbVswwl8E
	sbuaus9RHRwxoyI5h5pltMP/pFr1gzasuttdy4AzK+bFEDOD7ynLXDmCo3P61NBfwFdwAeQ5a6WK4
	b8yY9ByT0QdAsE+6JkpnX/PynoLfNHbyA73o5er33mA6tzBbncCjfV3jicT4jEf0uWfF/HCdVdz7h
	18xblOCLlxtDd+nt+mi0El8JW2qQroiDtF7GhlLVflgXG1wCxFPuxwSWIv3BdfT6ucye+DjZMm2bC
	FlZp6ckQoQkwCEkn+crERbV/2dMtQvs61XtzX5U6lEKu7c6aNZLFPGKkqRn9Qjq8hmhcdpu5Tja02
	0s7pTMfJn+qLLxzjsCKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVIX1-0007mm-A1; Mon, 27 May 2019 16:31:27 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVIWt-0007lh-25
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 16:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558974677; bh=PgG31BRZ0YboCN4Hjpat6/cxg5AdW/qGtpZnBWBtY8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rfFINPjD4GpDg6ug+toV5iJGRG5ZFC22j1ugplppTFWWHoqEYtiBYbA7PepDyAGs+
 3ih1FK3vG6O0TrOGjzm9o9fbos7bq2GrwOLxRO0h+hRgT0iM9CssI/BYu+ZHMYc9Yv
 J9Lmvp+PCdRyTuFpE17Vx78TMSxhqAEpvboSkt/c=
Date: Mon, 27 May 2019 18:31:17 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 00/10] Allwinner A64/H6 IR support
Message-ID: <20190527163117.hpealt6cttqzqdxz@core.my.home>
Mail-Followup-To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
References: <20190526222536.10917-1-peron.clem@gmail.com>
 <20190527134805.j7t4ffstrnhdml47@core.my.home>
 <CAJiuCcdnQa0TArduT4yBbUyd+dOaM0cQ1JcRUQLXLR6s_5e8sA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcdnQa0TArduT4yBbUyd+dOaM0cQ1JcRUQLXLR6s_5e8sA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_093119_452394_D514F9E6 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2zDqW1lbnQsCgpPbiBNb24sIE1heSAyNywgMjAxOSBhdCAwNDo1OTozNVBNICswMjAwLCBD
bMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gSGkgT25kxZllaiwKPiAKPiBPbiBNb24sIDI3IE1heSAy
MDE5IGF0IDE1OjQ4LCBPbmTFmWVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+
ID4KPiA+IEhpIENsw6ltZW50LAo+ID4KPiA+IE9uIE1vbiwgTWF5IDI3LCAyMDE5IGF0IDEyOjI1
OjI2QU0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4gSGksCj4gPiA+Cj4gPiA+
IEE2NCBJUiBzdXBwb3J0IHNlcmllc1sxXSBwb2ludGVkIG91dCB0aGF0IGFuIEEzMSBiaW5kaW5n
cyBzaG91bGQgYmUKPiA+ID4gaW50cm9kdWNlZC4KPiA+ID4KPiA+ID4gVGhpcyBzZXJpZXMgaW50
cm9kdWNlIHRoZSBBMzEgY29tcGF0aWJsZSBiaW5kaW5ncywgdGhlbiBzd2l0Y2ggaXQgb24KPiA+
ID4gdGhlIGFscmVhZHkgZXhpc3RpbmcgYm9hcmQuCj4gPiA+Cj4gPiA+IEZpbmFsbHkgaW50cm9k
dWNlIEE2NCBhbmQgSDYgc3VwcG9ydC4KPiA+Cj4gPiBEb2VzIEg2IHN1cHBvcnQgYWN0dWFsbHkg
d29yaz8gSSBkb24ndCBzZWUgYW55IGRyaXZlciBjaGFuZ2VzIGFuZCBsYXN0IHRpbWUKPiA+IEkg
dHJpZWQgd2l0aCB0aGUgZXhhY3Qgc2FtZSBiaW5kaW5ncywgSSBnb3QgUkNVIHN0YWxscyBzaG9y
dGx5IGFmdGVyIGJvb3QuCj4gCj4gQWN0dWFsbHksIEkgaGF2ZSB0ZXN0ZWQgb25seSBvbiBINiBv
biBteSBCZWVsaW5rIEdTMSB3aXRoIGEgIk5FQyIgcmVtb3RlLgo+IAo+IEkgaGF2ZSBtYW51YWxs
eSB0b2dnbGUgdGhlIHByb3RvY29scyBhbmQgZG8gYSBzaW1wbGUgY2F0IGluIC9kZXYvaW5wdXQv
ZXZlbnQwCj4gIyBlY2hvIG5lYyA+IC9zeXMvY2xhc3MvcmMvcmMwL3Byb3RvY29scwo+ICMgY2F0
IC9kZXYvaW5wdXQvZXZlbnQwIHwgaGV4ZHVtcAo+IDAwMDAwMDAgMDA5MyAwMDAwIDAwMDAgMDAw
MCA4YmZiIDAwMDkgMDAwMCAwMDAwCj4gMDAwMDAxMCAwMDA0IDAwMDQgODAyOCAwMDAwIDAwOTMg
MDAwMCAwMDAwIDAwMDAKPiAwMDAwMDIwIDhiZmIgMDAwOSAwMDAwIDAwMDAgMDAwMCAwMDAwIDAw
MDAgMDAwMAo+IDAwMDAwMzAgMDA5MyAwMDAwIDAwMDAgMDAwMCA1NWJlIDAwMGEgMDAwMCAwMDAw
Cj4gMDAwMDA0MCAwMDA0IDAwMDQgODAyOCAwMDAwIDAwOTMgMDAwMCAwMDAwIDAwMDAKPiAwMDAw
MDUwIDU1YmUgMDAwYSAwMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAwMAo+IDAwMDAwNjAgMDA5
MyAwMDAwIDAwMDAgMDAwMCBmYTQyIDAwMGQgMDAwMCAwMDAwCj4gMDAwMDA3MCAwMDA0IDAwMDQg
ODAyOCAwMDAwIDAwOTMgMDAwMCAwMDAwIDAwMDAKPiAwMDAwMDgwIGZhNDIgMDAwZCAwMDAwIDAw
MDAgMDAwMCAwMDAwIDAwMDAgMDAwMAo+IDAwMDAwOTAgMDA5MyAwMDAwIDAwMDAgMDAwMCBjNDFh
IDAwMGUgMDAwMCAwMDAwCj4gMDAwMDBhMCAwMDA0IDAwMDQgODAyOCAwMDAwIDAwOTMgMDAwMCAw
MDAwIDAwMDAKPiAwMDAwMGIwIGM0MWEgMDAwZSAwMDAwIDAwMDAgMDAwMCAwMDAwIDAwMDAgMDAw
MAo+IAo+IAo+IFdoaWNoIGtlcm5lbCBkaWQgeW91IHRlc3Qgd2l0aD8gRG8geW91IGhhdmUgYW55
IGxvZz8KCkkgdGVzdGVkIHdpdGggbXkga2VybmVsIChodHRwczovL21lZ291cy5jb20vZ2l0L2xp
bnV4L2xvZy8/aD1vcGkzLTUuMikuIEkgYWxzbwp0cmllZCB3aXRoIDUuMSBhbmQgdGhlIHNhbWUg
a2VybmVsIGJ1aWxkIG9uIEg1LCB0byBleGNsdWRlIHNvbWUgZWFybHkgNS4yLXJjCmJ1Z3MgYW5k
IHRvIHNlZSBpZiB0aGlzIGlzIEg2IHNwZWNpZmljLgoKSSdsbCB0cnkgdGVzdGluZyBhZ2FpbiB3
aXRoIHlvdXIgcGF0Y2hlcywgYW5kIGdldCB5b3Ugc29tZSBsb2dzLiBCdXQgbGFzdCB0aW1lCnRo
ZXkgd2VyZSBub3QgdmVyeSBpbmZvcm1hdGl2ZS4KCnJlZ2FyZHMsCglvLgoKPiBUaGFua3MsCj4g
Q2zDqW1lbnQKPiAKPiA+Cj4gPiBFbmFibGluZy9kaXNhYmxpbmcgaXIgbm9kZSB3YXMgZW5vdWdo
IHRvIHRyaWdnZXIvc3RvcCB0aGUgUkNVIHN0YWxscyBvbiBINi4KPiA+Cj4gPiByZWdhcmRzLAo+
ID4gICAgICAgICBvLgo+ID4KPiA+ID4gUmVnYXJkcywKPiA+ID4gQ2zDqW1lbnQKPiA+ID4KPiA+
ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8xMDMxMzkwLyMx
MjIxNDY0Cj4gPiA+Cj4gPiA+IENoYW5nZXMgc2luY2UgdjE6Cj4gPiA+ICAtIERvY3VtZW50IHJl
c2V0IGxpbmVzIGFzIHJlcXVpcmVkIHNpbmNlIEEzMQo+ID4gPiAgLSBFeHBsYWluIHRoZSBtZW1v
cnkgbWFwcGluZyBkaWZmZXJlbmNlIGluIGNvbW1pdCBsb2cKPiA+ID4gIC0gRml4IG1pc3NwZWxs
aW5nICJBbGx3aW5lciIgdG8gIkFsbHdpbm5lciIKPiA+ID4KPiA+ID4gQ2zDqW1lbnQgUMOpcm9u
ICg4KToKPiA+ID4gICBkdC1iaW5kaW5nczogbWVkaWE6IHN1bnhpLWlyOiBhZGQgQTMxIGNvbXBh
dGlibGUKPiA+ID4gICBtZWRpYTogcmM6IHN1bnhpOiBBZGQgQTMxIGNvbXBhdGlibGUKPiA+ID4g
ICBBUk06IGR0czogc3VueGk6IHByZWZlciBBMzEgaW5zdGVhZCBvZiBBMTMgZm9yIGlyCj4gPiA+
ICAgZHQtYmluZGluZ3M6IG1lZGlhOiBzdW54aS1pcjogQWRkIEE2NCBjb21wYXRpYmxlCj4gPiA+
ICAgZHQtYmluZGluZ3M6IG1lZGlhOiBzdW54aS1pcjogQWRkIEg2IGNvbXBhdGlibGUKPiA+ID4g
ICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBBZGQgSVIgcmVjZWl2ZXIgbm9kZQo+ID4gPiAg
IGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEVuYWJsZSBJUiBvbiBINiBib2FyZHMKPiA+ID4g
ICBhcm02NDogZGVmY29uZmlnOiBlbmFibGUgSVIgU1VOWEkgb3B0aW9uCj4gPiA+Cj4gPiA+IEln
b3JzIE1ha2VqZXZzICgxKToKPiA+ID4gICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGE2NDogQWRk
IElSIG5vZGUKPiA+ID4KPiA+ID4gSmVybmVqIFNrcmFiZWMgKDEpOgo+ID4gPiAgIGFybTY0OiBk
dHM6IGFsbHdpbm5lcjogYTY0OiBFbmFibGUgSVIgb24gT3JhbmdlIFBpIFdpbgo+ID4gPgo+ID4g
PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3VueGktaXIudHh0ICAgIHwgMTEgKysr
KysrKysrLS0KPiA+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjZpLWEzMS5kdHNpICAgICAgICAg
ICAgICB8ICAyICstCj4gPiA+ICBhcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kgICAg
ICAgICAgICAgfCAgMiArLQo+ID4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvc3VuOWktYTgwLmR0c2kg
ICAgICAgICAgICAgIHwgIDIgKy0KPiA+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1
LmR0c2kgICAgICAgICAgICB8ICAyICstCj4gPiA+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGkt
YTY0LW9yYW5nZXBpLXdpbi5kdHMgfCAgNCArKysrCj4gPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kgfCAxOCArKysrKysrKysrKysrKysrKysKPiA+ID4g
IC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMgICB8ICA0ICsrKysK
PiA+ID4gIC4uLi9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpICAgICB8ICA0
ICsrKysKPiA+ID4gIC4uLi9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0
cyB8ICA0ICsrKysKPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni5kdHNpICB8IDE5ICsrKysrKysrKysrKysrKysrKysKPiA+ID4gIGFyY2gvYXJtNjQvY29uZmln
cy9kZWZjb25maWcgICAgICAgICAgICAgICAgICB8ICAxICsKPiA+ID4gIGRyaXZlcnMvbWVkaWEv
cmMvc3VueGktY2lyLmMgICAgICAgICAgICAgICAgICB8ICAxICsKPiA+ID4gIDEzIGZpbGVzIGNo
YW5nZWQsIDY4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IC0tCj4g
PiA+IDIuMjAuMQo+ID4gPgo+ID4gPgo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+
ID4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4gCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
