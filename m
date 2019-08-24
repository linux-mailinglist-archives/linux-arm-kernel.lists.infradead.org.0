Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC819BDE2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 15:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+pN5kEgxfAwbl9Uo59Kq7eBJE0n1Ce5Zs/q9fcNTSE=; b=MQ39Bpt0bDs9y/
	T27K0nCOwZG1fMyqya1NvK0avVkrZxCN4fUr4E/t+UVCjFBXhotvTzbKuqJL2OtxYHeDNvi6+Uv9f
	HUDJGeUY+59pvr1HhKGvXi/xItkU3wL7yQV3pl7m8y00NafSPylti+fPxyv6TWqApF/1LNRx0kwUQ
	lpQaYttxWjxCmc6OqCiglDFOZsjhBNgSzmwJTdGVD/mtTAuGobbwxqKRBQVH5E1own+yXPiKoZ0P7
	k8ofkQimW4wuMrvhecnhzVtPNrEq6Id4LkveJfeuXKfyhOTiEKBq/14KXQMLtW8d4NhhuZzVISp33
	g8p+bcDjSly2GqXoQllA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Vjz-0007vT-VJ; Sat, 24 Aug 2019 13:06:00 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Vjm-0007v7-Oi
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 13:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566651945; bh=483YmlpXCMjS12w+YRh4isl/G+dlUcV+4kQW0TULu+c=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=EuMq+2yKv+ReyPCNTbwfBrw1AgnLgooifadRaaanvVo4Zc9CnLcrnOHzmvAQzlHZv
 CRTYO1CTPwAbqsl3+p7Hk/a3mCje/JJHLC0iaTjIqh9bmViJ14+m9jX08AAvmV+F6Y
 7Y4rcfFqj+PtwmlSanS9f7uzRERHWO6roNCwJ7ZY=
Date: Sat, 24 Aug 2019 15:05:44 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 2/3] rtc: sun6i: Add support for H6 RTC
Message-ID: <20190824130544.kxypq3siv7kffidp@core.my.home>
Mail-Followup-To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 linux-sunxi@googlegroups.com,
 Mark Rutland <mark.rutland@arm.com>, 
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <20190820151934.3860-1-megous@megous.com>
 <10586215.O0B29uHg7A@jernej-laptop>
 <20190824124654.nqtlkam2gsaqsj77@core.my.home>
 <2544007.NTLiB2pbcT@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2544007.NTLiB2pbcT@jernej-laptop>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_060547_145470_A90D82FF 
