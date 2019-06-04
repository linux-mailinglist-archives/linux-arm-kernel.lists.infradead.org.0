Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028C934DCA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=80F6CV8a+uW/J82UC8U+/UZqehBUwZ1olfWvWwwenPM=; b=lNIhWGtNansGBgIySWhKgD+UU2
	YL0KVtGlktSg7znaMx4F7JHb5t1wprncbTDtZEIa9HcgDPCQSVL3uDKOVSZgzMHW6bYnn69IoXQl8
	klKhHBpieExBBQAD+EkIfo0vSU/AmQlh6k06wMFPJIkVdfuYN401YC+Csvp7IFFIZtWFvZBF+TP/c
	SpYHNrTyofV8KF/pp8BjjSHOmcg3yHE17eGDhAqSCKQuwjmRX1DA0XcE25kRBbIYoVfuW69NYsyYQ
	xkckcZkcqku4ibuGo8LuY7dIkQW+b9IDTM2BhaOuW4w7yU9JBlqfZ1V78dPwlM8SzMK8q4N73yhKq
	U3ZPQGfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCR5-0003Nn-St; Tue, 04 Jun 2019 16:37:19 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCQy-0003NO-S6
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:37:14 +0000
Received: by mail-yb1-xb44.google.com with SMTP id c7so6681942ybs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=6EnQflcPAKJYTyCzJ+zEujJYDVfKA0owpr+lk17ZNW8=;
 b=Qei4RrI/1FCqlNMNuhbQrfUb1HMjOhIUyjvKVZF2uPzdKh6tdkXxbjqLHfEMjZwu9d
 Vm9H0kLW0GqY6JojRiyBTYzXjLNlZ1b5CuD39bY3lRPCG72qqkPnrEO7dsSzKq8DGw0c
 +r0iYtAKCAvZcv3rsj77bBlBEdbHuJ8B+Qa2CoKbkXU+m+m+Ynz9Lqb/gwuGSbb0v9XN
 dUREDZfu+7/NXFXdz2MUT+cLZ9rprUg9i9EZsmJNe6zYk4ZjiJsG2vIu63FzzqKmzMvp
 rw4nij6HCqXcM2F9RaH2tKkGrR7fQoEci8oFC/m7tVlj6wiFSsiCVLoi2EBZIjUclhjT
 zN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=6EnQflcPAKJYTyCzJ+zEujJYDVfKA0owpr+lk17ZNW8=;
 b=XQ3PZuSsvcI8ijbg6Lqyl/Wf+c0uYlCKwTCyEWq9rFuHh1gCsWDqoOxzs8q9enrT9u
 Hv+AYuOykFwoC3fxhVCWFneuwH+145gxVloUGN9q6yHsQbMiHSGIMgpNNRma4XBIl0kU
 v41Yo6ZDPRIbzYOODIN4Fz+AocIRrisNC8xLV6HuwugZP6UZIP3Fs3zUKaLQ5/dj32sT
 f7lR2GdjE3hNSj0TQAlyzZcLHCeaGH9/c//68RWur/CLnOTlaLMpqhG2jxcGKTxOla/W
 D6Kf2OJtevtnaCvhoz3TZ/qpwxFGErFW5pxXyYpifUXS9CydBXCeE4ZaBg9QqjZjIOtK
 hBxA==
X-Gm-Message-State: APjAAAXLd7zKOrGDsq4q+u+/0sGVi8Os0XZlBbA8Zsb/vSzeSrZYeQT7
 JNU+SfZeyN1GBQLuSH6+N8fxtv3gw+T7t8cHQug=
