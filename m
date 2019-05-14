Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008B61CBC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 17:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hc7EfHvIxJFlMg6bbDNqEBlkDLoOkqgK9l/O+B4Gj8=; b=ljOlpw2/+Gy0KJ
	evmSXOweWOufhVuMnD+OolbJ4WqWC5nkRB6ERnMt5iT/Z8GSgkubInVBAN/4273CuiswMhH/hzHqy
	7JZ2dfgPnoJO9U41cufGmhWBTPBPI7Rp4kxK239Yv9llEG8nBBqbzaVTvKqOdoTfNlKgF9p1hZUCU
	PbEZihOL/nqTD4QHr92D0RMp0r+pJoAAG1dT5VF9nOluHMGbc82LfMSu9WFELh4ynsQW/lXy72SYe
	nyOqpg68nStbCsLdf5LmxKPqQ2jVifwGkroEESBjTueZABE3RBuQKiT6i4LccgvZ5x537lltC2kf4
	SWAM/LHjHf40f23lEFsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZGr-00010N-KM; Tue, 14 May 2019 15:23:13 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZGd-0000pm-72
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 15:23:02 +0000
Received: by mail-yw1-xc43.google.com with SMTP id o65so14282054ywd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 08:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EIqb4eEH0S4LgQ1Yuwg43BMgX8ef+eVurK6N5WcObMU=;
 b=vYmdyv9F2aheI/anon+QKteAny7T9Jkr5RqQgnGlUFC7tfsc6l0uZhzwhbGkpKWrM+
 0wIQgCkUqAIJJiuKcWpmOAP1rmiLDxREh2+HSn/77OrV2OmMe1GNryaK5Jhn6rMzT3bJ
 k7ecYwXz++aYRjdGRlKRK/baHs1CClyfvLZPqRIbMWxra8vFvLGZETpzx0FWraGbciky
 q0O/MwvkTRJBcA2bOTZykoX7/cO+79ijS0Lv86uRvIt5UvugjKjNs5tODTEkfpT5F4g6
 Ih9QJYumpv8dTaoCeesPt1IjlsdakWKtHqihnDqKfQLwWnTw37x8K9mhyhAs1u18HPX8
 3cuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EIqb4eEH0S4LgQ1Yuwg43BMgX8ef+eVurK6N5WcObMU=;
 b=gqZkGZAD+5L1YSEJ1ykGIh9eZwWiK+OArruqUXeqZsHPuQsusfhYVcHi/SZ//086ud
 WpxyXmW2EF1ljEIHWVslxLbzWcbib9y0wGlZ5YNxcT4IIXAiwXjg/V/AhGL0DX/7pNyH
 /e04tEqnWoQXStUaffaPnDcBG8kBA1cCvBbsgPIwSdSGj/S/6Z5nzXHGk+j9IeKhJcaa
 O5FxTUFukQLI3aEu+mJxnP98dfxnVxF4hn1azw6bq4ql0pm9ggPnQwYwybuSwk2QMbb0
 6t5355xTSyWwp+0J1Y4jzWqi5JYT0+tFz+bUGBQlgax+gDR/WUR68ywjxAmpd3DlBkR8
 P45g==
X-Gm-Message-State: APjAAAXbkr/qU3pr+i6bkxTbm5is8ufxUoKZwbtUWNcPgO7ZFAgYArh/
 iU9dhpK1zzQ43fwbIE4C/IMJrWeQNgZhN826FOo=
X-Google-Smtp-Source: APXvYqzsCBCwG+CsZWtmfQH5I1TFQjALA0U5fvim+GZofqMADF7Ffsdbqc9gP3rOktGVVJdHyqlZTkKTnqD3qMMrmPs=
X-Received: by 2002:a25:9b88:: with SMTP id v8mr17018094ybo.153.1557847377908; 
 Tue, 14 May 2019 08:22:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190512174608.10083-1-peron.clem@gmail.com>
 <20190512174608.10083-6-peron.clem@gmail.com>
 <CAMty3ZBTO9+9HLikR8=KgWZQBp+1yVgxQ_rD-E8WeJ8VvpuAcA@mail.gmail.com>
 <CAGb2v64QpH2uL3Q2=ePEaYhrB1_J5uNT4VnBssBgwbOB0NDD0Q@mail.gmail.com>
