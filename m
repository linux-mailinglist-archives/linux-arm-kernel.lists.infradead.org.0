Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049279BC44
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 08:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JSv7jjgwnvtRLo47iDbKLcnvHid9noC7u353r+j9EXk=; b=EK7OoxZZtdfbMZdo/wrBZyA/R
	IIS9NT9iCcmyvLvuUmCIfhqsaF7UoXP07cJVh292Og4ZDxIpDEQXcsaps4w+bF1mZW4yaleVLxlHF
	g6PCeoSPsAXGFk1krcdKPtwD35NBZtKceWcL5pScCOI163yh/CAx1AkX9qrjGN4+Crgk01RVRZBXk
	Pb1sC2uAdezWg8YtwE9c9s+bwHoDDXOCO3R5N6F1p84eSq4alEHr9TxE7UJJjwyZdYzIR2WPM5Gj3
	PMk1J79bjyLrXe8jK6XyYXW5iuvjn4HiZeyhVij9XinaCHgK+txsmLJb998GYYdVIJnrIICOKkW8F
	KNDnBOBDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1PoC-0002Wh-65; Sat, 24 Aug 2019 06:45:56 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Pnv-0002Vf-Pa
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 06:45:42 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46FpgK4QC0z9vBLS;
 Sat, 24 Aug 2019 08:45:33 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=K3YiCIh5; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id HVVt0rLehSlm; Sat, 24 Aug 2019 08:45:33 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46FpgK3Dskz9vBLP;
 Sat, 24 Aug 2019 08:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1566629133; bh=H+P6/n2dOvYwFGFSytUscS/dBww3QN53fSAFmSiZ3K4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=K3YiCIh5lrSWAP94i6J8ZjHRDTpfK4Kq+cbY0P4jJrq2ZSrBFLmTG5zRGnUmQ3LOP
 fBk8C0AK5vQYN5jE2kfkuUXC1XQ/VMoXO3cdS3DOXjcGbkHtWMHY+C1PKrxJ6D6gg5
 5kA/+97SwJpOJ5zbmMm6nGh449KQNrt6ZAw93tnY=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 5E5AD8B79F;
 Sat, 24 Aug 2019 08:45:34 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 2fGq4h0rAry2; Sat, 24 Aug 2019 08:45:34 +0200 (CEST)
Received: from [192.168.232.53] (unknown [192.168.232.53])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 36D338B76F;
 Sat, 24 Aug 2019 08:45:33 +0200 (CEST)
Subject: Re: [PATCH v2 08/10] PCI: layerscape: Add EP mode support for ls1088a
 and ls2088a
To: Xiaowei Bao <xiaowei.bao@nxp.com>, Andrew Murray <andrew.murray@arm.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-8-xiaowei.bao@nxp.com>
 <20190823142756.GI14582@e119886-lin.cambridge.arm.com>
 <AM5PR04MB32990473D4AD65354B5B2235F5A70@AM5PR04MB3299.eurprd04.prod.outlook.com>
