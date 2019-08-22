Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B490997CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 17:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xeut+KzMU8uWBEuxZwvXcXRBoT1VXBcnYa/r591+OY0=; b=MtcTR63GtVu25uE7yuaH1h02S
	URMZbZDf1NTn9CoGZFJi8mkUwsaXIPHqtI6jRRGkpeA5U7bfAH3pWx0ntVpBXIekc4QxL/pmbw03X
	uiC7UEdaVU49so7bRmgubsJWU4D5O8/NMR+KLSkqRXO5+ARsu9kzII+h+ibsVogR+u0VeOqWbPRx0
	Kg5MP5T+1QVpHBupxRWqlU29HR48xeGo1liF0eHSiFhfPbZmmHwj44T4v716gQN3mLKjdLL/bFOAs
	zR/jJXB6oV0FIUkdTrV1lJwitrxAuGkuPEfE0BFwrGGb8eoJAlpGiF0ix3qv2cY3P34PIgEHaZrlJ
	ugzxP2omg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0okT-0003UD-Rc; Thu, 22 Aug 2019 15:11:38 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0okD-0003TN-Rm; Thu, 22 Aug 2019 15:11:24 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id CC0475FC44;
 Thu, 22 Aug 2019 17:11:16 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="dYtNjIu0"; dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 793D71D85FE6;
 Thu, 22 Aug 2019 17:11:16 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 793D71D85FE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566486676;
 bh=pWtXsRVEPvLed/m0NhhlKu1CLza7De9LHyjrNdYZbdw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dYtNjIu04is6DPPpcRUqOnSHBRAWJuENhjamzlkFcc69mGO3UfQ3rsngHuva405Ha
 Sf5D+/HMAqHmafBNG8I9vTUaW1SbS+dtuyQPKaqOEwzoP+22izycD/C2tswjAIR9A8
 z4YKAjK0nuAEI1H0+0Mk7BEakNXjYBNeM5QDi79kZSKYlaquhliHINULslkHDOW2aI
 c4/YqK5inUtYUUTbx5tmLY0lheFwhmR28bcfPzcQMTIqHRgOayJpgCQbp62D9Q9sHW
 +pgb9NVMHtGsvrCejRaJDOJF/5b0maqGgeBus9yWOdWZRepvuqnmewN04zsKY/7BzC
 wH5MogCvoHYew==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Thu, 22 Aug 2019 15:11:16 +0000
Date: Thu, 22 Aug 2019 15:11:16 +0000
Message-ID: <20190822151116.Horde.3pVh2Kr0MEO82EWm7859Zd2@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH net-next v2 1/3] net: ethernet: mediatek: Add basic
 PHYLINK support
References: <20190821144336.9259-1-opensource@vdorst.com>
 <20190821144336.9259-2-opensource@vdorst.com>
 <20190822142739.GS13294@shell.armlinux.org.uk>
