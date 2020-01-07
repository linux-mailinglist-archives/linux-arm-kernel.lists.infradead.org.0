Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE8B132DA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 18:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlrcbYyPiu9BSFeXx0yDwXCkSioDYSHUkedizUS98EE=; b=H5LKxv40oXAyGh
	1xkOntJi35jmk9BX5qp+h2L0rBKyTYNChwAvpC69BDAE+zTFIYTmDGV9ANKRkyC3es1eMIQUEJ3yp
	Dy2AIm/R4XBvoyhvdwGdOKFggK6KvO1aO+Mw+tQ5c8j0IRSFil+m+lmtur0kzVAEvvFWucuU48oY1
	fxAUPWqWGu+5KUHtnx3nUdKFbmIgL1I8Yujqc/dIm2Ds+RPS3f/nAz+lHFN60TznODlEUVJvxIb0a
	86GLIidyqZ9k14LvCh/4I5ZepDHRNmBpovn4eQ0Q1XpWHHGq1dUlRW4v7/GFfKZ/bcsr7TASkZlSk
	69lyqWRogCTOgXtVB3YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iot35-0000TK-Vj; Tue, 07 Jan 2020 17:53:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iot2y-0000SQ-U5
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 17:53:42 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iot2q-0000OS-Nf; Tue, 07 Jan 2020 18:53:32 +0100
Message-ID: <2dc7001f362358dfdcbef080118b23cabaa03a40.camel@pengutronix.de>
Subject: Re: [PATCH AUTOSEL 4.19 102/177] nvmem: imx-ocotp: reset error
 status on probe
From: Lucas Stach <l.stach@pengutronix.de>
To: =?ISO-8859-1?Q?S=E9bastien?= Szymanski
 <sebastien.szymanski@armadeus.com>,  Sasha Levin <sashal@kernel.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Date: Tue, 07 Jan 2020 18:53:32 +0100
In-Reply-To: <dd048e02-81f7-8aed-34a7-f95a70859391@armadeus.com>
References: <20191210213221.11921-1-sashal@kernel.org>
 <20191210213221.11921-102-sashal@kernel.org>
 <dd048e02-81f7-8aed-34a7-f95a70859391@armadeus.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_095340_971178_959722C7 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Fabio Estevam <festevam@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU8OpYmFzdGllbiwKCk9uIERpLCAyMDIwLTAxLTA3IGF0IDE1OjUwICswMTAwLCBTw6liYXN0
