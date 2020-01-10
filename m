Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD6C136806
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7l6xt5717kXeKCzATRjRUm3i6cT/AJF7OYeaBlNX+U=; b=gxBe+PsVeWREa4
	9VlhCJCkydrJCjSdgq0icXBxoc/Vbw0+zJSPZ21CB3kZbZf6yVbaZ7BOfIoTn2m2iTOHppi0OnkfH
	66d6zPSsUXibHLIlvcp3fSY/j1NLv58nI2tCnHXY+V/A3pAyJWK4XYSqWRFRNK/iahX6jr9roxmOv
	3XLBpGA7INTS+ZfZF7eMDTrh2iDEAqjSQfyUNWbDLUGJJ4Qllv7CLgahyW6DhulBRFlYcQ9U84OkG
	wV1JINx+5cAZ1VT50Q/nsdcGveci6o3Qb2r0kdvaGvk5yZaEI6bCqX/jNcljarRGNARrz0Mzo91LY
	X+Y/taWg8y8MIIGmcHew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipoUI-0001UO-ML; Fri, 10 Jan 2020 07:13:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipoU7-0001SE-DA
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 07:13:34 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B58732073A;
 Fri, 10 Jan 2020 07:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578640410;
 bh=u3nc95r1jFTqR3hP2067iUtba3cgdved2A2t1XDWrfE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AkJi4eIokl+gNJwTiX5L2s1jG52dPvA6Jgftv8vlJJE5IuPr77FpapwCggwQGjNBo
 Lc0xGT2B6tpVICrV2wlunZa2Te4JDR3hhMlVY2bVtYkAn52knN+iraay07u7eZGKjt
 FQGPESEPyb1w3Ih9YAIsyu1MxcWPmabID1Su8r4E=
Date: Fri, 10 Jan 2020 08:13:28 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH AUTOSEL 4.19 102/177] nvmem: imx-ocotp: reset error
 status on probe
Message-ID: <20200110071328.GA100095@kroah.com>
References: <20191210213221.11921-1-sashal@kernel.org>
 <20191210213221.11921-102-sashal@kernel.org>
 <dd048e02-81f7-8aed-34a7-f95a70859391@armadeus.com>
 <2dc7001f362358dfdcbef080118b23cabaa03a40.camel@pengutronix.de>
 <CF40B493-27C8-4DF4-BB43-624CC797B12C@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CF40B493-27C8-4DF4-BB43-624CC797B12C@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_231331_489634_FFD7881C 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKYW4gMDcsIDIwMjAgYXQgMDg6Mjk6MTJQTSArMDEwMCwgU8OpYmFzdGllbiBTenlt
