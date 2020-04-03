Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BE719DDA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 20:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Subject:To:From:Message-ID:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=Xwony4SCY7lh+Pn1fDceYtDa/bfOyPTdS6wwJHhjyZY=; b=a484EDzMmNfVFgedyv1lx8Nkr
	Q9cIsEsxxz4LuZB9tsWA03QNkZEI+WII4bWUmKJbBV8Z372J1BaoyKRD6HFPuCFtXyjmvqqyD2Aye
	7T8PcRc3jrUEnAOPa20EgD2DvHkfbmekHN0MYZWQ/dK0fd1zyH9wkMuk3wzh1KmcTnxVaenODXaCy
	iVGaD2VtqkqtboiE2SX8gwhtgqJb7w3g8PJWVhAElP/kJCOA2MFCeBqKsLatPBpAiNcBMJAhCf69+
	b62jCKfeCs14+6vHr+HrwA/3qlTq0o/O35roizstqc7k3S3b62QGtUoxVSJTi0KZgjSu14IxA+8kM
	M8aFxVSSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQkt-0000yY-0X; Fri, 03 Apr 2020 18:09:23 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQkl-0000xh-Pj; Fri, 03 Apr 2020 18:09:18 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 1E45F5FADE;
 Fri,  3 Apr 2020 20:09:12 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="KtO3uizp"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id AC18627C0E5;
 Fri,  3 Apr 2020 20:09:11 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com AC18627C0E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1585937351;
 bh=xBdua0z2R0JdSBRmoYYNQnHi6mI3NA5tona4JmFQPrw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=KtO3uizphLuDc4K+36n4GW9eKfV1czQNFNwwSjsRupOFX6zh+lc1ZJofOUnx7mw74
 ACD1d+pMmh1u+BWLL2DRtM8RDSHlfTV77qXfsqj61/DTTdEmbhf1dCe2suosyIC57j
 WuhmNA9fKpJhZGgaNCkjiW6JJDS5V+rNLePUZNBPmIxBrwl9UM++ZXeKCFEiY5+qqS
 N+sY8VvZG2cq76ciatzusD9V0JFxMnk1xfOQZ/gCf1lRy13iHL7/9/Uabty7dg+ejo
 hhAzL/LXSHOM0CT4gaowSGGLe+VF0PkOoQ01NEDcWhJQrh4yTErQtmfvk/Pjq2MEtH
 5XOrEeek0MH/w==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Fri, 03 Apr 2020 18:09:11 +0000
Date: Fri, 03 Apr 2020 18:09:11 +0000
Message-ID: <20200403180911.Horde.9xqnJvjcRDe-ttshlJbG6WE@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH] net: dsa: mt7530: fix null pointer dereferencing in
 port5 setup
In-Reply-To: <20200403112830.505720-1-gch981213@gmail.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_110916_394466_56FD8D6B 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, "David
 S. Miller" <davem@davemloft.net>, Russell King <rmk+kernel@armlinux.org.uk>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyBDaHVhbmhvbmcgR3VvIDxnY2g5ODEyMTNAZ21haWwuY29tPjoKCkhpIENodWFuaG9u
