Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8D19A07D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 21:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z5jzWXm/yEoJIjfuQkOO1Wbq9pEvdycZtmq7N9SLMME=; b=aEArhwSNDXaRZZSU7yUeBaytV
	SJ8iNP+mCkkrQaeZAlh982Lmcg2+qZ00HCYPZotB1v2BHDJn/QcOKkqw4BXfxS/OKVV21oRoq5iGN
	3Z68/JcHznZ/SbYpZCt0gJ4k0PQ6pRMqY4tY/38OA9l5ys8vmyfW/GfTyXOLfgWS0uZN9lo5e3a2N
	/Fwk6MsPZD8KNJbW+k1U50x21ZgP86Lk6wzqnXGcRDuv7tGIFzUjSIAFtEk7Z1QQIO9mLfrm+LjjZ
	NhdNI/xehexmwsuSwQmeMQtxanr81JXaplt2TCDbx38pYU/atkL832YrO2E1mxRnq/zjG+isXp8T2
	ERDVqy3tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0t6d-0002yx-OZ; Thu, 22 Aug 2019 19:50:47 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0t6R-0002yU-0V; Thu, 22 Aug 2019 19:50:37 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 6B52F5FC44;
 Thu, 22 Aug 2019 21:50:33 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="sGYPkcV9"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 0DD7B1D86FCC;
 Thu, 22 Aug 2019 21:50:33 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 0DD7B1D86FCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566503433;
 bh=LjRruTF0hUMFvK2uGE5RnytC6AgYmuenDz6R68xhRik=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sGYPkcV9fmCnpgvWArSMG24obibm7EhdIhj6zFao2ORYC5m1Qys4QivQC7HEMIzJt
 W1W+jUlFZCSgYclOf9Ocf1Fx8NFe1qM3oF6Z1Hs/y26TeE3/Xcv/BOBPGDiB6xBGNQ
 T1Snx58ome1+G0ukthjyNzuGjrwQjpXVu6TDMOlBmMuJon0ChZPvRMDGcQT0tQcN2g
 xRw1nwwBQkMH6fL/DcKZG6zVz3I8UwHaeYihVuCfO+/MurddtloHhqsOl3Fwszcz7g
 3h+bWKRP8qkG0EiOrDOoH7lPBzxHKL/3iwhhMFkjXbRYKdYHpxuQsrnu+Luz8XzTvy
 re6kVoPAuf+LA==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Thu, 22 Aug 2019 19:50:33 +0000
Date: Thu, 22 Aug 2019 19:50:33 +0000
Message-ID: <20190822195033.Horde.hEW8FBGNfFrugQOCv0gaDfx@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH net-next v2 2/3] net: ethernet: mediatek: Re-add support
 SGMII
References: <20190821144336.9259-1-opensource@vdorst.com>
 <20190821144336.9259-3-opensource@vdorst.com>
 <20190822144433.GT13294@shell.armlinux.org.uk>
