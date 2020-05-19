Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42DB1D9A31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8A9zme1pNua+J5diqD38s+bUeuYXBbbMjpMUdwYVDE=; b=f6NlX9/1myDB6w
	Dufu2ZmUl5wy9FyvR8FdPsG+cyN9L4E6CdQdyRPI1+5TAvaJ8E7HhvadEH5dzGoZ5oJ7c48yCN+9j
	gnc83YduuMm+NywuyP1jlrEfwIErV362Pu3UfvngEx2mExfQigvT8CVx+ra9hejPADha/1D2Cek5k
	qpLjRaiM6PvPJk9TqVDsP/IlxumsRL/DqVVodpvwngXdgcdnP+tKVpNqlrYrHryKaMRnGx7n4hT8s
	P4KunbfXxeQiIpSU4KLAAXkTXJJ5IV/jOzNob/7hyM7H+RdgtwOXp/71YYTNrrTk3aj8KXdwxzRqz
	W+ljiRq21dDTVMyH+iOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3Qi-00022W-71; Tue, 19 May 2020 14:41:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3Hx-0006UV-RK
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 14:32:19 +0000
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E037B20825
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 14:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589898733;
 bh=1XXHRqjtt+WSYWwOg1XwbutxmoWaeM/OCUneB2tBKtc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tG/WI7qQXvcO60JsLcmZL5mhQU5vPQ0IHLJS4jcjTvZENfGM+Yvq4lzkb9/1+kaB2
 boc74Yf1/+FDphKy4BZbh1UpmI2oYLclKJ0DLY3pUBKKMzVY8sF5M70UUe+gmRCTVZ
 kREZZxHkz8TNNNsJCb35V4HGVab/CIMbYgd8Pzn0=
Received: by mail-io1-f42.google.com with SMTP id w25so14667541iol.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 07:32:12 -0700 (PDT)
X-Gm-Message-State: AOAM532HQRGEqMHYN6MeAZDLyNZ8IkPIXsjvDilfdS46f6elbi3miFKt
 THd5QunBhI/2aaBmR+34B6IkcGnHERkjPBKxcYk=
X-Google-Smtp-Source: ABdhPJxjyA1i44V17SV1ppXFEe39BzP/hHzIXIE8WLdS8tIhuMM1cTHG9CMqQhTXIWplXBdei1EfUxsbrT+5qpVkWgc=
X-Received: by 2002:a5d:898a:: with SMTP id m10mr18219593iol.203.1589898732296; 
 Tue, 19 May 2020 07:32:12 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200429082134eucas1p2415c5269202529e6b019f2d70c1b5572@eucas1p2.samsung.com>
 <20200429082120.16259-1-geert+renesas@glider.be>
 <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
 <CAMuHMdXxq6m6gebQbWvxDynDcZ7dLyZzKC_QroK63L8FGeac1Q@mail.gmail.com>
 <20200519094637.GZ1551@shell.armlinux.org.uk>
 <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
 <CAMj1kXH_s4qjDfTO03PkGNaiwfjmfkrZ-FE8vTm74QSrgoVt0A@mail.gmail.com>
 <20200519142854.GF1551@shell.armlinux.org.uk>
