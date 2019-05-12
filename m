Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057071ADC6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 20:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GMoz2ZjvqlWCxWrt7MSGWnz06K9Z8TZiY5mrJP6kxk=; b=VgqjoJw2Se1F+S
	pppxn5ngndBMMHAOD8dQJFLTZydU58DgkU53HuvhOTEPophHIjtsDPlPVN6rjN9+r67EXUKfc4diK
	rYUNriOcuUct8xa1n4W0NT7ZPHwrp8JTsUPnVEExuR2DrxQ6TuiOuteu1FggCb/A44KOhLcI/pvEH
	NyOHZkm0CmghNCnBgJxMWU4MoiNmrNcTlwOPgyH9tAHMcLZo9huIBnlaVddOxJ4JvhUe9zlcmGyns
	d8o7WkDG6fAD4Tkd/TC/kzUqb3AzY4768UZk68W6SQCOkE9WhU88puTkr8fpPjGuTTtTweo8rETrE
	BZYub9kcYFVAWWsrDPOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPtDD-0003bK-At; Sun, 12 May 2019 18:28:39 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtD5-0003aa-Nx
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 18:28:33 +0000
Received: by mail-it1-x142.google.com with SMTP id p18so12027538itm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 11:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EF52YdVgI4AjVz2rWbfCjQjxB4bBcpwr8gdCDmEvRMM=;
 b=JIVmAKslIaptP97sT+JLAAOKjiRud4rjax0VdpRuD7V6Y+T+njTxkM2Kyk89m1aDN4
 9pt2Xr85DesiZ48jZ6afjb57cspF2aD2Jhfk4b+7bbwEZF5ZpT9feCYOcEo2RLvOwclA
 8QwJWBBOK3SSmNqzmn5XYwf9P/7y5m/k7TQ6I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EF52YdVgI4AjVz2rWbfCjQjxB4bBcpwr8gdCDmEvRMM=;
 b=eT+6FxF1k2MPIVVbKCpsBkCH37kk4fjN4S38uQaCBGmjNCaCGz82F2qTKiqRfWeOMh
 2A5NeXfOwABy1tc8xVguOPIdfqDmleGSwEYKYWrQGcCqEnNOjjGfx+gB6W9g5zZ35RA4
 SpA+3fQjIV7FSpPfO1xJVclbl2U5f75STVMo5PetKxzR93H49jEV0KuJaVY9X8wOX6F9
 IrpRaCV/lbtewvdi9NZSjInZ7Gt0i7aC0zvRCrLPnrm29O5rFXcqHru3PuzxHlC5+aFE
 oKYhjtjdFDpmpPBYH4M+5fvncn4XwbyHlB+vVicGGcgfz1NTMyBsrEIGGhwnRCI1to2z
 3DJA==
X-Gm-Message-State: APjAAAVOK37m3mDPrREtz1iG3vyHvo0oze5uAtLSaU4s8OSA/a4wjCQL
 aTlQ+AE+CfXz2I7RzZJ5mi9cfnewT7ngKb528pTkkg==
X-Google-Smtp-Source: APXvYqxoZZ31n7p7DsRANkjUnS0uU4dF/+jejuqvVJfngZh1kMotrcwI/r2k8KpaBCLAP7sHgdKNC9IhCZC1L1ITf7I=
X-Received: by 2002:a02:b89:: with SMTP id 131mr16589728jad.58.1557685709583; 
 Sun, 12 May 2019 11:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190512174608.10083-1-peron.clem@gmail.com>
 <20190512174608.10083-6-peron.clem@gmail.com>
In-Reply-To: <20190512174608.10083-6-peron.clem@gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sun, 12 May 2019 23:58:18 +0530
Message-ID: <CAMty3ZBTO9+9HLikR8=KgWZQBp+1yVgxQ_rD-E8WeJ8VvpuAcA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH v4 5/8] arm64: dts: allwinner: Add mali GPU
 supply for Pine H64
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_112831_934451_0043DD8F 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBNYXkgMTIsIDIwMTkgYXQgMTE6MTYgUE0gPHBlcm9uLmNsZW1AZ21haWwuY29tPiB3
cm90ZToKPgo+IEZyb206IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4K
PiBFbmFibGUgYW5kIGFkZCBzdXBwbHkgdG8gdGhlIE1hbGkgR1BVIG5vZGUgb24gdGhlCj4gUGlu
ZSBINjQgYm9hcmQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtcGluZS1oNjQuZHRzIHwgNSArKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LXBpbmUtaDY0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi1waW5lLWg2NC5kdHMKPiBpbmRleCA0ODAyOTAyZTEyOGYuLmUxNmE4YzY3MzhmOSAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1o
NjQuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBp
bmUtaDY0LmR0cwo+IEBAIC04NSw2ICs4NSwxMSBAQAo+ICAgICAgICAgc3RhdHVzID0gIm9rYXki
Owo+ICB9Owo+Cj4gKyZncHUgewo+ICsgICAgICAgbWFsaS1zdXBwbHkgPSA8JnJlZ19kY2RjYz47
Cj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gK307CgpJIHRoaW5rIHdlIGNhbiBzcXVhc2gg
YWxsIHRoZXNlIGJvYXJkIGR0cyBjaGFuZ2VzIGludG8gc2luZ2xlIHBhdGNoLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
