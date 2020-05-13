Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985331D1F0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 21:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QosgbfWuaLSzU6Ts2tFQgRcFUKO3jlm6eaX3ZKhh8XA=; b=GWWQwyL2LcR411Y1pieYamycv
	EnDucHKIgi3/1mkWykfn8ftp6Xo7odIVBp0paxsM2P1cQpDgBa30CxCtTiYt/XYJrr3UPZkZW0OA/
	1jtW91wnuvWLBtNui35J0LgwbyWPq9mIp6BbGJV8NrZS7Z4/LA1bfzueMNoX2usaTd2JLRMhQOpW5
	BgkrLFcqM+KnzdWIsRWK/h2NWZjXdgn0kA8qT40OsBYc8Prc6A+jSYz+eNdZ8MT1FxgG07lIg35vB
	EcMCCHYddeS5lrybeTeuSpsppfed64aN9FLOG7h0bQ5k6frq5lNqkF6cLewLM2npXx3hBu0BW+6gT
	lAz1dZ/tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYx0s-0003BO-SC; Wed, 13 May 2020 19:25:54 +0000
Received: from doppler.thel33t.co.uk ([185.153.207.61])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYx0k-0003AD-6i
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 19:25:48 +0000
Received: from mail.solinno.uk (localhost [127.0.0.1])
 by doppler.thel33t.co.uk (Postfix) with ESMTP id BD21E20245;
 Wed, 13 May 2020 20:25:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=solinno.co.uk; s=mail;
 t=1589397940; bh=I4fxPWoWa4iUfe2bsj9yjiAxjnJqPEQroqptPn34omM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ClqJ2ElAP6CwEjvmBiotxUwGUYbHRUFZUj5a8WsPB/t7v2Jxu3ex6zuoXPkKNTssC
 0ycY3P4oQcF65BCFN0QWMUAvg5GHYCHQx5pKzPcMa4V8REas9tCdfb+T+k/LuWUxjt
 tWQk8G1iQKG36/Ag/1J+ulu8tEF0lQuXEGeKciMs=
MIME-Version: 1.0
Date: Wed, 13 May 2020 20:25:40 +0100
From: Leigh Brown <leigh@solinno.co.uk>
To: Marek Behun <marek.behun@nic.cz>
Subject: Re: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox.dts: fix
 sdhci1 pins