From: christophe leroy <christophe.leroy@c-s.fr>
Message-ID: <89c90732-5e42-f87e-73b1-8d615355afc4@c-s.fr>
Date: Sat, 24 Aug 2019 08:45:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <AM5PR04MB32990473D4AD65354B5B2235F5A70@AM5PR04MB3299.eurprd04.prod.outlook.com>
Content-Language: fr
X-Antivirus: Avast (VPS 190823-0, 23/08/2019), Outbound message
X-Antivirus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_234540_132035_21CCF38A 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "lorenzo.pieralisi@arm.co" <lorenzo.pieralisi@arm.co>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Leo Li <leoyang.li@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNC8wOC8yMDE5IMOgIDAyOjE4LCBYaWFvd2VpIEJhbyBhIMOpY3JpdMKgOgo+IAo+IAo+
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBBbmRyZXcgTXVycmF5IDxhbmRy
ZXcubXVycmF5QGFybS5jb20+Cj4+IFNlbnQ6IDIwMTnlubQ45pyIMjPml6UgMjI6MjgKPj4gVG86
IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPgo+PiBDYzogYmhlbGdhYXNAZ29vZ2xl
LmNvbTsgcm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsKPj4gc2hhd25n
dW9Aa2VybmVsLm9yZzsgTGVvIExpIDxsZW95YW5nLmxpQG54cC5jb20+OyBraXNob25AdGkuY29t
Owo+PiBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY287IGFybmRAYXJuZGIuZGU7IGdyZWdraEBsaW51
eGZvdW5kYXRpb24ub3JnOyBNLmguCj4+IExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IE1p
bmdrYWkgSHUgPG1pbmdrYWkuaHVAbnhwLmNvbT47IFJveQo+PiBaYW5nIDxyb3kuemFuZ0BueHAu
Y29tPjsgamluZ29vaGFuMUBnbWFpbC5jb207Cj4+IGd1c3Rhdm8ucGltZW50ZWxAc3lub3BzeXMu
Y29tOyBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOwo+PiBkZXZpY2V0cmVlQHZnZXIua2VybmVs
Lm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsKPj4gbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJzLm9yZwo+PiBTdWJq
ZWN0OiBSZTogW1BBVENIIHYyIDA4LzEwXSBQQ0k6IGxheWVyc2NhcGU6IEFkZCBFUCBtb2RlIHN1
cHBvcnQgZm9yCj4+IGxzMTA4OGEgYW5kIGxzMjA4OGEKPj4KPj4gT24gVGh1LCBBdWcgMjIsIDIw
MTkgYXQgMDc6MjI6NDBQTSArMDgwMCwgWGlhb3dlaSBCYW8gd3JvdGU6Cj4+PiBBZGQgUENJZSBF
UCBtb2RlIHN1cHBvcnQgZm9yIGxzMTA4OGEgYW5kIGxzMjA4OGEsIHRoZXJlIGFyZSBzb21lCj4+
PiBkaWZmZXJlbmNlIGJldHdlZW4gTFMxIGFuZCBMUzIgcGxhdGZvcm0sIHNvIHJlZmFjdG9yIHRo
ZSBjb2RlIG9mIHRoZQo+Pj4gRVAgZHJpdmVyLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFhpYW93
ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPgo+Pj4gLS0tCj4+PiB2MjoKPj4+ICAgLSBOZXcg
bWVjaGFuaXNtIGZvciBsYXllcnNjYXBlIEVQIGRyaXZlci4KPj4KPj4gV2FzIHRoZXJlIGEgdjEg
b2YgdGhpcyBwYXRjaD8KPiAKPiBZZXMsIGJ1dCBJIGRvbid0IGtub3cgaG93IHRvIGNvbW1lbnRz
LCBeX14KCkFzIGZhciBhcyBJIGNhbiBzZWUsIGluIHRoZSBwcmV2aW91cyB2ZXJzaW9uIG9mIHRo
ZSBzZXJpZXMgCihodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2plY3QvbGludXhwcGMt
ZGV2L2xpc3QvP3Nlcmllcz0xMjUzMTUmc3RhdGU9KiksIAp0aGUgOC8xMCB3YXMgc29tZXRoaW5n
IGNvbXBsZXRlbHkgZGlmZmVyZW50LCBhbmQgSSBjYW4ndCBmaW5kIGFueSBvdGhlciAKcGF0Y2gg
aW4gdGhlIHNlcmllcyB0aGF0IGNvdWxkIGhhdmUgYmVlbiB0aGUgdjEgb2YgdGhpcyBwYXRjaC4K
CkNocmlzdG9waGUKCj4gCj4+Cj4+Pgo+Pj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2ktbGF5ZXJzY2FwZS1lcC5jIHwgNzYKPj4+ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tCj4+
PiAgIDEgZmlsZSBjaGFuZ2VkLCA1OCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPj4+
Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2Nh
cGUtZXAuYwo+Pj4gYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1l
cC5jCj4+PiBpbmRleCA3Y2E1ZmU4Li4yYTY2ZjA3IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYwo+Pj4gKysrIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYwo+Pj4gQEAgLTIwLDI3ICsyMCwy
OSBAQAo+Pj4KPj4+ICAgI2RlZmluZSBQQ0lFX0RCSTJfT0ZGU0VUCQkweDEwMDAJLyogREJJMiBi
YXNlIGFkZHJlc3MqLwo+Pj4KPj4+IC1zdHJ1Y3QgbHNfcGNpZV9lcCB7Cj4+PiAtCXN0cnVjdCBk
d19wY2llCQkqcGNpOwo+Pj4gLQlzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcwkqbHNfZXBjOwo+Pj4g
KyNkZWZpbmUgdG9fbHNfcGNpZV9lcCh4KQlkZXZfZ2V0X2RydmRhdGEoKHgpLT5kZXYpCj4+PiAr
Cj4+PiArc3RydWN0IGxzX3BjaWVfZXBfZHJ2ZGF0YSB7Cj4+PiArCXUzMgkJCQlmdW5jX29mZnNl
dDsKPj4+ICsJY29uc3Qgc3RydWN0IGR3X3BjaWVfZXBfb3BzCSpvcHM7Cj4+PiArCWNvbnN0IHN0
cnVjdCBkd19wY2llX29wcwkqZHdfcGNpZV9vcHM7Cj4+PiAgIH07Cj4+Pgo+Pj4gLSNkZWZpbmUg
dG9fbHNfcGNpZV9lcCh4KQlkZXZfZ2V0X2RydmRhdGEoKHgpLT5kZXYpCj4+PiArc3RydWN0IGxz
X3BjaWVfZXAgewo+Pj4gKwlzdHJ1Y3QgZHdfcGNpZQkJCSpwY2k7Cj4+PiArCXN0cnVjdCBwY2lf
ZXBjX2ZlYXR1cmVzCQkqbHNfZXBjOwo+Pj4gKwljb25zdCBzdHJ1Y3QgbHNfcGNpZV9lcF9kcnZk
YXRhICpkcnZkYXRhOyB9Owo+Pj4KPj4+ICAgc3RhdGljIGludCBsc19wY2llX2VzdGFibGlzaF9s
aW5rKHN0cnVjdCBkd19wY2llICpwY2kpICB7Cj4+PiAgIAlyZXR1cm4gMDsKPj4+ICAgfQo+Pj4K
Pj4+IC1zdGF0aWMgY29uc3Qgc3RydWN0IGR3X3BjaWVfb3BzIGxzX3BjaWVfZXBfb3BzID0gewo+
Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfcGNpZV9vcHMgZHdfbHNfcGNpZV9lcF9vcHMgPSB7
Cj4+PiAgIAkuc3RhcnRfbGluayA9IGxzX3BjaWVfZXN0YWJsaXNoX2xpbmssICB9Owo+Pj4KPj4+
IC1zdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBsc19wY2llX2VwX29mX21hdGNoW10g
PSB7Cj4+PiAtCXsgLmNvbXBhdGlibGUgPSAiZnNsLGxzLXBjaWUtZXAiLH0sCj4+PiAtCXsgfSwK
Pj4+IC19Owo+Pj4gLQo+Pj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMq
ICBsc19wY2llX2VwX2dldF9mZWF0dXJlcyhzdHJ1Y3QKPj4+IGR3X3BjaWVfZXAgKmVwKSAgeyBA
QCAtODIsMTAgKzg0LDQ0IEBAIHN0YXRpYyBpbnQKPj4+IGxzX3BjaWVfZXBfcmFpc2VfaXJxKHN0
cnVjdCBkd19wY2llX2VwICplcCwgdTggZnVuY19ubywKPj4+ICAgCX0KPj4+ICAgfQo+Pj4KPj4+
IC1zdGF0aWMgY29uc3Qgc3RydWN0IGR3X3BjaWVfZXBfb3BzIHBjaWVfZXBfb3BzID0gewo+Pj4g
K3N0YXRpYyB1bnNpZ25lZCBpbnQgbHNfcGNpZV9lcF9mdW5jX2NvbmZfc2VsZWN0KHN0cnVjdCBk
d19wY2llX2VwICplcCwKPj4+ICsJCQkJCQl1OCBmdW5jX25vKQo+Pj4gK3sKPj4+ICsJc3RydWN0
IGR3X3BjaWUgKnBjaSA9IHRvX2R3X3BjaWVfZnJvbV9lcChlcCk7Cj4+PiArCXN0cnVjdCBsc19w
Y2llX2VwICpwY2llID0gdG9fbHNfcGNpZV9lcChwY2kpOwo+Pj4gKwl1OCBoZWFkZXJfdHlwZTsK
Pj4+ICsKPj4+ICsJaGVhZGVyX3R5cGUgPSBpb3JlYWQ4KHBjaS0+ZGJpX2Jhc2UgKyBQQ0lfSEVB
REVSX1RZUEUpOwo+Pj4gKwo+Pj4gKwlpZiAoaGVhZGVyX3R5cGUgJiAoMSA8PCA3KSkKPj4+ICsJ
CXJldHVybiBwY2llLT5kcnZkYXRhLT5mdW5jX29mZnNldCAqIGZ1bmNfbm87Cj4+PiArCWVsc2UK
Pj4+ICsJCXJldHVybiAwOwo+Pgo+PiBJdCBsb29rcyBsaWtlIHRoZXJlIGlzbid0IGEgUENJIGRl
ZmluZSBmb3IgbXVsdGkgZnVuY3Rpb24sIHRoZSBuZWFyZXN0IEkgY291bGQgZmluZAo+PiB3YXMg
UENJX0hFQURFUl9UWVBFX01VTFRJREVWSUNFIGluIGhvdHBsdWcvaWJtcGhwLmguIEEgY29tbWVu
dAo+PiBhYm92ZSB0aGUgdGVzdCBtaWdodCBiZSBoZWxwZnVsIHRvIGV4cGxhaW4gdGhlIHRlc3Qu
Cj4gCj4gWWVzLCBJIGhhdmUgbm90IGZpbmQgdGhlIFBDSV9IRUFERVJfVFlQRV9NVUxUSURFVklD
RSBkZWZpbmUuIE9LLCBJIHdpbGwgYWRkCj4gVGhlIGNvbW1lbnRzIGluIG5leHQgdmVyc2lvbiBw
YXRjaC4KPiAKPj4KPj4gQXMgdGhlIGxzX3BjaWVfZXBfZHJ2ZGF0YSBzdHJ1Y3R1cmVzIGFyZSBz
dGF0aWMsIHRoZSB1bnNldCAuZnVuY19vZmZzZXQgd2lsbCBiZQo+PiBpbml0aWFsaXNlZCB0byAw
LCBzbyB5b3UgY291bGQganVzdCBkcm9wIHRoZSB0ZXN0IGFib3ZlLgo+IAo+IE9LLCB0aGFua3MK
PiAKPj4KPj4gSG93ZXZlciBzb21ldGhpbmcgdG8gdGhlIGVmZmVjdCBvZiB0aGUgZm9sbG93aW5n
IG1heSBoZWxwIHNwb3QKPj4gbWlzY29uZmlndXJhdGlvbjoKPj4KPj4gV0FSTl9PTihmdW5jX25v
ICYmICFwY2llLT5kcnZkYXRhLT5mdW5jX29mZnNldCk7IHJldHVybgo+PiBwY2llLT5kcnZkYXRh
LT5mdW5jX29mZnNldCAqIGZ1bmNfbm87Cj4gCj4gVGhhbmtzIGEgbG90LCB0aGlzIGxvb2tzIGJl
dHRlci4KPiAKPj4KPj4gVGhlIFdBUk4gaXMgcHJvYmFibHkgcXVpdGUgdXNlZnVsIGFzIGlmIHlv
dSBhcmUgYXR0ZW1wdGluZyB0byB1c2Ugbm9uLXplcm8KPj4gZnVuY3Rpb25zIGFuZCBmdW5jX29m
ZnNldCBpc24ndCBzZXQgLSB0aGVuIHRoaW5ncyBtYXkgYXBwZWFyIHRvIHdvcmsgbm9ybWFsbHkK
Pj4gYnV0IGFjdHVhbGx5IHdpbGwgYnJlYWsgaG9ycmlibHkuCj4gCj4gZ290IGl0LCB0aGFua3Mu
Cj4gCj4+Cj4+IFRoYW5rcywKPj4KPj4gQW5kcmV3IE11cnJheQo+Pgo+Pj4gK30KPj4+ICsKPj4+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IGR3X3BjaWVfZXBfb3BzIGxzX3BjaWVfZXBfb3BzID0gewo+
Pj4gICAJLmVwX2luaXQgPSBsc19wY2llX2VwX2luaXQsCj4+PiAgIAkucmFpc2VfaXJxID0gbHNf
cGNpZV9lcF9yYWlzZV9pcnEsCj4+PiAgIAkuZ2V0X2ZlYXR1cmVzID0gbHNfcGNpZV9lcF9nZXRf
ZmVhdHVyZXMsCj4+PiArCS5mdW5jX2NvbmZfc2VsZWN0ID0gbHNfcGNpZV9lcF9mdW5jX2NvbmZf
c2VsZWN0LCB9Owo+Pj4gKwo+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbHNfcGNpZV9lcF9kcnZk
YXRhIGxzMV9lcF9kcnZkYXRhID0gewo+Pj4gKwkub3BzID0gJmxzX3BjaWVfZXBfb3BzLAo+Pj4g
KwkuZHdfcGNpZV9vcHMgPSAmZHdfbHNfcGNpZV9lcF9vcHMsCj4+PiArfTsKPj4+ICsKPj4+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IGxzX3BjaWVfZXBfZHJ2ZGF0YSBsczJfZXBfZHJ2ZGF0YSA9IHsK
Pj4+ICsJLmZ1bmNfb2Zmc2V0ID0gMHgyMDAwMCwKPj4+ICsJLm9wcyA9ICZsc19wY2llX2VwX29w
cywKPj4+ICsJLmR3X3BjaWVfb3BzID0gJmR3X2xzX3BjaWVfZXBfb3BzLAo+Pj4gK307Cj4+PiAr
Cj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbHNfcGNpZV9lcF9vZl9tYXRj
aFtdID0gewo+Pj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxsczEwNDZhLXBjaWUtZXAiLCAuZGF0
YSA9ICZsczFfZXBfZHJ2ZGF0YSB9LAo+Pj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxsczEwODhh
LXBjaWUtZXAiLCAuZGF0YSA9ICZsczJfZXBfZHJ2ZGF0YSB9LAo+Pj4gKwl7IC5jb21wYXRpYmxl
ID0gImZzbCxsczIwODhhLXBjaWUtZXAiLCAuZGF0YSA9ICZsczJfZXBfZHJ2ZGF0YSB9LAo+Pj4g
Kwl7IH0sCj4+PiAgIH07Cj4+Pgo+Pj4gICBzdGF0aWMgaW50IF9faW5pdCBsc19hZGRfcGNpZV9l
cChzdHJ1Y3QgbHNfcGNpZV9lcCAqcGNpZSwgQEAgLTk4LDcKPj4+ICsxMzQsNyBAQCBzdGF0aWMg
aW50IF9faW5pdCBsc19hZGRfcGNpZV9lcChzdHJ1Y3QgbHNfcGNpZV9lcCAqcGNpZSwKPj4+ICAg
CWludCByZXQ7Cj4+Pgo+Pj4gICAJZXAgPSAmcGNpLT5lcDsKPj4+IC0JZXAtPm9wcyA9ICZwY2ll
X2VwX29wczsKPj4+ICsJZXAtPm9wcyA9IHBjaWUtPmRydmRhdGEtPm9wczsKPj4+Cj4+PiAgIAly
ZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnluYW1lKHBkZXYsIElPUkVTT1VSQ0VfTUVNLAo+
PiAiYWRkcl9zcGFjZSIpOwo+Pj4gICAJaWYgKCFyZXMpCj4+PiBAQCAtMTM3LDE0ICsxNzMsMTEg
QEAgc3RhdGljIGludCBfX2luaXQgbHNfcGNpZV9lcF9wcm9iZShzdHJ1Y3QKPj4gcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+Pj4gICAJaWYgKCFsc19lcGMpCj4+PiAgIAkJcmV0dXJuIC1FTk9NRU07
Cj4+Pgo+Pj4gLQlkYmlfYmFzZSA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwg
SU9SRVNPVVJDRV9NRU0sCj4+ICJyZWdzIik7Cj4+PiAtCXBjaS0+ZGJpX2Jhc2UgPSBkZXZtX3Bj
aV9yZW1hcF9jZmdfcmVzb3VyY2UoZGV2LCBkYmlfYmFzZSk7Cj4+PiAtCWlmIChJU19FUlIocGNp
LT5kYmlfYmFzZSkpCj4+PiAtCQlyZXR1cm4gUFRSX0VSUihwY2ktPmRiaV9iYXNlKTsKPj4+ICsJ
cGNpZS0+ZHJ2ZGF0YSA9IG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YShkZXYpOwo+Pj4KPj4+IC0J
cGNpLT5kYmlfYmFzZTIgPSBwY2ktPmRiaV9iYXNlICsgUENJRV9EQkkyX09GRlNFVDsKPj4+ICAg
CXBjaS0+ZGV2ID0gZGV2Owo+Pj4gLQlwY2ktPm9wcyA9ICZsc19wY2llX2VwX29wczsKPj4+ICsJ
cGNpLT5vcHMgPSBwY2llLT5kcnZkYXRhLT5kd19wY2llX29wczsKPj4+ICsKPj4+ICAgCXBjaWUt
PnBjaSA9IHBjaTsKPj4+Cj4+PiAgIAlsc19lcGMtPmxpbmt1cF9ub3RpZmllciA9IGZhbHNlLAo+
Pj4gQEAgLTE1Miw2ICsxODUsMTMgQEAgc3RhdGljIGludCBfX2luaXQgbHNfcGNpZV9lcF9wcm9i
ZShzdHJ1Y3QKPj4+IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+Cj4+PiAgIAlwY2llLT5sc19l
cGMgPSBsc19lcGM7Cj4+Pgo+Pj4gKwlkYmlfYmFzZSA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9i
eW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0sCj4+ICJyZWdzIik7Cj4+PiArCXBjaS0+ZGJpX2Jh
c2UgPSBkZXZtX3BjaV9yZW1hcF9jZmdfcmVzb3VyY2UoZGV2LCBkYmlfYmFzZSk7Cj4+PiArCWlm
IChJU19FUlIocGNpLT5kYmlfYmFzZSkpCj4+PiArCQlyZXR1cm4gUFRSX0VSUihwY2ktPmRiaV9i
YXNlKTsKPj4+ICsKPj4+ICsJcGNpLT5kYmlfYmFzZTIgPSBwY2ktPmRiaV9iYXNlICsgUENJRV9E
QkkyX09GRlNFVDsKPj4+ICsKPj4+ICAgCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHBjaWUp
Owo+Pj4KPj4+ICAgCXJldCA9IGxzX2FkZF9wY2llX2VwKHBjaWUsIHBkZXYpOwo+Pj4gLS0KPj4+
IDIuOS41Cj4+PgoKLS0tCkwnYWJzZW5jZSBkZSB2aXJ1cyBkYW5zIGNlIGNvdXJyaWVyIMOpbGVj
dHJvbmlxdWUgYSDDqXTDqSB2w6lyaWZpw6llIHBhciBsZSBsb2dpY2llbCBhbnRpdmlydXMgQXZh
c3QuCmh0dHBzOi8vd3d3LmF2YXN0LmNvbS9hbnRpdmlydXMKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
