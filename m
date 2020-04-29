Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111661BE5BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 19:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZDgVcjovbLQ4m05oHwAYrIwIezhYjh/WPHhVhfs6ar8=; b=QQlteeEYiiriXG0eSjKCnnvNs
	seyg41Vw8x2i94BPul9f29vcWWjM4wH/Yn1mT1ZnDM7pgtA/Wur5FsCXJsRHQyKrS9EmnhlzO0kbg
	A4wClxbkm+vuhqdWHetuYI7Gd6y6GeSfTbG/YkqofGUlp0eVBu54zuAFM5JPKzFckYDBgiVO8p+US
	PzEE0Ov8nXIg3td6snBeswMmqKewN5iUzlpZ75UnaU+PCp/RhRChlktZ9L4hdDfYisqptw5JhJWwL
	vfmmJdRhcb3+a9Y08QpGK9EBfRcS882lt8QqjWi7vP+ziEQzriaZ47T6Jcyn73tjuhuOz/EDS0tBB
	TVFBBJMhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTqzj-0002KF-Lp; Wed, 29 Apr 2020 17:59:39 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqza-0002Ir-Nk; Wed, 29 Apr 2020 17:59:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3CF9DACC2;
 Wed, 29 Apr 2020 17:59:24 +0000 (UTC)