In-Reply-To: <20200513210825.0f8bc9ec@nic.cz>
References: <20200513175648.GA7561@dumbo> <20200513210825.0f8bc9ec@nic.cz>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <e9c887dc72718aeff76b234f3dfacca8@solinno.co.uk>
X-Sender: leigh@solinno.co.uk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_122546_537366_38E2AA38 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Domenico Andreoli <domenico.andreoli@linux.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyZWssCgpPbiAyMDIwLTA1LTEzIDIwOjA4LCBNYXJlayBCZWh1biB3cm90ZToKPiBIaSBE
b21lbmljbywKPiAKPiBJIGFtIG5vdCBhd2FyZSBvZiBzdWNoIGJ1Zy4gVGhlIGxpbmsgZnJvbSB5
b3UgbWVzc2FnZSBkb2VzIG5vdCB3b3JrIChpdAo+IHNheXMgTWVzc2FnZS1JRCA8MTY1ZmRlYjU1
ODMwNjlkODkzNDM2ZTk1Y2FjNTQzNkBzb2xpbm5vLmNvLnVrPiBub3QKPiBmb3VuZCkuCgpUaGF0
J3MgbXkgZG9tYWluIQoKPiBDb3VsZCB5b3UgcGxlYXNlIHJlc2VuZCB0aGUgbWVzc2FnZSBkZXNj
cmliaW5nIHRoZSBwcm9ibGVtPwoKSSdtIGd1ZXNzaW5nIGl0J3MgdGhpcyBwcm9ibGVtIEkgcG9z
dGVkOgoKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xpbnV4LWFybS1rZXJu
ZWwvMjAxOS1Ob3ZlbWJlci82OTY2NTguaHRtbAoKSSBjb25mZXNzIEkgZ2F2ZSB1cCBpbiB0aGUg
ZW5kLiBJIHdpbGwgdHJ5IHRoaXMgcGF0Y2ggYW5kIHNlZSBpZiBpdCAKZml4ZXMgbXkgaXNzdWUu
Cgo+IE1hcmVrCj4gCj4gT24gV2VkLCAxMyBNYXkgMjAyMCAxOTo1Njo0OCArMDIwMAo+IERvbWVu
aWNvIEFuZHJlb2xpIDxkb21lbmljby5hbmRyZW9saUBsaW51eC5jb20+IHdyb3RlOgo+IAo+PiBG
cm9tOiBEb21lbmljbyBBbmRyZW9saSA8ZG9tZW5pY28uYW5kcmVvbGlAbGludXguY29tPgo+PiAK
Pj4gSW4gb3JkZXIgdG8gdXNlIHRoZSBzZGNhcmQgc2xvdCBvbiBUdXJyaXMgTU9YIGl0IGlzIG5l
Y2Vzc2FyeSB0byBtdXgKPj4gdGhlIHNkaW8wIHBpbnMgaW4gdGhlIG5vcnRoLWJyaWRnZSwgd2hp
Y2ggYXJlIGhlcmVpbiBhbHNvIGFkZGVkLgo+PiAKPj4gVGhpcyBmaXhlcyB0aGUgYm9vdCBwcm9i
bGVtIHJlcG9ydGVkIGF0IFswXS4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IERvbWVuaWNvIEFuZHJl
b2xpIDxkb21lbmljby5hbmRyZW9saUBsaW51eC5jb20+Cj4+IENjOiBHcmVnb3J5IENMRU1FTlQg
PGdyZWdvcnkuY2xlbWVudEBib290bGluLmNvbT4KPj4gQ2M6ICJNYXJlayBCZWjDum4iIDxtYXJl
ay5iZWh1bkBuaWMuY3o+Cj4+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPj4gCj4+IFswXSAKPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5l
bC8xNjVmZGViNTU4MzA2OWQ4OTM0MzZlOTVjYWM1NDM2QHNvbGlubm8uY28udWsvCj4+IAo+PiAt
LS0KPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94
LmR0cyB8ICAgIDIgKy0KPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzd4
eC5kdHNpICAgICAgICAgICB8ICAgIDUgKysrKysKPj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+IAo+PiBJbmRleDogYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMKPj4gPT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+PiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5k
dHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJp
cy1tb3guZHRzCj4+IEBAIC0xNzMsNyArMTczLDcgQEAKPj4gCj4+ICAmc2RoY2kxIHsKPj4gIAlw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiAtCXBpbmN0cmwtMCA9IDwmc2Rpb19waW5zPjsK
Pj4gKwlwaW5jdHJsLTAgPSA8JnNkaW8wX3BpbnMgJnNkaW9fcGlucz47Cj4+ICAJbm9uLXJlbW92
YWJsZTsKPj4gIAlidXMtd2lkdGggPSA8ND47Cj4+ICAJbWFydmVsbCxwYWQtdHlwZSA9ICJzZCI7
Cj4+IEluZGV4OiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzd4eC5kdHNp
Cj4+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0KPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFk
YS0zN3h4LmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0z
N3h4LmR0c2kKPj4gQEAgLTI0NCw2ICsyNDQsMTEgQEAKPj4gIAkJCQkJZ3JvdXBzID0gImVtbWNf
bmIiOwo+PiAgCQkJCQlmdW5jdGlvbiA9ICJlbW1jIjsKPj4gIAkJCQl9Owo+PiArCj4+ICsJCQkJ
c2RpbzBfcGluczogc2RpbzAtcGlucyB7Cj4+ICsJCQkJCWdyb3VwcyA9ICJzZGlvMCI7Cj4+ICsJ
CQkJCWZ1bmN0aW9uID0gInNkaW8iOwo+PiArCQkJCX07Cj4+ICAJCQl9Owo+PiAKPj4gIAkJCW5i
X3BtOiBzeXNjb25AMTQwMDAgewo+PiAKClJlZ2FyZHMsCgpMZWlnaC4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