In-Reply-To: <20200519142854.GF1551@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 19 May 2020 16:32:01 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEk3Tkj2HQOhxPP3m7gMX7nAViJ7ZBU7XB0wUy2ceNuWw@mail.gmail.com>
Message-ID: <CAMj1kXEk3Tkj2HQOhxPP3m7gMX7nAViJ7ZBU7XB0wUy2ceNuWw@mail.gmail.com>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_073213_961033_1E3CC0A9 
X-CRM114-Status: GOOD (  38.44  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Grant Likely <grant.likely@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Lukasz Stelmach <l.stelmach@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxOSBNYXkgMjAyMCBhdCAxNjoyOSwgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFk
bWluCjxsaW51eEBhcm1saW51eC5vcmcudWs+IHdyb3RlOgo+Cj4gT24gVHVlLCBNYXkgMTksIDIw
MjAgYXQgMDM6NTY6NTlQTSArMDIwMCwgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cj4gPiBPbiBUdWUs
IDE5IE1heSAyMDIwIGF0IDEzOjIxLCBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02
OGsub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gSGkgUnVzc2VsbCwKPiA+ID4KPiA+ID4gQ0MgZGV2
aWNldHJlZQo+ID4gPgo+ID4gPiBPbiBUdWUsIE1heSAxOSwgMjAyMCBhdCAxMTo0NiBBTSBSdXNz
ZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4KPiA+ID4gPGxpbnV4QGFybWxpbnV4Lm9yZy51az4g
d3JvdGU6Cj4gPiA+ID4gT24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMTE6NDQ6MTdBTSArMDIwMCwg
R2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4gPiA+ID4gT24gVHVlLCBNYXkgMTksIDIwMjAg
YXQgMTA6NTQgQU0gTHVrYXN6IFN0ZWxtYWNoIDxsLnN0ZWxtYWNoQHNhbXN1bmcuY29tPiB3cm90
ZToKPiA+ID4gPiA+ID4gSXQgd2FzIDwyMDIwLTA0LTI5IMWbcm8gMTA6MjE+LCB3aGVuIEdlZXJ0
IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+ID4gPiA+ID4gPiBDdXJyZW50bHksIHRoZSBzdGFydCBh
ZGRyZXNzIG9mIHBoeXNpY2FsIG1lbW9yeSBpcyBvYnRhaW5lZCBieSBtYXNraW5nCj4gPiA+ID4g
PiA+ID4gdGhlIHByb2dyYW0gY291bnRlciB3aXRoIGEgZml4ZWQgbWFzayBvZiAweGY4MDAwMDAw
LiAgVGhpcyBtYXNrIHZhbHVlCj4gPiA+ID4gPiA+ID4gd2FzIGNob3NlbiBhcyBhIGJhbGFuY2Ug
YmV0d2VlbiB0aGUgcmVxdWlyZW1lbnRzIG9mIGRpZmZlcmVudCBwbGF0Zm9ybXMuCj4gPiA+ID4g
PiA+ID4gSG93ZXZlciwgdGhpcyBkb2VzIHJlcXVpcmUgdGhhdCB0aGUgc3RhcnQgYWRkcmVzcyBv
ZiBwaHlzaWNhbCBtZW1vcnkgaXMKPiA+ID4gPiA+ID4gPiBhIG11bHRpcGxlIG9mIDEyOCBNaUIs
IHByZWNsdWRpbmcgYm9vdGluZyBMaW51eCBvbiBwbGF0Zm9ybXMgd2hlcmUgdGhpcwo+ID4gPiA+
ID4gPiA+IHJlcXVpcmVtZW50IGlzIG5vdCBmdWxmaWxsZWQuCj4gPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gPiBGaXggdGhpcyBsaW1pdGF0aW9uIGJ5IG9idGFpbmluZyB0aGUgc3RhcnQgYWRkcmVz
cyBmcm9tIHRoZSBEVEIgaW5zdGVhZCwKPiA+ID4gPiA+ID4gPiBpZiBhdmFpbGFibGUgKGVpdGhl
ciBleHBsaWNpdGx5IHBhc3NlZCwgb3IgYXBwZW5kZWQgdG8gdGhlIGtlcm5lbCkuCj4gPiA+ID4g
PiA+ID4gRmFsbCBiYWNrIHRvIHRoZSB0cmFkaXRpb25hbCBtZXRob2Qgd2hlbiBuZWVkZWQuCj4g
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBUaGlzIGFsbG93cyB0byBib290IExpbnV4IG9uIHI3
czkyMTAvcnphMm1ldmIgdXNpbmcgdGhlIDY0IE1pQiBvZiBTRFJBTQo+ID4gPiA+ID4gPiA+IG9u
IHRoZSBSWkEyTUVWQiBzdWIgYm9hcmQsIHdoaWNoIGlzIGxvY2F0ZWQgYXQgMHgwQzAwMDAwMCAo
Q1MzIHNwYWNlKSwKPiA+ID4gPiA+ID4gPiBpLmUuIG5vdCBhdCBhIG11bHRpcGxlIG9mIDEyOCBN
aUIuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBTdWdnZXN0ZWQtYnk6IE5pY29sYXMgUGl0
cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4gPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogR2VlcnQg
VXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiA+ID4gPiA+ID4gPiBSZXZp
ZXdlZC1ieTogTmljb2xhcyBQaXRyZSA8bmljb0BmbHV4bmljLm5ldD4KPiA+ID4gPiA+ID4gPiBS
ZXZpZXdlZC1ieTogQXJkIEJpZXNoZXV2ZWwgPGFyZGJAa2VybmVsLm9yZz4KPiA+ID4gPiA+ID4g
PiBUZXN0ZWQtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4K
PiA+ID4gPiA+ID4gPiBUZXN0ZWQtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNv
bT4KPiA+ID4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gWy4uLl0KPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gQXBwYXJlbnRseSByZWFkaW5nIHBoeXNpY2FsIG1lbW9yeSBsYXlv
dXQgZnJvbSBEVEIgYnJlYWtzIGNyYXNoZHVtcAo+ID4gPiA+ID4gPiBrZXJuZWxzLiBBIGNyYXNo
ZHVtcCBrZXJuZWwgaXMgbG9hZGVkIGludG8gYSByZWdpb24gb2YgbWVtb3J5LCB0aGF0IGlzCj4g
PiA+ID4gPiA+IHJlc2VydmVkIGluIHRoZSBvcmlnaW5hbCAoaS5lLiB0byBiZSBjcmFzaGVkKSBr
ZXJuZWwuIFRoZSByZXNlcnZlZAo+ID4gPiA+ID4gPiByZWdpb24gaXMgbGFyZ2UgZW5vdWdoIGZv
ciB0aGUgY3Jhc2hkdW1wIGtlcm5lbCB0byBydW4gY29tcGxldGVseSBpbnNpZGUKPiA+ID4gPiA+
ID4gaXQgYW5kIGRvbid0IG1vZGlmeSBhbnl0aGluZyBvdXRzaWRlIGl0LCBqdXN0IHJlYWQgYW5k
IGR1bXAgdGhlIHJlbWFpbnMKPiA+ID4gPiA+ID4gb2YgdGhlIGNyYXNoZWQga2VybmVsLiBVc2lu
ZyB0aGUgaW5mb3JtYXRpb24gZnJvbSBEVEIgbWFrZXMgdGhlCj4gPiA+ID4gPiA+IGRlY29tcHJl
c3NvciBwbGFjZSB0aGUga2VybmVsIG91dHNpZGUgb2YgdGhlIGRlZGljYXRlZCByZWdpb24uCj4g
PiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFRoZSBsb2cgYmVsb3cgc2hvd3MgdGhhdCBhIHpJbWFnZSBh
bmQgRFRCIGFyZSBsb2FkZWQgYXQgMHgxOGViODAwMCBhbmQKPiA+ID4gPiA+ID4gMHgxOTNmNjAw
MCAocGh5c2ljYWwpLiBUaGUga2VybmVsIGlzIGV4cGVjdGVkIHRvIHJ1biBhdCAweDE4MDA4MDAw
LCBidXQKPiA+ID4gPiA+ID4gaXQgaXMgZGVjb21wcmVzc2VkIHRvIDB4MDAwMDgwMDAgKHNlZSBy
NCByZXBvcnRlZCBiZWZvcmUganVtcGluZyBmcm9tCj4gPiA+ID4gPiA+IHdpdGhpbiBfX2VudGVy
X2tlcm5lbCkuIElmIEkgd2VyZSB0byBzdWdnZXN0IHNvbWV0aGluZywgdGhlcmUgbmVlZCB0byBi
ZQo+ID4gPiA+ID4gPiBvbmUgbW9yZSBiaXQgb2YgaW5mb3JtYXRpb24gcGFzc2VkIGluIHRoZSBE
VEIgdGVsbGluZyB0aGUgZGVjb21wcmVzc29yCj4gPiA+ID4gPiA+IHRvIHVzZSB0aGUgb2xkIG1h
c2tpbmcgdGVjaG5pcXVlIHRvIGRldGVybWFpbiBrZXJuZWwgYWRkcmVzcy4gSXQgd291bGQKPiA+
ID4gPiA+ID4gYmUgc2V0IGluIHRoZSBEVEIgbG9hZGVkIGFsb25nIHdpdGggdGhlIGNyYXNoZHVt
cCBrZXJuZWwuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2hvdWxkbid0IHRoZSBEVEIgcGFzc2VkIHRv
IHRoZSBjcmFzaGtlcm5lbCBkZXNjcmliZSB3aGljaCByZWdpb24gb2YKPiA+ID4gPiA+IG1lbW9y
eSBpcyB0byBiZSB1c2VkIGluc3RlYWQ/Cj4gPiA+ID4KPiA+ID4gPiBEZWZpbml0ZWx5IG5vdC4g
IFRoZSBjcmFzaGtlcm5lbCBuZWVkcyB0byBrbm93IHdoZXJlIHRoZSBSQU0gaW4gdGhlCj4gPiA+
ID4gbWFjaGluZSBpcywgc28gdGhhdCBpdCBjYW4gY3JlYXRlIGEgY29yZWR1bXAgb2YgdGhlIGNy
YXNoZWQga2VybmVsLgo+ID4gPgo+ID4gPiBTbyB0aGUgRFRCIHNob3VsZCBkZXNjcmliZSBib3Ro
IDstKQo+ID4gPgo+ID4gPiA+ID4gRGVzY3JpYmluZyAidG8gdXNlIHRoZSBvbGQgbWFza2luZyB0
ZWNobmlxdWUiIHNvdW5kcyBhIGJpdCBoYWNraXNoIHRvIG1lLgo+ID4gPiA+ID4gSSBndWVzcyBp
dCBjYW5ub3QganVzdCByZXN0cmljdCB0aGUgL21lbW9yeSBub2RlIHRvIHRoZSByZXNlcnZlZCBy
ZWdpb24sCj4gPiA+ID4gPiBhcyB0aGUgY3Jhc2hrZXJuZWwgbmVlZHMgdG8gYmUgYWJsZSB0byBk
dW1wIHRoZSByZW1haW5zIG9mIHRoZSBjcmFzaGVkCj4gPiA+ID4gPiBrZXJuZWwsIHdoaWNoIGxp
ZSBvdXRzaWRlIHRoaXMgcmVnaW9uLgo+ID4gPiA+Cj4gPiA+ID4gQ29ycmVjdC4KPiA+ID4gPgo+
ID4gPiA+ID4gSG93ZXZlciwgc29tZXRoaW5nIHVuZGVyIC9jaG9zZW4gc2hvdWxkIHdvcmsuCj4g
PiA+ID4KPiA+ID4gPiBZZXQgYW5vdGhlciBzdGlja3kgcGxhc3Rlci4uLgo+ID4gPgo+ID4gPiBJ
TUhPIHRoZSBvbGQgbWFza2luZyB0ZWNobmlxdWUgaXMgdGhlIGhhY2t5IHNvbHV0aW9uIGNvdmVy
ZWQgYnkKPiA+ID4gcGxhc3RlcnMuCj4gPiA+Cj4gPgo+ID4gSSB0aGluayBkZWJhdGluZyB3aGlj
aCBzb2x1dGlvbiBpcyB0aGUgaGFja3kgb25lIHdpbGwgbm90IGdldCB1cyBhbnl3aGVyZS4KPiA+
Cj4gPiBUaGUgc2ltcGxlIHJlYWxpdHkgaXMgdGhhdCB0aGUgZXhpc3Rpbmcgc29sdXRpb24gd29y
a3MgZmluZSBmb3IKPiA+IGV4aXN0aW5nIHBsYXRmb3JtcywgYW5kIHNvIGFueSBjaGFuZ2VzIGlu
IHRoZSBsb2dpYyB3aWxsIGhhdmUgdG8gYmUKPiA+IG9wdC1pbiBpbiBvbmUgd2F5IG9yIHRoZSBv
dGhlci4KPiA+Cj4gPiBTaW5jZSBVLWJvb3Qgc3VwcG9ydHMgRUZJIGJvb3QgdGhlc2UgZGF5cywg
b25lIHBvdGVudGlhbCBvcHRpb24gaXMgdG8KPiA+IHJlbHkgb24gdGhhdC4gSSBoYXZlIHNvbWUg
Y2hhbmdlcyBpbXBsZW1lbnRpbmcgdGhpcyB0aGF0IGdvIG9uIHRvcCBvZgo+ID4gdGhpcyBwYXRj
aCwgYnV0IHRoZXkgZG9uJ3QgYWN0dWFsbHkgcmVseSBvbiBpdCAtIGl0IHdhcyBqdXN0IHRvCj4g
PiBwcmV2ZW50IGxleGljYWwgY29uZmxpY3RzLgo+ID4KPiA+IFRoZSBvbmx5IHJlbWFpbmluZyBv
cHRpb25zIGltbyBhcmUgYSBrZXJuZWwgY29tbWFuZCBsaW5lIG9wdGlvbiwgb3IgYQo+ID4gRFQg
cHJvcGVydHkgdGhhdCB0ZWxscyB0aGUgZGVjb21wcmVzc29yIHRvIGxvb2sgYXQgdGhlIG1lbW9y
eSBub2Rlcy4KPiA+IEJ1dCB1c2luZyB0aGUgRFQgbWVtb3J5IG5vZGVzIG9uIGFsbCBwbGF0Zm9y
bXMgbGlrZSB0aGlzIHBhdGNoIGRvZXMgaXMKPiA+IG9idmlvdXNseSBqdXN0IHRvbyByaXNreS4K
PiA+Cj4gPiBPbiBhbm90aGVyIG5vdGUsIEkgZG8gdGhpbmsgdGhlIHVzYWJsZS1tZW1vcnktcmVn
aW9uIHByb3BlcnR5IHNob3VsZAo+ID4gYmUgaW1wbGVtZW50ZWQgZm9yIEFSTSBhcyB3ZWxsIC0g
cmVseWluZyBvbiB0aGlzIHJvdW5kaW5nIHRvIGVuc3VyZQo+ID4gdGhhdCB0aGUgZGVjb21wcmVz
c29yIGRvZXMgdGhlIHJpZ2h0IHRoaW5nIGlzIHRvbyBmcmFnaWxlLgo+Cj4gV2hhdCBpcyAidG9v
IGZyYWdpbGUiIGlzIHRyeWluZyB0byBjaGFuZ2UgdGhpcyBhbmQgZXhwZWN0aW5nIGV2ZXJ5dGhp
bmcKPiB0byBjb250aW51ZSB3b3JraW5nIGFzIGl0IGRpZCBiZWZvcmUuCj4KClRoYXQgaXMgbXkg
cG9pbnQuCgo+IEhvdyB3aWxsIHN3aXRjaGluZyB0byBFRkkgaGVscD8gIFdvbid0IHRoZSBjcmFz
aGR1bXAga2VybmVsIGRldGVjdCBFRkkKPiBhbmQgdHJ5IHRvIGdldCB0aGUgbWVtb3J5IG1hcCBm
cm9tIEVGSSwgd2hlcmVieSBpdCBydW5zIGludG8gZXhhY3RseQo+IHRoZSBzYW1lIGlzc3VlIHRo
YXQgdGhlIERUIGFwcHJvYWNoIGRvZXM/Cj4KCk5vLiBJZiB5b3UgYm9vdCBmcm9tIGtleGVjLCB0
aGVuIHRoZSBFRkkgc3R1YiBpcyBjb21wbGV0ZWx5CmNpcmN1bXZlbnRlZCwgYW5kIHRoaW5ncyB3
b3JrIGFzIGJlZm9yZS4KCj4gVGhlIGN1cnJlbnQgY3Jhc2hrZXJuZWwgc2l0dWF0aW9uIHdvcmtz
IHByZWNpc2VseSBiZWNhdXNlIG9mIHRoZSAxMjhNCj4gbWFza2luZyB0aGF0IGlzIGJlaW5nIGRv
bmUuCj4KCkluZGVlZC4gVGhhdCBpcyBwcmVjaXNlbHkgbXkgcG9pbnQuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
