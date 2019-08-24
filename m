Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 086669BDE7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 15:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sRSOWrOBRhbf1+AVNDucWtTo2nvjZv/Ps81t0Cb4OEU=; b=aXHETRhz3nVqEqawWzkqkWG7Z
	hcWb7mbtSxGrLZ53YQahee482FYRKqXlL1QRWWbVHJROA0mJitAVI/u7hWOkk6jPQqnbfDTFmUZ7d
	Hf1DZQ2vcfTprSYqq4nAgzCR+JDUkdTXaC9Nh4vgejj2PPMKH7u4Mf+PC5JemJqDfX4P2719cclPc
	JrczbZDriO2hB2KGUGkoNdm0AyuToDn10K9eNu4ryI8qV5f+bHYYCkULzy74sdGzDRGD7EB1qQmQj
	QF7vnVGkZ7PtBo7Ebp26BJZPp/R7QEv1avY5et8fLpxqEoYnhr0Yu1nD0I/VSIFyi0Lc/d/A7JzNN
	7WEo1I2vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1VpR-00010z-St; Sat, 24 Aug 2019 13:11:38 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1VpF-00010V-7H; Sat, 24 Aug 2019 13:11:27 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id B6DEB5FBFB;
 Sat, 24 Aug 2019 15:11:17 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="jG4VBZ89"; dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 6EA041D8B489;
 Sat, 24 Aug 2019 15:11:17 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 6EA041D8B489
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566652277;
 bh=hos8an279XjeBCc4UtxVqhtIw4njwg8nYgPuYhkHgyQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jG4VBZ89jUEpd88tWGtxZbtQ7SPOEXbaRuLeC88WEbeBUadPZ93K/TffltlJeN0uM
 iyb4wcxwTi7MxagLSxraAmNvg9W6zQxk9W4oeu6C7RaIZ+rgy+aeAm41H27lTWLa5U
 C94R6dklB3lMPvv/11m7wh/92ltCK4fjO7jC4cL1zFP5TTILoz/leIrPDzdmENFkeM
 m2Odg8y0eIrEX6eMhdSyvFWsQTJDtZLppCAGidiQ5eqTEsw9qQKsvv3it0TH9hGK47
 XkD03YiUhcjI8AubkxeYNgaeXdltyKScW0G9Y2i4s0TnHV1mSx7ACOkl48j4S+/we+
 KK2z+oFo1UQ+g==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sat, 24 Aug 2019 13:11:17 +0000
Date: Sat, 24 Aug 2019 13:11:17 +0000
Message-ID: <20190824131117.Horde.vSCF_CQ5jCMHcSTWkh7Woxm@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH net-next v3 2/3] net: ethernet: mediatek: Re-add support
 SGMII
References: <20190823134516.27559-1-opensource@vdorst.com>
 <20190823134516.27559-3-opensource@vdorst.com>
 <20190824092156.GD13294@shell.armlinux.org.uk>
