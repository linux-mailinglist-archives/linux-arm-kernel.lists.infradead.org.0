Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C641610A843
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 02:58:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RQYfursDPdJx1ShUO6TgrqkOCHCNbG1uKSgzEb2BjQ=; b=AtOoS2yPfhaS77
	IDSVt5VieFZP+Ugqvglq0yeN+hu1T57LHUvEdCBNwb1dRs4co700ZtYhFOlqZQTkaRhgMNxVMb8wa
	LCNC0crz7QulH6fzUE3Qi4LvwRrbsFV7d1+Oe4M7A5EeysNFdBbV+Onsil8g4bCld9W+V7IsDP8se
	TxAJRaEN+iwKVafAByc93jT2kPqbLJz6HIZC/dbeBXORrLtEfcyooLwYIZaam37yCMdyEjX0ccVCL
	pluYqKm1G+JfzL61bJOiApG0R6CQp+p2oZQyvQ3EL/zjkkX2JeEChqQaT4/h2BGF42Whf7J/rr2jf
	C1/O5gUVr3++1y4haQuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZmb8-0003wx-DI; Wed, 27 Nov 2019 01:58:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZmaw-0003wE-GV
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 01:58:19 +0000
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9612020835
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 01:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574819897;
 bh=yUbAjVfl4t6YJAMVRmQUHJSbU7woRgvSxyinA20eFYM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0ZNGcffCJymTkmD+GCOqe68NqvcHxx9oTOOiXzNOkx1yaNP67r6T4TeXgp02Ewifv
 HxjD97jqQqE1rS31Nh2HR41UdfBARkHMMQ1Msg0KzDdgc4Ehm1RHF7rYyLKZVjo6c1
 UepOkE+88NNcDcV0vn96sTXFYJVTPm5PAkcJtTXI=
Received: by mail-lf1-f42.google.com with SMTP id a17so15717740lfi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 17:58:17 -0800 (PST)
X-Gm-Message-State: APjAAAU0G89c0XIE4ioRJPu06VMMhHU7A+sBurImki0ASB+utZd96D6M
 MllbyPyBTf0woJ5pcJRv/N7Zz0C1ei4SYnvh/48=
X-Google-Smtp-Source: APXvYqwqQ/PbVuU9oIO70cIYil2g5zlwFyjYkXkGME8+qAz9dLFuBuYWwtL8567qd0a3L5qbl7PDHSoong7wifBfy60=
X-Received: by 2002:a19:7510:: with SMTP id y16mr26681496lfe.24.1574819895739; 
 Tue, 26 Nov 2019 17:58:15 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191121072643epcas2p452071a503725c7764acf5084d24425b1@epcas2p4.samsung.com>
 <001001d5a03d$05de1f70$119a5e50$@samsung.com>
 <CAJKOXPckbRowhCmnJfT8-DT3gYaTpDOf0wVxmxdf-tZpOyM5ew@mail.gmail.com>
 <028901d5a3f6$e2d72310$a8856930$@samsung.com>
 <CAJKOXPdy=oxkwspt3CpF-qV5XRPMKrupMOpbWXJT3e7trqvXkw@mail.gmail.com>
