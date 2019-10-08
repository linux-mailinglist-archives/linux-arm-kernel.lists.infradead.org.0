Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2F9CFF3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 18:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbdADOCLJjK7uBM9of/XKOcjBRUy7MQMyZMSD2VPbpM=; b=k2DKV5RKBJvGLb
	qyBKY8qIaKhu6ekYTdI6UD5+dL3w2+rV3+dqt67lvQxvtsJNf9fqt4fhaZtgISq1uz6AqrG64+mos
	YjMiKpFyfvegM8fXzde7+2AdftpzjF+Dr9wkSgTkkuz+QuUu4mvF67osj1hlHB5gXeWFjTu2IDqOH
	xC3E6SIn/BcrwfisA6a1BZKXRhIT/NanZhWVEVJNqIg+sA457TILOGaYqm5ZJraW1uo94QyPJrAGp
	mBLnXMnfgDUVS8TJOhBRXJMaVES+gQ/5n63VkJYWN+fuxSEideCm5B8wFcjmf7gBYPZryKs3YFLwK
	sFaJEWzqY6bVd/N1B9nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHsg3-00069i-VS; Tue, 08 Oct 2019 16:49:35 +0000
Received: from mail.nic.cz ([2001:1488:800:400::400])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHsft-000690-Ot
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 16:49:27 +0000
Received: from dellmb (unknown [IPv6:2001:1488:fffe:6:cac7:3539:7f1f:463])
 by mail.nic.cz (Postfix) with ESMTPSA id 86E4B140E37;
 Tue,  8 Oct 2019 18:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1570553361; bh=5zrwO7foAmDYJWMKeFTeKtQnw7zASw7n4yHo8AJOZME=;
 h=Date:From:To;
 b=bXNseWFAM1jVGxPBCcudAZldU481il5+bumQKrje4uThtW5ZgkkN/A9KKQ1q/JMat
 qC2EzySKcqtsIbJ1TzNVYLsI9CqX4xjaId2ewM+GrkjwL+LqYaTIh/8wHiOKNCWkps
 iYIVUfjswKAahvjSpCy65IFib9Qxs9qSt25iVrOM=
Date: Tue, 8 Oct 2019 18:49:21 +0200
From: Marek =?ISO-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH mvebu-dt64 1/1] arm64: dts: armada-3720-turris-mox:
 convert usb-phy to phy-supply