Subject: Re: [PATCH v3 1/1] dma: actions: Fix lockdep splat for owl-dma
To: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
References: <2f3e665270b8d170ea19cc66c6f0c68bf8fe97ff.1588173497.git.cristian.ciocaltea@gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <87e4f05f-e942-2a39-1f87-fe01fb6c4248@suse.de>
Date: Wed, 29 Apr 2020 19:59:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <2f3e665270b8d170ea19cc66c6f0c68bf8fe97ff.1588173497.git.cristian.ciocaltea@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_105931_076024_599EDB48 
X-CRM114-Status: GOOD (  21.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjkuMDQuMjAgdW0gMTc6Mjggc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6Cj4gV2hlbiB0
aGUga2VybmVsIGlzIGJ1aWx0IHdpdGggbG9ja2RlcCBzdXBwb3J0IGFuZCB0aGUgb3dsLWRtYSBk
cml2ZXIgaXMKPiB1c2VkLCB0aGUgZm9sbG93aW5nIG1lc3NhZ2UgaXMgc2hvd246Cj4gCj4gWyAg
ICAyLjQ5NjkzOV0gSU5GTzogdHJ5aW5nIHRvIHJlZ2lzdGVyIG5vbi1zdGF0aWMga2V5Lgo+IFsg
ICAgMi41MDE4ODldIHRoZSBjb2RlIGlzIGZpbmUgYnV0IG5lZWRzIGxvY2tkZXAgYW5ub3RhdGlv
bi4KPiBbICAgIDIuNTA3MzU3XSB0dXJuaW5nIG9mZiB0aGUgbG9ja2luZyBjb3JyZWN0bmVzcyB2
YWxpZGF0b3IuCj4gWyAgICAyLjUxMjgzNF0gQ1BVOiAwIFBJRDogMTIgQ29tbToga3dvcmtlci8w
OjEgTm90IHRhaW50ZWQgNS42LjMrICMxNQo+IFsgICAgMi41MTkwODRdIEhhcmR3YXJlIG5hbWU6
IEdlbmVyaWMgRFQgYmFzZWQgc3lzdGVtCj4gWyAgICAyLjUyMzg3OF0gV29ya3F1ZXVlOiBldmVu
dHNfZnJlZXphYmxlIG1tY19yZXNjYW4KPiBbICAgIDIuNTI4NjgxXSBbPDgwMTEyN2YwPl0gKHVu
d2luZF9iYWNrdHJhY2UpIGZyb20gWzw4MDEwZGE1OD5dIChzaG93X3N0YWNrKzB4MTAvMHgxNCkK
PiBbICAgIDIuNTM2NDIwXSBbPDgwMTBkYTU4Pl0gKHNob3dfc3RhY2spIGZyb20gWzw4MDgwZmJl
OD5dIChkdW1wX3N0YWNrKzB4YjQvMHhlMCkKPiBbICAgIDIuNTQzNjQ1XSBbPDgwODBmYmU4Pl0g
KGR1bXBfc3RhY2spIGZyb20gWzw4MDE3ZWZhND5dIChyZWdpc3Rlcl9sb2NrX2NsYXNzKzB4NmYw
LzB4NzE4KQo+IFsgICAgMi41NTE4MTZdIFs8ODAxN2VmYTQ+XSAocmVnaXN0ZXJfbG9ja19jbGFz
cykgZnJvbSBbPDgwMTdiN2QwPl0gKF9fbG9ja19hY3F1aXJlKzB4NzgvMHgyNWYwKQo+IFsgICAg
Mi41NjAzMzBdIFs8ODAxN2I3ZDA+XSAoX19sb2NrX2FjcXVpcmUpIGZyb20gWzw4MDE3ZTVlND5d
IChsb2NrX2FjcXVpcmUrMHhkOC8weDFmNCkKPiBbICAgIDIuNTY4MTU5XSBbPDgwMTdlNWU0Pl0g
KGxvY2tfYWNxdWlyZSkgZnJvbSBbPDgwODMxZmIwPl0gKF9yYXdfc3Bpbl9sb2NrX2lycXNhdmUr
MHgzYy8weDUwKQo+IFsgICAgMi41NzY1ODldIFs8ODA4MzFmYjA+XSAoX3Jhd19zcGluX2xvY2tf
aXJxc2F2ZSkgZnJvbSBbPDgwNTFiNWZjPl0gKG93bF9kbWFfaXNzdWVfcGVuZGluZysweGJjLzB4
MTIwKQo+IFsgICAgMi41ODU4ODRdIFs8ODA1MWI1ZmM+XSAob3dsX2RtYV9pc3N1ZV9wZW5kaW5n
KSBmcm9tIFs8ODA2NjhjYmM+XSAob3dsX21tY19yZXF1ZXN0KzB4MWIwLzB4MzkwKQo+IFsgICAg
Mi41OTQ2NTVdIFs8ODA2NjhjYmM+XSAob3dsX21tY19yZXF1ZXN0KSBmcm9tIFs8ODA2NTBjZTA+
XSAobW1jX3N0YXJ0X3JlcXVlc3QrMHg5NC8weGJjKQo+IFsgICAgMi42MDI5MDZdIFs8ODA2NTBj
ZTA+XSAobW1jX3N0YXJ0X3JlcXVlc3QpIGZyb20gWzw4MDY1MGVjMD5dIChtbWNfd2FpdF9mb3Jf
cmVxKzB4NjQvMHhkMCkKPiBbICAgIDIuNjExMjQ1XSBbPDgwNjUwZWMwPl0gKG1tY193YWl0X2Zv
cl9yZXEpIGZyb20gWzw4MDY1YWExMD5dIChtbWNfYXBwX3NlbmRfc2NyKzB4MTBjLzB4MTQ0KQo+
IFsgICAgMi42MTk2NjldIFs8ODA2NWFhMTA+XSAobW1jX2FwcF9zZW5kX3NjcikgZnJvbSBbPDgw
NjU5YjNjPl0gKG1tY19zZF9zZXR1cF9jYXJkKzB4NGMvMHgzMTgpCj4gWyAgICAyLjYyODA5Ml0g
Wzw4MDY1OWIzYz5dIChtbWNfc2Rfc2V0dXBfY2FyZCkgZnJvbSBbPDgwNjU5ZjBjPl0gKG1tY19z
ZF9pbml0X2NhcmQrMHgxMDQvMHg0MzApCj4gWyAgICAyLjYzNjYwMV0gWzw4MDY1OWYwYz5dICht
bWNfc2RfaW5pdF9jYXJkKSBmcm9tIFs8ODA2NWEzZTA+XSAobW1jX2F0dGFjaF9zZCsweGNjLzB4
MTZjKQo+IFsgICAgMi42NDQ2NzhdIFs8ODA2NWEzZTA+XSAobW1jX2F0dGFjaF9zZCkgZnJvbSBb
PDgwNjUzMDFjPl0gKG1tY19yZXNjYW4rMHgzYWMvMHg0MGMpCj4gWyAgICAyLjY1MjMzMl0gWzw4
MDY1MzAxYz5dIChtbWNfcmVzY2FuKSBmcm9tIFs8ODAxNDMyNDQ+XSAocHJvY2Vzc19vbmVfd29y
aysweDJkOC8weDc4MCkKPiBbICAgIDIuNjYwMjM5XSBbPDgwMTQzMjQ0Pl0gKHByb2Nlc3Nfb25l
X3dvcmspIGZyb20gWzw4MDE0MzczMD5dICh3b3JrZXJfdGhyZWFkKzB4NDQvMHg1OTgpCj4gWyAg
ICAyLjY2ODMyM10gWzw4MDE0MzczMD5dICh3b3JrZXJfdGhyZWFkKSBmcm9tIFs8ODAxNGI1Zjg+
XSAoa3RocmVhZCsweDE0OC8weDE1MCkKPiBbICAgIDIuNjc1NzA4XSBbPDgwMTRiNWY4Pl0gKGt0
aHJlYWQpIGZyb20gWzw4MDEwMTBiND5dIChyZXRfZnJvbV9mb3JrKzB4MTQvMHgyMCkKPiBbICAg
IDIuNjgyOTEyXSBFeGNlcHRpb24gc3RhY2soMHhlZThmZGZiMCB0byAweGVlOGZkZmY4KQo+IFsg
ICAgMi42ODc5NTRdIGRmYTA6ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAw
MDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwCj4gWyAgICAyLjY5NjExOF0gZGZjMDog
MDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAw
MDAwMDAgMDAwMDAwMDAKPiBbICAgIDIuNzA0Mjc3XSBkZmUwOiAwMDAwMDAwMCAwMDAwMDAwMCAw
MDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAxMyAwMDAwMDAwMAo+IAo+IFRoZSBvYnZpb3VzIGZpeCB3
b3VsZCBiZSB0byB1c2UgJ3NwaW5fbG9ja19pbml0KCknIG9uICdwY2hhbi0+bG9jaycKPiBiZWZv
cmUgYXR0ZW1wdGluZyB0byBjYWxsICdzcGluX2xvY2tfaXJxc2F2ZSgpJyBpbiAnb3dsX2RtYV9n
ZXRfcGNoYW4oKScuCj4gCj4gSG93ZXZlciwgYWNjb3JkaW5nIHRvIE1hbml2YW5uYW4gU2FkaGFz
aXZhbSwgJ3BjaGFuLT5sb2NrJyB3YXMgc3VwcG9zZWQKPiB0byBvbmx5IHByb3RlY3QgJ3BjaGFu
LT52Y2hhbicgd2hpbGUgJ29kLT5sb2NrJyBkb2VzIGEgc2ltaWxhciBqb2IgaW4KPiAnb3dsX2Rt
YV90ZXJtaW5hdGVfcGNoYW4nLgo+IAo+IFRoZXJlZm9yZSwgdGhpcyBwYXRjaCB3aWxsIHNpbXBs
eSBzdWJzdGl0dXRlICdwY2hhbi0+bG9jaycgd2l0aCAnb2QtPmxvY2snCj4gYW5kIHJlbW92ZXMg
dGhlICdsb2NrJyBhdHRyaWJ1dGUgaW4gJ293bF9kbWFfcGNoYW4nIHN0cnVjdC4KPiAKClBsZWFz
ZSBhZGQ6CgpGaXhlczogNDdlMjA1NzdjMjRkICgiZG1hZW5naW5lOiBBZGQgQWN0aW9ucyBTZW1p
IE93bCBmYW1pbHkgUzkwMCBETUEgCmRyaXZlciIpCgo+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFu
IENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGdtYWlsLmNvbT4KPiBSZXZpZXdlZC1ieTog
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4K
PiAtLS0KPiBDaGFuZ2VzIGluIHYzOgo+ICogR2V0IHJpZCBvZiB0aGUga2VybmVsZG9jIGNvbW1l
bnQgZm9yIHRoZSByZW1vdmVkIHN0cnVjdCBhdHRyaWJ1dGUKPiAqIEFkZCB0aGUgUmV2aWV3ZWQt
YnkgdGFnIGluIHRoZSBjb21taXQgbWVzc2FnZQo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gKiBJbXBy
b3ZlIHRoZSBmaXggYXMgc3VnZ2VzdGVkIGJ5IE1hbml2YW5uYW4gU2FkaGFzaXZhbTogc3Vic3Rp
dHV0ZQo+ICAgICdwY2hhbi0+bG9jaycgd2l0aCAnb2QtPmxvY2snIGFuZCBnZXQgcmlkIG9mIHRo
ZSAnbG9jaycgYXR0cmlidXRlIGluCj4gICAgJ293bF9kbWFfcGNoYW4nIHN0cnVjdAo+ICogVXBk
YXRlIHRoZSBjb21taXQgbWVzc2FnZSB0byByZWZsZWN0IHRoZSBjaGFuZ2VzCj4gCj4gICBkcml2
ZXJzL2RtYS9vd2wtZG1hLmMgfCA4ICsrKy0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKT3RoZXJ3aXNlIG5vIG9iamVjdGlvbnMgZnJvbSBt
eSBzaWRlLAoKQWNrZWQtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KCk1h
eWJlIHRoZSBETUEgbWFpbnRhaW5lcnMgY2FuIGFkZCB0aG9zZSB0d28gbGluZXMgd2hlbiBwaWNr
aW5nIGl0IHVwLCB0byAKYXZvaWQgYSB2ND8KClJlZ2FyZHMsCkFuZHJlYXMKCi0tIApTVVNFIFNv
ZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5i
ZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJl
cmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
