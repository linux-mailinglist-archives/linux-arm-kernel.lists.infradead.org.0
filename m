Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285FA18C9A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGGm3RGKZ6EbjJmiATQlQrhVMXaIJvUQqHIepOrGsss=; b=pcyP91dzzwslhC
	IZr6MGrNBDGD4o4bWu8Vq4VlJXgoONDXb0Fjc9KEjbYwFGRBt8rZNGaEmGhEv7pu9ri9xzmCKD3Kp
	KKsMdjQ3Rv7U37FP/ipKgg49zYKChDfdiND3hRqfh+QER2ZYl1ckeI2j8fSCmcMojw2rn1CK7uqse
	GXVFmA1GJFVS4KJvWneA5SgEB/Z+NdMTofw+Y/odi3sx7jMpBfkSwZs19/kP1Nq6lSq5/SfkVoLlT
	qlArqj9yFTT5MEkQFmyrMHcacnp6PJ1UHvCnvm2FSeRJj8X0tdUVNJ/i5QDDutfBpgdnXrQavte2z
	efh+MDk29U9NJoTK8WAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDgx-0008Fa-Ce; Fri, 20 Mar 2020 09:11:47 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDgo-0008F2-1f
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:11:40 +0000
Received: by mail-lf1-x144.google.com with SMTP id j188so49584lfj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 02:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OU/CpAGIqH8KmfsyruwEDtwqFN1iNUUKyUH7R3UxLkw=;
 b=mllYl6GF2syYSUniY8DE9rxhVQ9ZjeJtdUw2jL/qdetWaKL4P4TFCzv5AjONaNrDzs
 BGM8hqFjQpEIYY1BWfAadf0qCywfRXMAfeboea/zxJo57UoIVHfgZWrG/zwY9BwTuVgb
 DRXULnIB8wnRcpx/yKPfjz+J/PSnVSxl+Bt7vPIcZyJtyReDP/OxZHesXHBx+tinokkR
 IKKc188enCZ7EwyPkgD6Y9blmbi+56B1MJKDi1Fk8OvlUKZw3GAPgVVhAJvfZibhUl5t
 ekKWzyO+eyqmq12qo3Pns7t3wOzedDpKks/K9dXWARk5rtaiwF/SWq6Rqe5cYFNsYqlU
 rw+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OU/CpAGIqH8KmfsyruwEDtwqFN1iNUUKyUH7R3UxLkw=;
 b=K5Im8aRgPA5q7DSDrCVx6shUEMFpLpo66xqhtOGMjYv/USk41ayLqq8DkaO0dCoaIc
 MLHdOMKZeAtr8/7naVGGGXSGfWQTB7zBPOMLwX5h0NMY0f1BHg74bEx30v+sa+k69N1I
 RYWSg10Wy/1Da6ARLMJm4OwWXJ3MjjDMdfvyzCagWiTOLRaXFUNkNKvmYCfX+K4ymTpu
 4INVbDpyPFvNK8IHVE8X8VVu+yPtWxjEplNRUIkgp8Y8Q5tDh06wBcyT8/ZSU8z7VHoq
 X5p9Tp6x3SAbg5zDDVQElsnqJnDC6DlvxboYNBZ6TsZt8c5inGrcF7KLhUoikHxUX21m
 ZPtg==
X-Gm-Message-State: ANhLgQ3KETvK5SVm6XPGk+n4oL51LKCHV+CYEmGkt7Xw5jyUdGpbhbkF
 faRpPtwwLL27FXOxhjjJukoSPJM6/QLsIo+KHbFzwQ==
X-Google-Smtp-Source: ADFU+vtJYWG8EQJP/hgD78QKWv99yAbCP307TFvbYqg8VWMrgeCGnVYbnG2Hccuki3Zkny8VqCdXwG3hw10skhhk4Rw=
X-Received: by 2002:a05:6512:247:: with SMTP id
 b7mr4683821lfo.21.1584695495451; 
 Fri, 20 Mar 2020 02:11:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200316133503.144650-1-icenowy@aosc.io>
 <20200316133503.144650-3-icenowy@aosc.io>
 <CACRpkdaVrfd1p+WyACy-gq-3BPsXJ_CZwi2OZe+=csseBcvcaA@mail.gmail.com>
 <491ADD02-5511-404B-88A8-5725EF061EAC@aosc.io>
In-Reply-To: <491ADD02-5511-404B-88A8-5725EF061EAC@aosc.io>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Mar 2020 10:11:22 +0100
Message-ID: <CACRpkdbeLAyhhkx115zAV0tdC7KJ4T0UoQ2QeDwTVN+btxp=Jw@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: panel: add binding for Xingbangda
 XBD599 panel
