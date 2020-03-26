Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8553A193EE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 13:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxIbQrn7kw9FAnV69JypN4V9ytMpYnDrPmmZEqQky5E=; b=cO+zbl2iBM0ESp
	qKw7ASmHw7hx7wYfAbEYH+hhBxyKZkKOqHtniG8+/kyrjhteZtxJmBgXAJWVYNFWXbmkq/Ksu2sAS
	gw/Cu4esXarJJGzHZjJwiEq3nI1EA+JIfRsHja6peg5Ot1oIE0SZLMieKVLMxxZgs1UYd9OlPpDmG
	mLxefZ7ga8pdHcKRJ3HEmXJlVYGJh21wblyYvcVNatrVTrpv+YTdHxIzfKc303T3cTFShsSCWqkaH
	GBKgIu51zLXM+lu0Uv/FuQJodSousV/8EorvHlbJSRYPhFSlWb0Uh9vyQ1+WcXPj4aMKeYFbb8pI3
	xzQAteDGTAd7flA4v76A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHRer-0001Uz-O1; Thu, 26 Mar 2020 12:30:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHRei-0001Ta-Vq
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 12:30:42 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0302F1A09B1;
 Thu, 26 Mar 2020 13:30:34 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E970B1A090A;
 Thu, 26 Mar 2020 13:30:33 +0100 (CET)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id CA67320564;
 Thu, 26 Mar 2020 13:30:33 +0100 (CET)
Date: Thu, 26 Mar 2020 14:30:33 +0200
From: Abel Vesa <abel.vesa@nxp.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [RFC 01/11] mfd: Add i.MX generic mix support
Message-ID: <20200326123033.vi7l5mixgre2caon@fsr-ub1664-175>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-2-git-send-email-abel.vesa@nxp.com>
 <20200326110306.GE603801@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326110306.GE603801@dell>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_053041_304530_912706D9 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAtMDMtMjYgMTE6MDM6MDYsIExlZSBKb25lcyB3cm90ZToKPiBPbiBUdWUsIDAzIE1hciAy