In-Reply-To: <CAJKOXPdy=oxkwspt3CpF-qV5XRPMKrupMOpbWXJT3e7trqvXkw@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 27 Nov 2019 09:58:04 +0800
X-Gmail-Original-Message-ID: <CAJKOXPdDYv2McfMPabmTkhDFFL-68yHqcOOTCw75=+HpCRRHMg@mail.gmail.com>
Message-ID: <CAJKOXPdDYv2McfMPabmTkhDFFL-68yHqcOOTCw75=+HpCRRHMg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: samsung: modularize samsung pinctrl driver
To: Hyunki Koo <hyunki00.koo@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_175818_571432_3E12AF8A 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linus.walleij@linaro.org, Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-gpio@vger.kernel.org, s.nawrocki@samsung.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyNiBOb3YgMjAxOSBhdCAxNDowOSwgS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0Br
ZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgMjYgTm92IDIwMTkgYXQgMDk6MTQsIEh5dW5r
aSBLb28gPGh5dW5raTAwLmtvb0BzYW1zdW5nLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gVGh1LCAy
MSBOb3YgMjAxOSBhdCAxNjozOCwgS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3Jn
PiB3cm90ZToKPiA+ID4gSGksCj4gPiA+Cj4gPiA+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLiBGZXcg
Y29tbWVudHMgYmVsb3c6Cj4gPiA+Cj4gPiA+IE9uIFRodSwgMjEgTm92IDIwMTkgYXQgMTU6MjYs
IOq1rO2YhOq4sCA8aHl1bmtpMDAua29vQHNhbXN1bmcuY29tPiB3cm90ZToKPiA+ID4+Cj4gPiA+
PiBFbmFibGUgc2Ftc3VuZyBwaW5jdHJsIGRyaXZlciB0byBiZSBjb21waWxlZCBhcyBtb2R1bGVz
Lgo+ID4gPgo+ID4gPiBXaHk/IFdoYXQncyB0aGUgYmVuZWZpdD8gQXJlIHBsYXRmb3JtcyBjYXBh
YmxlIG9mIHN1Y2ggYm9vdD8gUGluY3RybCBpcyBuZWVkZWQgZWFybHkgLSBldmVuIGJlZm9yZSBt
b3VudGluZyByb290ZnMuLi4KPiA+ID4gV2hhdCBhYm91dCBtb2R1bGUgdW5sb2FkaW5nPyBJcyBp
dCByZWFzb25hYmxlPwo+ID4gPiBQbGVhc2UgYW5zd2VyIHRvIGFsbCB0aGlzIGFsc28gaW4gY29t
bWl0IG1lc3NhZ2UuCj4gPiA+Cj4gPgo+ID4gU29ycnkgdG8gbGF0ZSBhbmQgVGhhbmsgeW91IGZv
ciB5b3VyIGNvbW1lbnQsIEkgd291bGQgbGlrZSB0byBhcHBseSBHS0kgb24gdGhlIHBpbmN0cmwg
ZHJpdmVyCj4gPiBTbyBJIHdvdWxkIGxpa2UgdG8gY3V0IG9mZiBkZXBlbmRlbmN5IGZyb20gQVJD
SF9FWFlOT1MuCj4KPiBUaGlzIGlzIGRyaXZlciBmb3IgRXh5bm9zIGFuZCBTM0Mgc28gd2h5IGN1
dHRpbmcgb2ZmIHRoZSBkZXBlbmRlbmN5PyBJCj4gbWVhbiwgd2FpdCwgaXQgaXMgYSBkcml2ZXIg
Zm9yIEV4eW5vcyBzbyBpdCBjYW5ub3Qgd29yayBvbiBvdGhlcgo+IGJvYXJkcy4uLgoKT25lIG1v
cmUgdGhvdWdodCBhYm91dCBHZW5lcmljIEtlcm5lbCBJbWFnZSBmb3IgQW5kcm9pZC4gSXQgaW1w
bGllcwp0aGF0IHZlbmRvciBzdHVmZiB3aWxsIGJlIGluIG1vZHVsZXMuLi4gYnV0IG9ubHkgZm9y
IG91dC1vZi10cmVlIGNvZGUuClRoZSBFeHlub3MgcGluY3RybCBkcml2ZXIgaXMgYWxyZWFkeSBp
biBtYWlubGluZSBzbyBtb3ZpbmcgaXQgaW50bwptb2R1bGUgaXMgbm90IG5lY2Vzc2FyeS4KCkFz
IGZvciBkZXBlbmRlbmN5IG9uIEFSQ0hfRVhZTk9TIC0gSSBkbyBub3QgZ2V0IHdoeSB0aGlzIGlz
IGEgcHJvYmxlbS4KQVJDSF9FWFlOT1MgaXMgbXVsdGlwbGF0Zm9ybSByZWFkeSBzbyB5b3UgY2Fu
IGJvb3QgbXVsdGlfdjcuLi4gV2hhdAp3b3VsZCBiZSB0aGUgYmVuZWZpdCBvZiByZW1vdmluZyB0
aGlzIGRlcGVuZGVuY3k/CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