aWVuIFN6eW1hbnNraSB3cm90ZToKPiBPbiAxMi8xMC8xOSAxMDozMSBQTSwgU2FzaGEgTGV2aW4g
d3JvdGU6Cj4gPiBGcm9tOiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPiA+
IAo+ID4gWyBVcHN0cmVhbSBjb21taXQgYzMzYzU4NWYxYjNhOTlkNTM5MjBiZGFjNjE0YWNhNDYx
ZDhkYjA2ZiBdCj4gPiAKPiA+IElmIHNvZnR3YXJlIHJ1bm5pbmcgYmVmb3JlIHRoZSBPQ09UUCBk
cml2ZXIgaXMgbG9hZGVkIGxlZnQgdGhlCj4gPiBjb250cm9sbGVyIHdpdGggdGhlIGVycm9yIHN0
YXR1cyBwZW5kaW5nLCB0aGUgZHJpdmVyIHdpbGwgbmV2ZXIKPiA+IGJlIGFibGUgdG8gY29tcGxl
dGUgdGhlIHJlYWQgdGltaW5nIHNldHVwLiBSZXNldCB0aGUgZXJyb3Igc3RhdHVzCj4gPiBvbiBw
cm9iZSB0byBtYWtlIHN1cmUgdGhlIGNvbnRyb2xsZXIgaXMgaW4gdXNhYmxlIHN0YXRlLgo+ID4g
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4K
PiA+IFNpZ25lZC1vZmYtYnk6IFNyaW5pdmFzIEthbmRhZ2F0bGEgPHNyaW5pdmFzLmthbmRhZ2F0
bGFAbGluYXJvLm9yZz4KPiA+IExpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAxOTEw
MjkxMTQyNDAuMTQ5MDUtNi1zcmluaXZhcy5rYW5kYWdhdGxhQGxpbmFyby5vcmcKPiA+IFNpZ25l
ZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Cj4gPiAt
LS0KPiA+ICBkcml2ZXJzL252bWVtL2lteC1vY290cC5jIHwgNCArKysrCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1l
bS9pbXgtb2NvdHAuYyBiL2RyaXZlcnMvbnZtZW0vaW14LW9jb3RwLmMKPiA+IGluZGV4IGFmYjQy
OWE0MTdmZTAuLjkyNmQ5Y2MwODBjZjQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL252bWVtL2lt
eC1vY290cC5jCj4gPiArKysgYi9kcml2ZXJzL252bWVtL2lteC1vY290cC5jCj4gPiBAQCAtNDY2
LDYgKzQ2NiwxMCBAQCBzdGF0aWMgaW50IGlteF9vY290cF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ID4gIAlpZiAoSVNfRVJSKHByaXYtPmNsaykpCj4gPiAgCQlyZXR1cm4g
UFRSX0VSUihwcml2LT5jbGspOwo+ID4gIAo+ID4gKwljbGtfcHJlcGFyZV9lbmFibGUocHJpdi0+
Y2xrKTsKPiA+ICsJaW14X29jb3RwX2Nscl9lcnJfaWZfc2V0KHByaXYtPmJhc2UpOwo+ID4gKwlj
bGtfZGlzYWJsZV91bnByZXBhcmUocHJpdi0+Y2xrKTsKPiA+ICsKPiA+ICAJcHJpdi0+cGFyYW1z
ID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKCZwZGV2LT5kZXYpOwo+ID4gIAlpbXhfb2NvdHBf
bnZtZW1fY29uZmlnLnNpemUgPSA0ICogcHJpdi0+cGFyYW1zLT5ucmVnczsKPiA+ICAJaW14X29j
b3RwX252bWVtX2NvbmZpZy5kZXYgPSBkZXY7Cj4gPiAKPiAKPiBIaSwKPiAKPiBUaGlzIHBhdGNo
IG1ha2VzIGtlcm5lbCA0LjE5Lns5Miw5M30gaGFuZyBhdCBib290IG9uIG15IGkuTVg2VUxMIGJh
c2VkCj4gYm9hcmQuIEl0IGhhbmtzIGF0Cj4gCj4gWyAgICAzLjczMDA3OF0gY3B1IGNwdTA6IExp
bmtlZCBhcyBhIGNvbnN1bWVyIHRvIHJlZ3VsYXRvci4yCj4gWyAgICAzLjczNzc2MF0gY3B1IGNw
dTA6IExpbmtlZCBhcyBhIGNvbnN1bWVyIHRvIHJlZ3VsYXRvci4zCj4gCj4gRnVsbCBib290IGxv
ZyBpcyBoZXJlOiBodHRwczovL3Bhc3RlYmluLmNvbS9UUzhFRnhrcgo+IAo+IFRoZSBjb25maWcg
aXMgaW14X3Y2X3Y3X2RlZmNvbmZpZy4KPiAKPiBSZXZlcnRpbmcgaXQgbWFrZXMgdGhlIGtlcm5l
bHMgYm9vdCBhZ2Fpbi4KCkNhbiB5b3UgY2hlY2sgaWYgaXQgYWN0dWFsbHkgaGFuZ3MgaW4gaW14
X29jb3RwX2Nscl9lcnJfaWZfc2V0KCksIG9yIGlmCnRoZSBjbGtfZGlzYWJsZV91bnByZXBhcmUo
KSBpcyB0aGUgY3VscHJpdD8KCklmIHRoZSBjbG9jayBkaXNhYmxlIGhhbmdzIHRoZSBzeXN0ZW0g
dGhlcmUgaXMgYSBtaXNzaW5nIGNsb2NrCnJlZmVyZW5jZSBzb21ld2hlcmUgZWxzZSB0aGF0IHdl
IG5lZWQgdG8gdHJhY2sgZG93bi4KClJlZ2FyZHMsCkx1Y2FzCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