Message-ID: <20191008184921.60e526bc@dellmb>
In-Reply-To: <871rvntcr4.fsf@FE-laptop>
References: <20191008145944.21659-1-marek.behun@nic.cz>
 <871rvntcr4.fsf@FE-laptop>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at mail.nic.cz
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
 URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_094926_254925_AD00B689 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [2001:1488:800:400:0:0:0:400 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-arm-kernel@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

R3JlZ29yeSwKCkkgY29tbXVuaWNhdGVkIHdpdGggTWlxdWVsIHdoZW4gSSBmaXJzdCBkaXNjb3Zl
cmVkIHRoaXMgcmVncmVzc2lvbiwgc2VlCmh0dHBzOi8vbWFyYy5pbmZvLz9sPWxpbnV4LXVzYiZt
PTE1Njk2NjMyODMxMDQ3MiZ3PTIKCkluIHRoaXMgbWFpbCBNaXF1ZWwgaXMgbWVudGlvbmluZyBh
IHBhdGNoCihodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMDY3Njg3Lykgd2hp
Y2ggZG9lcyB0aGUgc2FtZSBmb3IKQXJtYWRhIDdrLzhrLiBIZSBzYXlzIGhpcyBwYXRjaCBzaG91
bGQgZW50ZXIgbmV4dCByZWxlYXNlLCBidXQgc2luY2Ugb24KTW94IHRoaXMgY2F1c2VkIGEgcmVn
cmVzc2lvbiwgSSB3b3VsZCBsaWtlIGl0IHRvIGJlIG1lcmdlZCBub3cuCgpBbnl3YXkgaWYgeW91
IHdhbnQgdG8gc3RpbGwgd2FpdCBmb3IgTWlxdWVscyByZXZpZXcgdG8gYmUgc3VyZSwgSSBhbSBv
awp3aXRoIHRoYXQuCgpXaGF0IGRvIHlvdSB0aGluayBhYm91dCB0aGUgImFybTY0OiBkdHM6IGFy
bWFkYS0zNzIwLXR1cnJpcy1tb3g6IGFkZApmaXJtd2FyZSBub2RlIiB3aGljaCBJIHNlbnQgbGFz
dCBtb250aD8KCk1hcmVrCgpPbiBUdWUsIDA4IE9jdCAyMDE5IDE4OjM3OjAzICswMjAwCkdyZWdv
cnkgQ0xFTUVOVCA8Z3JlZ29yeS5jbGVtZW50QGJvb3RsaW4uY29tPiB3cm90ZToKCj4gSGkgTWFy
ZWssCj4gCj4gPiBVcGRhdGUgVHVycmlzIE1veCBkZXZpY2UgdHJlZSB0byB1c2UgdGhlIHBoeS1z
dXBwbHkgcHJvcGVydHkgb2YgdGhlCj4gPiBnZW5lcmljIFBIWSBmcmFtZXdvcmsgaW5zdGVhZCBv
ZiB0aGUgbGVnYWN5IHVzYi1waHkgcHJvcGVydHkuCj4gPgo+ID4gVGhpcyBpcyBuZWVkZWQgc2lu
Y2UgaXQgY2F1c2VkIGEgcmVncmVzc2lvbiBvbiBUdXJyaXMgTW94IHNpbmNlCj4gPiBjb21taXQg
ZWI2YzJlYjZjN2ZiICgidXNiOiBob3N0OiB4aGNpLXBsYXQ6IFByZXZlbnQgYW4KPiA+IGFibm9y
bWFsbHkuLi4iKS4gCj4gCj4gSSBhbSBub3QgYWdhaW5zdCB0aGlzIHBhdGNoIGFuZCBpZiBpdCB0
aGUgcmlnaHQgZml4IGZvciB0aGUKPiByZWdyZXNzaW9uIEkgd2lsbCBhcHBsaWVkIGl0IG9uIG15
IG12ZWJ1L2ZpeGVzIGJyYW5jaCB0byBiZSBwYXJ0IG9mCj4gdjUuNC4gSG93ZXZlciBJJ2QgbGlr
ZSB0byBoYXZlIHRoZSBmZWVkYmFjayBmcm9tIE1pcXVlbCBvbiB0aGlzIG9uZSwKPiBhcyBmb3Ig
bWUgaXQgaXMgbm90IG9idmlvdXMgdGhhdCBpdCBpcyB0ZSBjb3JyZWN0IGZpeC4KPiAKPiBHcmVn
b3J5Cj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBCZWjDum4gPG1hcmVrLmJlaHVuQG5pYy5j
ej4KPiA+IEZpeGVzOiBlYjZjMmViNmM3ZmIgKCJ1c2I6IGhvc3Q6IHhoY2ktcGxhdDogUHJldmVu
dCBhbgo+ID4gYWJub3JtYWxseS4uLiIpIENjOiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFs
QGJvb3RsaW4uY29tPgo+ID4gQ2M6IEdyZWdvcnkgQ0xFTUVOVCA8Z3JlZ29yeS5jbGVtZW50QGJv
b3RsaW4uY29tPgo+ID4gQ2M6IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4KPiA+IC0tLQo+
ID4gIC4uLi9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzICAgICB8
IDEzCj4gPiArKysrKysrLS0tLS0tIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFy
dmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cwo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMgaW5kZXgKPiA+IGQxMDU5ODZjNmJl
MS4uNWYzNTBjYzcxYTJmIDEwMDY0NCAtLS0KPiA+IGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2
ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzICsrKwo+ID4gYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMgQEAgLTYwLDExCj4gPiArNjAs
NiBAQCBncGlvID0gPCZncGlvc2IgMCBHUElPX0FDVElWRV9ISUdIPjsKPiA+ICAJfTsKPiA+ICAK
PiA+IC0JdXNiM19waHk6IHVzYjMtcGh5IHsKPiA+IC0JCWNvbXBhdGlibGUgPSAidXNiLW5vcC14
Y2VpdiI7Cj4gPiAtCQl2Y2Mtc3VwcGx5ID0gPCZleHBfdXNiM192YnVzPjsKPiA+IC0JfTsKPiA+
IC0KPiA+ICAJdnNkY19yZWc6IHZzZGMtcmVnIHsKPiA+ICAJCWNvbXBhdGlibGUgPSAicmVndWxh
dG9yLWdwaW8iOwo+ID4gIAkJcmVndWxhdG9yLW5hbWUgPSAidnNkYyI7Cj4gPiBAQCAtMjU1LDEw
ICsyNTAsMTYgQEAKPiA+ICAJc3RhdHVzID0gIm9rYXkiOwo+ID4gIH07Cj4gPiAgCj4gPiArJmNv
bXBoeTIgewo+ID4gKwljb25uZWN0b3Igewo+ID4gKwkJY29tcGF0aWJsZSA9ICJ1c2ItYS1jb25u
ZWN0b3IiOwo+ID4gKwkJcGh5LXN1cHBseSA9IDwmZXhwX3VzYjNfdmJ1cz47Cj4gPiArCX07Cj4g
PiArfTsKPiA+ICsKPiA+ICAmdXNiMyB7Cj4gPiAgCXN0YXR1cyA9ICJva2F5IjsKPiA+ICAJcGh5
cyA9IDwmY29tcGh5MiAwPjsKPiA+IC0JdXNiLXBoeSA9IDwmdXNiM19waHk+Owo+ID4gIH07Cj4g
PiAgCj4gPiAgJm1kaW8gewo+ID4gLS0gCj4gPiAyLjIxLjAKPiA+ICAKPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
