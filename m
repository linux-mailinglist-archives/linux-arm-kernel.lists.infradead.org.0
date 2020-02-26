Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9911702E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:42:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pwpJdVyIYEXi0vjXkNScmKNVlZFsga39uSN9baA7erA=; b=DooJQukryWSCjprwhEvai3x3N
	naigiKKRGyQ5q2LDaZJmmaKz7vi8wbA58MouLj4s3jmSInpUMNrzGJYF37rT/8VKdjHUhoUb9f3DH
	HR0e3VjZrt+rcLHCID8OOjO0IdCJU0xqj7Crh5/ejmz9626sUH6krhoyf3d10K5BLHSYOYjVNvzC6
	++l4vg3+Fao6S0UlpbMhdiE682M/iE1RKPO35OpztlnUvf5cuV51dfmP1s1DN1bc7+QiZKjlwt50u
	rf+k7C6P8KSwR81J4z26NRAm9tiWF+MGjhk5+Aq2EW+qeowtJ9vKZcngq12ZuYvslH1pVR1A6VTJx
	S9ohc9FxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ypP-0002Fr-Fg; Wed, 26 Feb 2020 15:42:27 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ypB-0002EP-Oa
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:42:17 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 00FA222F99;
 Wed, 26 Feb 2020 16:42:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582731726;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OybAC1ie3ULLOgfyed6GVmBGKTLvuJmNw8c9juOBYDc=;
 b=Rw6O4cXAi1oD1WapLdBFR3Pi64r6hDmgb5fE678jG7yk2FS49u3p/ME/MERVE4hgqqVKZ7
 Q4PyevRoNtLJJiP8SamwzQVw7nK1cOo20vWjkL/ixZqrIFSzKDDlPgtJz9+FSoT9ljxfZJ
 dPcneue9tDlgdJl43mgt/vnhStzQ6s0=
MIME-Version: 1.0
Date: Wed, 26 Feb 2020 16:42:05 +0100
From: Michael Walle <michael@walle.cc>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCH v6 2/3] arm64: dts: ls1028a: Add PCIe controller DT nodes
In-Reply-To: <DB8PR04MB67474FF5451A647C4495526F84EC0@DB8PR04MB6747.eurprd04.prod.outlook.com>
References: <20190902034319.14026-2-xiaowei.bao@nxp.com>
 <20200224081105.13878-1-michael@walle.cc> <20200224084307.GD27688@dragon>
 <a3aeabddc82ca86e3dca9c26081a0077@walle.cc>
 <DB8PR04MB67474FF5451A647C4495526F84EC0@DB8PR04MB6747.eurprd04.prod.outlook.com>
Message-ID: <e4a8b5e17d9778080f836ad8523f70ff@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 00FA222F99
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_TWELVE(0.00)[16];
 NEURAL_HAM(-0.00)[-0.401]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_074213_959795_CD442082 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Roy Zang <roy.zang@nxp.com>,
 linux-pci@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Leo Li <leoyang.li@nxp.com>,
 "M.h. Lian" <minghuan.lian@nxp.com>, robh+dt@kernel.org,
 Mingkai Hu <mingkai.hu@nxp.com>, bhelgaas@google.com,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjAyMC0wMi0yNCAxMDoyMiwgc2NocmllYiBaLnEuIEhvdToKPiBIaSBNaWNoYWVsIGFuZCBT
