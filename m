Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6638817E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxV+JPv7qXeaW13NooWDUWQDLXdp10RSDC968VeTzAA=; b=um/gqGhCDHpPUi
	ZefxqhlKQXLAZedDet8Jw0AP0hdKKa6U6o1FaJX5liGjV2/enFXx4jwLFXRPzP2RI31SFdz3AlKOc
	RZiuskyIkzWR6/Q/ou8ZERnFVjHpRw/zfKJyu5qOR3ly/39eQqt1D2Oona/Ac/ewXxQpMc3mwecld
	knq5dlZRDJPJm3bskX9j7YWi5ZyA1hopA/7Aa7KAUv0cB44AbcslD6+ZoL8UcCJrTvz8+waecB67d
	50fAQkpFX2jRF57Rakee6/xO3kr8JFpCHljBHZa/LAYlS4M1G9HVj066zSqmx9Tc/zqqTCjgCFBy+
	SuQ2326WxbEmdAVBU4Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huatD-0004hy-4Q; Mon, 05 Aug 2019 11:10:55 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huasx-0004hE-Lj
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:10:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1565003437; bh=I5+SP8QUAXj3fkTM2l0PMqN9PUAIUknyUZz+rlL28Og=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=cbXoWK2qv+KUUjGgbolnvJxHaGPI1CjR9DGktOxiYqA3GTfG4d88k7ZekQpyYNGB2
 DnC3VadAN6S6HWcJO2HINgmgDxfBwOWUG9DtnDPQfgdNxoDG7g7BbJBz2S5AFNzVEN
 mVqbtonragdAaWe9Qwvz/P1WgMZn87xdQ49lo9lI=
Date: Mon, 5 Aug 2019 13:10:37 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] [PATCH 2/3] rtc: sun6i: Add support for H6 RTC
Message-ID: <20190805111037.76vmanzcurffpbdf@core.my.home>
Mail-Followup-To: Chen-Yu Tsai <wens@csie.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-rtc@vger.kernel.org, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>
References: <20190412120730.473-1-megous@megous.com>
 <20190412120730.473-3-megous@megous.com>
 <CAGb2v675j-aCLMgPJOzr9yx1XxsUvHRr_K7VnL=p8mSdwpu2jw@mail.gmail.com>
 <20190805104529.z3mex3m2tss7lzlr@core.my.home>
 <CAGb2v67pcxdxjdRX_HN4133A32eA566DDtUJUKV7pqzxDtOaeg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v67pcxdxjdRX_HN4133A32eA566DDtUJUKV7pqzxDtOaeg@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_041040_202627_18C4A4B2 
