Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143199BDBF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 14:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dd3wjpRyGV0mWD+kSnSfK3uxi3iGX/F1kmJOQO5essc=; b=phfG5sqxwPjmVg
	7y1OMTpUM3Ijg0rFRux46Jrub496TZMpQHyrgfNaZsrHeS/loQrLX7Kv4yHjqnoMGhgMdW7heHqKD
	a9CMoSu463rqBdkrmAyVAISgl8bLOdqEjh/mHuFrHxQ9QmR8cdASz3odST0666HPUMFbLYjV2lWl/
	NNeGYtUf1Ke6Ny7RMYMKbH9WKo/bmt1tsgsCjLJoXv4Tr/qKQRos9T0+mvwE5vt2Y1AL2LZw+fPf5
	smhEzQocOB6qQOXECEIfxe/syG3AqndEqbvfdLSSIXw/4K4pBvRPebri8FWBfNdNYaUdh3bYP0Y3y
	8FxMdp5/8486f1BHQpDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1VRp-0001Ea-6Y; Sat, 24 Aug 2019 12:47:13 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1VRb-0001Df-KP
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 12:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566650815; bh=aNpvpPT8BVQWDrxDFNrTrr4X2ZCwKP1MoxnWa5OvuUs=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=rQNlncvKNCm3AFPHneOnHrI8gPH/HPvT+6l0XnNzR+3bzG3/39hgUsSmid8fPB9id
 pKsC7R6de8+xMf3AmxXHck/jOF87F0fBvoI2RHWGaB+Y1ao/R6iqomOcTOIUe27tMM
 LIyli/5IiRe10/tlTlvfKFM7WpuzdElhz1YE4HCI=
Date: Sat, 24 Aug 2019 14:46:54 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 2/3] rtc: sun6i: Add support for H6 RTC
Message-ID: <20190824124654.nqtlkam2gsaqsj77@core.my.home>
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
 <20190820151934.3860-3-megous@megous.com>
 <10586215.O0B29uHg7A@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10586215.O0B29uHg7A@jernej-laptop>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_054700_172944_BFEE1394 
X-CRM114-Status: GOOD (  26.25  )
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

SGksCgpPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAwMjozMjozMlBNICswMjAwLCBKZXJuZWogxaBr
cmFiZWMgd3JvdGU6Cj4gSGkhCj4gCj4gRG5lIHRvcmVrLCAyMC4gYXZndXN0IDIwMTkgb2IgMTc6
MTk6MzMgQ0VTVCBqZSBtZWdvdXNAbWVnb3VzLmNvbSBuYXBpc2FsKGEpOgo+ID4gRnJvbTogT25k
cmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiAKPiA+IFJUQyBvbiBINiBpcyBtb3N0
bHkgdGhlIHNhbWUgYXMgb24gSDUgYW5kIEgzLiBJdCBoYXMgc2xpZ2h0IGRpZmZlcmVuY2VzCj4g
PiBtb3N0bHkgaW4gZmVhdHVyZXMgdGhhdCBhcmUgbm90IHlldCBzdXBwb3J0ZWQgYnkgdGhpcyBk
cml2ZXIuCj4gPiAKPiA+IFNvbWUgZGlmZmVyZW5jZXMgYXJlIGFscmVhZHkgc3RhdGVkIGluIHRo
ZSBjb21tZW50cyBpbiBleGlzdGluZyBjb2RlLgo+ID4gT25lIG90aGVyIGRpZmZlcmVuY2UgaXMg
dGhhdCBINiBoYXMgZXh0cmEgYml0IGluIExPU0NfQ1RSTF9SRUcsIGNhbGxlZAo+ID4gRVhUX0xP
U0NfRU4gdG8gZW5hYmxlL2Rpc2FibGUgZXh0ZXJuYWwgbG93IHNwZWVkIGNyeXN0YWwgb3NjaWxs
YXRvci4KPiA+IAo+ID4gSXQgYWxzbyBoYXMgYml0IEVYVF9MT1NDX1NUQSBpbiBMT1NDX0FVVE9f
U1dUX1NUQV9SRUcsIHRvIGNoZWNrIHdoZXRoZXIKPiA+IGV4dGVybmFsIGxvdyBzcGVlZCBvc2Np
bGxhdG9yIGlzIHdvcmtpbmcgY29ycmVjdGx5Lgo+ID4gCj4gPiBUaGlzIHBhdGNoIGFkZHMgc3Vw
cG9ydCBmb3IgZW5hYmxpbmcgTE9TQyB3aGVuIG5lY2Vzc2FyeToKPiA+IAo+ID4gLSBkdXJpbmcg
cmVwYXJlbnRpbmcKPiA+IC0gd2hlbiBwcm9iaW5nIHRoZSBjbG9jawo+ID4gCj4gPiBINiBhbHNv
IGhhcyBjYXBhY2JpbGl0eSB0byBhdXRvbWF0aWNhbGx5IHJlcGFyZW50IFJUQyBjbG9jayBmcm9t
Cj4gPiBleHRlcm5hbCBjcnlzdGFsIG9zY2lsbGF0b3IsIHRvIGludGVybmFsIFJDIG9zY2lsbGF0
b3IsIGlmIGV4dGVybmFsCj4gPiBvc2NpbGxhdG9yIGZhaWxzLiBUaGlzIGlzIGVuYWJsZWQgYnkg
ZGVmYXVsdC4gRGlzYWJsZSBpdCBkdXJpbmcKPiA+IHByb2JlLgo+ID4gCj4gPiBTaWduZWQtb2Zm
LWJ5OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+IFJldmlld2VkLWJ5OiBD
aGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5vcmc+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3J0Yy9ydGMt
c3VuNmkuYyB8IDQwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jIGIvZHJpdmVycy9ydGMvcnRj
LXN1bjZpLmMKPiA+IGluZGV4IGQ1MGVlMDIzYjU1OS4uYjBjMzc1MmJlZDNmIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMKPiA+ICsrKyBiL2RyaXZlcnMvcnRjL3J0Yy1z
dW42aS5jCj4gPiBAQCAtMzIsOSArMzIsMTEgQEAKPiA+ICAvKiBDb250cm9sIHJlZ2lzdGVyICov
Cj4gPiAgI2RlZmluZSBTVU42SV9MT1NDX0NUUkwJCQkJMHgwMDAwCj4gPiAgI2RlZmluZSBTVU42
SV9MT1NDX0NUUkxfS0VZCQkJKDB4MTZhYSA8PCAxNikKPiA+ICsjZGVmaW5lIFNVTjZJX0xPU0Nf
Q1RSTF9BVVRPX1NXVF9CWVBBU1MJCUJJVCgxNSkKPiAKPiBVc2VyIG1hbnVhbCBzYXlzIHRoYXQg
YWJvdmUgZmllbGQgaXMgYml0IDE0LgoKU2VlIHRoZSBwcmV2aW91cyBkaXNjdXNzaW9uLCB0aGlz
IGlzIGZyb20gQlNQLgoKcmVnYXJkcywKCW8uCgo+IEJlc3QgcmVnYXJkcywKPiBKZXJuZWoKPiAK
PiA+ICAjZGVmaW5lIFNVTjZJX0xPU0NfQ1RSTF9BTE1fREhNU19BQ0MJCUJJVCg5KQo+ID4gICNk
ZWZpbmUgU1VONklfTE9TQ19DVFJMX1JUQ19ITVNfQUNDCQlCSVQoOCkKPiA+ICAjZGVmaW5lIFNV
TjZJX0xPU0NfQ1RSTF9SVENfWU1EX0FDQwkJQklUKDcpCj4gPiArI2RlZmluZSBTVU42SV9MT1ND
X0NUUkxfRVhUX0xPU0NfRU4JCUJJVCg0KQo+ID4gICNkZWZpbmUgU1VONklfTE9TQ19DVFJMX0VY
VF9PU0MJCQlCSVQoMCkKPiA+ICAjZGVmaW5lIFNVTjZJX0xPU0NfQ1RSTF9BQ0NfTUFTSwkJR0VO
TUFTSyg5LCA3KQo+ID4gCj4gPiBAQCAtMTI4LDYgKzEzMCw4IEBAIHN0cnVjdCBzdW42aV9ydGNf
Y2xrX2RhdGEgewo+ID4gIAl1bnNpZ25lZCBpbnQgaGFzX3ByZXNjYWxlciA6IDE7Cj4gPiAgCXVu
c2lnbmVkIGludCBoYXNfb3V0X2NsayA6IDE7Cj4gPiAgCXVuc2lnbmVkIGludCBleHBvcnRfaW9z
YyA6IDE7Cj4gPiArCXVuc2lnbmVkIGludCBoYXNfbG9zY19lbiA6IDE7Cj4gPiArCXVuc2lnbmVk
IGludCBoYXNfYXV0b19zd3QgOiAxOwo+ID4gIH07Cj4gPiAKPiA+ICBzdHJ1Y3Qgc3VuNmlfcnRj
X2RldiB7Cj4gPiBAQCAtMTkwLDYgKzE5NCwxMCBAQCBzdGF0aWMgaW50IHN1bjZpX3J0Y19vc2Nf
c2V0X3BhcmVudChzdHJ1Y3QgY2xrX2h3ICpodywKPiA+IHU4IGluZGV4KSB2YWwgJj0gflNVTjZJ
X0xPU0NfQ1RSTF9FWFRfT1NDOwo+ID4gIAl2YWwgfD0gU1VONklfTE9TQ19DVFJMX0tFWTsKPiA+
ICAJdmFsIHw9IGluZGV4ID8gU1VONklfTE9TQ19DVFJMX0VYVF9PU0MgOiAwOwo+ID4gKwlpZiAo
cnRjLT5kYXRhLT5oYXNfbG9zY19lbikgewo+ID4gKwkJdmFsICY9IH5TVU42SV9MT1NDX0NUUkxf
RVhUX0xPU0NfRU47Cj4gPiArCQl2YWwgfD0gaW5kZXggPyBTVU42SV9MT1NDX0NUUkxfRVhUX0xP
U0NfRU4gOiAwOwo+ID4gKwl9Cj4gPiAgCXdyaXRlbCh2YWwsIHJ0Yy0+YmFzZSArIFNVTjZJX0xP
U0NfQ1RSTCk7Cj4gPiAgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnJ0Yy0+bG9jaywgZmxhZ3Mp
Owo+ID4gCj4gPiBAQCAtMjE1LDYgKzIyMyw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBzdW42aV9y
dGNfY2xrX2luaXQoc3RydWN0IGRldmljZV9ub2RlCj4gPiAqbm9kZSwgY29uc3QgY2hhciAqaW9z
Y19uYW1lID0gInJ0Yy1pbnQtb3NjIjsKPiA+ICAJY29uc3QgY2hhciAqY2xrb3V0X25hbWUgPSAi
b3NjMzJrLW91dCI7Cj4gPiAgCWNvbnN0IGNoYXIgKnBhcmVudHNbMl07Cj4gPiArCXUzMiByZWc7
Cj4gPiAKPiA+ICAJcnRjID0ga3phbGxvYyhzaXplb2YoKnJ0YyksIEdGUF9LRVJORUwpOwo+ID4g
IAlpZiAoIXJ0YykKPiA+IEBAIC0yMzUsOSArMjQ0LDE4IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBz
dW42aV9ydGNfY2xrX2luaXQoc3RydWN0Cj4gPiBkZXZpY2Vfbm9kZSAqbm9kZSwgZ290byBlcnI7
Cj4gPiAgCX0KPiA+IAo+ID4gKwlyZWcgPSBTVU42SV9MT1NDX0NUUkxfS0VZOwo+ID4gKwlpZiAo
cnRjLT5kYXRhLT5oYXNfYXV0b19zd3QpIHsKPiA+ICsJCS8qIEJ5cGFzcyBhdXRvLXN3aXRjaCB0
byBpbnQgb3NjLCBvbiBleHQgbG9zYyBmYWlsdXJlICovCj4gPiArCQlyZWcgfD0gU1VONklfTE9T
Q19DVFJMX0FVVE9fU1dUX0JZUEFTUzsKPiA+ICsJCXdyaXRlbChyZWcsIHJ0Yy0+YmFzZSArIFNV
TjZJX0xPU0NfQ1RSTCk7Cj4gPiArCX0KPiA+ICsKPiA+ICAJLyogU3dpdGNoIHRvIHRoZSBleHRl
cm5hbCwgbW9yZSBwcmVjaXNlLCBvc2NpbGxhdG9yICovCj4gPiAtCXdyaXRlbChTVU42SV9MT1ND
X0NUUkxfS0VZIHwgU1VONklfTE9TQ19DVFJMX0VYVF9PU0MsCj4gPiAtCSAgICAgICBydGMtPmJh
c2UgKyBTVU42SV9MT1NDX0NUUkwpOwo+ID4gKwlyZWcgfD0gU1VONklfTE9TQ19DVFJMX0VYVF9P
U0M7Cj4gPiArCWlmIChydGMtPmRhdGEtPmhhc19sb3NjX2VuKQo+ID4gKwkJcmVnIHw9IFNVTjZJ
X0xPU0NfQ1RSTF9FWFRfTE9TQ19FTjsKPiA+ICsJd3JpdGVsKHJlZywgcnRjLT5iYXNlICsgU1VO
NklfTE9TQ19DVFJMKTsKPiA+IAo+ID4gIAkvKiBZZXMsIEkga25vdywgdGhpcyBpcyB1Z2x5LiAq
Lwo+ID4gIAlzdW42aV9ydGMgPSBydGM7Cj4gPiBAQCAtMzQ1LDYgKzM2MywyMyBAQCBDTEtfT0Zf
REVDTEFSRV9EUklWRVIoc3VuOGlfaDNfcnRjX2NsaywKPiA+ICJhbGx3aW5uZXIsc3VuOGktaDMt
cnRjIiwgQ0xLX09GX0RFQ0xBUkVfRFJJVkVSKHN1bjUwaV9oNV9ydGNfY2xrLAo+ID4gImFsbHdp
bm5lcixzdW41MGktaDUtcnRjIiwgc3VuOGlfaDNfcnRjX2Nsa19pbml0KTsKPiA+IAo+ID4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3Qgc3VuNmlfcnRjX2Nsa19kYXRhIHN1bjUwaV9oNl9ydGNfZGF0YSA9
IHsKPiA+ICsJLnJjX29zY19yYXRlID0gMTYwMDAwMDAsCj4gPiArCS5maXhlZF9wcmVzY2FsZXIg
PSAzMiwKPiA+ICsJLmhhc19wcmVzY2FsZXIgPSAxLAo+ID4gKwkuaGFzX291dF9jbGsgPSAxLAo+
ID4gKwkuZXhwb3J0X2lvc2MgPSAxLAo+ID4gKwkuaGFzX2xvc2NfZW4gPSAxLAo+ID4gKwkuaGFz
X2F1dG9fc3d0ID0gMSwKPiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyB2b2lkIF9faW5pdCBzdW41
MGlfaDZfcnRjX2Nsa19pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSkKPiA+ICt7Cj4gPiAr
CXN1bjZpX3J0Y19jbGtfaW5pdChub2RlLCAmc3VuNTBpX2g2X3J0Y19kYXRhKTsKPiA+ICt9Cj4g
PiArQ0xLX09GX0RFQ0xBUkVfRFJJVkVSKHN1bjUwaV9oNl9ydGNfY2xrLCAiYWxsd2lubmVyLHN1
bjUwaS1oNi1ydGMiLAo+ID4gKwkJICAgICAgc3VuNTBpX2g2X3J0Y19jbGtfaW5pdCk7Cj4gPiAr
Cj4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBzdW42aV9ydGNfY2xrX2RhdGEgc3VuOGlfdjNfcnRj
X2RhdGEgPSB7Cj4gPiAgCS5yY19vc2NfcmF0ZSA9IDMyMDAwLAo+ID4gIAkuaGFzX291dF9jbGsg
PSAxLAo+ID4gQEAgLTY3NSw2ICs3MTAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rldmlj
ZV9pZCBzdW42aV9ydGNfZHRfaWRzW10gPSB7Cj4gPiAgCXsgLmNvbXBhdGlibGUgPSAiYWxsd2lu
bmVyLHN1bjhpLXI0MC1ydGMiIH0sCj4gPiAgCXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1
bjhpLXYzLXJ0YyIgfSwKPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg1
LXJ0YyIgfSwKPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXJ0YyIg
fSwKPiA+ICAJeyAvKiBzZW50aW5lbCAqLyB9LAo+ID4gIH07Cj4gPiAgTU9EVUxFX0RFVklDRV9U
QUJMRShvZiwgc3VuNmlfcnRjX2R0X2lkcyk7Cj4gCj4gCj4gCj4gCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