X-Google-Smtp-Source: APXvYqxwJuhFrohaMgLvCY52gUSasNGBItGgFchTeFYNUqKjkBF/kQzQ+7oFlK+HaW6p2xRHlixagQcen2pn3bUa/2o=
X-Received: by 2002:a25:6148:: with SMTP id v69mr13936600ybb.401.1559666231415; 
 Tue, 04 Jun 2019 09:37:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190604154036.23211-1-megous@megous.com>
 <CAJiuCcda0ZDDrbdOF7TpTeoUOgt7GeS6wcgy45DRCo_U2XX6bQ@mail.gmail.com>
 <20190604162144.hba5bmkdnidco7pf@core.my.home>
In-Reply-To: <20190604162144.hba5bmkdnidco7pf@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 4 Jun 2019 18:36:59 +0200
Message-ID: <CAJiuCcddcf=pPByV+=2+QOfEKwuT03EkgFe97nPV7qKX35t6KQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2] clk: sunxi-ng: sun50i-h6-r: Fix
 incorrect W1 clock gate register
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>, 
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, 
 Chen-Yu Tsai <wens@csie.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093712_934733_A2190CCD 
X-CRM114-Status: GOOD (  26.41  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

SGkgT25kcmVqLAoKT24gVHVlLCA0IEp1biAyMDE5IGF0IDE4OjIxLCBPbmTFmWVqIEppcm1hbiA8
bWVnb3VzQG1lZ291cy5jb20+IHdyb3RlOgo+Cj4gSGkgQ2zDqW1lbnQsCj4KPiBPbiBUdWUsIEp1
biAwNCwgMjAxOSBhdCAwNjoxNDoxNVBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4g
PiBIaSBPbmRyZWosCj4gPgo+ID4gT24gVHVlLCA0IEp1biAyMDE5IGF0IDE3OjQwLCBtZWdvdXMg
dmlhIGxpbnV4LXN1bnhpCj4gPiA8bGludXgtc3VueGlAZ29vZ2xlZ3JvdXBzLmNvbT4gd3JvdGU6
Cj4gPiA+Cj4gPiA+IEZyb206IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4g
Pgo+ID4gPiBUaGUgY3VycmVudCBjb2RlIGRlZmluZXMgVzEgY2xvY2sgZ2F0ZSB0byBiZSBhdCAw
eDFjYywgb3ZlcmxheWluZyBpdAo+ID4gPiB3aXRoIHRoZSBJUiBnYXRlLgo+ID4gPgo+ID4gPiBD
bG9jayBnYXRlIGZvciByLWFwYjEtdzEgaXMgYXQgMHgxZWMuIFRoaXMgZml4ZXMgaXNzdWVzIHdp
dGggSVIgcmVjZWl2ZXIKPiA+ID4gY2F1c2luZyBpbnRlcnJ1cHQgZmxvb2RzIG9uIEg2IChiZWNh
dXNlIGludGVycnVwdCBmbGFncyBjYW4ndCBiZSBjbGVhcmVkLAo+ID4gPiBkdWUgdG8gSVIgbW9k
dWxlJ3MgYnVzIGJlaW5nIGRpc2FibGVkKS4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogT25k
cmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiA+IEZpeGVzOiBiN2M3YjA1MDY1YWE3
N2FlICgiY2xrOiBzdW54aS1uZzogYWRkIHN1cHBvcnQgZm9yIEg2IFBSQ00gQ0NVIikKPiA+ID4g
LS0tCj4gPiA+ICBkcml2ZXJzL2Nsay9zdW54aS1uZy9jY3Utc3VuNTBpLWg2LXIuYyB8IDIgKy0K
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4g
Pgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvc3VueGktbmcvY2N1LXN1bjUwaS1oNi1y
LmMgYi9kcml2ZXJzL2Nsay9zdW54aS1uZy9jY3Utc3VuNTBpLWg2LXIuYwo+ID4gPiBpbmRleCAy
NzU1NGVhZjY5MjkuLjhkMDVkNGYxZjhhMSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9jbGsv
c3VueGktbmcvY2N1LXN1bjUwaS1oNi1yLmMKPiA+ID4gKysrIGIvZHJpdmVycy9jbGsvc3VueGkt
bmcvY2N1LXN1bjUwaS1oNi1yLmMKPiA+ID4gQEAgLTEwNCw3ICsxMDQsNyBAQCBzdGF0aWMgU1VO
WElfQ0NVX0dBVEUocl9hcGIyX2kyY19jbGssICAgICAgICJyLWFwYjItaTJjIiwgICAici1hcGIy
IiwKPiA+ID4gIHN0YXRpYyBTVU5YSV9DQ1VfR0FURShyX2FwYjFfaXJfY2xrLCAgICJyLWFwYjEt
aXIiLCAgICAici1hcGIxIiwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIDB4MWNjLCBCSVQo
MCksIDApOwo+ID4gPiAgc3RhdGljIFNVTlhJX0NDVV9HQVRFKHJfYXBiMV93MV9jbGssICAgInIt
YXBiMS13MSIsICAgICJyLWFwYjEiLAo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgMHgxY2Ms
IEJJVCgwKSwgMCk7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAweDFlYywgQklUKDApLCAw
KTsKPiA+IEp1c3QgZm9yIGluZm9ybWF0aW9uIHdoZXJlIGRpZCB5b3UgZmluZCB0aGlzIGluZm9y
bWF0aW9uPwo+ID4gVXNpbmcgdGhlIHZlbmRvciBrZXJuZWwgb3IgdXNlciBtYW51YWw/Cj4KPiBJ
bmZvcm1lZCBndWVzcy4gQWxsIGdhdGVzIGFuZCByZXNldHMgYXJlIGluIHRoZSBzYW1lIHJlZ2lz
dGVyLiBBbmQKPiB5b3UgY2FuIHNlZSBiZWxvdyB0aGF0IHJlc2V0IHJlZ2lzdGVyIGZvciB3MSBp
cyAweDFlYy4gKHJlc2V0IHJlZ2lzdGVyCj4gZm9yIGlyIGlzIDB4MWNjKQpPaywgSSB0aGlua3Mg
dGhpcyBjYW4gY29uZmlybSB0aGUgdmFsdWU6Cmh0dHBzOi8vZ2l0aHViLmNvbS9vcmFuZ2VwaS14
dW5sb25nL09yYW5nZVBpSDZfTGludXg0XzkvYmxvYi9tYXN0ZXIvZHJpdmVycy9jbGsvc3VueGkv
Y2xrLXN1bjUwaXc2LmgjTDE2MQoKQWNrZWQtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xl
bUBnbWFpbC5jb20+CgpSZWdhcmRzLApDbMOpbWVudAo+Cj4gcmVnYXJkcywKPiAgICAgICAgIG8u
Cj4KPiA+IFRoYW5rcywKPiA+IENsw6ltZW50Cj4gPgo+ID4gPgo+ID4gPiAgLyogSW5mb3JtYXRp
b24gb2YgSVIoUlgpIG1vZCBjbG9jayBpcyBnYXRoZXJlZCBmcm9tIEJTUCBzb3VyY2UgY29kZSAq
Lwo+ID4gPiAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCByX21vZDBfZGVmYXVsdF9wYXJlbnRz
W10gPSB7ICJvc2MzMmsiLCAib3NjMjRNIiB9Owo+ID4gPiAtLQo+ID4gPiAyLjIxLjAKPiA+ID4K
PiA+ID4gLS0KPiA+ID4gWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUg
c3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtc3VueGkiIGdyb3VwLgo+ID4g
PiBUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWls
cyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIGxpbnV4LXN1bnhpK3Vuc3Vic2NyaWJlQGdvb2ds
ZWdyb3Vwcy5jb20uCj4gPiA+IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIsIHZp
c2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1zdW54aS8yMDE5MDYw
NDE1NDAzNi4yMzIxMS0xLW1lZ291cyU0MG1lZ291cy5jb20uCj4gPiA+IEZvciBtb3JlIG9wdGlv
bnMsIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9vcHRvdXQuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
