Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C51F6C82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 02:59:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58mJyvKrsZj07ocTeSld44HUpWN/ubAoWJGsJjm5/jA=; b=cQzmzlhPvCZckB
	DYirqj1CDgZNPqEMGY8XoHWLnkRzlr7hFZIe/voMr2sT5zo54owVyDAigjXjy8bKqAKZiIJdZ6snW
	6n2pyxr1OIDmaAgeQLR5sspY3is642jy15C9HRimW6yUPbNdRXuDFumsZLfGljUpBCf5IcNLUyDFK
	4Gyt1YXaQVkzym8uFJV15aAis3WzHY99Gy7coX/829Htl6fUIQCYfIyhVopEK79mR2ii1PMWnLM6+
	itknnazkXgsdbJmu3LzLj+s+yWhzbMGdxcMuOK2ZcJD3E/Kdtwg4lZxV82LO4MoXFrLwHbBK8LWK1
	AuuLaQXVJ4Ofxu/Y0Wrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTyyq-0001Up-4g; Mon, 11 Nov 2019 01:59:00 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTyyh-0001St-Mt; Mon, 11 Nov 2019 01:58:53 +0000
Received: by mail-vs1-xe44.google.com with SMTP id y23so7724266vso.1;
 Sun, 10 Nov 2019 17:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=prm6F9A7udBbbazHidVJSyKNJBPGpqmhX/YTquSVgcw=;
 b=ODWQhV8MgF9c7o2guJEdbXplM5OnBK3aAKfrW4wQcPGsMEl4Z1wvYslIzvIUcEgeeS
 JJpHxAGdzB+eevhMgOAa01uxY9/0JXlx7cRn4sKtalwS/zGLHsKZUOjyhpRCgkA12YZv
 nYluLOPOTobquw72QvmHrEj94j5bE0JE73BWUXfvdYNl5l9LJlvyTiRwc5ZxcW2fDzLm
 9S+yDvimVKg1gHiaOblPU0k64pP3JOs7TXIp/T16hfAMpaSpGCsKD8YOIKnuaAhmWCkR
 9AweewCfBrOrsfcO6qvDiMQI8D8S7bnwOY64Wj7h90XUPeP1qSwpRX0vszGgc/PhxY5K
 NeXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=prm6F9A7udBbbazHidVJSyKNJBPGpqmhX/YTquSVgcw=;
 b=YHIf30fxqESMEYImIqfxhPsSNcm1be1mjAUEzO0UBP/YO+QEWqvpgT5Q5Z2sT/NIXZ
 TZKv0T/ZIFxmaT4DZAV3a77sojSJnfjuqTBcqv5RDv3g3/ur38ka034NJf3qYF3LWL/m
 ZRij6qyLUX6gSSl7/6ogItSZKLWvm8mUz5NOQuhWKEsy1mJoO8/kZTnGBK5oJeGp4cDr
 wZT9pfhmy5iyZOvQktJttEFbryuSi2FFGGNsJl49t/+smWN+COoOxDjJRI1vxZ8y3eME
 D/qE39H/AjI/Ey3Q4OgZCGb650NC9YIFhmwR/0quKAXLODFOyX+YmTjy/h9u7CW7zU+z
 hMKQ==
X-Gm-Message-State: APjAAAXU2E8yP9f7pFP0PiQ8pv7j9xtZFiU/qPGCUAR4G/nnoppfqq9V
 aNSn0sTOyvN+nQUZDGWfsF7biIzPqPI9zi8qhOU=
X-Google-Smtp-Source: APXvYqyQNbwOgzWwHpNa70qjjCceQD8KL2Ro68PHn1EFxoYrLUZtoN9TvfX6fwO+a8rioZNWR4k1ii/lh3Pjou1tRf0=
X-Received: by 2002:a67:f44b:: with SMTP id r11mr2704022vsn.23.1573437528995; 
 Sun, 10 Nov 2019 17:58:48 -0800 (PST)
MIME-Version: 1.0
References: <20191014141718.22603-1-narmstrong@baylibre.com>
 <20191014141718.22603-2-narmstrong@baylibre.com>
 <20191023201141.GA21235@bogus>
 <CA+3zgmsJPsvXgsjDQKKrSG+UNdY3SK+hKCTD2X3hGG+OXejHig@mail.gmail.com>
