Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2596304C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 00:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a/e0vQv7FlRFQAES7DMOO7iJvgBPBvRJ4sZSlzoii/k=; b=MysEDOvB9VHbEohlIU4gGhldsG
	IEk2NTyBD+c5iWTLW9FptvQlWle2r0KZuN5xh4/qtkIVRBenxYN3nxc9Zj/osHYRfs4haD4cPYjJa
	+av9zyRXV/q7M91bbtcz6sdycVrSvnLHCsoKG7U13G8ZXeHfx5i7u4bIrhMwIf/PN+sGBxitNm+tC
	bkd8sRVdJMfjylFkcQigNFXeFIM7xPpYWO27YzTAJ4dyHv3ETkMWD2UYncaPaizBRmNAtL+nGV3fa
	Eh2V2/Jby5hbXRPF/loghE/eqiPysXC6uiE0nXNeyrStYlKpnNsrTU6WYhIRX74cKuN7ZP5fo3V19
	Is5RWwaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWTUf-00060J-0y; Thu, 30 May 2019 22:25:53 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWTUY-0005zz-FZ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 22:25:47 +0000
Received: by mail-yw1-xc41.google.com with SMTP id b74so3317936ywe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 15:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Kt2e7koKuS/w3st+6pWFlXYytQQLT+iijBY66G3TGIQ=;
 b=SnOvK8D+8dpl/JHjhGSOn/PI1ZA6KFmskkWxxxQdlclHWjqHzPvtclCjTKeO36GZOk
 ihwqNfm97yuAToZWuIj0NmC4XoK2WRFV69VbOVUfDRHKnbEheioPoQ9qmBbLxo5RkE7P
 ia3nHxPpgZEUCunu1GQ1HXOwUd1dKSMjMGiwTQjwRQSPQh+chTyTkBJtmEYGuhzP0cj0
 iOVE8gfcOErvVpykcJUqnxo16i4XNxAXatTaPEm8VCHg8ipPrl424x+xKOHuRFwCGQtB
 qlapFWyryZ5rN+EI/cj+vyzzmCrtcU/DyfdkA+du4y8ZK4UgqN6DtNR/wZ/fIob5aoeG
 jnNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=Kt2e7koKuS/w3st+6pWFlXYytQQLT+iijBY66G3TGIQ=;
 b=H4nubNYGMlBe/2ZSV9NK+FyeiV/WPcAeEmLYqSU/RzJCopQCLjJpCo1N+WWbkznsfE
 Wvq+DoOGk+m/vBvO4vjszGfm6GTlqsTDHEPVbdNV4rK66P6mJVPuyvHad6Wa3S/CEnsC
 48alFdVjxPGn1enOM+Gj2y245IluGxFNYpiFDMkU8JKBABArre7ojOn/E/B7MLIenQtE
 4Em4ET1MyTVt9hwLOlCxGDpvSLMrEP3UKqTxOmGf7taJtN40KLEX0nougvYajtIkias4
 qo6K5S0pueLJodDltp4vKD+51p2yI/6qG939RLq8LS5mXi0BxLrLScRoPCKr0glA4nrI
 BoVQ==
X-Gm-Message-State: APjAAAXlSCzMXj4rfycZWk4z6gqiWTVaERvFatbv98EJ+/4iam+xY9kS
 ImemZ7x+9A13KljM1UbwcRWy1v2ow2CVspSoSv8=
X-Google-Smtp-Source: APXvYqxdINa9M9mKr8zLme+nf6O33yXjlqtzYPUvsQPUOfScvf6wA1/YkYHtuXtS+cQaog6bPnLQyU5UY/WjfuBPMX4=
X-Received: by 2002:a81:59c2:: with SMTP id n185mr3501471ywb.21.1559255144144; 
 Thu, 30 May 2019 15:25:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190528161440.27172-1-peron.clem@gmail.com>
 <20190528161440.27172-11-peron.clem@gmail.com>
 <20190530145550.amalnxmx7kpokykv@core.my.home>