ZywKCj4gVGhlIDJuZCBnbWFjIG9mIG1lZGlhdGVrIHNvYyBldGhlcm5ldCBtYXkgbm90IGJlIGNv
bm5lY3RlZCB0byBhIFBIWQo+IGFuZCBhIHBoeS1oYW5kbGUgaXNuJ3QgYWx3YXlzIGF2YWlsYWJs
ZS4KPiBVbmZvcnR1bmF0ZWx5LCBtdDc1MzAgZHNhIGRyaXZlciBhc3N1bWVzIHRoYXQgdGhlIDJu
ZCBnbWFjIGlzIGFsd2F5cwo+IGNvbm5lY3RlZCB0byBzd2l0Y2ggcG9ydCA1IGFuZCBzZXR1cCBt
dDc1MzAgYWNjb3JkaW5nIHRvIHBoeSBhZGRyZXNzCj4gb2YgMm5kIGdtYWMgbm9kZSwgY2F1c2lu
ZyBudWxsIHBvaW50ZXIgZGVyZWZlcmVuY2luZyB3aGVuIHBoeS1oYW5kbGUKPiBpc24ndCBkZWZp
bmVkIGluIGR0cy4KCk1UNzUzMCB0cmllcyB0byBkZXRlY3QgaWYgMm5kIEdNQUMgaXMgdXNpbmcg
YSBwaHkgd2l0aCBwaHktYWRkcmVzcyAwIG9yIDQuCklmIHNvLCBzd2l0Y2ggcG9ydCA1IG5lZWRz
IHRvIGJlIHNldHVwIHNvIHRoYXQgUEhZIDAgb3IgNCBpcyBhdmFpbGFibGUKdmlhIHBvcnQgNSBv
ZiB0aGUgc3dpdGNoLiBBbnkgTUFDIGNhbiB0YWxrIHRvIFBIWSAwLzQgZGlyZWN0bHkgdmlhIHBv
cnQgNS4KVGhpcyBpcyBhbHNvIGV4cGxhaW5lZCBpbiB0aGUga2VybmVsIGRvY3MgbXQ3NTMwLnR4
dC4KCk1heSBiZSB0aGVyZSBhcmUgYmV0dGVyIHdheSB0byBkZXRlY3QgdGhhdCBhbnkgbm9kZSBp
cyB1c2luZyBwaHkgMC80IG9mCnRoZSBzd2l0Y2guCgpGdW5ueSB0aGF0IEkgbmV2ZXIgdGVzdGVk
IHRoaXMgY2FzZSB0aGF0IDJuZCBnbWFjIG5vZGUgZXhpdHMgYW5kIGlzIGRpc2FibGVkCndpdGhv
dXQgdXNpbmcgcG9ydCA1LgoKVGhhbmtzIGZvciB0aGUgZml4LgoKVGVzdGVkLWJ5OiBSZW7DqSB2
YW4gRG9yc3QgPG9wZW5zb3VyY2VAdmRvcnN0LmNvbT4KCkdyZWF0cywKClJlbsOpCgo+IFRoaXMg
Y29tbWl0IGZpeCB0aGlzIHNldHVwIGNvZGUgYnkgY2hlY2tpbmcgcmV0dXJuIHZhbHVlIG9mCj4g
b2ZfcGFyc2VfcGhhbmRsZSBiZWZvcmUgdXNpbmcgaXQuCj4KPiBGaXhlczogMzhmNzkwYTgwNTYw
ICgibmV0OiBkc2E6IG10NzUzMDogQWRkIHN1cHBvcnQgZm9yIHBvcnQgNSIpCj4gU2lnbmVkLW9m
Zi1ieTogQ2h1YW5ob25nIEd1byA8Z2NoOTgxMjEzQGdtYWlsLmNvbT4KPiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZwo+IC0tLQo+Cj4gbXQ3NTMwIGlzIGF2YWlsYWJsZSBhcyBhIHN0YW5kYWxv
bmUgY2hpcCBhbmQgd2Ugc2hvdWxkIG5vdCBtYWtlIGl0Cj4gdGlnaHRseSBjb3VwbGVkIHdpdGgg
YSBzcGVjaWZpYyB0eXBlIG9mIGV0aGVybmV0IGR0IGJpbmRpbmcgaW4gdGhlCj4gZmlyc3QgcGxh
Y2UuCj4gQSBwcm9wZXIgZml4IGlzIHRvIHJlcGxhY2UgdGhpcyBwb3J0IGRldGVjdGlvbiBsb2dp
YyB3aXRoIGEgZHQKPiBwcm9wZXJ0eSB1bmRlciBtdDc1MzAgbm9kZSwgYnV0IHRoYXQncyB0b28g
bXVjaCBmb3IgbGludXgtc3RhYmxlLgo+Cj4gIGRyaXZlcnMvbmV0L2RzYS9tdDc1MzAuYyB8IDMg
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMgYi9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMKPiBpbmRl
eCA2ZTkxZmUyZjRiOWEuLjFkNTNhNGViY2Q1YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9k
c2EvbXQ3NTMwLmMKPiArKysgYi9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMKPiBAQCAtMTQxNCw2
ICsxNDE0LDkgQEAgbXQ3NTMwX3NldHVwKHN0cnVjdCBkc2Ffc3dpdGNoICpkcykKPiAgCQkJCWNv
bnRpbnVlOwo+Cj4gIAkJCXBoeV9ub2RlID0gb2ZfcGFyc2VfcGhhbmRsZShtYWNfbnAsICJwaHkt
aGFuZGxlIiwgMCk7Cj4gKwkJCWlmICghcGh5X25vZGUpCj4gKwkJCQljb250aW51ZTsKPiArCj4g
IAkJCWlmIChwaHlfbm9kZS0+cGFyZW50ID09IHByaXYtPmRldi0+b2Zfbm9kZS0+cGFyZW50KSB7
Cj4gIAkJCQlyZXQgPSBvZl9nZXRfcGh5X21vZGUobWFjX25wLCAmaW50ZXJmYWNlKTsKPiAgCQkJ
CWlmIChyZXQgJiYgcmV0ICE9IC1FTk9ERVYpCj4gLS0KPiAyLjI1LjEKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
