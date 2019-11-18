Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFFB100903
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 17:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYXLFeppS+HRYvG4FBrp9aE9SRKIOi6Dk2haN+nzfKQ=; b=WgmAm8XHrm8pli
	Pv4TnPCi0pMty2a9utH+B0UcUn1YwR+2BwA3FiXuPvXngCvB+hSnM90Fvz6oZY1RVGj9FolOeVLBz
	5/c+u1IdNLlhqWur2BWOJb4ys6M9jg+jh73I8ISKaKHcBiX/axB1R7qLuwBSBkJB0yXdbjET8VxJ1
	WFji28NUSnjYilnB4RNKmfG+iQCuK5lpy7Xa5M0BDgcfd8fOhU4TvfeESHnzH4mSgfm17cWmhu9+4
	kXd7EVhpVxIFNehhaSkYzI74E94QMyY/ylWHarLe3QSK0vbGnrF2V266QC3JH8csYK8QO0EmZuojc
	WchuoSOvqJ50wGsK1+Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWjhs-00083l-MK; Mon, 18 Nov 2019 16:16:52 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWjhl-00083N-DG
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 16:16:47 +0000
Received: by mail-il1-x143.google.com with SMTP id s75so16526952ilc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 08:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vGDUmknBAHHgnUGD6G/YP0BMVQ+t0TVHx52Qz9PZmwY=;
 b=LcnAEJQfcR+16B5xAU1duNVJ5mC51SCgsYmRJoEQik6hAY9yeHjfDpdnU6mZX/7YZS
 5b7TwjIsbX/45vF5T4i3YutHXRm2eLAe3l1Zd/IRiYEOPrNzYd5CdZdYEiPHgb8YpspE
 uMlrBkxoaQht9bPslaYl+l5boo7gzXta3VnnY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vGDUmknBAHHgnUGD6G/YP0BMVQ+t0TVHx52Qz9PZmwY=;
 b=uGwg3D04JZ5lnRPrm6IdFUvL3Mlkaa4om9iQ2vdo4/G/QD5YUpobnL1JUoHknMmMom
 6Zg0ta0qVjrparZa4xCV6+qo9xwwMuMOoTm1J3p8u4HUUpSN3LfpScWpg7VP+cDL3rll
 Fsow0xIUi9noWb+n8OxFCJaYuqu/XbBhRSB+Xf9DGTwZF9CK2t9ZSkpHpdCYKJfcrG7O
 2vVKRYQc425K+mUIhi/AGaspHqDH2DpqrWyFVChUkd6mllxwioqBOWG8Sdq0senVlwTg
 AdqkFYj2s9UOSzLoPIzDbvxrlMkh9tXs9xgun/UQHK5WTHykPrapBFCNavd8KtGwm5Qu
 VDHg==
X-Gm-Message-State: APjAAAVpwiurfCYqkg8O3lNhiHxoQntxL52ISZrr91+T10EvAX0UAXdj
 0LG2SCYtd/QVpd4fZKa95Sq6zqLJ6mY=
X-Google-Smtp-Source: APXvYqy8eZrm2XJwL68+3Np+ZqIruKie9eiJVSHgAZmEhX0u/J9b3smcrlpj4Jp6xlo+hVB26+eRHA==
X-Received: by 2002:a92:db10:: with SMTP id b16mr17242245iln.1.1574093804395; 
 Mon, 18 Nov 2019 08:16:44 -0800 (PST)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com.
 [209.85.166.54])
 by smtp.gmail.com with ESMTPSA id v16sm2628026iot.77.2019.11.18.08.16.44
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Nov 2019 08:16:44 -0800 (PST)
Received: by mail-io1-f54.google.com with SMTP id k13so19384312ioa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 08:16:44 -0800 (PST)
X-Received: by 2002:a6b:a0c:: with SMTP id z12mr5762767ioi.142.1574093329092; 
 Mon, 18 Nov 2019 08:08:49 -0800 (PST)
MIME-Version: 1.0
References: <20190301153348.29870-1-christoph.muellner@theobroma-systems.com>
 <2766673.iMURPl8gB5@phil> <69472c06-8b21-c3d8-acad-1a0a292c0fa2@fivetechno.de>
 <3460135.SDF8zhHPq4@diego>
