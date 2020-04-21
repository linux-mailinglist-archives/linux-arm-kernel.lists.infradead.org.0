Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF0A1B21A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGqDUFGBJdQtjMp5tgzBr/1vUgUXuOcaACNMvyFtdOw=; b=QeXyu4skd9L1M+
	zAcj7EFYHFwxlabtzbxm8puQNH3iclXC3+bABS95oeViJ+hzgMbyDX3M8Ht4+2UXIYDS/yJF1Af8C
	CwnspaVwtLLt4ySDjvPDVWRC3reLV7h6KfuBAwgxt3jnN936QZRwF8gIjKUQQzr2SjU3E+w4o33fV
	xyySA0+y6fbH2TkGlkAWB86moa1cZGsTaDHnF2qg/WavcUiz1ToNyhNVZ8xeGbNlJGKAQLR0Zql9Y
	1j1ri3Gc7e+5XN6mum4d2S9CtwW0ShZI7o+vOzqxTCCK0EWzqCzeyXcItEC6/Pg/UXPNtLus9nu9e
	HVByseRh/V74lkcMQtyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQoIJ-0008GG-4V; Tue, 21 Apr 2020 08:30:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQoI8-0008F0-8D; Tue, 21 Apr 2020 08:30:06 +0000
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8251C20CC7;
 Tue, 21 Apr 2020 08:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587457803;
 bh=wuc3jx6PfRbtja5FaljDspMeSZne9nEnpk9fXRv7ORc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cBeTasdd+HGRg0i1aoz0FlXhSMkbkVJHNm1tkH7EIUqH88VFxxEhHaT/HyGtNhADR
 ql+7BURcZ7j0xbG2ePO7UGVzBFkZP7U1XA81ccNdcmlE+qQNQdg8xn0dBlnmIEtW+R
 WZpO1nF1wsmSWJIohvDpWcDtVHNIkB/n4RkaPW6M=
Received: by mail-lf1-f54.google.com with SMTP id w145so10418918lff.3;
 Tue, 21 Apr 2020 01:30:03 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ6a2esbM3FPYiEqXM4FpK5DitXcNqkftslY/yITpx+vcGsRyyP
 BYHznsviwwHVtd5IXD6O9D5+z9N/2qe6sQp4B6o=
X-Google-Smtp-Source: APiQypKroxytzJbwhdWevuEF+uOt/g+//e8nKL3ioSPIf4DsbVu1D4JJAdVWzgBa88oLLtktr4riRTPrKW6asxMnkh8=
X-Received: by 2002:a19:f206:: with SMTP id q6mr13560133lfh.85.1587457801468; 
 Tue, 21 Apr 2020 01:30:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200416181944.5879-1-jbx6244@gmail.com>
 <CAGb2v67N6t+C8dVKdjuOv1NzD9=3-n0GZQkshy1Pm6PFPJ87dQ@mail.gmail.com>
 <2710874.PL6qFFFsBp@diego>