To: Icenowy Zheng <icenowy@aosc.io>, Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_021138_122217_04DFD922 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXIgMjAsIDIwMjAgYXQgOTowNyBBTSBJY2Vub3d5IFpoZW5nIDxpY2Vub3d5QGFv
c2MuaW8+IHdyb3RlOgo+IOS6jiAyMDIw5bm0M+aciDE55pelIEdNVCswODowMCDkuIvljYgxMDox
NDoyNywgTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPiDlhpnliLA6Cj4g
Pk9uIE1vbiwgTWFyIDE2LCAyMDIwIGF0IDI6MzcgUE0gSWNlbm93eSBaaGVuZyA8aWNlbm93eUBh
b3NjLmlvPiB3cm90ZToKCj4gPkFzIG5vdGljZWQgaW4gdGhlIHJldmlldyBvZiB0aGUgZHJpdmVy
LCB0aGlzIGRpc3BsYXkgaXMgdmVyeSBjbG9zZSB0bwo+ID5oaW1heCxoeDgzNjMuCj4gPgo+ID5J
IHRoaW5rIHRoZSBiZXN0IGlzIHRvIGRldGVybWluIHdoYXQgYWN0dWFsIGRpc3BsYXkgY29udHJv
bGxlciBpdCBpcywKPiA+SSB0aGluayBpdCBpcyBzb21lIGtpbmQgb2YgSWxpdGVrIGNvbnRyb2xs
ZXIgc2luY2UgSWxpdGVrIGlsaTkzNDIgaXMKPiA+Y2xlYXJseSB2ZXJ5IHNpbWlsYXIuCj4KPiBJ
dCdzIFNpdHJvbml4IFNUNzcwMywgc2FtZSBhcyB0aGUgTGlicmVtIDUgcGFuZWwuCgpIZWgsIEkg
d29uZGVyIGhvdyBpdCBjb21lcyB0aGF0IGl0IGlzIHNvIHNpbWlsYXIgdG8gSWxpdGVrLgpJIGd1
ZXNzIEkgd2lsbCBuZXZlciB1bmRlcnN0YW5kIGhvdyB0aGUgc2lsaWNvbiBlY29zeXN0ZW0gd29y
a3MKaW4gYXNpYSAoSSBkaWQgcmVhZCBhIGxvdCBvZiBCdW5uaWUgSHVhbmcncyBhcnRpY2xlcyBh
bmQgaGFyZHdhcmUKaGFja2luZyBib29rIHRvIHRyeSB0byB1bmRlcnN0YW5kLi4uKQoKVGhpcyBm
aWxlIHNob3VsZCBiZSBuYW1lZCBzaXRyb25peCxzdDc3MDMueWFtbCB0aGVuLgoKQWNjb3JkaW5n
IHRvIHRoZSBjb2RlIGluIHRoZSBMaWJyZW0gNToKaHR0cHM6Ly9zb3VyY2UucHVyaS5zbS9MaWJy
ZW01L2xpbnV4LW5leHQvYmxvYi9pbXg4LWN1cnJlbnQtbGlicmVtNS9kcml2ZXJzL2dwdS9kcm0v
cGFuZWwvcGFuZWwtc2l0cm9uaXgtc3Q3NzAxLmMKVGhlIGFjdHVhbCBuYW1lIG9mIHRoZSBkaXNw
bGF5IGlzIFRlY2hzdGFyIHRzODU1MGIuCkFuZCB0aGUgZGlzcGxheSBjb250cm9sbGVyIGlzIHN0
NzcwMSwgc28gbWF5YmUgd2Ugc2hvdWxkCmFjdHVhbGx5IG5hbWUgaXQgc2l0cm9uaXgsc3Q3NzB4
LnlhbWwgaWYgdGhlcmUgYXJlIHNvbWUKc3ViLXZhcmlhbnRzIG9mIHN0NzcweD8KCj4gPnByb3Bl
cnRpZXM6Cj4gPiAgY29tcGF0aWJsZToKPiA+ICAgIGl0ZW1zOgo+ID4gICAgICAtIGNvbnN0OiB4
aW5nYmFuZ2RhLHhiZDU5OQo+ID4gICAgICAtIGNvbnN0OiBpbGl0ZWssaWxpOTM0Mgo+ID4KPiA+
UG9zc2libHkgdXNlIG9uZU9mIGFuZCBhZGQgc3VwcG9ydCBmb3IgdGhlIGhpbWF4LGh4ODM2Mwo+
ID5hbHJlYWR5IHdoaWxlIHlvdSdyZSBhdCBpdC4KClRoaXMgc2hvdWxkIGF0IGxlYXN0IGJlOgoK
Y29tcGF0aWJsZToKICAgaXRlbXM6CiAgICAgLSBlbnVtOgogICAgICAgLSB4aW5nYmFuZ2RhLHhi
ZDU5OQogICAgICAgLSBoaW1heCxoeDgzNjMKICAgICAgIC0gdGVjaHN0YXIsdHM4NTUwYgogICAg
IC0gZW51bToKICAgICAgIC0gc2l0cm9uaXgsc3Q3NzAxCiAgICAgICAtIHNpdHJvbml4LHN0Nzcw
MwoKU28gcGFuZWwgbm9kZXMgdXNpbmcgdGhpcyBwYW5lbCBiZWNvbWUKY29tcGF0aWJsZSA9ICJ4
aW5nYmFuZ2RhLHNiZDU5OSIsICJzaXRyb25peCxzdDc3MDMiCmV0Yy4KClRoaXMgd2F5IGl0IGlz
IHN0cmFpZ2h0LWZvcndhcmQgZm9yIGRyaXZlcnMgdG8gaWRlbnRpZnkgdGhlIHBhbmVsCnZlbmRv
ciBhbmQgZGlzcGxheSBjb250cm9sbGVyLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
