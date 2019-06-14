Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4089E4682C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 21:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/T9WRQgn08bAYDIwNCU4OCxOrSLVWR57KwNnzlXtA+s=; b=Zm5ehYh4yeuC/w
	I1U4pLlxYizEvAZ4fXw+kkDuGaEc9MmwiTx95fwfkWdvz0GwYLZP/Yhge0nJZEv87ZU5GRzezx96V
	nY0oFwcbm93TKlHo7Dhpi/t6fK0hubsGblStQJfzooZWtQQvbDGbHGXd+UbEha52O/K207QJ99SLM
	UYjDfwKajl6m33KZCi7NniX7xjV4mFaN8yhk8k0u9s2+JXeIHCu0fuHZb2oqTW1ZWIlVRP9zfg1dK
	+spjHWEIc8QGOUpxkvmaddSiO5VLEmCUbAeurLYI53Nwb3oMD4mQCITAv6h9TuGfMVN0hWstM8F8G
	Ny4355D7o7NXdKOdM8jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbrxh-0000ZQ-K0; Fri, 14 Jun 2019 19:34:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbrxZ-0000Yy-AZ
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 19:34:02 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8877B20866
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 19:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560540840;
 bh=wr/eQtEE3iJnSa7E2kL4Ek/lqk/4ET90JhWlyFdrqq0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0VCrY966gCCbSU1OJoxYKikS7uV+UyvKh6Z+YKdA6Rt/18nh2oN2rQbw3D8LAqsHQ
 3dnyI/DMTGBZEApZZ+vU+DpxXEh01cja6RZLot4/z/r2sm8Wss1aCnqWEC01av87uo
 P3Nmz7VbabNaWzgyAbzG7n5/VnrkMbMkzX9WZD0Y=
Received: by mail-qt1-f179.google.com with SMTP id d23so3850341qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 12:34:00 -0700 (PDT)
X-Gm-Message-State: APjAAAV7teOZbU0WVsQlaqkbyKZRMFaSvWa33m8sTeLcdeWAzdSbTWuD
 DLGxgHiJpaXo++BzN9ErxmqJzZs99bnWDPBL4A==
X-Google-Smtp-Source: APXvYqzx09ZX/6kOckWH3iuQjTw8fyB3cWhkcStX8rrUjI+l5U1sNeJAvM7cBDu9l2+/8g404HycvsxHlfGJ34QW0fU=
X-Received: by 2002:a0c:b786:: with SMTP id l6mr9951642qve.148.1560540839834; 
 Fri, 14 Jun 2019 12:33:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190517153223.7650-1-robh@kernel.org>
 <20190613224435.GA32572@bogus>
 <20190614170450.GA29654@Mani-XPS-13-9360>
 <5946467c-7674-de2b-a657-627cf3be42df@suse.de>