MDIwLCBBYmVsIFZlc2Egd3JvdGU6Cj4gCj4gPiBTb21lIG9mIHRoZSBpLk1YIFNvQ3MgaGF2ZSBh
IElQIGZvciBpbnRlcmZhY2luZyB0aGUgZGVkaWNhdGVkIElQcyB3aXRoCj4gPiBjbG9ja3MsIHJl
c2V0cyBhbmQgaW50ZXJydXB0cywgcGx1cyBzb21lIG90aGVyIHNwZWNpZmljIGNvbnRyb2wgcmVn
aXN0ZXJzLgo+ID4gVG8gYWxsb3cgdGhlIGZ1bmN0aW9uYWxpdHkgdG8gYmUgc3BsaXQgYmV0d2Vl
biBkcml2ZXJzLCB0aGlzIE1GRCBkcml2ZXIgaXMKPiA+IGFkZGVkIHRoYXQgaGFzIG9ubHkgdHdv
IHB1cnBvc2VzOiByZWdpc3RlciB0aGUgZGV2aWNlcyBhbmQgbWFwIHRoZSBlbnRpcmUKPiA+IHJl
Z2lzdGVyIGFkZHJlc3Nlcy4gRXZlcnl0aGluZyBlbHNlIGlzIGxlZnQgdG8gdGhlIGRlZGljYXRl
ZCBkcml2ZXJzIHRoYXQgd2lsbAo+ID4gYmluZCB0byB0aGUgcmVnaXN0ZXJlZCBkZXZpY2VzLgo+
ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBueHAuY29tPgo+ID4g
LS0tCj4gPiAgZHJpdmVycy9tZmQvS2NvbmZpZyAgIHwgMTEgKysrKysrKysrKysKPiA+ICBkcml2
ZXJzL21mZC9NYWtlZmlsZSAgfCAgMSArCj4gPiAgZHJpdmVycy9tZmQvaW14LW1peC5jIHwgNDgg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMyBm
aWxlcyBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvbWZkL2lteC1taXguYwo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvS2Nv
bmZpZyBiL2RyaXZlcnMvbWZkL0tjb25maWcKPiA+IGluZGV4IDNjNTQ3ZWQuLjNjODkyODggMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL21mZC9LY29uZmlnCj4gPiArKysgYi9kcml2ZXJzL21mZC9L
Y29uZmlnCj4gPiBAQCAtNDYwLDYgKzQ2MCwxNyBAQCBjb25maWcgTUZEX01YMjVfVFNBREMKPiA+
ICAJICBpLk1YMjUgcHJvY2Vzc29ycy4gVGhleSBjb25zaXN0IG9mIGEgY29udmVyc2lvbiBxdWV1
ZSBmb3IgZ2VuZXJhbAo+ID4gIAkgIHB1cnBvc2UgQURDIGFuZCBhIHF1ZXVlIGZvciBUb3VjaHNj
cmVlbnMuCj4gPiAgCj4gPiArY29uZmlnIE1GRF9JTVhfTUlYCj4gPiArCXRyaXN0YXRlICJOWFAg
aS5NWCBHZW5lcmljIE1peCBDb250cm9sIERyaXZlciIKPiA+ICsJZGVwZW5kcyBvbiBPRiB8fCBD
T01QSUxFX1RFU1QKPiA+ICsJaGVscAo+ID4gKwkgIEVuYWJsZSBnZW5lcmljIG1peGVzIHN1cHBv
cnQuIE9uIHNvbWUgaS5NWCBwbGF0Zm9ybXMsIHRoZXJlIGFyZQo+ID4gKwkgIGRldmljZXMgdGhh
dCBhcmUgYSBtaXggb2YgbXVsdGlwbGUgZnVuY3Rpb25hbGl0aWVzIGxpa2UgcmVzZXQKPiA+ICsJ
ICBjb250cm9sbGVycywgY2xvY2sgY29udHJvbGxlcnMgYW5kIHNvbWUgb3RoZXJzLiBJbiBvcmRl
ciB0byBzcGxpdAo+ID4gKwkgIHRob3NlIGZ1bmN0aW9uYWxpdGllcyBiZXR3ZWVuIHRoZSByaWdo
dCBkcml2ZXJzLCB0aGlzIE1GRCBwb3B1bGF0ZXMKPiA+ICsJICB3aXRoIHZpcnR1YWwgZGV2aWNl
cyBiYXNlZCBvbiB3aGF0J3MgZm91bmQgaW4gdGhlIGRldmljZXRyZWUgbm9kZSwKPiA+ICsJICBs
ZWF2aW5nIHRoZSByZXN0IG9mIHRoZSBiZWhhdmlvciBjb250cm9sIHRvIHRoZSBkZWRpY2F0ZWQg
ZHJpdmVyLgo+ID4gKwo+ID4gIGNvbmZpZyBNRkRfSEk2NDIxX1BNSUMKPiA+ICAJdHJpc3RhdGUg
IkhpU2lsaWNvbiBIaTY0MjEgUE1VL0NvZGVjIElDIgo+ID4gIAlkZXBlbmRzIG9uIE9GCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvTWFrZWZpbGUgYi9kcml2ZXJzL21mZC9NYWtlZmlsZQo+
ID4gaW5kZXggZjkzNWQxMC4uNWIyYWU1ZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbWZkL01h
a2VmaWxlCj4gPiArKysgYi9kcml2ZXJzL21mZC9NYWtlZmlsZQo+ID4gQEAgLTExMyw2ICsxMTMs
NyBAQCBvYmotJChDT05GSUdfTUZEX1RXTDQwMzBfQVVESU8pCSs9IHR3bDQwMzAtYXVkaW8ubwo+
ID4gIG9iai0kKENPTkZJR19UV0w2MDQwX0NPUkUpCSs9IHR3bDYwNDAubwo+ID4gIAo+ID4gIG9i
ai0kKENPTkZJR19NRkRfTVgyNV9UU0FEQykJKz0gZnNsLWlteDI1LXRzYWRjLm8KPiA+ICtvYmot
JChDT05GSUdfTUZEX0lNWF9NSVgpCSs9IGlteC1taXgubwo+ID4gIAo+ID4gIG9iai0kKENPTkZJ
R19NRkRfTUMxM1hYWCkJKz0gbWMxM3h4eC1jb3JlLm8KPiA+ICBvYmotJChDT05GSUdfTUZEX01D
MTNYWFhfU1BJKQkrPSBtYzEzeHh4LXNwaS5vCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQv
aW14LW1peC5jIGIvZHJpdmVycy9tZmQvaW14LW1peC5jCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+ID4gaW5kZXggMDAwMDAwMDAuLmQzZjhjNzEKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBi
L2RyaXZlcnMvbWZkL2lteC1taXguYwo+ID4gQEAgLTAsMCArMSw0OCBAQAo+ID4gKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiArLyoKPiA+ICsgKiBDb3B5cmlnaHQgMjAx
OSBOWFAuCj4gPiArICovCj4gPiArCj4gPiArI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ID4gKyNp
bmNsdWRlIDxsaW51eC9jbGstcHJvdmlkZXIuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvZXJyLmg+
Cj4gPiArI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5o
Pgo+ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9hZGRyZXNzLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4
L3NwaW5sb2NrLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4gPiArI2luY2x1ZGUg
PGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9wbGF0Zm9y
bS5oPgo+ID4gKwo+ID4gKyNpbmNsdWRlIDxsaW51eC9tZmQvY29yZS5oPgo+ID4gKwo+ID4gK3N0
YXRpYyBpbnQgaW14X2F1ZGlvbWl4X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4gPiArewo+ID4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ID4gKwlzdHJ1
Y3QgcmVzb3VyY2UgKnJlczsKPiA+ICsJdm9pZCBfX2lvbWVtICpiYXNlOwo+ID4gKwo+ID4gKwly
ZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwgSU9SRVNPVVJDRV9NRU0sIDApOwo+ID4g
KwliYXNlID0gZGV2bV9pb3JlbWFwX3Jlc291cmNlKGRldiwgcmVzKTsKPiA+ICsJaWYgKElTX0VS
UihiYXNlKSkKPiA+ICsJCXJldHVybiBQVFJfRVJSKGJhc2UpOwo+ID4gKwo+ID4gKwlkZXZfc2V0
X2RydmRhdGEoZGV2LCBiYXNlKTsKPiA+ICsKPiA+ICsJcmV0dXJuIGRldm1fb2ZfcGxhdGZvcm1f
cG9wdWxhdGUoZGV2KTsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgaW14X2F1ZGlvbWl4X29mX21hdGNoW10gPSB7Cj4gPiArCXsgLmNvbXBhdGlibGUg
PSAiZnNsLGlteDhtcC1hdWRpb21peCIgfSwKPiA+ICsJeyAvKiBTZW50aW5lbCAqLyB9LAo+ID4g
K307Cj4gPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgaW14X2F1ZGlvbWl4X29mX21hdGNoKTsK
PiAKPiBUaGlzIG5lZWRzIERUIGJpbmRpbmcgZG9jdW1lbnRhdGlvbi4KPiAKPiBEbyB0aGUgc3Vi
LWRldmljZSBtZW1vcnkgcmFuZ2VzIG92ZXJsYXA/Cj4gCgpZZXMsIHRoZXkgZG8uCgpSZXNlbnQg
YW5vdGhlciB2ZXJzaW9uIG9mIHRoaXMgc2VyaWVzIHllc3RlcmRheS4KCj4gPiArc3RhdGljIHN0
cnVjdCBwbGF0Zm9ybV9kcml2ZXIgaW14X2F1ZGlvbWl4X2RyaXZlciA9IHsKPiA+ICsJLnByb2Jl
ID0gaW14X2F1ZGlvbWl4X3Byb2JlLAo+ID4gKwkuZHJpdmVyID0gewo+ID4gKwkJLm5hbWUgPSAi
aW14LWF1ZGlvbWl4IiwKPiA+ICsJCS5vZl9tYXRjaF90YWJsZSA9IG9mX21hdGNoX3B0cihpbXhf
YXVkaW9taXhfb2ZfbWF0Y2gpLAo+ID4gKwl9LAo+ID4gK307Cj4gPiArbW9kdWxlX3BsYXRmb3Jt
X2RyaXZlcihpbXhfYXVkaW9taXhfZHJpdmVyKTsKPiAKPiAtLSAKPiBMZWUgSm9uZXMgW+adjueQ
vOaWr10KPiBMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKPiBMaW5hcm8ub3JnIOKUgiBP
cGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKPiBGb2xsb3cgTGluYXJvOiBGYWNlYm9v
ayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