In-Reply-To: <20190530145550.amalnxmx7kpokykv@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Fri, 31 May 2019 00:25:32 +0200
Message-ID: <CAJiuCce7nHSktVsDKcR8GLRpD3WrN5yP3Nb_Hbu_Q9NjUQbSMw@mail.gmail.com>
Subject: Re: [PATCH v3 10/12] arm64: dts: allwinner: h6: Add IR receiver node
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree <devicetree@vger.kernel.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_152546_522967_7DEA0953 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT25kcmVqLAoKT24gVGh1LCAzMCBNYXkgMjAxOSBhdCAxNjo1NSwgT25kxZllaiBKaXJtYW4g
PG1lZ291c0BtZWdvdXMuY29tPiB3cm90ZToKPgo+IEhlbGxvIENsw6ltZW50LAo+Cj4gT24gVHVl
LCBNYXkgMjgsIDIwMTkgYXQgMDY6MTQ6MzhQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3Rl
Ogo+ID4gQWxsd2lubmVyIEg2IElSIGlzIHNpbWlsYXIgdG8gQTMxIGFuZCBjYW4gdXNlIHNhbWUg
ZHJpdmVyLgo+ID4KPiA+IEFkZCBzdXBwb3J0IGZvciBpdC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAxOSArKysrKysrKysr
KysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+ID4gaW5kZXgg
MTZjNWMzZDBmZDgxLi42NDljYmRmZTQ1MmUgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKPiA+IEBAIC02NDcsNiArNjQ3LDI1IEBACj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwaW5zID0gIlBMMCIsICJQTDEiOwo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZnVuY3Rpb24gPSAic19pMmMiOwo+ID4gICAg
ICAgICAgICAgICAgICAgICAgIH07Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgICAgICAgcl9p
cl9yeF9waW46IHItaXItcngtcGluIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHBpbnMgPSAiUEw5IjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZ1bmN0aW9u
ID0gInNfY2lyX3J4IjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gKyAgICAgICAg
ICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICByX2lyOiBpckA3MDQwMDAwIHsKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUw
aS1oNi1pciIsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ImFsbHdpbm5lcixzdW42aS1hMzEtaXIiOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcmVnID0gPDB4MDcwNDAwMDAgMHg0MDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDEwOSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmcl9jY3UgQ0xLX1JfQVBC
MV9JUj4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JnJfY2N1
IENMS19JUj47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9
ICJhcGIiLCAiaXIiOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVzZXRzID0g
PCZyX2NjdSBSU1RfUl9BUEIxX0lSPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBwaW5jdHJsLTAgPSA8JnJfaXJfcnhfcGluPjsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiAgICAgICAgICAgICAgIH07Cj4KPiBQ
bGVhc2UgbWFrZSBhIGNvbW1lbnQgaGVyZSwgdGhhdCB0aGlzIGlzIGtub3duIGJyb2tlbiBvbiBz
b21lIGJvYXJkcyBhbmQgbWF5Cj4gcmVzdWx0IElSUSBmbG9vZCBpZiBlbmFibGVkLiBPdGhlcndp
c2Ugbm9vbmUgd2lsbCBrbm93LgoKSSdtIHBsYW5uaW5nIHRvIHNlbmQgYSB2NCBuZXh0IHdlZWsg
d2l0aCB0aGUgSVJRX05PTkUgcmV0dXJuIGFzIE1heGltZQpzdWdnZXN0ZWQgaXQuCmh0dHBzOi8v
Z2l0aHViLmNvbS9jbGVtZW50cGVyb24vbGludXgvdHJlZS9oNl9pcl92NAoKQnV0IG1heWJlIHdl
IGNvdWxkIGFsc28gdXNlIHRoZSBiaXQgNSBvZiB0aGUgSVJRIHN0YXR1cy4KClJlZ2FyZHMsIENs
ZW1lbnQKCj4KPiB0aGFua3MsCj4gICAgICAgICBvLgo+Cj4gPiAgICAgICAgICAgICAgIHJfaTJj
OiBpMmNANzA4MTQwMCB7Cj4gPiAtLQo+ID4gMi4yMC4xCj4gPgo+ID4KPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdAo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
