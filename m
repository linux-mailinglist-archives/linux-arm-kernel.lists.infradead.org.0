Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9327D521B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 21:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZcgE1i5q0PvPfORpb6ZSuDinc6FGK1qtp2RTfR1JSA=; b=kdpUxYpG71PASr
	rEiiGfyqJvQdNtPtMFSaGoJEwlFs08meEl0ukCGP1DYnmCmBI9lHLIIDUbcBGe3Itlby5lQDvHqlj
	c2NAkWPDGFeqNF/69Ww2Q43seGaFgEH7BSP/nv/mY2d+ed5aT7E33kcYusMuNZ4wi6wRLesI2plBT
	mbDKBUZQGW/gOkgX8v1phjmLgQdPy2qUZY0GT4mvZzYk3dkwJsckp+j5ueBBwpDOSl4o2rDqsw/nE
	5nxAC+CLy7NDLLKSvG20OV3DzY5ZSKU03QouCbFpFeU5fYw3yQ83HooU0ZlCnleCu+KG+SFufLpTE
	VdipVUISmchHdCEZ2m7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJMyO-0000GQ-7j; Sat, 12 Oct 2019 19:22:40 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJMyE-0000Ez-KZ
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 19:22:32 +0000
Received: by mail-io1-xd43.google.com with SMTP id u8so28513601iom.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 12:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HQJU3/LoSPot9T+dJMRPqRv4aXw0MOIpjtfyaywm/aQ=;
 b=ctY1dTvKbUjja1n+HmJ/0QdJo4l9dAMkFi10eQfrFjsqgOWit80kgCnq30q0OeiWfa
 /aUwSbUbZJTKgMLaQRHrc735ma+8k8xg3+RuKcs08/Y27Bvp2HmB3VCXVh53JIpeepH1
 Ex6BkyIFuWyhgQ4hj3IvriacAVaZFw7DIOvS0t56h7sEO7TnQ2FbSzJDxvuUFfVYZfpm
 8i8ceDDgjqJO4QPLbUuA7rjn5ssg3y1AC1+0v+G8txow0cuyM+hhZA63VbZBlCaXGXA2
 Cp4ZiJNXwdEapBQhk8X9d8hv+/l895BVSFvmchGs1gyzKBV8A4NRrRo6EFq1qAYA7zW9
 Z1YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HQJU3/LoSPot9T+dJMRPqRv4aXw0MOIpjtfyaywm/aQ=;
 b=Y77hNagg4HY6zwiIHX5sgf538e03ta3c8L0OMZ5KPGfbga2X9TuHvV6ygSnwTkbMNL
 y+q7CexAnlIio5PieiTBQneplpO6wA/3qkLaZ87bi3OJyreSzcZf4AsJpKQ4l5gIbZMU
 76DPh36iykf1CCJeaA3wYfRG6KZseuvUc0T5xCljPZzp69zkbAfDn05XD/HGIhv+DzSm
 0YVh1CPAwXRj4YmL9TZXh3+OoVdtMuoFDXwqK94ck1mD7GY50QgASoNbMVX7yOOucKv+
 CHLpUV7VljSv+CDHLeRHNQRCwM6MKlRDnPfNynGMKlwRAElppl/ixVZP1cdzZ3tIERkU
 a+2A==
X-Gm-Message-State: APjAAAXarAoyg+4KCJAnYg1avEq9JaGZN5EFlybH2FLMoMro8DTMfbcV
 ew/3FdnNoeKbU5QBFdQ7WVpTLvLzZHvKBbueJfo=
X-Google-Smtp-Source: APXvYqyJteMzDjNIWw8MOM6EkZMsiXv/drPcqPJn3dGo9FtbSnM6zKB7jm0eZ0l/nvmkFQFosHWse+jWfLyMEYAymH0=
X-Received: by 2002:a02:7b0d:: with SMTP id q13mr25703029jac.114.1570908149253; 
 Sat, 12 Oct 2019 12:22:29 -0700 (PDT)
MIME-Version: 1.0
References: <20191004190938.15353-1-navid.emamdoost@gmail.com>
 <027fde47-86b3-35c8-85e6-ea7c191e772c@web.de>
 <f90d7b4a-c4af-eac1-f326-211e932dbd22@web.de>
In-Reply-To: <f90d7b4a-c4af-eac1-f326-211e932dbd22@web.de>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Sat, 12 Oct 2019 14:22:18 -0500
Message-ID: <CAEkB2EQUrHpfCXDQ9HV9_hw7Ke5DmX3SvKWJd+wSwXB1Uqaf5g@mail.gmail.com>
Subject: Re: [PATCH] drm/imx: fix memory leak in imx_pd_bind
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_122230_698161_60D9E4CE 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-janitors@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Kangjie Lu <kjlu@umn.edu>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Navid Emamdoost <emamd001@umn.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stephen McCamant <smccaman@umn.edu>, Philipp Zabel <p.zabel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tm8sIHRoYXQgaXMgbm90IGNvcnJlY3QhIFlvdSBzaG91bGQgbm90IHRyeSB0byBmcmVlIGlteHBk
IGhlcmUgYXMgaXQKaXMgYSByZXNvdXJjZS1tYW5hZ2VkIGFsbG9jYXRpb24gdmlhIGRldm1fa3ph
bGxvYygpLiBJdCBtZWFucyBtZW1vcnkKYWxsb2NhdGVkIHdpdGggdGhpcyBmdW5jdGlvbiBpcyBh
dXRvbWF0aWNhbGx5IGZyZWVkIG9uIGRyaXZlciBkZXRhY2guClNvLCB0aGlzIHBhdGNoIGludHJv
ZHVjZXMgYSBkb3VibGUtZnJlZS4KCk9uIFNhdCwgT2N0IDEyLCAyMDE5IGF0IDY6NTQgQU0gTWFy
a3VzIEVsZnJpbmcgPE1hcmt1cy5FbGZyaW5nQHdlYi5kZT4gd3JvdGU6Cj4KPiA+ICtmcmVlX2Vk
aWQ6Cj4gPiArICAgICBrZnJlZShpbXhwZC0+ZWRpZCk7Cj4gPiArICAgICByZXR1cm4gcmV0Owo+
Cj4gSSBoYXZlIHRha2VuIGFub3RoZXIgbG9vayBhdCB0aGlzIGNoYW5nZSBpZGVhLgo+IENhbiB0
aGUgZnVuY3Rpb24gY2FsbCDigJxkZXZtX2tmcmVlKGRldiwgaW14cGQp4oCdIGJlY29tZSByZWxl
dmFudAo+IGFsc28gYXQgdGhpcyBwbGFjZT8KPgo+IFdvdWxkIHlvdSBsaWtlIHRvIGNvbWJpbmUg
aXQgd2l0aCB0aGUgdXBkYXRlIHN1Z2dlc3Rpb24KPiDigJxGaXggZXJyb3IgaGFuZGxpbmcgZm9y
IGEga21lbWR1cCgpIGNhbGwgaW4gaW14X3BkX2JpbmQoKeKAnT8KPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9yLzNmZDZhYThiLTI1MjktN2ZmNS0zZTE5LTA1MjY3MTAxYjJhNEB3ZWIuZGUvCj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzExMzg5MTIvCj4gaHR0cHM6
Ly9sa21sLm9yZy9sa21sLzIwMTkvMTAvMTIvODcKPgo+IFJlZ2FyZHMsCj4gTWFya3VzCgoKCi0t
IApOYXZpZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