In-Reply-To: <20190824092156.GD13294@shell.armlinux.org.uk>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_061125_547291_34F75450 
X-CRM114-Status: GOOD (  21.25  )
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
eEBhcm1saW51eC5vcmcudWs+OgoKPiBPbiBGcmksIEF1ZyAyMywgMjAxOSBhdCAwMzo0NToxNVBN
ICswMjAwLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4+ICsJc3dpdGNoIChzdGF0ZS0+aW50ZXJm
YWNlKSB7Cj4+ICsJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfU0dNSUk6Cj4+ICsJCXBoeWxpbmtf
c2V0KG1hc2ssIDEwYmFzZVRfSGFsZik7Cj4+ICsJCXBoeWxpbmtfc2V0KG1hc2ssIDEwYmFzZVRf
RnVsbCk7Cj4+ICsJCXBoeWxpbmtfc2V0KG1hc2ssIDEwMGJhc2VUX0hhbGYpOwo+PiArCQlwaHls
aW5rX3NldChtYXNrLCAxMDBiYXNlVF9GdWxsKTsKPgo+IFlvdSBhbHNvIHdhbnQgMTAwMGJhc2VY
X0Z1bGwgaGVyZSAtIHRoZSBjb25uZWN0ZWQgUEhZIGNvdWxkIGhhdmUgYSBmaWJlcgo+IGludGVy
ZmFjZSBvbiBpdC4KCk9rLCBJIHNoYWxsIGFkZCB0aGF0IG1vZGUgdG9vLgoKPgo+PiArCQkvKiBm
YWxsIHRocm91Z2ggKi8KPj4gKwljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV9UUkdNSUk6Cj4+ICAJ
CXBoeWxpbmtfc2V0KG1hc2ssIDEwMDBiYXNlVF9GdWxsKTsKPgo+IEkgZG9uJ3Qga25vdyBlbm91
Z2ggYWJvdXQgdGhpcyBpbnRlcmZhY2UgdHlwZSB0byBjb21tZW50IHdoZXRoZXIgaXQKPiBzaG91
bGQgc3VwcG9ydCAxMDAwYmFzZVhfRnVsbCAtIGlmIHRoaXMgaXMgY29ubmVjdGVkIHRvIGEgUEhZ
IHRoYXQgbWF5Cj4gc3VwcG9ydCBmaWJlciwgdGhlbiBpdCBvdWdodCB0byBzZXQgaXQuCgpNZWRp
YXRlayBjYWxscyBpdCBUdXJibyBSR01JSS4gSXQgaXMgYSBvdmVyY2xvY2sgdmVyc2lvbiBvZiBS
R01JSSBtb2RlLgpJdCBpcyB1c2VkIGJldHdlZW4gZmlyc3QgR01BQyBhbmQgcG9ydCA2IG9mIHRo
ZSBtdDc1MzAgc3dpdGNoLiBDYW4gYmUgIAp1c2VkIHdpdGgKYW4gaW50ZXJuYWwgYW5kIGFuIGV4
dGVybmFsIG10NzUzMCBzd2l0Y2guCgpUUkdNSUkgc3BlZWQgYXJlOgoqIG10NzYyMTogMTIwME1i
aXQKKiBtdDc2MjM6IDIwMDBNYml0IGFuZCAyNjAwTWJpdC4KCkkgdGhpbmsgdGhhdCBUUkdNSUkg
aXMgb25seSB1c2VkIGluIGEgZml4ZWQtbGluayBzaXR1YXRpb24gaW4gIApjb21iaW5hdGlvbiB3
aXRoIGEKbXQ3NTMwIHN3aXRjaCBhbmQgcnVubmluZyBhbmQgbWF4aW11bSBzcGVlZC9mdWxsIGR1
cGxleC4gU28gcmVwb3J0aW5nCjEwMDBiYXNlVF9GdWxsIHNlZW1zIHRvIG1lIHRoZSByaWdodCBv
cHRpb24uCgo+Cj4+ICsJCWJyZWFrOwo+PiArCWNhc2UgUEhZX0lOVEVSRkFDRV9NT0RFXzI1MDBC
QVNFWDoKPj4gKwkJcGh5bGlua19zZXQobWFzaywgMjUwMGJhc2VYX0Z1bGwpOwo+PiArCQkvKiBm
YWxsIHRocm91Z2ggKi8KPj4gKwljYXNlIFBIWV9JTlRFUkZBQ0VfTU9ERV8xMDAwQkFTRVg6Cj4+
ICsJCXBoeWxpbmtfc2V0KG1hc2ssIDEwMDBiYXNlWF9GdWxsKTsKPgo+IEJvdGggc2hvdWxkIGJl
IHNldC4gIFRoZSByZWFzb25pbmcgaGVyZSBpcyB0aGF0IGlmIHlvdSBoYXZlIGEKPiBGaWJlcmNo
YW5uZWwgNEdiYXVkIFNGUCBwbHVnZ2VkIGluIGFuZCBjb25uZWN0ZWQgZGlyZWN0bHkgdG8gdGhl
Cj4gTUFDLCBpdCBjYW4gb3BlcmF0ZSBhdCBlaXRoZXIgMjUwMEJhc2UtWCBvciAxMDAwQmFzZS1Y
LiAgSWYgd2UKPiBkZWNpZGUgdG8gb3BlcmF0ZSBhdCAyNTAwQmFzZS1YLCB0aGVuIFBIWV9JTlRF
UkZBQ0VfTU9ERV8yNTAwQkFTRVgKPiB3aWxsIGJlIGNob3Nlbi4gIE90aGVyd2lzZSwgUEhZX0lO
VEVSRkFDRV9NT0RFXzEwMDBCQVNFWCB3aWxsIGJlCj4gdXNlZC4KPgo+IFRoZSB1c2VyIGNhbiB1
c2UgZXRodG9vbCB0byBjb250cm9sIHdoaWNoIGludGVyZmFjZSBtb2RlIGlzIHVzZWQKPiBieSBh
ZGp1c3RpbmcgdGhlIGFkdmVydGlzZSBtYXNrIGFuZC9vciBwbGFjaW5nIHRoZSBpbnRlcmZhY2Ug
aW4KPiBtYW51YWwgbW9kZSBhbmQgc2V0dGluZyB0aGUgc3BlZWQgZGlyZWN0bHkuICBUaGlzIHdp
bGwgY2hhbmdlCj4gdGhlIFBIWV9JTlRFUkZBQ0VfTU9ERV94eHh4QkFTRVggKHZpYSBwaHlsaW5r
X2hlbHBlcl9iYXNleF9zcGVlZCgpKQo+IGJldHdlZW4gdGhlIHR3byBzZXR0aW5ncy4KPgo+IElm
IHdlIGxvc2UgMjUwMGJhc2VYX0Z1bGwgd2hlbiAxMDAwQmFzZS1YIGlzIHNlbGVjdGVkLCB0aGUg
dXNlcgo+IHdpbGwgbm90IGJlIGFibGUgdG8gZ28gYmFjayB0byAyNTAwQmFzZS1YIG1vZGUuCj4K
PiBZZXMsIGl0J3MgYSBsaXR0bGUgY29uZnVzaW5nIGFuZCBoYXMgc2xpZ2h0bHkgZGlmZmVyZW50
IHJ1bGVzCj4gZnJvbSB0aGUgb3RoZXIgbW9kZXMgLSBwYXJ0bHkgZHVlIHRvIHBoeWxpbmtfaGVs
cGVyX2Jhc2V4X3NwZWVkKCkuCj4gVGhlc2UgYXJlIHRoZSBvbmx5IGludGVyZmFjZSBtb2RlcyB0
aGF0IHdlIGR5bmFtaWNhbGx5IHN3aXRjaAo+IGJldHdlZW4gZGVwZW5kaW5nIG9uIHRoZSBzZXR0
aW5ncyB0aGF0IHRoZSB1c2VyIGNvbmZpZ3VyZXMgdmlhCj4gZXRodG9vbC4KClRoYW5rcyBmb3Ig
dGhpcyBleHRyYSBpbmZvcm1hdGlvbi4KCgpJIG1hZGUgYSBsaXN0IGZvciBlYWNoIG1vZGUgd2hh
dCB0aGF0IG1vZGUgc2hvdWxkIHJlcG9ydCBiYWNrIHdoZW4gY2hvc2VuLgoKUEhZX0lOVEVSRkFD
RV9NT0RFX1NHTUlJOgoJICAxMGJhc2VUX0hhbGYKCSAgMTBiYXNlVF9GdWxsCgkgMTAwYmFzZVRf
SGFsZgoJIDEwMGJhc2VUX0Z1bGwKCTEwMDBiYXNlVF9GdWxsCgkxMDAwYmFzZVhfRnVsbAoKUEhZ
X0lOVEVSRkFDRV9NT0RFXzEwMDBCQVNFWDoKUEhZX0lOVEVSRkFDRV9NT0RFXzI1MDBCQVNFWDoK
CTEwMDBiYXNlWF9GdWxsCgkyNTAwYmFzZVhfRnVsbAoKUEhZX0lOVEVSRkFDRV9NT0RFX1RSR01J
SToKCTEwMDBiYXNlVF9GdWxsCgpQSFlfSU5URVJGQUNFX01PREVfUkdNSUk6ClBIWV9JTlRFUkZB
Q0VfTU9ERV9SR01JSV9JRDoKUEhZX0lOVEVSRkFDRV9NT0RFX1JHTUlJX1JYSUQ6ClBIWV9JTlRF
UkZBQ0VfTU9ERV9SR01JSV9UWElEOgoJICAxMGJhc2VUX0hhbGYKCSAgMTBiYXNlVF9GdWxsCgkg
MTAwYmFzZVRfSGFsZgoJIDEwMGJhc2VUX0Z1bGwKCTEwMDBiYXNlVF9IYWxmCgkxMDAwYmFzZVRf
RnVsbAoJMTAwMGJhc2VYX0Z1bGwKClBIWV9JTlRFUkZBQ0VfTU9ERV9HTUlJOgoJICAxMGJhc2VU
X0hhbGYKCSAgMTBiYXNlVF9GdWxsCgkgMTAwYmFzZVRfSGFsZgoJIDEwMGJhc2VUX0Z1bGwKCTEw
MDBiYXNlVF9IYWxmCgkxMDAwYmFzZVRfRnVsbAoKUEhZX0lOVEVSRkFDRV9NT0RFX01JSToKUEhZ
X0lOVEVSRkFDRV9NT0RFX1JNSUk6ClBIWV9JTlRFUkZBQ0VfTU9ERV9SRVZNSUk6CgkgMTBiYXNl
VF9IYWxmCgkgMTBiYXNlVF9GdWxsCgkxMDBiYXNlVF9IYWxmCgkxMDBiYXNlVF9GdWxsCgpjYXNl
IFBIWV9JTlRFUkZBQ0VfTU9ERV9OQToKCSAgMTBiYXNlVF9IYWxmCgkgIDEwYmFzZVRfRnVsbAoJ
IDEwMGJhc2VUX0hhbGYKCSAxMDBiYXNlVF9GdWxsCgkxMDAwYmFzZVRfSGFsZgoJMTAwMGJhc2VU
X0Z1bGwKCTEwMDBiYXNlWF9GdWxsCgkyNTAwYmFzZVhfRnVsbAoKSSB0aGluayB0aGlzIGlzIHRo
ZSBmdWxsIGxpc3QuCk9yIGRvIEkgbWlzcyBzb21ldGhpbmc/CgpHcmVhdHMsCgpSZW7DqQoKPgo+
IC0tCj4gUk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2
ZWxvcGVyL3BhdGNoZXMvCj4gRlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUgbGluZSBpbiBzdWJ1
cmJpYTogc3luYyBhdCAxMi4xTWJwcyBkb3duIDYyMmticHMgdXAKPiBBY2NvcmRpbmcgdG8gc3Bl
ZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVwCgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
