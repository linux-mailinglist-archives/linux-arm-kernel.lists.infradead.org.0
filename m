Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F2411D0AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:15:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9CWil3eqjQqoNA3RVPNmJ/ZY+mdD+goRimHHMBrGSM=; b=QlbXfKHK5Te6QU
	K8lqsvyUaTihuecD/Dww7nHR5xFEPv9krls6iVbzRv/ZC/yLLjID6KDG2Dcb0HsHilMeffHumX+8f
	7bPb+Izdy6hhQ7MNZFtTx7Oe6A4U/OrWm5jTLJIYuPhXeNlQPL0diOlQvPo4ZpHsgj4MDz+lIltXR
	pYaGeQLOoZ+vZoqon+BHO4OGYU+CExu13U542wiZczAscIg5fnyX7lxoXwgeJw1h5GOJTt000qUCZ
	R2vkjq2p5eLEafYlGYKujG+LS5mD/RMfXduYFLiHY5Ev2lUAZuOwrzolgw0UloaUHg65gib2UIHPG
	LNm6VhLdt/RJt7/jna0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQBP-0005wW-Se; Thu, 12 Dec 2019 15:15:15 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQBD-0005L7-1t; Thu, 12 Dec 2019 15:15:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A95F9ADDF;
 Thu, 12 Dec 2019 15:15:00 +0000 (UTC)
Subject: Re: [RFC 04/25] spi: gpio: Implement LSB First bitbang support
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-5-afaerber@suse.de>
 <CAMuHMdWdxJ9AaWhyCW-u8fCpXSDCPd-D6Dx129SF5nRssZsK=g@mail.gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <9b4b6287-c1d9-1b41-88a8-7ac9fe222642@suse.de>