In-Reply-To: <5946467c-7674-de2b-a657-627cf3be42df@suse.de>
From: Rob Herring <robh@kernel.org>
Date: Fri, 14 Jun 2019 13:33:47 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJoQDkqZO_4XdaQymVW0cJDXVmAPh3uieRkBjoUXeWE1w@mail.gmail.com>
Message-ID: <CAL_JsqJoQDkqZO_4XdaQymVW0cJDXVmAPh3uieRkBjoUXeWE1w@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: arm: Convert Actions Semi bindings to
 jsonschema
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_123401_397589_43A6B70E 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMTE6MDcgQU0gQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJl
ckBzdXNlLmRlPiB3cm90ZToKPgo+IEFtIDE0LjA2LjE5IHVtIDE5OjA0IHNjaHJpZWIgTWFuaXZh
bm5hbiBTYWRoYXNpdmFtOgo+ID4gT24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgMDQ6NDQ6MzVQTSAt
MDYwMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPj4gT24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMTA6
MzI6MjNBTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPj4+IENvbnZlcnQgQWN0aW9ucyBT
ZW1pIFNvQyBiaW5kaW5ncyB0byBEVCBzY2hlbWEgZm9ybWF0IHVzaW5nIGpzb24tc2NoZW1hLgo+
ID4+Pgo+ID4+PiBDYzogIkFuZHJlYXMgRsOkcmJlciIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4gPj4+
IENjOiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8u
b3JnPgo+ID4+PiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPiA+Pj4g
Q2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4+PiBDYzogZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmcKPiA+Pj4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJv
YmhAa2VybmVsLm9yZz4KPiA+Pj4gLS0tCj4gPj4+IHYzOgo+ID4+PiAtIHVwZGF0ZSBNQUlOVEFJ
TkVSUwo+ID4+Pgo+ID4+PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2FjdGlvbnMudHh0
ICAgICAgIHwgNTYgLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4+PiAgLi4uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL2FjdGlvbnMueWFtbCAgICAgIHwgMzggKysrKysrKysrKysrKwo+ID4+PiAgTUFJ
TlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiA+Pj4g
IDMgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgNTcgZGVsZXRpb25zKC0pCj4gPj4+
ICBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9hY3Rpb25zLnR4dAo+ID4+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vYWN0aW9ucy55YW1sCj4gPj4KPiA+PiBQaW5nLiBQbGVhc2Ug
YXBwbHkgb3IgbW9kaWZ5IHRoaXMgaG93IHlvdSdkIHByZWZlci4gSSdtIG5vdCBnb2luZyB0bwo+
ID4+IGtlZXAgcmVzcGlubmluZyB0aGlzLgo+ID4+Cj4gPgo+ID4gU29ycnkgZm9yIHRoYXQgUm9i
Lgo+Cj4gV2VsbCwgaXQgd2FzIHNpbXBseSBub3QgY2xlYXIgd2hldGhlciB3ZSB3ZXJlIHN1cHBv
c2VkIHRvIG9yIG5vdC4gOikKCkkgdGhvdWdodCAnVG8nIHlvdSBhbmQgYSBzaW5nbGUgcGF0Y2gg
c2hvdWxkIGJlIGNsZWFyIGVub3VnaC4KCj4gPiBBbmRyZWFzLCBhcmUgeW91IGdvaW5nIHRvIHRh
a2UgdGhpcyBwYXRjaD8gRWxzZSBJJ2xsIHBpY2sgaXQgdXAgKElmIHlvdQo+ID4gd2FudCBtZSB0
byBkbyB0aGUgUFIgZm9yIG5leHQgY3ljbGUpCj4KPiBJIGhhZCBjaGVja2VkIHRoYXQgYWxsIHBy
ZXZpb3VzIGNoYW5nZXMgdG8gdGhlIC50eHQgZmlsZSB3ZXJlIGJ5IG15c2VsZiwKPiBzbyBJIHdv
dWxkIHByZWZlciBpZiB3ZSBub3QgbGljZW5zZSBpdCB1bmRlciBHUEx2Mi1vbmx5IGJ1dCB1bmRl
ciB0aGUKPiBzYW1lIGR1YWwtbGljZW5zZSAoTUlUL0dQTHYyKykgYXMgdGhlIERUcy4gVGhhdCBt
b2RpZmljYXRpb24gd291bGQgbmVlZAo+IFJvYidzIGFwcHJvdmFsIHRoZW4uCgpUaGF0J3MgZmlu
ZSBhbmQgZHVhbCBsaWNlbnNlIGlzIHByZWZlcnJlZC4gQ2FuIHlvdSBhZGp1c3QgdGhhdCB3aGVu
CmFwcGx5aW5nLiBOb3RlIHRoYXQgdGhlIHByZWZlcmVuY2UgZm9yIHNjaGVtYSBpcyAoR1BMLTIu
MCBPUgpCU0QtMi1DbGF1c2UpLCBidXQgTUlUL0dQTHYyKyBpcyBmaW5lIGJ5IG1lLgoKUm9iCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