X-CRM114-Status: GOOD (  34.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDY6NTQ6MTdQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+IE9uIE1vbiwgQXVnIDUsIDIwMTkgYXQgNjo0NSBQTSBPbmTFmWVqIEppcm1hbiA8bWVn
b3VzQG1lZ291cy5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIE1vbiwgQXVnIDA1LCAyMDE5IGF0IDA2
OjE2OjE0UE0gKzA4MDAsIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+ID4gT24gRnJpLCBBcHIgMTIs
IDIwMTkgYXQgODowNyBQTSBtZWdvdXMgdmlhIGxpbnV4LXN1bnhpCj4gPiA+IDxsaW51eC1zdW54
aUBnb29nbGVncm91cHMuY29tPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IEZyb206IE9uZHJlaiBK
aXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4gPiA+Cj4gPiA+ID4gUlRDIG9uIEg2IGlzIG1v
c3RseSB0aGUgc2FtZSBhcyBvbiBINSBhbmQgSDMuIEl0IGhhcyBzbGlnaHQgZGlmZmVyZW5jZXMK
PiA+ID4gPiBtb3N0bHkgaW4gZmVhdHVyZXMgdGhhdCBhcmUgbm90IHlldCBzdXBwb3J0ZWQgYnkg
dGhpcyBkcml2ZXIuCj4gPiA+ID4KPiA+ID4gPiBTb21lIGRpZmZlcmVuY2VzIGFyZSBhbHJlYWR5
IHN0YXRlZCBpbiB0aGUgY29tbWVudHMgaW4gZXhpc3RpbmcgY29kZS4KPiA+ID4gPiBPbmUgb3Ro
ZXIgZGlmZmVyZW5jZSBpcyB0aGF0IEg2IGhhcyBleHRyYSBiaXQgaW4gTE9TQ19DVFJMX1JFRywg
Y2FsbGVkCj4gPiA+ID4gRVhUX0xPU0NfRU4gdG8gZW5hYmxlL2Rpc2FibGUgZXh0ZXJuYWwgbG93
IHNwZWVkIGNyeXN0YWwgb3NjaWxsYXRvci4KPiA+ID4gPgo+ID4gPiA+IEl0IGFsc28gaGFzIGJp
dCBFWFRfTE9TQ19TVEEgaW4gTE9TQ19BVVRPX1NXVF9TVEFfUkVHLCB0byBjaGVjayB3aGV0aGVy
Cj4gPiA+ID4gZXh0ZXJuYWwgbG93IHNwZWVkIG9zY2lsbGF0b3IgaXMgd29ya2luZyBjb3JyZWN0
bHkuCj4gPiA+ID4KPiA+ID4gPiBUaGlzIHBhdGNoIGFkZHMgc3VwcG9ydCBmb3IgZW5hYmxpbmcg
TE9TQyB3aGVuIG5lY2Vzc2FyeToKPiA+ID4gPgo+ID4gPiA+IC0gZHVyaW5nIHJlcGFyZW50aW5n
Cj4gPiA+ID4gLSB3aGVuIHByb2JpbmcgdGhlIGNsb2NrCj4gPiA+ID4KPiA+ID4gPiBINiBhbHNv
IGhhcyBjYXBhY2JpbGl0eSB0byBhdXRvbWF0aWNhbGx5IHJlcGFyZW50IFJUQyBjbG9jayBmcm9t
Cj4gPiA+ID4gZXh0ZXJuYWwgY3J5c3RhbCBvc2NpbGxhdG9yLCB0byBpbnRlcm5hbCBSQyBvc2Np
bGxhdG9yLCBpZiBleHRlcm5hbAo+ID4gPiA+IG9zY2lsbGF0b3IgZmFpbHMuIFRoaXMgaXMgZW5h
YmxlZCBieSBkZWZhdWx0LiBEaXNhYmxlIGl0IGR1cmluZwo+ID4gPiA+IHByb2JlLgo+ID4gPiA+
Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+
Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGRyaXZlcnMvcnRjL3J0Yy1zdW42aS5jIHwgNDAgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMzggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gPgo+ID4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3J0Yy9ydGMtc3VuNmkuYyBiL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5j
Cj4gPiA+ID4gaW5kZXggMTFmNTZkZTUyMTc5Li43Mzc1YTUzMGM1NjUgMTAwNjQ0Cj4gPiA+ID4g
LS0tIGEvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL3J0Yy9y
dGMtc3VuNmkuYwo+ID4gPiA+IEBAIC00MSw5ICs0MSwxMSBAQAo+ID4gPiA+ICAvKiBDb250cm9s
IHJlZ2lzdGVyICovCj4gPiA+ID4gICNkZWZpbmUgU1VONklfTE9TQ19DVFJMICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAweDAwMDAKPiA+ID4gPiAgI2RlZmluZSBTVU42SV9MT1NDX0NU
UkxfS0VZICAgICAgICAgICAgICAgICAgICAoMHgxNmFhIDw8IDE2KQo+ID4gPiA+ICsjZGVmaW5l
IFNVTjZJX0xPU0NfQ1RSTF9BVVRPX1NXVF9CWVBBU1MgICAgICAgICAgICAgICAgQklUKDE1KQo+
ID4gPgo+ID4gPiBNYW51YWwgc2F5cyBiaXQgMTQ/IE9yIGlzIHRoaXMgZGlmZmVyZW50IGZyb20g
TE9TQ19BVVRPX1NXVF9FTj8KPiA+ID4KPiA+ID4gVGhlIHJlc3QgbG9va3Mgb2suCj4gPgo+ID4g
VG8gZ2l2ZSB5b3UgbW9yZSBpbmZvcm1hdGlvbi4gVGhpcyBpcyBhIG5ldyB0aGluZyBpbiBINiBC
U1AsIGNvbXBhcmVkCj4gPiB0byBCU1BzIGZvciBwcmV2aW91cyBTb0NzIChINS9IMykuCj4gPgo+
ID4gIDIwICNkZWZpbmUgUkVHX0NMSzMyS19BVVRPX1NXVF9FTiAgICAgICAgICAgICAgICAgIEJJ
VCgxNCkKPiA+ICAyMSAjZGVmaW5lIFJFR19DTEszMktfQVVUT19TV1RfQllQQVNTICAgICAgICAg
ICAgICBCSVQoMTUpCj4gPgo+ID4gSW5pdCBzZXF1ZW5jZSBjaGFuZ2VkIGluIEg2IEJTUCB0bzoK
PiA+Cj4gPiA2NDYgICAgICAgICAvKgo+ID4gNjQ3ICAgICAgICAgICogU3RlcDE6IHNlbGVjdCBS
VEMgY2xvY2sgc291cmNlCj4gPiA2NDggICAgICAgICAgKi8KPiA+IDY0OSAgICAgICAgIHRtcF9k
YXRhID0gcmVhZGwoY2hpcC0+YmFzZSArIFNVTlhJX0xPU0NfQ1RSTCk7Cj4gPiA2NTAgICAgICAg
ICB0bXBfZGF0YSAmPSAoflJFR19DTEszMktfQVVUT19TV1RfRU4pOwo+ID4gNjUxCj4gPiA2NTIg
ICAgICAgICAvKiBEaXNhYmxlIGF1dG8gc3dpdGNoIGZ1bmN0aW9uICovCj4gPiA2NTMgICAgICAg
ICB0bXBfZGF0YSB8PSBSRUdfQ0xLMzJLX0FVVE9fU1dUX0JZUEFTUzsKPiA+IDY1NCAgICAgICAg
IHdyaXRlbCh0bXBfZGF0YSwgY2hpcC0+YmFzZSArIFNVTlhJX0xPU0NfQ1RSTCk7Cj4gPiA2NTUK
PiA+IDY1NiAgICAgICAgIHRtcF9kYXRhID0gcmVhZGwoY2hpcC0+YmFzZSArIFNVTlhJX0xPU0Nf
Q1RSTCk7Cj4gPiA2NTcgICAgICAgICB0bXBfZGF0YSB8PSAoUlRDX1NPVVJDRV9FWFRFUk5BTCB8
IFJFR19MT1NDQ1RSTF9NQUdJQyk7Cj4gPiA2NTggICAgICAgICB3cml0ZWwodG1wX2RhdGEsIGNo
aXAtPmJhc2UgKyBTVU5YSV9MT1NDX0NUUkwpOwo+ID4gNjU5Cj4gPiA2NjAgICAgICAgICAvKiBX
ZSBuZWVkIHRvIHNldCBHU00gYWZ0ZXIgY2hhbmdlIGNsb2NrIHNvdXJjZSAqLwo+ID4gNjYxICAg
ICAgICAgdWRlbGF5KDEwKTsKPiA+IDY2MiAgICAgICAgIHRtcF9kYXRhID0gcmVhZGwoY2hpcC0+
YmFzZSArIFNVTlhJX0xPU0NfQ1RSTCk7Cj4gPiA2NjMgICAgICAgICB0bXBfZGF0YSB8PSAoRVhU
X0xPU0NfR1NNIHwgUkVHX0xPU0NDVFJMX01BR0lDKTsKPiA+IDY2NCAgICAgICAgIHdyaXRlbCh0
bXBfZGF0YSwgY2hpcC0+YmFzZSArIFNVTlhJX0xPU0NfQ1RSTCk7Cj4gPiA2NjUKPiAKPiBJIGRv
bid0IGhhdmUgdGhpcyBpbiBteSBINiBCU1BzLiBPbmUgaXMgSDYgTGljaGVlIHYxLjEgZG93bmxv
YWRlZCBmcm9tIFBpbmU2NC4KPiBUaGUgbGluayB3YXMgZnJvbSBsaW51eC1zdW54aSB3aWtpJ3Mg
SDYgcGFnZS4KPiAKPiBUaGUgb3RoZXIgaXMgYSA0Ljkga2VybmVsIHRyZWUsIHdoaWNoIEkgYmVs
aWV2ZSBpcyBmcm9tIEFsbHdpbm5lcidzIGdpdGh1YjoKPiAKPiAgICAgaHR0cHM6Ly9naXRodWIu
Y29tL0FsbHdpbm5lci1Ib21sZXQvSDYtQlNQNC45LWxpbnV4CgpJbnRlcmVzdGluZy4gOikgSSBo
YXZlIHRoZSBCU1AgSSB3YXMgdXNpbmcgc2F2ZWQgaGVyZToKCmh0dHBzOi8vbWVnb3VzLmNvbS9n
aXQvbGludXgvdHJlZS9kcml2ZXJzL3J0Yy9ydGMtc3VueGkuYz9oPWg2LTQuOS1ic3AjbjY0OQoK
SXQncyBiYXNlZCBvZiA0LjkuMTE5CgpodHRwczovL21lZ291cy5jb20vZ2l0L2xpbnV4L2xvZy8/
aD1oNi00LjktYnNwCgpJIGRvbid0IHJlbWVtYmVyIHdoZXJlIEkgZm91bmQgaXQuIEJ1dCBJIGlt
cG9ydGVkIGl0IGZhaXJseSByZWNlbnRseSwgYW5kCnRoZSBjb2RlIHlvdSBwb2ludGVkIHRvIGxv
b2tzIGxpa2UgYW4gb2xkZXIgdmVyc2lvbiB0aGF0IEkgY2FuIGZvdW5kIGluIHNvbWUKYmV0YSBI
NiBCU1AsIHRoYXQgSSBpbXBvcnRlZCB3YXkgZWFybGllciBhbmQgaXMgYmFzZWQgb24gNC45LjU2
OgoKaHR0cHM6Ly9tZWdvdXMuY29tL2dpdC9saW51eC90cmVlL2RyaXZlcnMvcnRjL3J0Yy1zdW54
aS5jP2g9bGludXgtaDYKaHR0cHM6Ly9tZWdvdXMuY29tL2dpdC9saW51eC9sb2cvP2g9bGludXgt
aDYKCkhtbSwgYXJjaGVvbG9neS4gOikKCj4gPiBGb3Igb2xkZXIgQlNQcywgdGhlIGluaXQgc2Vx
dWVuY2UgbG9va2VkIGxpa2UgdGhpczoKPiA+Cj4gPiA0ODIgICAgICAgICAvKgo+ID4gNDgzICAg
ICAgICAgICogU3RlcDE6IHNlbGVjdCBSVEMgY2xvY2sgc291cmNlCj4gPiA0ODQgICAgICAgICAg
Ki8KPiA+IDQ4NSAgICAgICAgIHRtcF9kYXRhID0gc3VueGlfcnRjX3JlYWQoU1VOWElfTE9TQ19D
VFJMX1JFRyk7Cj4gPiA0ODYgICAgICAgICB0bXBfZGF0YSAmPSAoflJFR19DTEszMktfQVVUT19T
V1RfRU4pOwo+ID4gNDg3ICAgICAgICAgdG1wX2RhdGEgfD0gKFJUQ19TT1VSQ0VfRVhURVJOQUwg
fCBSRUdfTE9TQ0NUUkxfTUFHSUMpOwo+ID4gNDg4ICAgICAgICAgdG1wX2RhdGEgfD0gKEVYVF9M
T1NDX0dTTSk7Cj4gPiA0ODkgICAgICAgICBzdW54aV9ydGNfd3JpdGUodG1wX2RhdGEsIFNVTlhJ
X0xPU0NfQ1RSTF9SRUcpOwo+ID4gNDkwCj4gPgo+ID4gRVhUX0xPU0NfR1NNIGhhcyB2YWx1ZXMg
NCB2YWx1ZXMgZnJvbSBsb3cgdG8gaGlnaCwgYW5kIEkgZ3Vlc3MgaXQgY29uZmlndXJlcwo+ID4g
Z2FpbiBmb3IgdGhlIG9zY2lsbGF0b3IncyBhbXBsaWZpZXIgaW4gdGhlIGZlZWRiYWNrIGxvb3Ag
b2YgdGhlIGNpcmN1aXQuCj4gPgo+ID4gU28gdGhlIG5ldyBjb2RlLCBmb3Igc29tZSByZWFzb24g
Y2hhbmdlZCBmcm9tIHNpbmdsZSB3cml0ZSB0byBzZXF1ZW5jZQo+ID4gb2YgaW5kaXZpZHVhbCB3
cml0ZXMvY29uZmlnIHN0ZXBzOgo+ID4KPiA+IDEpIGRpc2FibGUgYXV0by1zd2l0Y2ggYW5kIGVu
YWJsZSBhdXRvLXN3aXRjaCBieXBhc3MKPiA+IDIpIHNlbGVjdCBSVEMgY2xvY2sgc291cmNlICh0
byBMT1NDKQo+ID4gICAod2FpdCkKPiAKPiBNYXliZSBpdCdzIHBvc3NpYmxlIHRvIGdsaXRjaCBp
ZiB0aGVzZSB0d28gYXJlIGNvbWJpbmVkPwoKVGhhdCdzIHdoYXQgSSB0aG91Z2h0IHRvby4gT3Ig
dGhlIHByb2dyYW1tZXIgdGhvdWdodCBzbywgYW5kIHdhcyBqdXN0CnByb2dyYW1taW5nIGRlZmVu
c2l2ZWx5LCBhbmQgdGhlcmUncyBubyByZWFsIHByb2JsZW0gaW4gdGhlIHByYWN0aWNlLgoKQnV0
IHRoYXQgc3BlY2lmaWMgZGVsYXkoKSBzZWVtcyBsaWtlIHNvbWVvbmUgdHJ5aW5nIHRvIHNvbHZl
IGEgcmVhbCBpc3N1ZS4gT2YKY291cnNlIHRoZXJlJ3Mgbm8ga25vd2luZyBpZiBpdCB3YXMgb24g
SDYgb3Igb24gc29tZSBvdGhlciBTb0MuCgpyZWdhcmRzLAoJby4KCj4gCj4gPiAzKSBjb25maWd1
cmUgZ2FpbiBvbiB0aGUgTE9TQwo+ID4KPiA+IHJlZ2FyZHMsCj4gPiAgICAgICAgIG8uCj4gPgo+
ID4gPiBDaGVuWXUKPiA+Cj4gPiAtLQo+ID4gWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNh
dXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtc3VueGki
IGdyb3VwLgo+ID4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2Vp
dmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1zdW54aSt1bnN1YnNj
cmliZUBnb29nbGVncm91cHMuY29tLgo+ID4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhl
IHdlYiwgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LXN1bnhp
LzIwMTkwODA1MTA0NTI5LnozbWV4M20ydHNzN2x6bHIlNDBjb3JlLm15LmhvbWUuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
