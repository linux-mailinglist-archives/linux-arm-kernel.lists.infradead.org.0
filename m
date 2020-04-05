Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 001F519EBFD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 16:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YDnmQMJKTLK/i2MoABuBdYj6YxVQxYjx4Xjr5f4Kuy8=; b=WSRUsVj3xR2Kix2bwUv9rN78Sg
	TTT0SLR8vVr9tW/iAX6BerHPEsVk7+pz6Myp+6NzuY4ZuR/0NCLmdHG090HNGSj3hM8AZzDhmqxsc
	/u887Wh/wfLiO1fCqjTqX4EsOWeCtC+Vpoosk6WHqzoJJXBbJn0FKETumBqmOvK2f9bBSB4ujAsqB
	QwxcrCAMYun62audurl/O+2P1vhN3zbegGexTY9nffV9acqZh2nuzLYmUDbREZE7bP6BZJwBwIvRh
	eHQWunuvhz+XFwkLvKgg99m6CcA6pe4dfBEacvaR9w2iOSt6yPsgsms402tw3rpl1d0KOvmpfvkBi
	+qWq2X4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL6N8-0003jF-Nm; Sun, 05 Apr 2020 14:35:38 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL6N1-0003iZ-NO
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 14:35:33 +0000
Received: by mail-il1-x144.google.com with SMTP id r5so12203298ilq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 07:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=eIa5OXN+GU8882Nm85v7a3u1PKrSDsLkq30H7Ge5ZMI=;
 b=kMTvMFo2igFa3Yfngiw4vT9uZJyOGd+GKOkHy+dWFvRpCnjD7ldQWQBhCtVC8Qt8mz
 hGiHQ0H1HvfZ853MGHR/f5rSJteH4MUrzvwa9j/TBkUa9Acp/WD9573FcKBoHABhLpuz
 07IY8nIsQ/VvXEYcLISomI5GvupfPsyUJKrbWe9pVw+Idj1Uwgcf+GYVw658emhdcGD1
 Ohqdodso04v7q44mIZ3JfSzTgd7OMN24ua3gpVn0vcKKhYlCKh2ciaegVwm/iIN+jVj9
 /3ugE/Bg/CraZxJRrN2qTRzD09s2Pm8l/VAXoMiLdSyMMgyinUHX5L8CB2ESuzuTGFW8
 xSmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=eIa5OXN+GU8882Nm85v7a3u1PKrSDsLkq30H7Ge5ZMI=;
 b=Y+uJ2X+VB7xpOChA+mbgjvw+uCcNdZCXcMsaVFjTbpl+kdfS9Mc3kN+00Ztnhb8ESS
 x+/3jMacfypJWAzqLGWFINR9yZZ/5TiI1AdSiesG2dN3d8Pw/9Jejl+RRuvYs0kKmXlF
 UtWM69RaEUsXQS14eYxtyXX1PLh5H5vRN9Ln0cJn3v1d8wPHzCK0nmV6YjR1TNitcZjA
 C/uDZ1vyEak5IO0P2g9eGH/70/SE/gwEN5aZSxRTeqP9zO1MJpqoiTL5hhDw/NzpptNg
 MCo0axS4wDl3g48hiD4MVOPpnsAusVjCyltzgObAg6pepo0tLREvH74Ae3Ichfg+5LlL
 fw1g==
X-Gm-Message-State: AGi0Puby9eDPyYjBAbQpqTYLkhN8RZd30MzawDnEkDR+2feWzHMQX1q+
 myr8nEyUUD5AEEE6KMjbaFoQL+eU4OgdMRjaUlA=
X-Google-Smtp-Source: APiQypJCVYiZqX3tf9uVCh7hRBUtTx4SZ68jWnxQH/O0xJlkACZXgXzhvPqBd+IZBJ6CicEobh+rvmsFjxfN/PLl6b8=
X-Received: by 2002:a92:5ccd:: with SMTP id d74mr16131414ilg.59.1586097330558; 
 Sun, 05 Apr 2020 07:35:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200405104913.22806-1-peron.clem@gmail.com>
 <20200405104913.22806-4-peron.clem@gmail.com>
 <20200405112409.gl6kn7cjakwludf6@core.my.home>
