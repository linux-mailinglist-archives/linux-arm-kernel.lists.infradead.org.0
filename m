Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DA2C3A90
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biAXjPpeXJHICiJxDE3TThtKukJqU37KMe236ebpV/w=; b=i1sd1U9fKo8iDS
	Mp+8YsWFe4mXzGpd1QBxjKJQdnqbfsD1OLJLG8AlpwxHSogai+WMdZCoG8Gdi3RyMUAEkxnhO86DD
	WWd8ZNIzGCW7lQrAl2jnzE6ij2NkbwO6KZS1KJqIh10yjXlI41WtSjriPWiMntsdc5phCo1i5sPdx
	uIlxWgmQA5FnWPvvksqgsvvGijeHuS1ZLcJr3OqKhpu93WXvl++3xxPP2JMDaJMsXF22gV8UHonRK
	N6VVZDZWV8wrays5e+9VBUiTIAOm6qZTh6N2+bV0WtiZkIs3rkdJ2HTiA2t0GVNZeD7r2WbxXhf0n
	S6EroWhT+CoBp7zdZeQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFL5L-0002xX-4L; Tue, 01 Oct 2019 16:33:11 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFL5B-0002xC-Vh
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:33:03 +0000
Received: from [199.195.250.187] (port=45182 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iFL53-00072K-Ek; Tue, 01 Oct 2019 17:32:57 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id B33DB82889;
 Tue,  1 Oct 2019 16:32:49 +0000 (UTC)
Date: Wed, 02 Oct 2019 00:31:25 +0800
In-Reply-To: <20191001.093000.372726574458067639.davem@davemloft.net>
References: <20191001082912.12905-1-icenowy@aosc.io>
 <20191001.090651.796983023328992596.davem@davemloft.net>
 <2CCD0856-433E-4602-A079-9F7F5F2E00D6@aosc.io>
 <20191001.093000.372726574458067639.davem@davemloft.net>
MIME-Version: 1.0
Subject: Re: [PATCH 0/3] Pine64+ specific hacks for RTL8211E Ethernet PHY
To: linux-arm-kernel@lists.infradead.org,David Miller <davem@davemloft.net>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <D1124458-D5CB-4AFF-B106-C6EA1A98100F@aosc.io>
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_093302_020040_F7C0FE5F 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, f.fainelli@gmail.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, wens@csie.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDEw5pyIMuaXpSBHTVQrMDg6MDAg5LiK5Y2IMTI6MzA6MDAsIERhdmlkIE1p
bGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4g5YaZ5YiwOgo+RnJvbTogSWNlbm93eSBaaGVuZyA8
aWNlbm93eUBhb3NjLmlvPgo+RGF0ZTogV2VkLCAwMiBPY3QgMjAxOSAwMDowODozOSArMDgwMAo+
Cj4+IAo+PiAKPj4g5LqOIDIwMTnlubQxMOaciDLml6UgR01UKzA4OjAwIOS4iuWNiDEyOjA2OjUx
LCBEYXZpZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+Cj7lhpnliLA6Cj4+PkZyb206IElj
ZW5vd3kgWmhlbmcgPGljZW5vd3lAYW9zYy5pbz4KPj4+RGF0ZTogVHVlLCAgMSBPY3QgMjAxOSAx
NjoyOTowOSArMDgwMAo+Pj4KPj4+PiBUaGVyZSdyZSBzb21lIFBpbmU2NCsgYm9hcmRzIGtub3du
IHRvIGhhdmUgYnJva2VuIFJUTDgyMTFFIGNoaXBzLAo+YW5kCj4+Pj4gYSBoYWNrIGlzIGdpdmVu
IGJ5IFBpbmU2NCssIHdoaWNoIGlzIHNhaWQgdG8gYmUgZnJvbSBSZWFsdGVrLgo+Pj4+IAo+Pj4+
IFRoaXMgcGF0Y2hzZXQgYWRkcyB0aGUgaGFjay4KPj4+PiAKPj4+PiBUaGUgaGFjayBpcyB0YWtl
biBmcm9tIFUtQm9vdCwgYW5kIGl0IGNvbnRhaW5zIG1hZ2ljIG51bWJlcnMKPndpdGhvdXQKPj4+
PiBhbnkgZG9jdW1lbnQuCj4+Pgo+Pj5QbGVhc2UgY29udGFjdCBSZWFsdGVrIGFuZCB0cnkgdG8g
Z2V0IGFuIGV4cGxhbmF0aW9uIGFib3V0IHRoaXMuCj4+IAo+PiBTb3JyeSwgYnV0IFJlYWx0ZWsg
bmV2ZXIgc2hvd3MgYW55IGlkZWEgdG8gYWRkIG1vcmUgaW5mb21hdGlvbiBhYm91dAo+dGhpcy4K
Pj4gCj4+IFRoZXNlIGhhY2tzIGhhZCBleGlzdGVkIGFuZCB3b3JrZWQgZm9yIHllYXJzLgo+Cj5I
YXZlIHlvdSBhY3R1YWxseSB0cmllZCB0byBjb21tdW5pY2F0ZSB3aXRoIGFuIGFwcHJvcHJpYXRl
IGNvbnRhY3QKPnlvdXJzZWxmPwo+Cj5JZiBub3QsIEkgYW0gYXNraW5nIHlvdSB0byBkbyBzby4K
CkkgaGF2ZSB0cmllZCB0byBhc2sgdmlhIFRMIExpbSBmcm9tIFBpbmU2NCwgYmVjYXVzZSBJIGhh
dmUgbm8gd2F5CnRvIGNvbW11bmljYXRlIGRpcmVjdGx5IHRvIFJlYWx0ZWsuIEhvd2V2ZXIgVEwg
Y2Fubm90IGdldCBhbnl0aGluZwptb3JlIGZyb20gUmVhbHRlay4KCj4KPl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj5saW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdAo+bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj5odHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCi0tIArk
vb/nlKggSy05IE1haWwg5Y+R6YCB6Ieq5oiR55qEQW5kcm9pZOiuvuWkh+OAggoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
