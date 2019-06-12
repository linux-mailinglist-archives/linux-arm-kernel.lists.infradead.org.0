Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D701C42768
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIrBDZQ3aBWKsukpV34EY/T6XCBYl8katzGBv2keUSo=; b=QoB7tjzPXSPX9i
	tpaA1bU1GRP7OgLJOk7RPr3So8fQLyAOE/KImopMmDsTerLIBKAHUME3obVWhUM8ih9CV+0DrXZwA
	k4w1eeI9WM6lbnOr0T8s3XtfYJ2/0GgfiCL8ZMaLU2QCY7KWWAPmgRTlujexcz3Z1EuFlKolvpSBK
	LwiaKTix8ntO3Ot1SEq09nVVX6qDD0wy0w+BbVfa0oALMqLDXOcxwMhKXKsa4h03NZx5I839WR1Lt
	d4KPt/4f2QnxUUF/TfOIGho0tV3tDL6mX4/NB8Gz8yolk865E1t1jFbxEbLimXxKmMXfcCpCV2UGK
	T5eRNb1WbRm9Lq9VGF9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3HE-0004Ps-Nq; Wed, 12 Jun 2019 13:26:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3H3-0004PR-9g
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:26:46 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1AA9920866;
 Wed, 12 Jun 2019 13:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560346004;
 bh=NM/4gZb0J83hRo3GjTDGogF0kEC8Qio6Tsc1tV61U7I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZAdGtljkJqX9KUoyGddtloo7a1KIXSmwkorvJ1FPH3hECWiB47rEz7umtF889uIAZ
 st0rPgwtAxNI94JP0sCnAgXqVXDyiC7py8EiUaaxv68/0vjtWCdC3f9Mualy5WGo+9
 R5yCVVLPx60K93T53td5GSOXDr5RpZ+qnUz/Dc8M=
Date: Wed, 12 Jun 2019 21:26:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Horia Geanta <horia.geanta@nxp.com>
Subject: Re: [PATCH] ARM: dts: imx7ulp: add crypto support
Message-ID: <20190612132600.GI11086@dragon>
References: <20190606080255.25504-1-horia.geanta@nxp.com>
 <20190612103926.GE11086@dragon>
 <VI1PR0402MB3485A573518D60A573BA55C298EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <20190612130602.GH11086@dragon>
 <VI1PR0402MB348596BF52CE43B5D4CD534798EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0402MB348596BF52CE43B5D4CD534798EC0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_062645_378254_FCFE0EB0 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Iuliana Prodan <iuliana.prodan@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMDE6MTU6NDZQTSArMDAwMCwgSG9yaWEgR2VhbnRhIHdy