In-Reply-To: <20200405112409.gl6kn7cjakwludf6@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 5 Apr 2020 16:35:19 +0200
Message-ID: <CAJiuCceZ=MGWqv4LF9CJpJyGmgq+uTirxXAFoACiqt0Mz76A-g@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 3/7] arm64: dts: allwinner: h6: set thermal
 polling time
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>, 
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-sunxi <linux-sunxi@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_073531_763785_56BD4C52 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT25kxZllaiwKCk9uIFN1biwgNSBBcHIgMjAyMCBhdCAxMzoyNCwgT25kxZllaiBKaXJtYW4g
PG1lZ291c0BtZWdvdXMuY29tPiB3cm90ZToKPgo+IEhlbGxvLAo+Cj4gT24gU3VuLCBBcHIgMDUs
IDIwMjAgYXQgMTI6NDk6MDlQTSArMDIwMCwgQ2zDqW1lbnQgUMOpcm9uIHdyb3RlOgo+ID4gQWRk
IHJlYXNvbmFibGUgdGhlcm1hbCBwb2xsaW5nIHRpbWUgZm9yIEFsbHdpbm5lciBINi4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+
ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kg
fCA4ICsrKystLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYuZHRzaQo+ID4gaW5kZXggZDRkMzk2MzcwNWY1Li5jM2U0ZjA5ZjYwY2UgMTAwNjQ0Cj4gPiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQo+ID4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKPiA+IEBAIC05
MDUsOCArOTA1LDggQEAKPiA+Cj4gPiAgICAgICB0aGVybWFsLXpvbmVzIHsKPiA+ICAgICAgICAg
ICAgICAgY3B1LXRoZXJtYWwgewo+ID4gLSAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVs
YXktcGFzc2l2ZSA9IDwwPjsKPiA+IC0gICAgICAgICAgICAgICAgICAgICBwb2xsaW5nLWRlbGF5
ID0gPDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXktcGFzc2l2ZSA9
IDwxMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXkgPSA8MTAwMD47
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgdGhlcm1hbC1zZW5zb3JzID0gPCZ0aHMgMD47Cj4K
PiBUaGlzIGlzIG5vdCBuZWNlc3NhcnksIGFuZCB3aWxsIG5vdCBkbyBhbnl0aGluZyB1c2VmdWws
IHNpbmNlIHRoZSBkcml2ZXIKPiB1c2VzIGludGVycnVwdHMgdG8gdXBkYXRlIHRoZSB0aGVybWFs
IHpvbmUncyB0ZW1wZXJhdHVyZS4gUGxlYXNlIGtlZXAgdGhlCj4gdmFsdWVzIGF0IDAuCj4KPiBX
aXRoIHlvdXIgc2V0dGluZ3MgdGhlIHRoZXJtYWwgem9uZSB3b3VsZCBqdXN0IGFkZCBhIHBvbGxp
bmcgdGltZXIgaW4gYWRkaXRpb24KPiB0byBiZWluZyB1cGRhdGVkIGV2ZXJ5IDI1MG1zIHZpYSBU
SFMgaW50ZXJydXB0LiBUaGUgcmVhbCB0aGVybWFsIG1lYXN1cmVtZW50cwo+IGFyZSBhdmFpbGFi
bGUgZXZlcnkgMjUwbXMgYW55d2F5LCBzbyBzZXR0aW5nIGEgc21hbGxlciBwZXJpb2QgaGVyZSB3
aWxsIG5vdCBkbwo+IGFueXRoaW5nIHVzZWZ1bCwgYW5kIDFzIHBlcmlvZCB3aWxsIG5vdCBsZWFk
IHRvIHNsb3dlciB1cGRhdGVzIGVpdGhlci4KPgo+IFZhbHVlcyBvZiAwIG1lYW4gdGVsbCB0aGUg
dGhlcm1hbCB6b25lIHRvIHJlbHkgb24gdGhlcm1hbCBkcml2ZXIgdG8gdXBkYXRlCj4gdGhlIHRo
ZXJtYWwgem9uZSBieSBpdHNlbGYgKHZpYSBpbnRlcnJ1cHQpIGFuZCB0byBub3QgcG9sbC4KClRo
YW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9ucywKSSB3aWxsIGRyb3AgdGhpcyBwYXRjaC4KClJlZ2Fy
ZHMsCkNsw6ltZW50Cj4KPiByZWdhcmRzLAo+ICAgICAgICAgby4KPgo+ID4gICAgICAgICAgICAg
ICAgICAgICAgIHRyaXBzIHsKPiA+IEBAIC05MzUsOCArOTM1LDggQEAKPiA+ICAgICAgICAgICAg
ICAgfTsKPiA+Cj4gPiAgICAgICAgICAgICAgIGdwdS10aGVybWFsIHsKPiA+IC0gICAgICAgICAg
ICAgICAgICAgICBwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MD47Cj4gPiAtICAgICAgICAgICAg
ICAgICAgICAgcG9sbGluZy1kZWxheSA9IDwwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBw
b2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MTAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBw
b2xsaW5nLWRlbGF5ID0gPDEwMDA+Owo+ID4gICAgICAgICAgICAgICAgICAgICAgIHRoZXJtYWwt
c2Vuc29ycyA9IDwmdGhzIDE+Owo+ID4gICAgICAgICAgICAgICB9Owo+ID4gICAgICAgfTsKPiA+
IC0tCj4gPiAyLjIwLjEKPiA+Cj4gPiAtLQo+ID4gWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBi
ZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtc3Vu
eGkiIGdyb3VwLgo+ID4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJl
Y2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1zdW54aSt1bnN1
YnNjcmliZUBnb29nbGVncm91cHMuY29tLgo+ID4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24g
dGhlIHdlYiwgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LXN1
bnhpLzIwMjAwNDA1MTA0OTEzLjIyODA2LTQtcGVyb24uY2xlbSU0MGdtYWlsLmNvbS4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