X-CRM114-Status: GOOD (  30.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBBdWcgMjQsIDIwMTkgYXQgMDI6NTE6NTRQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IERuZSBzb2JvdGEsIDI0LiBhdmd1c3QgMjAxOSBvYiAxNDo0Njo1NCBDRVNUIGpl
IE9uZMWZZWogSmlybWFuIG5hcGlzYWwoYSk6Cj4gPiBIaSwKPiA+IAo+ID4gT24gU2F0LCBBdWcg
MjQsIDIwMTkgYXQgMDI6MzI6MzJQTSArMDIwMCwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4g
PiBIaSEKPiA+ID4gCj4gPiA+IERuZSB0b3JlaywgMjAuIGF2Z3VzdCAyMDE5IG9iIDE3OjE5OjMz
IENFU1QgamUgbWVnb3VzQG1lZ291cy5jb20gCj4gbmFwaXNhbChhKToKPiA+ID4gPiBGcm9tOiBP
bmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+ID4gPiAKPiA+ID4gPiBSVEMgb24g
SDYgaXMgbW9zdGx5IHRoZSBzYW1lIGFzIG9uIEg1IGFuZCBIMy4gSXQgaGFzIHNsaWdodCBkaWZm
ZXJlbmNlcwo+ID4gPiA+IG1vc3RseSBpbiBmZWF0dXJlcyB0aGF0IGFyZSBub3QgeWV0IHN1cHBv
cnRlZCBieSB0aGlzIGRyaXZlci4KPiA+ID4gPiAKPiA+ID4gPiBTb21lIGRpZmZlcmVuY2VzIGFy
ZSBhbHJlYWR5IHN0YXRlZCBpbiB0aGUgY29tbWVudHMgaW4gZXhpc3RpbmcgY29kZS4KPiA+ID4g
PiBPbmUgb3RoZXIgZGlmZmVyZW5jZSBpcyB0aGF0IEg2IGhhcyBleHRyYSBiaXQgaW4gTE9TQ19D
VFJMX1JFRywgY2FsbGVkCj4gPiA+ID4gRVhUX0xPU0NfRU4gdG8gZW5hYmxlL2Rpc2FibGUgZXh0
ZXJuYWwgbG93IHNwZWVkIGNyeXN0YWwgb3NjaWxsYXRvci4KPiA+ID4gPiAKPiA+ID4gPiBJdCBh
bHNvIGhhcyBiaXQgRVhUX0xPU0NfU1RBIGluIExPU0NfQVVUT19TV1RfU1RBX1JFRywgdG8gY2hl
Y2sgd2hldGhlcgo+ID4gPiA+IGV4dGVybmFsIGxvdyBzcGVlZCBvc2NpbGxhdG9yIGlzIHdvcmtp
bmcgY29ycmVjdGx5Lgo+ID4gPiA+IAo+ID4gPiA+IFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0IGZv
ciBlbmFibGluZyBMT1NDIHdoZW4gbmVjZXNzYXJ5Ogo+ID4gPiA+IAo+ID4gPiA+IC0gZHVyaW5n
IHJlcGFyZW50aW5nCj4gPiA+ID4gLSB3aGVuIHByb2JpbmcgdGhlIGNsb2NrCj4gPiA+ID4gCj4g
PiA+ID4gSDYgYWxzbyBoYXMgY2FwYWNiaWxpdHkgdG8gYXV0b21hdGljYWxseSByZXBhcmVudCBS
VEMgY2xvY2sgZnJvbQo+ID4gPiA+IGV4dGVybmFsIGNyeXN0YWwgb3NjaWxsYXRvciwgdG8gaW50
ZXJuYWwgUkMgb3NjaWxsYXRvciwgaWYgZXh0ZXJuYWwKPiA+ID4gPiBvc2NpbGxhdG9yIGZhaWxz
LiBUaGlzIGlzIGVuYWJsZWQgYnkgZGVmYXVsdC4gRGlzYWJsZSBpdCBkdXJpbmcKPiA+ID4gPiBw
cm9iZS4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdv
dXNAbWVnb3VzLmNvbT4KPiA+ID4gPiBSZXZpZXdlZC1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNz
aWUub3JnPgo+ID4gPiA+IC0tLQo+ID4gPiA+IAo+ID4gPiA+ICBkcml2ZXJzL3J0Yy9ydGMtc3Vu
NmkuYyB8IDQwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KPiA+ID4g
PiAgMSBmaWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+
ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jIGIvZHJpdmVy
cy9ydGMvcnRjLXN1bjZpLmMKPiA+ID4gPiBpbmRleCBkNTBlZTAyM2I1NTkuLmIwYzM3NTJiZWQz
ZiAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3J0Yy9ydGMtc3VuNmkuYwo+ID4gPiA+ICsr
KyBiL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jCj4gPiA+ID4gQEAgLTMyLDkgKzMyLDExIEBACj4g
PiA+ID4gCj4gPiA+ID4gIC8qIENvbnRyb2wgcmVnaXN0ZXIgKi8KPiA+ID4gPiAgI2RlZmluZSBT
VU42SV9MT1NDX0NUUkwJCQkJMHgwMDAwCj4gPiA+ID4gICNkZWZpbmUgU1VONklfTE9TQ19DVFJM
X0tFWQkJCSgweDE2YWEgPDwgMTYpCj4gPiA+ID4gCj4gPiA+ID4gKyNkZWZpbmUgU1VONklfTE9T
Q19DVFJMX0FVVE9fU1dUX0JZUEFTUwkJQklUKDE1KQo+ID4gPiAKPiA+ID4gVXNlciBtYW51YWwg
c2F5cyB0aGF0IGFib3ZlIGZpZWxkIGlzIGJpdCAxNC4KPiA+IAo+ID4gU2VlIHRoZSBwcmV2aW91
cyBkaXNjdXNzaW9uLCB0aGlzIGlzIGZyb20gQlNQLgo+IAo+IEkgaGF2ZSB0d28gdmVyc2lvbnMg
b2YgQlNQIChkb24ndCBhc2sgbWUgd2hpY2gpIHdoaWNoIGhhdmUgdGhpcyBzZXQgYXMgYml0IDE0
IAo+IGFuZCBjaGFuZ2luZyB0aGlzIHRvIDE0IGFjdHVhbGx5IHNvbHZlcyBhbGwgbXkgcHJvYmxl
bXMgd2l0aCBMT1NDIChubyBtb3JlIAo+IGlzc3VlcyB3aXRoIHNldHRpbmcgUlRDIGFuZCBIRE1J
LUNFQyB3b3JrcyBub3cgLSBpdCB1c2VzIExPU0MgYXMgcGFyZW50KSBvbiAKPiBUYW5peCBUWDYg
Ym94LgoKSW50ZXJlc3RpbmcuIElzIExPU0MgZmVkIGV4dGVybmFsbHkgZ2VuZXJhdGVkIGNsb2Nr
LCBvciBpcyBpdCBzZXR1cCBhcyBhIGNyeXN0YWwKb3NjaWxsYXRvciBvbiB5b3VyIGJvYXJkPwoK
QW55d2F5LCBzZWUgaGVyZToKCmh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgvdHJlZS9kcml2
ZXJzL3J0Yy9ydGMtc3VueGkuaD9oPWg2LTQuOS1ic3AjbjY0OQpodHRwczovL21lZ291cy5jb20v
Z2l0L2xpbnV4L3RyZWUvZHJpdmVycy9ydGMvcnRjLXN1bnhpLmM/aD1oNi00LjktYnNwI242NTIK
Ckl0IHdvdWxkIGJlIG5pY2UgdG8ga25vdyB3aGF0J3MgcmVhbGx5IGhhcHBlbmluZy4KCk15IG91
dHB1dCBpczoKClsgICAgMC44MzIyNTJdIHN1bjZpLXJ0YyA3MDAwMDAwLnJ0YzogcmVnaXN0ZXJl
ZCBhcyBydGMwClsgICAgMC44MzIyNTddIHN1bjZpLXJ0YyA3MDAwMDAwLnJ0YzogUlRDIGVuYWJs
ZWQKWyAgICAxLjcyODk2OF0gc3VuNmktcnRjIDcwMDAwMDAucnRjOiBzZXR0aW5nIHN5c3RlbSBj
bG9jayB0byAxOTcwLTAxLTAxVDAwOjAwOjA3IFVUQyAoNykKCkkgdGhpbmssIHlvdSBtYXkgaGF2
ZSBqdXN0IGVuYWJsZWQgdGhlIGF1dG8gc3dpdGNoIGZlYXR1cmUsIGFuZCBydW5uaW5nIHRoZQpj
bG9jayBmcm9tIGxvdyBwcmVjaXNpb24gUkMgb3NjaWxsYXRvciB3aXRoIHlvdXIgcGF0Y2guCgpU
aGUgcmVhbCBpc3N1ZSBwcm9iYWJseSBpcyB0aGF0IHRoZSBtYWlubGluZSBkcml2ZXIgaXMgbWlz
c2luZyB0aGlzOgoKaHR0cHM6Ly9tZWdvdXMuY29tL2dpdC9saW51eC90cmVlL2RyaXZlcnMvcnRj
L3J0Yy1zdW54aS5jP2g9aDYtNC45LWJzcCNuNjUwCgpyZWdhcmRzLAoJby4KCj4gQmVzdCByZWdh
cmRzLAo+IEplcm5lago+IAo+ID4gCj4gPiByZWdhcmRzLAo+ID4gCW8uCj4gPiAKPiA+ID4gQmVz
dCByZWdhcmRzLAo+ID4gPiBKZXJuZWoKPiA+ID4gCj4gPiA+ID4gICNkZWZpbmUgU1VONklfTE9T
Q19DVFJMX0FMTV9ESE1TX0FDQwkJQklUKDkpCj4gPiA+ID4gICNkZWZpbmUgU1VONklfTE9TQ19D
VFJMX1JUQ19ITVNfQUNDCQlCSVQoOCkKPiA+ID4gPiAgI2RlZmluZSBTVU42SV9MT1NDX0NUUkxf
UlRDX1lNRF9BQ0MJCUJJVCg3KQo+ID4gPiA+IAo+ID4gPiA+ICsjZGVmaW5lIFNVTjZJX0xPU0Nf
Q1RSTF9FWFRfTE9TQ19FTgkJQklUKDQpCj4gPiA+ID4gCj4gPiA+ID4gICNkZWZpbmUgU1VONklf
TE9TQ19DVFJMX0VYVF9PU0MJCQlCSVQoMCkKPiA+ID4gPiAgI2RlZmluZSBTVU42SV9MT1NDX0NU
UkxfQUNDX01BU0sJCUdFTk1BU0soOSwgNykKPiA+ID4gPiAKPiA+ID4gPiBAQCAtMTI4LDYgKzEz
MCw4IEBAIHN0cnVjdCBzdW42aV9ydGNfY2xrX2RhdGEgewo+ID4gPiA+IAo+ID4gPiA+ICAJdW5z
aWduZWQgaW50IGhhc19wcmVzY2FsZXIgOiAxOwo+ID4gPiA+ICAJdW5zaWduZWQgaW50IGhhc19v
dXRfY2xrIDogMTsKPiA+ID4gPiAgCXVuc2lnbmVkIGludCBleHBvcnRfaW9zYyA6IDE7Cj4gPiA+
ID4gCj4gPiA+ID4gKwl1bnNpZ25lZCBpbnQgaGFzX2xvc2NfZW4gOiAxOwo+ID4gPiA+ICsJdW5z
aWduZWQgaW50IGhhc19hdXRvX3N3dCA6IDE7Cj4gPiA+ID4gCj4gPiA+ID4gIH07Cj4gPiA+ID4g
IAo+ID4gPiA+ICBzdHJ1Y3Qgc3VuNmlfcnRjX2RldiB7Cj4gPiA+ID4gCj4gPiA+ID4gQEAgLTE5
MCw2ICsxOTQsMTAgQEAgc3RhdGljIGludCBzdW42aV9ydGNfb3NjX3NldF9wYXJlbnQoc3RydWN0
IGNsa19odwo+ID4gPiA+ICpodywKPiA+ID4gPiB1OCBpbmRleCkgdmFsICY9IH5TVU42SV9MT1ND
X0NUUkxfRVhUX09TQzsKPiA+ID4gPiAKPiA+ID4gPiAgCXZhbCB8PSBTVU42SV9MT1NDX0NUUkxf
S0VZOwo+ID4gPiA+ICAJdmFsIHw9IGluZGV4ID8gU1VONklfTE9TQ19DVFJMX0VYVF9PU0MgOiAw
Owo+ID4gPiA+IAo+ID4gPiA+ICsJaWYgKHJ0Yy0+ZGF0YS0+aGFzX2xvc2NfZW4pIHsKPiA+ID4g
PiArCQl2YWwgJj0gflNVTjZJX0xPU0NfQ1RSTF9FWFRfTE9TQ19FTjsKPiA+ID4gPiArCQl2YWwg
fD0gaW5kZXggPyBTVU42SV9MT1NDX0NUUkxfRVhUX0xPU0NfRU4gOiAwOwo+ID4gPiA+ICsJfQo+
ID4gPiA+IAo+ID4gPiA+ICAJd3JpdGVsKHZhbCwgcnRjLT5iYXNlICsgU1VONklfTE9TQ19DVFJM
KTsKPiA+ID4gPiAgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnJ0Yy0+bG9jaywgZmxhZ3MpOwo+
ID4gPiA+IAo+ID4gPiA+IEBAIC0yMTUsNiArMjIzLDcgQEAgc3RhdGljIHZvaWQgX19pbml0IHN1
bjZpX3J0Y19jbGtfaW5pdChzdHJ1Y3QKPiA+ID4gPiBkZXZpY2Vfbm9kZSAqbm9kZSwgY29uc3Qg
Y2hhciAqaW9zY19uYW1lID0gInJ0Yy1pbnQtb3NjIjsKPiA+ID4gPiAKPiA+ID4gPiAgCWNvbnN0
IGNoYXIgKmNsa291dF9uYW1lID0gIm9zYzMyay1vdXQiOwo+ID4gPiA+ICAJY29uc3QgY2hhciAq
cGFyZW50c1syXTsKPiA+ID4gPiAKPiA+ID4gPiArCXUzMiByZWc7Cj4gPiA+ID4gCj4gPiA+ID4g
IAlydGMgPSBremFsbG9jKHNpemVvZigqcnRjKSwgR0ZQX0tFUk5FTCk7Cj4gPiA+ID4gIAlpZiAo
IXJ0YykKPiA+ID4gPiAKPiA+ID4gPiBAQCAtMjM1LDkgKzI0NCwxOCBAQCBzdGF0aWMgdm9pZCBf
X2luaXQgc3VuNmlfcnRjX2Nsa19pbml0KHN0cnVjdAo+ID4gPiA+IGRldmljZV9ub2RlICpub2Rl
LCBnb3RvIGVycjsKPiA+ID4gPiAKPiA+ID4gPiAgCX0KPiA+ID4gPiAKPiA+ID4gPiArCXJlZyA9
IFNVTjZJX0xPU0NfQ1RSTF9LRVk7Cj4gPiA+ID4gKwlpZiAocnRjLT5kYXRhLT5oYXNfYXV0b19z
d3QpIHsKPiA+ID4gPiArCQkvKiBCeXBhc3MgYXV0by1zd2l0Y2ggdG8gaW50IG9zYywgb24gZXh0
IGxvc2MgZmFpbHVyZSAKPiAqLwo+ID4gPiA+ICsJCXJlZyB8PSBTVU42SV9MT1NDX0NUUkxfQVVU
T19TV1RfQllQQVNTOwo+ID4gPiA+ICsJCXdyaXRlbChyZWcsIHJ0Yy0+YmFzZSArIFNVTjZJX0xP
U0NfQ1RSTCk7Cj4gPiA+ID4gKwl9Cj4gPiA+ID4gKwo+ID4gPiA+IAo+ID4gPiA+ICAJLyogU3dp
dGNoIHRvIHRoZSBleHRlcm5hbCwgbW9yZSBwcmVjaXNlLCBvc2NpbGxhdG9yICovCj4gPiA+ID4g
Cj4gPiA+ID4gLQl3cml0ZWwoU1VONklfTE9TQ19DVFJMX0tFWSB8IFNVTjZJX0xPU0NfQ1RSTF9F
WFRfT1NDLAo+ID4gPiA+IC0JICAgICAgIHJ0Yy0+YmFzZSArIFNVTjZJX0xPU0NfQ1RSTCk7Cj4g
PiA+ID4gKwlyZWcgfD0gU1VONklfTE9TQ19DVFJMX0VYVF9PU0M7Cj4gPiA+ID4gKwlpZiAocnRj
LT5kYXRhLT5oYXNfbG9zY19lbikKPiA+ID4gPiArCQlyZWcgfD0gU1VONklfTE9TQ19DVFJMX0VY
VF9MT1NDX0VOOwo+ID4gPiA+ICsJd3JpdGVsKHJlZywgcnRjLT5iYXNlICsgU1VONklfTE9TQ19D
VFJMKTsKPiA+ID4gPiAKPiA+ID4gPiAgCS8qIFllcywgSSBrbm93LCB0aGlzIGlzIHVnbHkuICov
Cj4gPiA+ID4gIAlzdW42aV9ydGMgPSBydGM7Cj4gPiA+ID4gCj4gPiA+ID4gQEAgLTM0NSw2ICsz
NjMsMjMgQEAgQ0xLX09GX0RFQ0xBUkVfRFJJVkVSKHN1bjhpX2gzX3J0Y19jbGssCj4gPiA+ID4g
ImFsbHdpbm5lcixzdW44aS1oMy1ydGMiLCBDTEtfT0ZfREVDTEFSRV9EUklWRVIoc3VuNTBpX2g1
X3J0Y19jbGssCj4gPiA+ID4gImFsbHdpbm5lcixzdW41MGktaDUtcnRjIiwgc3VuOGlfaDNfcnRj
X2Nsa19pbml0KTsKPiA+ID4gPiAKPiA+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBzdW42aV9y
dGNfY2xrX2RhdGEgc3VuNTBpX2g2X3J0Y19kYXRhID0gewo+ID4gPiA+ICsJLnJjX29zY19yYXRl
ID0gMTYwMDAwMDAsCj4gPiA+ID4gKwkuZml4ZWRfcHJlc2NhbGVyID0gMzIsCj4gPiA+ID4gKwku
aGFzX3ByZXNjYWxlciA9IDEsCj4gPiA+ID4gKwkuaGFzX291dF9jbGsgPSAxLAo+ID4gPiA+ICsJ
LmV4cG9ydF9pb3NjID0gMSwKPiA+ID4gPiArCS5oYXNfbG9zY19lbiA9IDEsCj4gPiA+ID4gKwku
aGFzX2F1dG9fc3d0ID0gMSwKPiA+ID4gPiArfTsKPiA+ID4gPiArCj4gPiA+ID4gK3N0YXRpYyB2
b2lkIF9faW5pdCBzdW41MGlfaDZfcnRjX2Nsa19pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9k
ZSkKPiA+ID4gPiArewo+ID4gPiA+ICsJc3VuNmlfcnRjX2Nsa19pbml0KG5vZGUsICZzdW41MGlf
aDZfcnRjX2RhdGEpOwo+ID4gPiA+ICt9Cj4gPiA+ID4gK0NMS19PRl9ERUNMQVJFX0RSSVZFUihz
dW41MGlfaDZfcnRjX2NsaywgImFsbHdpbm5lcixzdW41MGktaDYtcnRjIiwKPiA+ID4gPiArCQkg
ICAgICBzdW41MGlfaDZfcnRjX2Nsa19pbml0KTsKPiA+ID4gPiArCj4gPiA+ID4gCj4gPiA+ID4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VuNmlfcnRjX2Nsa19kYXRhIHN1bjhpX3YzX3J0Y19kYXRh
ID0gewo+ID4gPiA+ICAKPiA+ID4gPiAgCS5yY19vc2NfcmF0ZSA9IDMyMDAwLAo+ID4gPiA+ICAJ
Lmhhc19vdXRfY2xrID0gMSwKPiA+ID4gPiAKPiA+ID4gPiBAQCAtNjc1LDYgKzcxMCw3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN1bjZpX3J0Y19kdF9pZHNbXQo+ID4gPiA+
ID0gewo+ID4gPiA+IAo+ID4gPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuOGkt
cjQwLXJ0YyIgfSwKPiA+ID4gPiAgCXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjhpLXYz
LXJ0YyIgfSwKPiA+ID4gPiAgCXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNS1y
dGMiIH0sCj4gPiA+ID4gCj4gPiA+ID4gKwl7IC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41
MGktaDYtcnRjIiB9LAo+ID4gPiA+IAo+ID4gPiA+ICAJeyAvKiBzZW50aW5lbCAqLyB9LAo+ID4g
PiA+ICAKPiA+ID4gPiAgfTsKPiA+ID4gPiAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgc3VuNmlf
cnRjX2R0X2lkcyk7Cj4gPiA+IAo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+ID4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+ID4g
PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4gCj4gCj4g
Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