In-Reply-To: <20190822144433.GT13294@shell.armlinux.org.uk>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_125035_472726_46275858 
X-CRM114-Status: GOOD (  20.42  )
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
eEBhcm1saW51eC5vcmcudWs+OgoKPiBPbiBXZWQsIEF1ZyAyMSwgMjAxOSBhdCAwNDo0MzozNVBN
ICswMjAwLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4+ICsJaWYgKE1US19IQVNfQ0FQUyhtYWMt
Pmh3LT5zb2MtPmNhcHMsIE1US19TR01JSSkpIHsKPj4gKwkJaWYgKHN0YXRlLT5pbnRlcmZhY2Ug
IT0gUEhZX0lOVEVSRkFDRV9NT0RFXzI1MDBCQVNFWCkgewo+PiAgCQkJcGh5bGlua19zZXQobWFz
aywgMTAwMGJhc2VUX0Z1bGwpOwo+PiAgCQkJcGh5bGlua19zZXQobWFzaywgMTAwMGJhc2VYX0Z1
bGwpOwo+PiArCQl9IGVsc2Ugewo+PiArCQkJcGh5bGlua19zZXQobWFzaywgMjUwMGJhc2VUX0Z1
bGwpOwo+PiArCQkJcGh5bGlua19zZXQobWFzaywgMjUwMGJhc2VYX0Z1bGwpOwo+PiArCQl9Cj4K
PiBJZiB5b3UgY2FuIGR5bmFtaWNhbGx5IHN3aXRjaCBiZXR3ZWVuIDEwMDBCQVNFLVggYW5kIDI1
MDBCQVNFLVgsIHRoZW4KPiB5b3UgbmVlZCB0byBoYXZlIGJvdGggc2V0LiAgU2VlIG12bmV0YS5j
Ogo+Cj4gICAgICAgICBpZiAocHAtPmNvbXBoeSB8fCBzdGF0ZS0+aW50ZXJmYWNlICE9IFBIWV9J
TlRFUkZBQ0VfTU9ERV8yNTAwQkFTRVgpIHsKPiAgICAgICAgICAgICAgICAgcGh5bGlua19zZXQo
bWFzaywgMTAwMGJhc2VUX0Z1bGwpOwo+ICAgICAgICAgICAgICAgICBwaHlsaW5rX3NldChtYXNr
LCAxMDAwYmFzZVhfRnVsbCk7Cj4gICAgICAgICB9Cj4gICAgICAgICBpZiAocHAtPmNvbXBoeSB8
fCBzdGF0ZS0+aW50ZXJmYWNlID09IFBIWV9JTlRFUkZBQ0VfTU9ERV8yNTAwQkFTRVgpIHsKPiAg
ICAgICAgICAgICAgICAgcGh5bGlua19zZXQobWFzaywgMjUwMGJhc2VUX0Z1bGwpOwo+ICAgICAg
ICAgICAgICAgICBwaHlsaW5rX3NldChtYXNrLCAyNTAwYmFzZVhfRnVsbCk7Cj4gICAgICAgICB9
Cj4KPiBXaGF0IHRoaXMgaXMgc2F5aW5nIGlzLCBpZiB3ZSBoYXZlIGEgY29tcGh5ICh3aGljaCBp
cyB0aGUgc2VyZGVzIGxhbmUKPiBmYWNpbmcgY29tcG9uZW50LCB3aGVyZSB0aGUgZGF0YSByYXRl
IGlzIHNldHVwKSB0aGVuIHdlIGNhbiBzdXBwb3J0Cj4gYm90aCBzcGVlZHMgKGFuZCBzbyBtYXNr
IGVuZHMgdXAgd2l0aCBhbGwgZm91ciBiaXRzIHNldC4pICBPdGhlcndpc2UsCj4gd2Ugb25seSBz
dXBwb3J0IGEgc2luZ2xlLXNwZWVkICgxMDAwR2JwcyBmb3Igbm9uLTI1MDBCQVNFLVggZXRjLikK
Pgo+PiArCX0gZWxzZSB7Cj4+ICsJCWlmIChzdGF0ZS0+aW50ZXJmYWNlID09IFBIWV9JTlRFUkZB
Q0VfTU9ERV9UUkdNSUkpIHsKPj4gKwkJCXBoeWxpbmtfc2V0KG1hc2ssIDEwMDBiYXNlVF9GdWxs
KTsKPj4gKwkJfSBlbHNlIHsKPj4gKwkJCXBoeWxpbmtfc2V0KG1hc2ssIDEwYmFzZVRfSGFsZik7
Cj4+ICsJCQlwaHlsaW5rX3NldChtYXNrLCAxMGJhc2VUX0Z1bGwpOwo+PiArCQkJcGh5bGlua19z
ZXQobWFzaywgMTAwYmFzZVRfSGFsZik7Cj4+ICsJCQlwaHlsaW5rX3NldChtYXNrLCAxMDBiYXNl
VF9GdWxsKTsKPj4gKwo+PiArCQkJaWYgKHN0YXRlLT5pbnRlcmZhY2UgIT0gUEhZX0lOVEVSRkFD
RV9NT0RFX01JSSkgewo+PiArCQkJCXBoeWxpbmtfc2V0KG1hc2ssIDEwMDBiYXNlVF9IYWxmKTsK
Pj4gKwkJCQlwaHlsaW5rX3NldChtYXNrLCAxMDAwYmFzZVRfRnVsbCk7Cj4+ICsJCQkJcGh5bGlu
a19zZXQobWFzaywgMTAwMGJhc2VYX0Z1bGwpOwo+PiArCQkJfQo+Cj4gSSdtIGFsc28gd29uZGVy
aW5nIGFib3V0IHRoZSAiTVRLX0hBU19DQVBTKG1hYy0+aHctPnNvYy0+Y2FwcywKPiBNVEtfU0dN
SUkpIiBhYm92ZS4KClRoaXMgdG90YWxseSB3cm9uZy4KTVRLX0hBU19DQVBTKG1hYy0+aHctPnNv
Yy0+Y2FwcywgTVRLX1NHTUlJKSB0ZWxscyBtZSB0aGF0IHRoZSBTT0MgaGFzIFNHTUlJCmxhbmUo
cykuIEhhdmluZyBhIFNHTUlJIGJsb2NrIGRvZXNuJ3QgbWVhbiB0aGF0IG90aGVyIGZ1bmN0aW9u
cyBhcmVuJ3QKc3VwcG9ydGVkLiBJIGhhdmUgdG8gcmVkbyB0aGlzIQoKPiAoSGVyZSBjb21lcyBh
IHJlYXNvbiB3aHkgdXNpbmcgU0dNSUkgdG8gY292ZXIgYWxsIHNpbmdsZS1sYW5lIHNlcmRlcwo+
IG1vZGVzIGNhdXNlcyBjb25mdXNpb24gLSB1bmZvcnR1bmF0ZWx5LCBzb21lIGZvbGsgdXNlIFNH
TUlJIHRvIGRlc2NyaWJlCj4gYWxsIHRoZXNlIG1vZGVzLiAgU28sIEknbSBnb2luZyB0byB1c2Ug
dGhlIHRlcm1pbm9sb2d5ICJDaXNjbyBTR01JSSIKPiB0byBtZWFuIGV4YWN0bHkgdGhlIFNHTUlJ
IGZvcm1hdCBwdWJsaXNoZWQgYnkgQ2lzY28sICI4MDIuMyAxMDAwQkFTRS1YIgo+IHRvIG1lYW4g
dGhlIG9yaWdpbmFsIElFRUUgODAyLjMgZm9ybWF0IHJ1bm5pbmcgYXQgMS4yNUdicHMsIGFuZAo+
ICJ1cC1jbG9ja2VkIDI1MDBCQVNFLVgiIHRvIG1lYW4gdGhlIDMuMTI1R2JwcyB2ZXJzaW9uIG9m
IHRoZSA4MDIuMwo+IDEwMDBCQVNFLVggcHJvdG9jb2wuKQoKVGhhbmtzIGZvciB0aGUgZXhwbGFu
YXRpb24uIEluIHlvdXIgcHJldmlvdXMgcmV2aWV3IHYxIHlvdSBhbHNvIGV4cGxhaW5lZCBpdC4K
SSBkaWQgY2hhbmdlIHRoZSBmb3JjZWQgbW9kZXMgZm9yIHgtQmFzZVggbW9kZXMgYW5kIGF1dG8g
bmVnb3RpYXRpb24gZm9yIENpc2NvClNHTUlJLiBCdXQgSSBzZWVtcyB0byBtaXNzIHRoZSBsaW5r
IHRoYXQgSSBhbHNvIGhhdmUgdG8gaW1wcm92ZSB0aGlzICAKdmFsaWRhdGlvbgpwYXJ0LgoKPgo+
IElzbid0IHRoaXMgc2V0IGZvciBDaXNjbyBTR01JSSBhcyB3ZWxsIGFzIGZvciA4MDIuMyAxMDAw
QkFTRS1YIGFuZAo+IHRoZSB1cC1jbG9ja2VkIDI1MDBCQVNFLVggbW9kZXM/Cj4KPiBJZiBzbywg
aXMgdGhlcmUgYSByZWFzb24gd2h5IDEwTWJwcyBhbmQgMTAwTWJwcyBzcGVlZHMgYXJlbid0Cj4g
c3VwcG9ydGVkIG9uIENpc2NvIFNHTUlJIGxpbmtzPwoKSSBjYW4gb25seSB0ZWxsIGEgYml0IGFi
b3V0IHRoZSBtdDc2MjIgU09DLCBkYXRhc2hlZXQgdGVsbHMgbWUgdGhhdDoKClRoZSBTR01JSSBp
cyB0aGUgaW50ZXJmYWNlIGJldHdlZW4gMTAvMTAwLzEwMDAvMjUwMCBNYnBzIFBIWSBhbmQgRXRo
ZXJuZXQgTUFDLAp0aGUgc3BlYyBpcyByYWlzZWQgYnkgQ2lzY28gaW4gMTk5OSwgd2hpY2ggaXMg
YWltcyBmb3IgcGluIHJlZHVjdGlvbiBjb21wYXJlCndpdGggdGhlIEdNSUkuIEl0IHVzZXMgMiBk
aWZmZXJlbnRpYWwgZGF0YSBwYWlyIGZvciBUWCBhbmQgUlggd2l0aCBjbG9jawplbWJlZGRlZCBi
aXQgc3RyZWFtIHRvIGNvbnZleSBmcmFtZSBkYXRhIGFuZCBwb3J0IGFiaWxpdHkgaW5mb3JtYXRp
b24uClRoZSBjb3JlIGxldmVyYWdlcyB0aGUgMTAwMEJhc2UtWCBQQ1MgYW5kIEF1dG8tTmVnb3Rp
YXRpb24gZnJvbSBJRUVFIDgwMi4zCnNwZWNpZmljYXRpb24gKGNsYXVzZSAzNi8zNykuIFRoaXMg
SVAgY2FuIHN1cHBvcnQgdXAgdG8gMy4xMjVHIGJhdWQgIApmb3IgMi41R2JwcwoocHJvcHJpZXRh
cnkgMjUwMEJhc2UtWCkgZGF0YSByYXRlIG9mIE1BQyBieSBvdmVyY2xvY2tpbmcuCgpBbHNvIGZl
YXR1cmVzIHRlbGxzIG1lOiBTdXBwb3J0IDEwLzEwMC8xMDAwLzI1MDAgTWJwcyBpbiBmdWxsIGR1
cGxleCBtb2RlIGFuZAoxMC8xMDAgTWJwcyBpbiBoYWxmIGR1cGxleCBtb2RlLgoKSSBnb2luZyBt
YWtlIGEgbmV3IHZlcnNpb24uCgpHcmVhdHMsCgpSZW7DqQoKPiAtLQo+IFJNSydzIFBhdGNoIHN5
c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwo+IEZU
VEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMgYXQgMTIuMU1i
cHMgZG93biA2MjJrYnBzIHVwCj4gQWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQ6IDExLjlNYnBz
IGRvd24gNTAwa2JwcyB1cAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
