Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9C186443
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 16:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyb96rv+osaF1JYdlXKK+XgDCe643TEYvez0tb/k3bg=; b=OA+H2JwvT6bLnX
	1GjWRMRyRgI5TE/u2OPRAsCIyBVCZ5tyBMM/BGvGRHSLQktBl//9694y+6FECBblPiEc4BoseaSFa
	9MbdJ/FfSe6oMZO6PqWvIwTWXT0sDrmJTxhLGuG3nVk2nOuDHORKSIDvUJ1dytB29ttWZLqwV/Wwj
	VcNSLA/a/oIEI7EwlxDS7O8fzDUx0L/XmooDYhqdRWPu3EXzoAVk9qgMrOuDlsVVXp91cb+4az1E5
	xR0hLiiPya2jflaWdWqmXgNHd2ag94YGNSsu/PsBnM2UYq1nFKsMdKmcOTtVMPQCbRuIf8gGAcMRy
	llEvJue+5MTYVjtp6x8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvjLL-0004DH-7i; Thu, 08 Aug 2019 14:24:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvjL6-0004Cl-Lx; Thu, 08 Aug 2019 14:24:26 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BC5B2171F;
 Thu,  8 Aug 2019 14:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565274264;
 bh=GbxGK/XeU8Jq3BsD5vAhpYB5spmsW6zGX1dwrpsE5t4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aoIa7iW+xO03864JPGOTaZ0uKpmXzd9TyBhnV4ccOITEc6lK3zCzzIcNr094IVknO
 SQuc+rxdvYL1EOfaPJXKSJQIOp+iewyyYbOTwhFMc30yuSsfvlmlM4ZcjM9ygpk39e
 HVHroC/rC1LdgrNSETv7fVg+s4eQqHJ65iKv9yak=
Received: by mail-qt1-f169.google.com with SMTP id n11so92291706qtl.5;
 Thu, 08 Aug 2019 07:24:24 -0700 (PDT)
X-Gm-Message-State: APjAAAUeP7ByXmntBQU2Ew8Pj3IAEn2iO0d0K2vYVCT81QebiSTQizxx
 JLA+mZ+wRP4iBsZYPVQr3saTbohqBvZ1wdlrWQ==
X-Google-Smtp-Source: APXvYqye2r+EAqTd1bwyViP0nnseaD8L/QzN64cUXepyshuKkd3QHF+cGD87GSZVBbS9vKtfQnvvObZlYmsjxVhLY5U=
X-Received: by 2002:ac8:23b3:: with SMTP id q48mr3395933qtq.110.1565274263456; 
 Thu, 08 Aug 2019 07:24:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190805124037.10597-1-andyshrk@gmail.com>
 <CAL_JsqJ6_J1pR-MYK5kmUN5Q+tX32UNFqLW81tmBf=pYxtAmjg@mail.gmail.com>
 <CANbgqATvVSo_D-n_mW2hK2KEK_8cs3374ddB6C8GcZZwjMSoRQ@mail.gmail.com>
In-Reply-To: <CANbgqATvVSo_D-n_mW2hK2KEK_8cs3374ddB6C8GcZZwjMSoRQ@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 8 Aug 2019 08:24:12 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+1KVVube322GZXetVWdthrtWG=QiOTSnUg5aLbXjBuWg@mail.gmail.com>
Message-ID: <CAL_Jsq+1KVVube322GZXetVWdthrtWG=QiOTSnUg5aLbXjBuWg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add dts for Leez RK3399 P710 SBC
To: Andy Yan <andyshrk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_072424_743944_5CE91F38 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgNywgMjAxOSBhdCAxMjoxNCBBTSBBbmR5IFlhbiA8YW5keXNocmtAZ21haWwu
Y29tPiB3cm90ZToKPgo+IEhpIFJvYjoKPgo+IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5v
cmc+IOS6jjIwMTnlubQ45pyINuaXpeWRqOS6jCDkuIvljYgxMDo0OOWGmemBk++8mgo+Pgo+PiBP
biBNb24sIEF1ZyA1LCAyMDE5IGF0IDY6NDAgQU0gQW5keSBZYW4gPGFuZHlzaHJrQGdtYWlsLmNv
bT4gd3JvdGU6Cj4+ID4KPj4gPiBQNzEwIGlzIGEgUkszMzk5IGJhc2VkIFNCQywgZGVzaWduZWQg
YnkgTGVleiBbMF0uCj4+ID4KPj4gPiBTcGVjaWZpY2F0aW9uCj4+ID4gLSBSb2NrY2hpcCBSSzMz
OTkKPj4gPiAtIDQvMkdCIExQRERSNAo+PiA+IC0gVEYgc2Qgc2NhcmQgc2xvdAo+PiA+IC0gZU1N
Qwo+PiA+IC0gTS4yIEItS2V5IGZvciA0RyBMVEUKPj4gPiAtIEFQNjI1NiBmb3IgV2lGaSArIEJU
Cj4+ID4gLSBHaWdhYml0IGV0aGVybmV0Cj4+ID4gLSBIRE1JIG91dAo+PiA+IC0gNDAgcGluIGhl
YWRlcgo+PiA+IC0gVVNCIDIuMCB4IDIKPj4gPiAtIFVTQiAzLjAgeCAxCj4+ID4gLSBVU0IgMy4w
IFR5cGUtQyB4IDEKPj4gPiAtIFRZUEUtQyBQb3dlciBzdXBwbHkKPj4gPgo+PiA+IFswXWh0dHBz
Oi8vbGVlei5sZW5vdm8uY29tCj4+Cj4+IEknbSBub3QgcmVhbGx5IGNvbnZpbmNlZCBMZWV6IGlz
IGEgdmVuZG9yLiBMb29rcyBsaWtlIGJyYW5kaW5nIHRvIG1lLgo+PiBXZSBoYXZlIGVub3VnaCB3
aXRoIGNvbXBhbnkgbmFtZXMgY2hhbmdpbmcsIHdlIGRvbid0IG5lZWQgY2hhbmdpbmcKPj4gYnJh
bmRzIHRvby4gVXNlICdsZW5vdm8nLgo+Pgo+Cj4gSSBoYWQgY2hlY2tlZCB3aXRoIExlZXogcGVv
cGxlIGJlZm9yZSBWMSwgdGhleSBzYWlkIExlZXogd2lsbCBydW4gYXMgYW4gaW5kZXBlbmRlbnQg
Y29tcGFueSwgc28gdGhleSBkb24ndCB3YW50IHRvCj4gZ2l2ZSBhIGxlbm92byBsYWJlbCBmb3Ig
dGhpcyBib2FyZC4KCk9rYXkuCgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
