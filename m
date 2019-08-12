Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 890268AB47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 01:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6raFaBKi1PZHNbsQCdsBb9mNIByjM/U5zVdh2ClXpY=; b=lNh5ROyDsemUtV
	4x/YXTUzyvYJ2VcvwfE8gGo2IWfMQiBeBls9Ef0yC2+miRuAjvwJNkEgvEBzw+zzSmrZnLW/la7fI
	xrWuxR7xtINaS0D8Ls3FaQ6zOeN+2KhKt+bioaVW4jwxjKJkbnNLuDQ3m7Py/6hmEYjnS0fS2lnAo
	cw6/dQlDOkGtqBsuMqAPiBD+/dGNEVRqDRyNSkuw/LffFWD/ZCc8Dl+QTKTp9jxBYZtrI8hfkXWEQ
	9U9kYm9cJ0DagMAGNPPO04BUhT1HySBrNKU6ZkcBecE2K8tlsenlCaWBCet+aENHv9IF2MG6mytd7
	hw/NJ9gV+SgtZ3+vDMKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxJrV-0007UB-M0; Mon, 12 Aug 2019 23:36:25 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxJrJ-0007TH-Ru
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 23:36:15 +0000
Received: by mail-ot1-x342.google.com with SMTP id b7so115386389otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 16:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mdMrX21nqMnvIo0oSW5nynBC7o2j74UpdSvh/i3TCuw=;
 b=Dc0IemBH6ncFvomx4DuvnPw47t9stKmlDKr174FZc3Govzrg+3isbhY8bAEhZMFZSM
 EJwTO7PC5sc2aIM1Edj9q+rHGs1QDBbUtcvHaM5FlZvnj1nrnNKtRP4+BH4KkI5svDM/
 rG7q1A8/+GSQ0XYBE/zavAFd8ivbsG4uDI9t0Gk/S2IeAqJlyU+8XncCly65BRRzeQk/
 4cZl5vn0GX5UTK2mhGgURbWmw+tzQYKBDIFjN72ckCJRJ80gV6g+TWhJKQPmy0vWR0OQ
 Phq4uZ0RKXJT1T76zva460FaPlcXKtsampSsiCafYOeeFLds+tWobvtYROdKcENNUd/o
 C07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mdMrX21nqMnvIo0oSW5nynBC7o2j74UpdSvh/i3TCuw=;
 b=HH7VFfbxb8zxGQSSI0cfZUDCQ0ko8k3SvUE7GLnpYLK+g8h9ALcBg3lSYtV1yDlA8Q
 1rXPYh+POpmt6FLUSaIadSZVI4Ig8ENM7u1AbjILnVxVBB/qwuLn+XBWTVkQ7aYB9pQ7
 ZGPTeYvXfhOl3bPcCKU5vWq6Q6pf3GkYEp95qg4oU4KHYCrfKqcwEqR2E+dys0rU1qd2
 Uo9t0RMqZJdMgmSsG/XxltvuQVxS2jgQwGTbyaVu1IyqinLXwCawpu/5T8GhGuj6Wvxt
 /jnxOK7PGug5N34asvKBWXlcGUCXrl4gYp8LY5R32H2VBkwjmayIpoK+JtbqVpQout86
 W1CQ==
X-Gm-Message-State: APjAAAUOq+k9bhUwIGdzMn5/Aw/oFKOR3Zjv09NLfvGnx83o1x8Gix6o
 48gOXgHoW8kWFq7e2E0UzZaRkF+LeyUXPWv4xqo=
X-Google-Smtp-Source: APXvYqwzQ8RzLpMPAB55e3s5PL0qjJ7LLgXXH8BJGqGYod4lRp0CQ5+iGkhGj8srHUw4054ayr+0QdORe2rXP1OVJtA=
X-Received: by 2002:a5d:9047:: with SMTP id v7mr26934439ioq.18.1565652972130; 
 Mon, 12 Aug 2019 16:36:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <f479c162-4eac-f320-3583-b9ddbef79b1a@gmail.com>