In-Reply-To: <2710874.PL6qFFFsBp@diego>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 21 Apr 2020 16:29:49 +0800
X-Gmail-Original-Message-ID: <CAGb2v67vV2Bxff5Gj1R8Qx3Cj+nzA5ine12hoXbhGP5Z+S7=UA@mail.gmail.com>
Message-ID: <CAGb2v67vV2Bxff5Gj1R8Qx3Cj+nzA5ine12hoXbhGP5Z+S7=UA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add bus-width properties to mmc
 nodes for rk3328.dtsi
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_013004_698289_02BECCE2 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBcHIgMjEsIDIwMjAgYXQgNDoyMyBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEhpIENoZW5ZdSwKPgo+IEFtIERpZW5zdGFnLCAyMS4gQXByaWwg
MjAyMCwgMDU6NDg6NTIgQ0VTVCBzY2hyaWViIENoZW4tWXUgVHNhaToKPiA+IE9uIEZyaSwgQXBy
IDE3LCAyMDIwIGF0IDI6MTkgQU0gSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4gd3Jv
dGU6Cj4gPiA+Cj4gPiA+ICdidXMtd2lkdGgnIGFuZCBwaW5jdHJsIGNvbnRhaW5pbmcgdGhlIGJ1
cy1waW5zCj4gPiA+IHNob3VsZCBiZSBpbiB0aGUgc2FtZSBmaWxlLCBzbyBhZGQgdGhlbSB0bwo+
ID4gPiBhbGwgbW1jIG5vZGVzIGluICdyazMzMjguZHRzaScuCj4gPgo+ID4gTm9wZS4gRmlyc3Qg
b2YgYWxsLCBwaW5jdHJsIHVzYWdlIGlzIHdpdGggcGluY3RybC1OIHByb3BlcnRpZXMsIG5vdCB0
aGUKPiA+IHBpbmN0cmwgZGV2aWNlLCBhbmQgdGhlcmUgYXJlIG5vIGRlZmF1bHRzIHNldCBmb3Ig
YW55IG9mIHRoZSBtbWMgbm9kZXMuCj4gPiBTZWNvbmQsIHRoZXNlIGFyZSBib2FyZCBkZXNpZ24g
c3BlY2lmaWMuIEZvciBleGFtcGxlLCBib2FyZHMgYXJlIGZyZWUgdG8KPiA+IHVzZSBqdXN0IDQg
Yml0cyBmb3IgdGhlIGVNTUMgaWYgdGhleSBzbyBkZXNpcmUuIFNvIHRoaXMgc2hvdWxkIGJlIGlu
IGVhY2gKPiA+IGJvYXJkIGR0cyBmaWxlLiBJZiBhIGJvYXJkIGlzIG1pc3NpbmcgdGhpcyBwcm9w
ZXJ0eSwgZml4IHRoZSBib2FyZC4KPgo+IHlvdSBhcmUgY29ycmVjdCB0aGF0IHRoZSBwaW5jdHJs
IGVudHJpZXMgYXJlIG1pc3NpbmcgZnJvbSB0aGUgcGF0Y2hlcywKPiBidXMtd2lkdGggYW5kIHBp
bmN0cmwgc2hvdWxkIGJlIGRlZmluZWQgaW4gdGhlIHNhbWUgZmlsZSBlYWNoIHRpbWUsCj4gYnV0
IGZvciB0aGUgd2hvbGUgaWRlYSBJIHRlbmQgdG8gZGlzYWdyZWUuCj4KPiBTbyBmYXIgZXZlcnkg
Ym9hcmQgd2l0aCBhIFJvY2tjaGlwIHNvY3MgZm9sbG93cyBSb2NrY2hpcCdzIHJlZmVyZW5jZSBk
ZXNpZ24KPiBmb3IgYSBsb3Qgb2YgcGFydHMgLSBmb3IgZXhhbXBsZSBJIG9ubHkgc2VlIHNkbW1j
IG5vZGVzIHdpdGggYnVzLXdpZHRoPTQKPiBldGMuCj4KPiBTbyB0aGUgYmFzaWMgaWRlYSBpcyB0
byBoYXZlIGRlZmF1bHQgcGluY3RybCBzZXR0aW5ncyBmb3IgdGhlIHNldHRpbmdzCj4gZXZlcnli
b2R5IHVzZXMgcHJlZGVmaW5lZCAuLi4gaWYgYSBib2FyZCBjb21lcyBhbG9uZyB0aGF0IG5lZWRz
IGRpZmZlcmVudAo+IHNldHRpbmdzIGl0IGlzIGZyZWUgdG8gcmVkZWZpbmUgdGhhdC4KCkkgdGhp
bmsgaGF2aW5nIGEgZGVmYXVsdCBpcyBhIGdyZWF0IGlkZWEuIDopCgpDaGVuWXUKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