In-Reply-To: <CA+3zgmsJPsvXgsjDQKKrSG+UNdY3SK+hKCTD2X3hGG+OXejHig@mail.gmail.com>
From: Jun Li <lijun.kernel@gmail.com>
Date: Mon, 11 Nov 2019 09:58:37 +0800
Message-ID: <CAKgpwJWU3jB0DWEKE09TOV+YLceBFJ75ZirAXQbuhj8v3FwjXg@mail.gmail.com>
Subject: Re: [PATCH 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
To: Tim <elatllat@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_175851_773241_F9AD9E70 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (lijun.kernel[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Felipe Balbi <balbi@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 devicetree@vger.kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Dongjin Kim <tobetter@gmail.com>, linux-amlogic@lists.infradead.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTmVpbAoKQXMgSSBnb3QgdGhlIGluZm9ybWF0aW9uIGZyb20gU3lub3BzeXMsIHRoaXMgYnVn
IGV4aXN0cyBvbiBjdXJyZW50IElQIHZlcnNpb25zLAphbmQgcGVyIG15IHRlc3RzIHdpdGggZXh0
ZXJuYWwgVVNCMyBodWIgKyAyIFN1cGVyIHNwZWVkIHVkaXNrcyBvbiBkYXRhCnJlYWQgYnkgZGQs
IEkgY2FuIHJlcHJvZHVjZSB0aGlzIGlzc3VlIHdpdGggZGlmZmVyZW50IGtlcm5lbCB2ZXJzaW9u
cywgYWxzbyBJCmRpZG4ndCBzZWUgb2J2aW91cyBwZXJmb3JtYW5jZSBkcm9wIGJ5IGRkIHRlc3Rz
IGFmdGVyIGRpc2FibGUgcGFyayBtb2RlIGZvcgpzdXBlciBzcGVlZCwgc28gc2hvdWxkIHdlIGp1
c3QgZGlzYWJsZSBpdCBieSBkZWZhdWx0IHNvIG5vIG5lZWQgYSBxdWlyaz8KCkxpIEp1bgoKVGlt
IDxlbGF0bGxhdEBnbWFpbC5jb20+IOS6jjIwMTnlubQxMeaciDEx5pel5ZGo5LiAIOS4iuWNiDg6
NDLlhpnpgZPvvJoKPgo+IFRoYW5rcyBmb3Igd29ya2luZyBvbiB0aGlzIE5laWwsCj4gSXMgdGhl
cmUgc29tZXRoaW5nIHRoYXQgbmVlZHMgZG9pbmcgZm9yIHRoaXMgcGF0Y2ggdG8gbWFrZSBpdCBp
bnRvIDUuMyBvciA1LjQ/Cj4gQXMgcHJldmlvdXNseSBtZW50aW9uZWQgdGhlIHBhdGNoIHNldCBm
aXhlcyB0aGUgaXNzdWUgb24gYWZmZWN0ZWQgaGFyZHdhcmU7Cj4gICAgIGh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTExNjQ1MTUvCj4KPgo+Cj4gT24gV2VkLCBPY3QgMjMsIDIw
MTkgYXQgNDoxMSBQTSBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4g
PiBPbiBNb24sIE9jdCAxNCwgMjAxOSBhdCAwNDoxNzoxNlBNICswMjAwLCBOZWlsIEFybXN0cm9u
ZyB3cm90ZToKPiA+ID4gVGhpcyBwYXRjaCB1cGRhdGVzIHRoZSBkb2N1bWVudGF0aW9uIHdpdGgg
dGhlIGluZm9ybWF0aW9uIHJlbGF0ZWQKPiA+ID4gdG8gdGhlIHF1aXJrcyB0aGF0IG5lZWRzIHRv
IGJlIGFkZGVkIGZvciBkaXNhYmxpbmcgYWxsIFN1cGVyU3BlZWQgWEhDaQo+ID4gPiBpbnN0YW5j
ZXMgaW4gcGFyayBtb2RlLgo+ID4gPgo+ID4gPiBDQzogRG9uZ2ppbiBLaW0gPHRvYmV0dGVyQGdt
YWlsLmNvbT4KPiA+ID4gQ2M6IEppYW54aW4gUGFuIDxqaWFueGluLnBhbkBhbWxvZ2ljLmNvbT4K
PiA+ID4gUmVwb3J0ZWQtYnk6IFRpbSA8ZWxhdGxsYXRAZ21haWwuY29tPgo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+Cj4gPiA+IC0t
LQo+ID4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9kd2MzLnR4dCB8
IDIgKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+Cj4gPiBTaWdo
LCB3aGF0J3Mgb25lIG1vcmUgdG8gdGhlIG5ldmVyIGVuZGluZyBsaXN0IG9mIHF1aXJrcy4uLgo+
ID4KPiA+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