Date: Thu, 12 Dec 2019 16:14:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWdxJ9AaWhyCW-u8fCpXSDCPd-D6Dx129SF5nRssZsK=g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_071503_392259_5B514BD4 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-realtek-soc@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 linux-leds@vger.kernel.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR2VlcnQsCgpBbSAxMi4xMi4xOSB1bSAwOTo0MCBzY2hyaWViIEdlZXJ0IFV5dHRlcmhvZXZl
bjoKPiBPbiBUaHUsIERlYyAxMiwgMjAxOSBhdCA0OjQxIEFNIEFuZHJlYXMgRsOkcmJlciA8YWZh
ZXJiZXJAc3VzZS5kZT4gd3JvdGU6Cj4+IEFkZCBzdXBwb3J0IGZvciBzbGF2ZSBEVCBwcm9wZXJ0
eSBzcGktbHNiLWZpcnN0LCBpLmUuLCBTUElfTFNCX0ZJUlNUIG1vZGUuCj4+Cj4+IER1cGxpY2F0
ZSB0aGUgaW5saW5lIGhlbHBlcnMgYml0YmFuZ190eHJ4X2JlX2NwaGF7MCwxfSBhcyBMRSB2ZXJz
aW9ucy4KPj4gTWFrZSBjaGVja3BhdGNoLnBsIGhhcHB5IGJ5IGNoYW5naW5nICJ1bnNpZ25lZCIg
dG8gInVuc2lnbmVkIGludCIuCj4+Cj4+IENvbmRpdGlvbmFsbHkgY2FsbCB0aGVtIGZyb20gYWxs
IHRoZSBzcGktZ3BpbyB0eHJ4X3dvcmQgY2FsbGJhY2tzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBB
bmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4gCj4gVGhhbmtzIGZvciB5b3VyIHBh
dGNoIQoKTlAuIEkgcHJlZmVyIGZpeGluZyBpc3N1ZXMgYXQgdGhlIHNvdXJjZSBvdmVyIGF3a3dh
cmQgd29ya2Fyb3VuZHMuIDopCgo+PiAtLS0gYS9kcml2ZXJzL3NwaS9zcGktZ3Bpby5jCj4+ICsr
KyBiL2RyaXZlcnMvc3BpL3NwaS1ncGlvLmMKPj4gQEAgLTEzNSwyNSArMTM1LDM3IEBAIHN0YXRp
YyBpbmxpbmUgaW50IGdldG1pc28oY29uc3Qgc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKPj4gIHN0
YXRpYyB1MzIgc3BpX2dwaW9fdHhyeF93b3JkX21vZGUwKHN0cnVjdCBzcGlfZGV2aWNlICpzcGks
Cj4+ICAgICAgICAgICAgICAgICB1bnNpZ25lZCBuc2VjcywgdTMyIHdvcmQsIHU4IGJpdHMsIHVu
c2lnbmVkIGZsYWdzKQo+PiAgewo+PiAtICAgICAgIHJldHVybiBiaXRiYW5nX3R4cnhfYmVfY3Bo
YTAoc3BpLCBuc2VjcywgMCwgZmxhZ3MsIHdvcmQsIGJpdHMpOwo+PiArICAgICAgIGlmICh1bmxp
a2VseShzcGktPm1vZGUgJiBTUElfTFNCX0ZJUlNUKSkKPj4gKyAgICAgICAgICAgICAgIHJldHVy
biBiaXRiYW5nX3R4cnhfbGVfY3BoYTAoc3BpLCBuc2VjcywgMCwgZmxhZ3MsIHdvcmQsIGJpdHMp
Owo+PiArICAgICAgIGVsc2UKPj4gKyAgICAgICAgICAgICAgIHJldHVybiBiaXRiYW5nX3R4cnhf
YmVfY3BoYTAoc3BpLCBuc2VjcywgMCwgZmxhZ3MsIHdvcmQsIGJpdHMpOwo+PiAgfQo+IAo+IER1
cGxpY2F0aW5nIGFsbCBmdW5jdGlvbnMgc291bmRzIGEgYml0IHdhc3RlZnVsIHRvIG1lLgoKVHdv
IGZ1bmN0aW9ucyBkdXBsaWNhdGVkLCBlaWdodCBmdW5jdGlvbiBjYWxscyBkdXBsaWNhdGVkLgoK
PiBXaGF0IGFib3V0IHJldmVydGluZyB0aGUgd29yZCBmaXJzdCwgYW5kIGNhbGxpbmcgdGhlIG5v
cm1hbCBmdW5jdGlvbnM/Cj4gCj4gICAgIGlmICh1bmxpa2VseShzcGktPm1vZGUgJiBTUElfTFNC
X0ZJUlNUKSkgewo+ICAgICAgICAgICAgIGlmIChiaXRzIDw9IDgpCj4gICAgICAgICAgICAgICAg
ICAgICB3b3JkID0gYml0cmV2OCh3b3JkKSA+PiAoYml0cyAtIDgpOwo+ICAgICAgICAgICAgIGVs
c2UgaWYgKGJpdHMgPD0gMTYpCj4gICAgICAgICAgICAgICAgICAgICB3b3JkID0gYml0cmV2MTYo
d29yZCkgPj4gKGJpdHMgLSAxNik7Cj4gICAgICAgICAgICAgZWxzZQo+ICAgICAgICAgICAgICAg
ICAgICAgd29yZCA9IGJpdHJldjMyKHdvcmQpID4+IChiaXRzIC0gMzIpOwo+ICAgICB9Cj4gICAg
IHJldHVybiBiaXRiYW5nX3R4cnhfYmVfY3BoYTAoc3BpLCBuc2VjcywgMCwgZmxhZ3MsIHdvcmQs
IGJpdHMpOwoKSG0sIHdhc24ndCBhd2FyZSBvZiB0aG9zZSBoZWxwZXJzLCBzbyBJIG9wdGVkIG5v
dCB0byBsb29wIG92ZXIgdGhlIGJpdHMKZm9yIHJldmVyc2luZyBteXNlbGYsIGFzIFRob21hcyBH
bGVpeG5lciBkaXNsaWtlZCBiaXQgbG9vcHMgaW4gaXJxY2hpcC4KUGVyZm9ybWFuY2UgYXBwZWFy
ZWQgdG8gYmUgYSBjb25jZXJuIGhlcmUsIHRvby4KCkVpZ2h0IGZ1bmN0aW9ucyBkdXBsaWNhdGVk
IHRoZW4uIEkgZG9uJ3QgbGlrZSB0aGF0IC0gYXQgbGVhc3Qgd2Ugc2hvdWxkCnBhY2sgdGhhdCBp
bnRvIGFuIGlubGluZSBoZWxwZXIgb3IgbWFjcm8sIHRvIG5vdCBjb3B5JnBhc3RlIGV2ZW4gbW9y
ZQpsaW5lcyBhcm91bmQuIFdobyBrbm93cywgbWF5YmUgd2UnbGwgZ2V0IDY0LWJpdCBzdXBwb3J0
IGF0IG9uZSBwb2ludD8KCkRvIHlvdSB0aGluayBpdCB3b3VsZCBiZSBhY2NlcHRhYmxlIHRvIGlu
c3RlYWQgZW5jYXBzdWxhdGUgdGhpcyBpbnNpZGUKdGhlIF9iZSBpbmxpbmUgaGVscGVycz8gVGhh
dCB3b3VsZCBsZWFkIHRoZSBuYW1lIGFkIGFic3VyZHVtLCBvZiBjb3Vyc2UsCmJ1dCB3ZSB3b3Vs
ZCB0aGVuIG5lZWQgdG8gZG8gaXQgb25seSB0d2ljZSwgbm90IGVpZ2h0IHRpbWVzLgoKSG93ZXZl
ciwgZWl0aGVyIHdheSB3b3VsZCBzZWVtIHRvIG1ha2UgdGhlIExTQiBjb2RlIHBhdGggc2xvd2Vy
IHRoYW4gTVNCCmR1ZSB0byB0aGUgcHJlcGVuZGVkIHJldmVyc2FsLgoKRGVsYXlzIGFyZSBhbHJl
YWR5IHN0dWJiZWQgb3V0LCB3aXRoIG9wZW4gVE9ET3MgZm9yIGZ1cnRoZXIgaW5saW5pbmcKZnVu
Y3Rpb25zIHRoYXQgYXJlIGJlaW5nIGRpc3BhdGNoZWQgdG9kYXkuCgpTbyBmcm9tIHRoYXQgYW5n
bGUgSSBkb24ndCBzZWUgYSBiZXR0ZXIgd2F5IHRoYW4gZWl0aGVyIGR1cGxpY2F0aW5nIHRoZQpm
dW5jdGlvbnMgb3IgdXNpbmcgc29tZSBtYWNybyBtYWdpYyB0byAjaW5jbHVkZSB0aGUgaGVhZGVy
IHR3aWNlLiBJZiB3ZQp3YW50ZWQgdG8gZ28gZG93biB0aGF0IHBhdGgsIHdlIGNvdWxkIHByb2Jh
Ymx5IGRlLWR1cGxpY2F0ZSB0aGUgZXhpc3RpbmcKdHdvIGZ1bmN0aW9ucywgdG9vLCBidXQgSSB3
YXMgdHJ5aW5nIHRvIGVyciBvbiB0aGUgY2F1dGlvdXMgc2lkZSwgc2luY2UKSSBkb24ndCBoYXZl
IHNldHVwcyB0byB0ZXN0IGFsbCBmb3VyIGNvZGUgcGF0aHMgbXlzZWxmIChhbmQgYSB0b24gb2YK
bW9yZSByZWxldmFudCBidXQgbGVzcyBmdW4gcGF0Y2hlcyB0byBmbHVzaCBvdXQgOykpLgoKUmVn
YXJkcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApN
YXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7Zy
ZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