In-Reply-To: <20190822142739.GS13294@shell.armlinux.org.uk>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_081122_314831_C49521A0 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Nelson Chang <nelson.chang@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Stefan Roese <sr@denx.de>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbCwKClF1b3RpbmcgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIDxsaW51
eEBhcm1saW51eC5vcmcudWs+OgoKPiBPbiBXZWQsIEF1ZyAyMSwgMjAxOSBhdCAwNDo0MzozNFBN
ICswMjAwLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4+ICtzdGF0aWMgdm9pZCBtdGtfbWFjX2xp
bmtfZG93bihzdHJ1Y3QgcGh5bGlua19jb25maWcgKmNvbmZpZywgIAo+PiB1bnNpZ25lZCBpbnQg
bW9kZSwKPj4gKwkJCSAgICAgIHBoeV9pbnRlcmZhY2VfdCBpbnRlcmZhY2UpCj4+ICt7Cj4+ICsJ
c3RydWN0IG10a19tYWMgKm1hYyA9IGNvbnRhaW5lcl9vZihjb25maWcsIHN0cnVjdCBtdGtfbWFj
LAo+PiArCQkJCQkgICBwaHlsaW5rX2NvbmZpZyk7Cj4+Cj4+IC0JcmV0dXJuIDA7Cj4+ICsJbXRr
X3czMihtYWMtPmh3LCBNQUNfTUNSX0ZPUkNFX0xJTktfRE9XTiwgTVRLX01BQ19NQ1IobWFjLT5p
ZCkpOwo+PiAgfQo+Cj4gWW91IHNldCB0aGUgTUFDX01DUl9GT1JDRV9NT0RFIGJpdCBoZXJlLi4u
Cj4KPj4gK3N0YXRpYyB2b2lkIG10a19tYWNfbGlua191cChzdHJ1Y3QgcGh5bGlua19jb25maWcg
KmNvbmZpZywgIAo+PiB1bnNpZ25lZCBpbnQgbW9kZSwKPj4gKwkJCSAgICBwaHlfaW50ZXJmYWNl
X3QgaW50ZXJmYWNlLAo+PiArCQkJICAgIHN0cnVjdCBwaHlfZGV2aWNlICpwaHkpCj4+ICB7Cj4+
ICsJc3RydWN0IG10a19tYWMgKm1hYyA9IGNvbnRhaW5lcl9vZihjb25maWcsIHN0cnVjdCBtdGtf
bWFjLAo+PiArCQkJCQkgICBwaHlsaW5rX2NvbmZpZyk7Cj4+ICsJdTMyIG1jciA9IG10a19yMzIo
bWFjLT5odywgTVRLX01BQ19NQ1IobWFjLT5pZCkpOwo+Pgo+PiArCW1jciB8PSBNQUNfTUNSX1RY
X0VOIHwgTUFDX01DUl9SWF9FTjsKPj4gKwltdGtfdzMyKG1hYy0+aHcsIG1jciwgTVRLX01BQ19N
Q1IobWFjLT5pZCkpOwo+PiArfQo+Cj4gTG9va2luZyBhdCB0aGlzLCBhIGxpbmtfZG93bigpIGZv
bGxvd2VkIGJ5IGEgbGlua191cCgpIHdvdWxkIHJlc3VsdCBpbgo+IHRoaXMgcmVnaXN0ZXIgY29u
dGFpbmluZyBNQUNfTUNSX0ZPUkNFX01PREUgfCBNQUNfTUNSX1RYX0VOIHwKPiBNQUNfTUNSX1JY
X0VOID8gIElzIHRoYXQgYWN0dWFsbHkgY29ycmVjdD8gIChNQUNfTUNSX0ZPUkNFX0xJTksgaXNu
J3QKPiBzZXQsIHNvIGl0IGxvb2tzIHRvIG1lIGxpa2UgaXQgc3RpbGwgZm9yY2VzIHRoZSBsaW5r
IGRvd24uKQoKVGhhbmtzIGZvciByZXZpZXdpbmcuCgpQcm9iYWJseSBub3QuCkkgYXNzdW1lZCB0
aGF0IG1hY19jb25maWcoKSBpcyBhbHdheXMgY2FsbGVkIGJlZm9yZSBsaW5rX3VwKCkKCkkgc2lt
cGx5IGNhbiBtYWtlIGl0IHRoZSBvcHBvc2l0ZSBvZiBsaW5rX3VwKCkKCmxpa2UgdGhpczoKc3Rh
dGljIHZvaWQgbXRrX21hY19saW5rX2Rvd24oc3RydWN0IHBoeWxpbmtfY29uZmlnICpjb25maWcs
IHVuc2lnbmVkICAKaW50IG1vZGUsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwaHlf
aW50ZXJmYWNlX3QgaW50ZXJmYWNlKQp7CiAgICAgICBzdHJ1Y3QgbXRrX21hYyAqbWFjID0gY29u
dGFpbmVyX29mKGNvbmZpZywgc3RydWN0IG10a19tYWMsCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBwaHlsaW5rX2NvbmZpZyk7CiAgICAgICB1MzIgbWNyID0gbXRrX3IzMihtYWMt
Pmh3LCBNVEtfTUFDX01DUihtYWMtPmlkKSk7CgogICAgICAgbWNyICY9IChNQUNfTUNSX1RYX0VO
IHwgTUFDX01DUl9SWF9FTik7CiAgICAgICBtdGtfdzMyKG1hYy0+aHcsIG1jciwgTVRLX01BQ19N
Q1IobWFjLT5pZCkpOwp9Cgo+Cj4gTm90ZSB0aGF0IGxpbmsgdXAvZG93biBmb3JjaW5nIHNob3Vs
ZCBub3QgYmUgZG9uZSBmb3IgaW4tYmFuZCBBTi4KPgoKVGhpcyBtZWFucyB0aGF0IG1hY19jb25m
aWcoKSBvZiB0aGUgU0dNSUkgcGF0Y2ggaXMgYWxzbyBpbmNvcnJlY3Q/CgptYWNfY29uZmlnKCkg
YWx3YXlzIHNldHMgdGhlIE1BQyBpbiBhIGZvcmNlIG1vZGUuCkJ1dCB0aGUgU0dNSUkgYmxvY2sg
aXMgc2V0IGluIEFOLgoKTWFpbmxpbmUgY29kZSBzZWVtcyB0byBkbyB0aGUgc2FtZS4KUHV0cyB0
aGUgU0dNSUkgYmxvY2sgaW4gQU4gb3IgZm9yY2VkIG1vZGUgYW5kIGFsd2F5cyBzZXQgdGhlIE1B
QyBpbiAgCmZvcmNlZCBtb2RlLgoKPj4gK3N0YXRpYyB2b2lkIG10a192YWxpZGF0ZShzdHJ1Y3Qg
cGh5bGlua19jb25maWcgKmNvbmZpZywKPj4gKwkJCSB1bnNpZ25lZCBsb25nICpzdXBwb3J0ZWQs
Cj4+ICsJCQkgc3RydWN0IHBoeWxpbmtfbGlua19zdGF0ZSAqc3RhdGUpCj4+ICt7Cj4+ICsJc3Ry
dWN0IG10a19tYWMgKm1hYyA9IGNvbnRhaW5lcl9vZihjb25maWcsIHN0cnVjdCBtdGtfbWFjLAo+
PiArCQkJCQkgICBwaHlsaW5rX2NvbmZpZyk7Cj4+ICsJX19FVEhUT09MX0RFQ0xBUkVfTElOS19N
T0RFX01BU0sobWFzaykgPSB7IDAsIH07Cj4+Cj4+ICsJaWYgKHN0YXRlLT5pbnRlcmZhY2UgIT0g
UEhZX0lOVEVSRkFDRV9NT0RFX05BICYmCj4+ICsJICAgIHN0YXRlLT5pbnRlcmZhY2UgIT0gUEhZ
X0lOVEVSRkFDRV9NT0RFX01JSSAmJgo+PiArCSAgICBzdGF0ZS0+aW50ZXJmYWNlICE9IFBIWV9J
TlRFUkZBQ0VfTU9ERV9HTUlJICYmCj4+ICsJICAgICEoTVRLX0hBU19DQVBTKG1hYy0+aHctPnNv
Yy0+Y2FwcywgTVRLX1JHTUlJKSAmJgo+PiArCSAgICAgIHBoeV9pbnRlcmZhY2VfbW9kZV9pc19y
Z21paShzdGF0ZS0+aW50ZXJmYWNlKSkgJiYKPj4gKwkgICAgIShNVEtfSEFTX0NBUFMobWFjLT5o
dy0+c29jLT5jYXBzLCBNVEtfVFJHTUlJKSAmJgo+PiArCSAgICAgICFtYWMtPmlkICYmIHN0YXRl
LT5pbnRlcmZhY2UgPT0gUEhZX0lOVEVSRkFDRV9NT0RFX1RSR01JSSkpIHsKPj4gKwkJbGlua21v
ZGVfemVybyhzdXBwb3J0ZWQpOwo+PiArCQlyZXR1cm47Cj4+ICAJfQo+Pgo+PiArCXBoeWxpbmtf
c2V0X3BvcnRfbW9kZXMobWFzayk7Cj4+ICsJcGh5bGlua19zZXQobWFzaywgQXV0b25lZyk7Cj4+
Cj4+ICsJaWYgKHN0YXRlLT5pbnRlcmZhY2UgPT0gUEhZX0lOVEVSRkFDRV9NT0RFX1RSR01JSSkg
ewo+PiArCQlwaHlsaW5rX3NldChtYXNrLCAxMDAwYmFzZVRfRnVsbCk7Cj4+ICsJfSBlbHNlIHsK
Pj4gKwkJcGh5bGlua19zZXQobWFzaywgMTBiYXNlVF9IYWxmKTsKPj4gKwkJcGh5bGlua19zZXQo
bWFzaywgMTBiYXNlVF9GdWxsKTsKPj4gKwkJcGh5bGlua19zZXQobWFzaywgMTAwYmFzZVRfSGFs
Zik7Cj4+ICsJCXBoeWxpbmtfc2V0KG1hc2ssIDEwMGJhc2VUX0Z1bGwpOwo+PiArCj4+ICsJCWlm
IChzdGF0ZS0+aW50ZXJmYWNlICE9IFBIWV9JTlRFUkZBQ0VfTU9ERV9NSUkpIHsKPj4gKwkJCXBo
eWxpbmtfc2V0KG1hc2ssIDEwMDBiYXNlVF9IYWxmKTsKPj4gKwkJCXBoeWxpbmtfc2V0KG1hc2ss
IDEwMDBiYXNlVF9GdWxsKTsKPj4gKwkJCXBoeWxpbmtfc2V0KG1hc2ssIDEwMDBiYXNlWF9GdWxs
KTsKPj4gKwkJfQo+PiArCX0KPj4KPj4gKwlwaHlsaW5rX3NldChtYXNrLCBQYXVzZSk7Cj4+ICsJ
cGh5bGlua19zZXQobWFzaywgQXN5bV9QYXVzZSk7Cj4+Cj4+ICsJbGlua21vZGVfYW5kKHN1cHBv
cnRlZCwgc3VwcG9ydGVkLCBtYXNrKTsKPj4gKwlsaW5rbW9kZV9hbmQoc3RhdGUtPmFkdmVydGlz
aW5nLCBzdGF0ZS0+YWR2ZXJ0aXNpbmcsIG1hc2spOwo+PiAgfQo+Cj4gVGhpcyBsb29rcyBmaW5l
LgoKT0suCgo+IFRoYW5rcy4KPgo+IC0tCj4gUk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3
dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvCj4gRlRUQyBicm9hZGJhbmQgZm9y
IDAuOG1pbGUgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMi4xTWJwcyBkb3duIDYyMmticHMg
dXAKPiBBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVw
CgpHcmVhdHMsCgpSZW7DqQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