YW5za2kgd3JvdGU6Cj4gSGkgTHVjYXMsCj4gCj4gPiBPbiA3IEphbiAyMDIwLCBhdCAxODo1Mywg
THVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+ID4gCj4gPiBIaSBT
w6liYXN0aWVuLAo+ID4gCj4gPiBPbiBEaSwgMjAyMC0wMS0wNyBhdCAxNTo1MCArMDEwMCwgU8Op
YmFzdGllbiBTenltYW5za2kgd3JvdGU6Cj4gPj4gT24gMTIvMTAvMTkgMTA6MzEgUE0sIFNhc2hh
IExldmluIHdyb3RlOgo+ID4+PiBGcm9tOiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25p
eC5kZT4KPiA+Pj4gCj4gPj4+IFsgVXBzdHJlYW0gY29tbWl0IGMzM2M1ODVmMWIzYTk5ZDUzOTIw
YmRhYzYxNGFjYTQ2MWQ4ZGIwNmYgXQo+ID4+PiAKPiA+Pj4gSWYgc29mdHdhcmUgcnVubmluZyBi
ZWZvcmUgdGhlIE9DT1RQIGRyaXZlciBpcyBsb2FkZWQgbGVmdCB0aGUKPiA+Pj4gY29udHJvbGxl
ciB3aXRoIHRoZSBlcnJvciBzdGF0dXMgcGVuZGluZywgdGhlIGRyaXZlciB3aWxsIG5ldmVyCj4g
Pj4+IGJlIGFibGUgdG8gY29tcGxldGUgdGhlIHJlYWQgdGltaW5nIHNldHVwLiBSZXNldCB0aGUg
ZXJyb3Igc3RhdHVzCj4gPj4+IG9uIHByb2JlIHRvIG1ha2Ugc3VyZSB0aGUgY29udHJvbGxlciBp
cyBpbiB1c2FibGUgc3RhdGUuCj4gPj4+IAo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBTdGFj
aCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogU3Jpbml2YXMg
S2FuZGFnYXRsYSA8c3Jpbml2YXMua2FuZGFnYXRsYUBsaW5hcm8ub3JnPgo+ID4+PiBMaW5rOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMTkxMDI5MTE0MjQwLjE0OTA1LTYtc3Jpbml2YXMu
a2FuZGFnYXRsYUBsaW5hcm8ub3JnCj4gPj4+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFy
dG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFNh
c2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KPiA+Pj4gLS0tCj4gPj4+IGRyaXZlcnMvbnZt
ZW0vaW14LW9jb3RwLmMgfCA0ICsrKysKPiA+Pj4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKQo+ID4+PiAKPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZW0vaW14LW9jb3RwLmMg
Yi9kcml2ZXJzL252bWVtL2lteC1vY290cC5jCj4gPj4+IGluZGV4IGFmYjQyOWE0MTdmZTAuLjky
NmQ5Y2MwODBjZjQgMTAwNjQ0Cj4gPj4+IC0tLSBhL2RyaXZlcnMvbnZtZW0vaW14LW9jb3RwLmMK
PiA+Pj4gKysrIGIvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAuYwo+ID4+PiBAQCAtNDY2LDYgKzQ2
NiwxMCBAQCBzdGF0aWMgaW50IGlteF9vY290cF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ID4+PiAJaWYgKElTX0VSUihwcml2LT5jbGspKQo+ID4+PiAJCXJldHVybiBQVFJf
RVJSKHByaXYtPmNsayk7Cj4gPj4+IAo+ID4+PiArCWNsa19wcmVwYXJlX2VuYWJsZShwcml2LT5j
bGspOwo+ID4+PiArCWlteF9vY290cF9jbHJfZXJyX2lmX3NldChwcml2LT5iYXNlKTsKPiA+Pj4g
KwljbGtfZGlzYWJsZV91bnByZXBhcmUocHJpdi0+Y2xrKTsKPiA+Pj4gKwo+ID4+PiAJcHJpdi0+
cGFyYW1zID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKCZwZGV2LT5kZXYpOwo+ID4+PiAJaW14
X29jb3RwX252bWVtX2NvbmZpZy5zaXplID0gNCAqIHByaXYtPnBhcmFtcy0+bnJlZ3M7Cj4gPj4+
IAlpbXhfb2NvdHBfbnZtZW1fY29uZmlnLmRldiA9IGRldjsKPiA+Pj4gCj4gPj4gCj4gPj4gSGks
Cj4gPj4gCj4gPj4gVGhpcyBwYXRjaCBtYWtlcyBrZXJuZWwgNC4xOS57OTIsOTN9IGhhbmcgYXQg
Ym9vdCBvbiBteSBpLk1YNlVMTCBiYXNlZAo+ID4+IGJvYXJkLiBJdCBoYW5rcyBhdAo+ID4+IAo+
ID4+IFsgICAgMy43MzAwNzhdIGNwdSBjcHUwOiBMaW5rZWQgYXMgYSBjb25zdW1lciB0byByZWd1
bGF0b3IuMgo+ID4+IFsgICAgMy43Mzc3NjBdIGNwdSBjcHUwOiBMaW5rZWQgYXMgYSBjb25zdW1l
ciB0byByZWd1bGF0b3IuMwo+ID4+IAo+ID4+IEZ1bGwgYm9vdCBsb2cgaXMgaGVyZTogaHR0cHM6
Ly9wYXN0ZWJpbi5jb20vVFM4RUZ4a3IKPiA+PiAKPiA+PiBUaGUgY29uZmlnIGlzIGlteF92Nl92
N19kZWZjb25maWcuCj4gPj4gCj4gPj4gUmV2ZXJ0aW5nIGl0IG1ha2VzIHRoZSBrZXJuZWxzIGJv
b3QgYWdhaW4uCj4gPiAKPiA+IENhbiB5b3UgY2hlY2sgaWYgaXQgYWN0dWFsbHkgaGFuZ3MgaW4g
aW14X29jb3RwX2Nscl9lcnJfaWZfc2V0KCksIG9yIGlmCj4gPiB0aGUgY2xrX2Rpc2FibGVfdW5w
cmVwYXJlKCkgaXMgdGhlIGN1bHByaXQ/Cj4gPiAKPiA+IElmIHRoZSBjbG9jayBkaXNhYmxlIGhh
bmdzIHRoZSBzeXN0ZW0gdGhlcmUgaXMgYSBtaXNzaW5nIGNsb2NrCj4gPiByZWZlcmVuY2Ugc29t
ZXdoZXJlIGVsc2UgdGhhdCB3ZSBuZWVkIHRvIHRyYWNrIGRvd24uCj4gCj4gWWVzLCB0aGUgc3lz
dGVtIGhhbmdzIGluIHRoZSBpbXg2cS1jcHVmcmVxIGRyaXZlciwgaGVyZToKPiBodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdGFibGUvbGludXguZ2l0L3Ry
ZWUvZHJpdmVycy9jcHVmcmVxL2lteDZxLWNwdWZyZXEuYz9oPXY0LjE5LjkzI24zMjIKPiAKPiBL
ZXJuZWwgNS40Ljggd29ya3MgdGhhbmtzIHRvIGNvbW1pdHM6Cj4gCj4gMjczM2ZiMGQwNjk5ICji
gJxjcHVmcmVxOiBpbXg2cTogcmVhZCBPQ09UUCB0aHJvdWdoIG52bWVtIGZvciBpbXg2dWwvaW14
NnVsbOKAnSkKPiA5MmYwZWIwOGM2NmEgKCJBUk06IGR0czogaW14NnVsOiB1c2UgbnZtZW0tY2Vs
bHMgZm9yIGNwdSBzcGVlZCBncmFkaW5n4oCdKQoKSSd2ZSBub3cgcXVldWVkIGJvdGggb2YgdGhl
c2UgdXAgZm9yIDQuMTksIGhvcGVmdWxseSB0aGF0IHNob3VsZCByZXNvbHZlCnRoaXMgaXNzdWUs
IHRoYW5rcyEKCmdyZWcgay1oCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