In-Reply-To: <3460135.SDF8zhHPq4@diego>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 18 Nov 2019 08:08:37 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VnjyQJpRcW6P1f4+ZrSOzAe2Cnoej=it4aCz+F_ozukw@mail.gmail.com>
Message-ID: <CAD=FV=VnjyQJpRcW6P1f4+ZrSOzAe2Cnoej=it4aCz+F_ozukw@mail.gmail.com>
Subject: Re: arm64: dts: rockchip: Disable HS400 for mmc on rk3399-roc-pc
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_081645_477137_F2082D23 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Brian Norris <briannorris@chromium.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Vicente Bergas <vicencb@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Markus Reichl <m.reichl@fivetechno.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tony Xie <tony.xie@rock-chips.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Randy Li <ayaka@soulik.info>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgoKT24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMzoxOSBBTSBIZWlrbyBTdMO8Ym5lciA8aGVp
a29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEhpIE1hcmt1cywKPgo+IEFtIEZyZWl0YWcsIDE1LiBO
b3ZlbWJlciAyMDE5LCAxMTozNzo1OCBDRVQgc2NocmllYiBNYXJrdXMgUmVpY2hsOgo+ID4gQW0g
MTQuMTEuMTkgdW0gMTQ6MTAgc2NocmllYiBIZWlrbyBTdHVlYm5lcjoKPiA+ID4gJHN1YmplY3Qg
aXMgbWlzc2luZyB0aGUgW1BBVENIXSBwcmVmaXgKPiA+IHdpbGwgZml4Lgo+Cj4gbm8gbmVlZCB0
byByZXNlbmQganVzdCBmb3IgdGhpcyAuLi4ganVzdCB0byBrZWVwIGluIG1pbmQgZm9yIGZ1dHVy
ZSBwYXRjaGVzIDstKQo+Cj4KPiA+ID4gQW0gTW9udGFnLCAxMS4gTm92ZW1iZXIgMjAxOSwgMTA6
NTE6MDQgQ0VUIHNjaHJpZWIgTWFya3VzIFJlaWNobDoKPiA+ID4+IFdvcmtpbmcgd2l0aCByb290
ZnMgb24gdHdvIDEyOEdCIG1tY3Mgb24gcmszMzk5LXJvYy1wYy4KPiA+ID4+Cj4gPiA+PiBPbmUg
KG1tYyBuYW1lIDEyOEc3Miwgb25lIHNjcmV3IGhvbGUpIHdvcmtzIGZpbmUgaW4gSFM0MDAgbW9k
ZS4KPiA+ID4+IE90aGVyIChtbWMgbmFtZSBESk5CNFIsIGZpcmVmbHkgb24gcGNiLCB0d28gc2Ny
ZXcgaG9sZXMpIGdldHMgbG90cyBvZgo+ID4gPj4gbW1jMTogInJ1bm5pbmcgQ1FFIHJlY292ZXJ5
IiwgZXZlbiBoYW5ncyB3aXRoIGRhbWFnZWQgZnMsCj4gPiA+PiB3aGVuIHJ1bm5pbmcgdW5kZXIg
aGVhdnkgbG9hZCwgZS5nLiBjb21waWxpbmcga2VybmVsLgo+ID4gPj4gQm90aCBydW4gZmluZSB3
aXRoIEhTMjAwLgo+ID4gPj4KPiA+ID4+IERpc2FibGluZyBDUSB3aXRoIHBhdGNoIG1tYzogY29y
ZTogQWRkIE1NQyBDb21tYW5kIFF1ZXVlIFN1cHBvcnQga2VybmVsIHBhcmFtZXRlciBbMF0gZGlk
IG5vdCBoZWxwLgo+ID4gPj4gWzBdIGh0dHBzOi8vZ2l0bGFiLmNvbS9heXVmYW4tcmVwb3Mvcm9j
azY0L2xpbnV4LW1haW5saW5lLWtlcm5lbC9jb21taXQvNTRlMjY0MTU0Yjg3ZGZlMzJhODM1OWIy
NzI2ZTJkNTYxMWFkYmFmMwo+ID4gPgo+ID4gPiBJJ20gaG9waW5nIGZvciBzb21lIGlucHV0IGZy
b20gb3RoZXIgcGVvcGxlIGluIENjIGJ1dCB5b3VyIG1haWwgaGVhZGVycwo+ID4gPiBhbHNvIHJl
ZmVyZW5jZWQgdGhlIGRyaXZlLWltcGVuZGFuY2Ugc2VyaWVzIGZyb20gQ2hyaXN0b3BoIFswXSwg
d2hpY2gKPiA+ID4gaXQgc2VlbXMgd2UgbmVlZCB0byBwb2tlIHRoZSBwaHkgbWFpbnRhaW5lciBh
Z2Fpbi4KPiA+ID4KPiA+ID4gRGlkIHlvdSBjaGVjayBpZiBjaGFuZ2luZyB0aGUgaW1wZWRhbmNl
IGhlbHBlZCAobGlrZSB0aGUgc2lnbmFsIGRhbXBlbmluZwo+ID4gPiBQaGlsaXBwIGRlc2NyaWJl
ZCBpbiBvbmUgb2YgdGhlIHJlcGxpZXMgdGhlcmUpLgo+ID4KPiA+IGNoZWNrZWQgd2l0aAo+ID4K
PiA+ICZlbW1jX3BoeSB7Cj4gPiArICAgICAgIGRyaXZlLWltcGVkYW5jZS1vaG0gPSA8MzM+Owo+
ID4KPiA+IGdpdmVzIG5vIGltcHJvdmVtZW50Ogo+Cj4gVGhhdCBpcyBzYWQgLi4uIEkgZ3Vlc3Mg
d2UgcmVhbGx5IHNob3VsZCBkaXNhYmxlIGhzNDAwIHRoZW4gLi4uCj4gdGhhdCBtYXkgZ2l2ZSBv
dGhlcnMgbW9yZSBpbmNlbnRpdmUgdG8gZGl2ZSBkZWVwZXIgOy0pCgpKdXN0IG91dCBvZiBjdXJp
b3NpdHksIGlzIHRoZSBwcm9ibGVtIHdpdGggdGhlIHN0cm9iZSBsaW5lLCBvciB3aXRoCmhzNDAw
PyAgSGF2ZSB5b3UgdHJpZWQgdXNpbmcgdGhlIHNvbHV0aW9uIGZyb20gInJrMzM5OS1ncnUuZHRz
aSI/Ck5hbWVseToKCiAgICAgICAgLyoKICAgICAgICAgKiBTaWduYWwgaW50ZWdyaXR5IGlzbid0
IGdyZWF0IGF0IDIwMCBNSHogYW5kIDE1MCBNSHogKEREUikgZ2l2ZXMgdGhlCiAgICAgICAgICog
c2FtZSAob3IgbmVhcmx5IHRoZSBzYW1lKSBwZXJmb3JtYW5jZSBmb3IgYWxsIGVNTUMgdGhhdCBh
cmUgaW50ZW5kZWQKICAgICAgICAgKiB0byBiZSB1c2VkLgogICAgICAgICAqLwogICAgICAgIGFz
c2lnbmVkLWNsb2NrLXJhdGVzID0gPDE1MDAwMDAwMD47CgpJSVJDIGhzNDAwIG9uIHJrMzM5OSB3
YXMgYSBiaXQgaWZmeSBidXQgcnVubmluZyBhdCAxNTAgTUh6IG1hZGUgaXQKbXVjaCBtb3JlIHJl
bGlhYmxlIGFuZCBzdGlsbCBnYXZlIHlvdSAzMDAgTUIvcyB0cmFuc2ZlciByYXRlIChzbyBtdWNo
CmJldHRlciB0aGFuIGhzMjAwKS4gIEluIHJlYWxpdHkgbWFueSBlTU1DIGNoaXBzIGNhbid0IGRv
ID4gMzAwIE1CL3MKYW55d2F5LgoKLURvdWcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