In-Reply-To: <f479c162-4eac-f320-3583-b9ddbef79b1a@gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Tue, 13 Aug 2019 07:36:00 +0800
Message-ID: <CAEExFWu+CNqjDF218kaVu2xHq1yYL8XgxrM1o=S9axNNebb8XA@mail.gmail.com>
Subject: Re: [PATCH v5 00/18] add thermal driver for h6
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_163613_930096_283BE5CB 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jonathan.Cameron@huawei.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgNToxNCBBTSBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEhpIFlhbmd0YW8sCj4KPiBPbiAxMC8wOC8yMDE5IDA3
OjI4LCBZYW5ndGFvIExpIHdyb3RlOgo+ID4gVGhpcyBwYXRjaHNldCBhZGQgc3VwcG9ydCBmb3Ig
QTY0LCBIMywgSDUsIEg2IGFuZCBSNDAgdGhlcm1hbCBzZW5zb3IuCj4KPiBDb3VsZCB5b3UgYWRk
IHRoZSBkZXZpY2UtdHJlZSBjb25maWd1cmF0aW9uIGluIHRoZSBzYW1lIHNlcmllcz8KPiBUaGlz
IHdpbGwgYWxsb3cgdXNlciB0byB0ZXN0IGl0LgoKT2ssIGl0IHdpbGwgYmUgYWRkZWQgbGF0ZXIu
CgpZYW5ndGFvCgo+Cj4gVGhhbmtzLAo+IENsw6ltZW50Cj4KPiA+Cj4gPiBUaHggdG8gSWNlbm93
eSBhbmQgVmFzaWx5Lgo+ID4KPiA+IEJUWSwgZG8gYSBjbGVhbnVwIGluIHRoZXJtYWwgbWFrZmls
ZS4KPiA+Cj4gPiBJY2Vub3d5IFpoZW5nICgzKToKPiA+ICAgIHRoZXJtYWw6IHN1bjhpOiBhbGxv
dyB0byB1c2UgY3VzdG9tIHRlbXBlcmF0dXJlIGNhbGN1bGF0aW9uIGZ1bmN0aW9uCj4gPiAgICB0
aGVybWFsOiBzdW44aTogYWRkIHN1cHBvcnQgZm9yIEFsbHdpbm5lciBINSB0aGVybWFsIHNlbnNv
cgo+ID4gICAgdGhlcm1hbDogc3VuOGk6IGFkZCBzdXBwb3J0IGZvciBBbGx3aW5uZXIgUjQwIHRo
ZXJtYWwgc2Vuc29yCj4gPgo+ID4gVmFzaWx5IEtob3J1emhpY2sgKDEpOgo+ID4gICAgdGhlcm1h
bDogc3VuOGk6IGFkZCB0aGVybWFsIGRyaXZlciBmb3IgQTY0Cj4gPgo+ID4gWWFuZ3RhbyBMaSAo
MTQpOgo+ID4gICAgdGhlcm1hbDogc3VuOGk6IGFkZCB0aGVybWFsIGRyaXZlciBmb3IgaDYKPiA+
ICAgIGR0LWJpbmRpbmdzOiB0aGVybWFsOiBhZGQgYmluZGluZyBkb2N1bWVudCBmb3IgaDYgdGhl
cm1hbCBjb250cm9sbGVyCj4gPiAgICB0aGVybWFsOiBmaXggaW5kZW50YXRpb24gaW4gbWFrZWZp
bGUKPiA+ICAgIHRoZXJtYWw6IHN1bjhpOiBnZXQgdGhzIHNlbnNvciBudW1iZXIgZnJvbSBkZXZp
Y2UgY29tcGF0aWJsZQo+ID4gICAgdGhlcm1hbDogc3VuOGk6IHJld29yayBmb3Igc3VuOGlfdGhz
X2dldF90ZW1wKCkKPiA+ICAgIHRoZXJtYWw6IHN1bjhpOiBnZXQgdGhzIGluaXQgZnVuYyBmcm9t
IGRldmljZSBjb21wYXRpYmxlCj4gPiAgICB0aGVybWFsOiBzdW44aTogcmV3b3JrIGZvciB0aHMg
aXJxIGhhbmRsZXIgZnVuYwo+ID4gICAgdGhlcm1hbDogc3VuOGk6IHN1cHBvcnQgbW9kIGNsb2Nr
cwo+ID4gICAgdGhlcm1hbDogc3VuOGk6IHJld29yayBmb3IgdGhzIGNhbGlicmF0ZSBmdW5jCj4g
PiAgICBkdC1iaW5kaW5nczogdGhlcm1hbDogYWRkIGJpbmRpbmcgZG9jdW1lbnQgZm9yIGgzIHRo
ZXJtYWwgY29udHJvbGxlcgo+ID4gICAgdGhlcm1hbDogc3VuOGk6IGFkZCB0aGVybWFsIGRyaXZl
ciBmb3IgaDMKPiA+ICAgIGR0LWJpbmRpbmdzOiB0aGVybWFsOiBhZGQgYmluZGluZyBkb2N1bWVu
dCBmb3IgYTY0IHRoZXJtYWwgY29udHJvbGxlcgo+ID4gICAgZHQtYmluZGluZ3M6IHRoZXJtYWw6
IGFkZCBiaW5kaW5nIGRvY3VtZW50IGZvciBoNSB0aGVybWFsIGNvbnRyb2xsZXIKPiA+ICAgIGR0
LWJpbmRpbmdzOiB0aGVybWFsOiBhZGQgYmluZGluZyBkb2N1bWVudCBmb3IgcjQwIHRoZXJtYWwg
Y29udHJvbGxlcgo+ID4KPiA+ICAgLi4uL2JpbmRpbmdzL3RoZXJtYWwvc3VuOGktdGhlcm1hbC55
YW1sICAgICAgIHwgMTU3ICsrKysrCj4gPiAgIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAgNyArCj4gPiAgIGRyaXZlcnMvdGhlcm1hbC9LY29uZmlnICAg
ICAgICAgICAgICAgICAgICAgICB8ICAxNCArCj4gPiAgIGRyaXZlcnMvdGhlcm1hbC9NYWtlZmls
ZSAgICAgICAgICAgICAgICAgICAgICB8ICAgOSArLQo+ID4gICBkcml2ZXJzL3RoZXJtYWwvc3Vu
OGlfdGhlcm1hbC5jICAgICAgICAgICAgICAgfCA1OTYgKysrKysrKysrKysrKysrKysrCj4gPiAg
IDUgZmlsZXMgY2hhbmdlZCwgNzc5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPiAg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhl
cm1hbC9zdW44aS10aGVybWFsLnlhbWwKPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
dGhlcm1hbC9zdW44aV90aGVybWFsLmMKPiA+IC0tLQo+ID4gdjU6Cj4gPiAtYWRkIG1vcmUgc3Vw
cG9ydAo+ID4gLXNvbWUgdHJpdmFsIGZpeAo+ID4gLS0tCj4gPiAyLjE3LjEKPiA+Cj4gPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