In-Reply-To: <CAGb2v64QpH2uL3Q2=ePEaYhrB1_J5uNT4VnBssBgwbOB0NDD0Q@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 14 May 2019 17:22:46 +0200
Message-ID: <CAJiuCccZvk_rHmh4Trt+1uG0APu886Zp_DvUwGcMkph0U0biAA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v4 5/8] arm64: dts: allwinner: Add mali GPU
 supply for Pine H64
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_082259_728357_14BDA1AC 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFnYW4sIENoZW4tWXUsCgpPbiBUdWUsIDE0IE1heSAyMDE5IGF0IDEyOjE4LCBDaGVuLVl1
IFRzYWkgPHdlbnNAY3NpZS5vcmc+IHdyb3RlOgo+Cj4gT24gTW9uLCBNYXkgMTMsIDIwMTkgYXQg
MjoyOCBBTSBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gT24gU3VuLCBNYXkgMTIsIDIwMTkgYXQgMTE6MTYgUE0gPHBlcm9uLmNsZW1AZ21haWwu
Y29tPiB3cm90ZToKPiA+ID4KPiA+ID4gRnJvbTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVt
QGdtYWlsLmNvbT4KPiA+ID4KPiA+ID4gRW5hYmxlIGFuZCBhZGQgc3VwcGx5IHRvIHRoZSBNYWxp
IEdQVSBub2RlIG9uIHRoZQo+ID4gPiBQaW5lIEg2NCBib2FyZC4KPiA+ID4KPiA+ID4gU2lnbmVk
LW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiA+ID4gLS0t
Cj4gPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQu
ZHRzIHwgNSArKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4g
Pgo+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LXBpbmUtaDY0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni1waW5lLWg2NC5kdHMKPiA+ID4gaW5kZXggNDgwMjkwMmUxMjhmLi5lMTZhOGM2NzM4ZjkgMTAw
NjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1w
aW5lLWg2NC5kdHMKPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LXBpbmUtaDY0LmR0cwo+ID4gPiBAQCAtODUsNiArODUsMTEgQEAKPiA+ID4gICAgICAg
ICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ICB9Owo+ID4gPgo+ID4gPiArJmdwdSB7Cj4gPiA+ICsg
ICAgICAgbWFsaS1zdXBwbHkgPSA8JnJlZ19kY2RjYz47Cj4gPiA+ICsgICAgICAgc3RhdHVzID0g
Im9rYXkiOwo+ID4gPiArfTsKPiA+Cj4gPiBJIHRoaW5rIHdlIGNhbiBzcXVhc2ggYWxsIHRoZXNl
IGJvYXJkIGR0cyBjaGFuZ2VzIGludG8gc2luZ2xlIHBhdGNoLgo+Cj4gWWVzLiBQbGVhc2UgZG8g
c28gZm9yIGFsbCBwYXRjaGVzIHdpdGggdGhlIHNhbWUgY2hhbmdlcyBhcHBsaWVkIHRvIGRpZmZl
cmVudAo+IGJvYXJkcywgYW5kIGF1dGhvcmVkIGJ5IHRoZSBzYW1lIHBlcnNvbi4KCkkgdGhvdWdo
dCBpdCB3YXMgcmVxdWlyZWQgdG8gaGF2ZSAic21hbGxlc3QiIHBhdGNoIGFzIHBvc3NpYmxlLgpB
bmQgaXQncyBhbHNvIGJldHRlciBmb3IgdHJhY2tpbmcgIlRlc3RlZC1ieSIgdGFnLgoKSSB3aWxs
IHNxdWFzaCB0aGVtIGluIHRoZSBuZXh0IHZlcnNpb24uCgpUaGFua3MsCkNsZW1lbnQKPgo+IENo
ZW5ZdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