aGF3biwKPiAKPiBJJ2xsIHVwZGF0ZSB0aGUgcGF0Y2ggd2l0aCBpb21tdS1tYXAgcHJvcGVydHku
CgpmcmllbmRseSBwaW5nIDopCgotbWljaGFlbAoKPiAKPiBUaGFua3MsCj4gWmhpcWlhbmcKPiAK
Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogTWljaGFlbCBXYWxsZSA8bWlj
aGFlbEB3YWxsZS5jYz4KPj4gU2VudDogMjAyMOW5tDLmnIgyNOaXpSAxNjo1NAo+PiBUbzogU2hh
d24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgo+PiBDYzogWGlhb3dlaSBCYW8gPHhpYW93ZWku
YmFvQG54cC5jb20+OyBaLnEuIEhvdQo+PiA8emhpcWlhbmcuaG91QG54cC5jb20+OyBiaGVsZ2Fh
c0Bnb29nbGUuY29tOwo+PiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgTGVvIExpIDxsZW95
YW5nLmxpQG54cC5jb20+Owo+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7Cj4+IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5v
cmc7IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3JnOwo+PiBsb3JlbnpvLnBpZXJhbGlzaUBh
cm0uY29tOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgTS5oLiBMaWFuCj4+IDxtaW5naHVhbi5saWFu
QG54cC5jb20+OyBNaW5na2FpIEh1IDxtaW5na2FpLmh1QG54cC5jb20+Owo+PiByb2JoK2R0QGtl
cm5lbC5vcmc7IFJveSBaYW5nIDxyb3kuemFuZ0BueHAuY29tPgo+PiBTdWJqZWN0OiBSZTogW1BB
VENIIHY2IDIvM10gYXJtNjQ6IGR0czogbHMxMDI4YTogQWRkIFBDSWUgY29udHJvbGxlciAKPj4g
RFQKPj4gbm9kZXMKPj4gCj4+IEhpIFNoYXduLCBhbGwsCj4+IAo+PiBBbSAyMDIwLTAyLTI0IDA5
OjQzLCBzY2hyaWViIFNoYXduIEd1bzoKPj4gPiBPbiBNb24sIEZlYiAyNCwgMjAyMCBhdCAwOTox
MTowNUFNICswMTAwLCBNaWNoYWVsIFdhbGxlIHdyb3RlOgo+PiA+PiBIaSBYaWFvd2VpLCBIaSBT
aGF3biwKPj4gPj4KPj4gPj4gPiBMUzEwMjhhIGltcGxlbWVudHMgMiBQQ0llIDMuMCBjb250cm9s
bGVycy4KPj4gPj4KPj4gPj4gUGF0Y2ggMS8zIGFuZCAzLzMgYXJlIGluIExpbnVzJyB0cmVlIGJ1
dCBub2JvZHkgc2VlbXMgdG8gY2FyZSBhYm91dAo+PiA+PiB0aGlzIHBhdGNoIGFueW1vcmUgOigK
Pj4gPj4KPj4gPj4gVGhpcyBkb2Vzbid0IHdvcmsgd2VsbCB3aXRoIHRoZSBJT01NVSwgYmVjYXVz
ZSB0aGUgaW9tbXUtbWFwIHByb3BlcnR5Cj4+ID4+IGlzIG1pc3NpbmcuIFRoZSBib290bG9hZGVy
IG5lZWRzIHRoZSAmc21tdSBwaGFuZGxlIHRvIGZpeHVwIHRoZQo+PiA+PiBlbnRyeS4KPj4gPj4g
U2VlCj4+ID4+IGJlbG93Lgo+PiA+Pgo+PiA+PiBTaGF3biwgd2lsbCB5b3UgYWRkIHRoaXMgcGF0
Y2ggdG8geW91ciB0cmVlIG9uY2UgaXRzIGZpeGVkLAo+PiA+PiBjb25zaWRlcmluZyBpdCBqdXN0
IGFkZHMgdGhlIGRldmljZSB0cmVlIG5vZGUgZm9yIHRoZSBMUzEwMjhBPwo+PiA+Cj4+ID4gVGhl
IHBhdGNoL3RocmVhZCBpcyBhIGJpdCBhZ2VkLiAgWW91IG1heSB3YW50IHRvIHNlbmQgYW4gdXBk
YXRlZCBwYXRjaAo+PiA+IGZvciBkaXNjdXNzaW9uLgo+PiAKPj4gU28gc2hvdWxkIEkganVzdCBw
aWNrIHVwIHRoZSBwYXRjaCBhZGQgbXkgdHdvIGZpeGVzIGFuZCBzZW5kIGl0IGFnYWluPwo+PiBX
aGF0IGFib3V0Cj4+IHRoZSBTaWduZWQtb2ZmLWJ5IHRhZ3M/IExlYXZlIHRoZW0/IFJlcGxhY2Ug
dGhlbT8gQWRkIG1pbmU/Cj4+IAo+PiAtbWljaGFlbAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