b3RlOgo+IE9uIDYvMTIvMjAxOSA0OjA2IFBNLCBTaGF3biBHdW8gd3JvdGU6Cj4gPiBPbiBXZWQs
IEp1biAxMiwgMjAxOSBhdCAxMTo0NToxOEFNICswMDAwLCBIb3JpYSBHZWFudGEgd3JvdGU6Cj4g
Pj4gT24gNi8xMi8yMDE5IDE6NDAgUE0sIFNoYXduIEd1byB3cm90ZToKPiA+Pj4gT24gVGh1LCBK
dW4gMDYsIDIwMTkgYXQgMTE6MDI6NTVBTSArMDMwMCwgSG9yaWEgR2VhbnTEgyB3cm90ZToKPiA+
Pj4+IEZyb206IEl1bGlhbmEgUHJvZGFuIDxpdWxpYW5hLnByb2RhbkBueHAuY29tPgo+ID4+Pj4K
PiA+Pj4+IEFkZCBjcnlwdG8gbm9kZSBpbiBkZXZpY2UgdHJlZSBmb3IgQ0FBTSBzdXBwb3J0Lgo+
ID4+Pj4KPiA+Pj4+IE5vdGV3b3J0aHkgaXMgdGhhdCBvbiA3dWxwIHRoZSBpbnRlcnJ1cHQgbGlu
ZSBpcyBzaGFyZWQKPiA+Pj4+IGJldHdlZW4gdGhlIHR3byBqb2IgcmluZ3MuCj4gPj4+Pgo+ID4+
Pj4gU2lnbmVkLW9mZi1ieTogSXVsaWFuYSBQcm9kYW4gPGl1bGlhbmEucHJvZGFuQG54cC5jb20+
Cj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBGcmFuY2sgTEVOT1JNQU5EIDxmcmFuY2subGVub3JtYW5k
QG54cC5jb20+Cj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBIb3JpYSBHZWFudMSDIDxob3JpYS5nZWFu
dGFAbnhwLmNvbT4KPiA+Pj4+IC0tLQo+ID4+Pj4KPiA+Pj4+IEkndmUganVzdCByZWFsaXplZCB0
aGF0IHRoaXMgcGF0Y2ggc2hvdWxkIGJlIG1lcmdlZCB0aHJvdWdoIHRoZSBjcnlwdG8gdHJlZSwK
PiA+Pj4+IGVsc2UgYmlzZWN0YWJpbGl0eSBjb3VsZCBiZSBhZmZlY3RlZCBkdWUgdG8gY3J5cHRv
ZGV2LTIuNgo+ID4+Pj4gY29tbWl0IDM4NWNmYzg0YTVhOCAoImNyeXB0bzogY2FhbSAtIGRpc2Fi
bGUgc29tZSBjbG9jayBjaGVja3MgZm9yIGlNWDdVTFAiKQo+ID4+Pj4gKCBodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3BhdGNoLzEwOTcwMDE3LyApCj4gPj4+PiB3aGljaCBzaG91bGQgY29t
ZSBmaXJzdC4KPiA+Pj4KPiA+Pj4gSSdtIG5vdCBzdXJlIEkgZm9sbG93IGl0LiAgVGhpcyBpcyBh
IG5ldyBkZXZpY2UgYWRkZWQgdG8gaW14N3VscCBEVC4KPiA+Pj4gSXQncyBuZXZlciB3b3JrZWQg
YmVmb3JlIG9uIGlteDd1bHAuICBIb3cgd291bGQgaXQgYWZmZWN0IGdpdCBiaXNlY3Q/Cj4gPj4+
Cj4gPj4gRHJpdmVyIGNvcnJlc3BvbmRpbmcgdG8gdGhpcyBkZXZpY2UgKGRyaXZlcnMvY3J5cHRv
L2NhYW0pIGhhcyB0byBiZSB1cGRhdGVkCj4gPj4gYmVmb3JlIGFkZGluZyB0aGUgbm9kZSBpbiBE
VC4KPiA+PiBJcyB0aGVyZSBhbnkgZ3VhcmFudGVlIHdydC4gbWVyZ2Ugb3JkZXIgb2YgdGhlIGNy
eXB0byBhbmQgRFQgdHJlZXM/Cj4gPiAKPiA+IERvIG5vdCBtZXJnZSBEVCBjaGFuZ2VzIHVudGls
IGRyaXZlciBwYXJ0IGhpdHMgbWFpbmxpbmUuCj4gPiAKPiBUaGF0IHdvdWxkIG1lYW4gZHJpdmVy
IGNoYW5nZXMgd291bGQgYmUgbWVyZ2VkIGluIHY1LjMgYW5kIERUIG5vZGUgaW4gdjUuNC4KCkl0
J3MgcXVpdGUgbm9ybWFsIHRoYXQgZGVwZW5kZW50IGNoYW5nZXMgbGFuZCBvbiBtYWlubGluZSBp
biBtdWx0aXBsZQpjeWNsZXMuCgo+IAo+IFdvdWxkIGdvaW5nIHRocm91Z2ggdGhlIGNyeXB0byB0
cmVlIHdpdGggdGhpcyBwYXRjaCBiZSBzdWNoIGEgYmlnIGlzc3VlPwoKVGhlIG9ubHkgaXNzdWUg
d291bGQgYmUgdGhlIHBvdGVudGlhbCBtZXJnZSBjb25mbGljdC4KCj4gSSBkb24ndCB0aGluayBp
dCdzIHRoZSBmaXJzdCB0aW1lIChyZWxhdGl2ZWx5IHNtYWxsKSBEVCBwYXRjaGVzCj4gYXJlIG1l
cmdlZCB2aWEgb3RoZXIgdHJlZXMuCgpZZXMsIGl0IGhhcHBlbnMgZnJvbSB0aW1lIHRvIHRpbWUg
ZGVwZW5kaW5nIG9uIG1haW50YWluZXIncyBzdHlsZS4gSSdtCmZpbmUgd2l0aCB0aGUgRFQgY2hh
bmdlcyBnb2luZyB0aHJvdWdoIG90aGVyIHN1YnN5c3RlbSB0cmVlLCBpZiB0aGUKc3Vic3lzdGVt
IG1haW50YWluZXIgd2FudHMgdG8gYW5kIGlzIHdpbGxpbmcgdG8gdGFrZSB0aGUgcmlzayBvZiBt
ZXJnZQpjb25mbGljdCBiZXR3ZWVuIGhpcyB0cmVlIGFuZCBhcm0tc29jIHRyZWUuCgpTaGF3bgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
