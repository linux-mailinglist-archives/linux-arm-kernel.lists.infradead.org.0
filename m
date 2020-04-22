Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233AB1B34F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 04:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+yAEEYINSv42ObTxyF7WIxYXrHnhvBAOBWomuV0Xw8=; b=cC/FAXZS1NNzMz
	OVksoieURRNuWlsT2hFUHPwSS/+mJWu5hCFhUBhvSzDz1GcYuT72+0/p2BpYAgGdW3SoonkKQ+5AR
	wt+nFd3J9mRk/bzGJM3LssZO0T/FrR/E0VI0a4iVfxIAVzj61/VH9SXglBRDFnRb2vP1yD9dkqZO5
	ggelQQAAWQwnjIlV8Sarfk6L1uzKhQ27uzUe9Nqi6TQaI6WfUl4fzX8jcM0+6TTvnmpALUPZhz7vt
	xDEM3yVSOd2tmbL1tQKUqoyni/8ed9nldXtQyeJgSuYayZ7rtpVQWPgnHCOW2UB/G0nJCdOh8PCSj
	r9HSNc4ChfVpcFnRLXpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR4z0-00065L-55; Wed, 22 Apr 2020 02:19:26 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR4yq-00064Q-Ei
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 02:19:18 +0000
Received: by mail-yb1-xb44.google.com with SMTP id l5so395845ybf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 19:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=eD12MM0qRGC0+kgKXm3ggeVgtjEg4vFSk5PZGwQnw+o=;
 b=c/Nn57tcIJ4/Fsow2CyCQv4vmDsCDHTrp5fk9kmX3Sx21drX1zOVRkJPzc7l3AWB4d
 DhWCLB0C7AXuTtrA+++zf76bhHCpcCzjspRFGpBRjLAA9J1FqmjlOT3y3Nd90DoVug8E
 xl6uJ8Ht+0b09DrEv6i+pwmrmPlexWXO2dYOHfuMlcJ1mp6NMnSk5IxtazRDaELptCXv
 GSo2P4qtJO8pQvs1KGFuEC23AEakWg4f7TyjsPH+By0NuaOS1zUhyO1WBrW/vr4F3yDc
 DNcqoWPAufqfJQci8yqdmM4GC0ugOD+/PVTf9wAgYyuNeslJ/a8bqxs5D69LavEQJZjM
 7F4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eD12MM0qRGC0+kgKXm3ggeVgtjEg4vFSk5PZGwQnw+o=;
 b=aGZjRnA1ykmocCXABa48zHgxqLDLIVkvBC/V78u0jF20JxWt/YCiIhnRbfCuOtKYlk
 nyzNOpEkECyQ51qv8GyPkmNKGtD7jIN7D2R4XmxrTG9Y+GrJUOteQYNnUaInmerpXbPn
 MfO/vWi8qhoPkJTWkXhrqjQHd2Lki+RgwYf3OrO4sKcUZgEh+n9rsN0EGs335Tp4R+ej
 bvzV+NMs+YkLV9FEmgcwF0mNQmh19msIjyExlddG2fTkOlbQ7ZPjw02gu5DmG0XYxc1I
 jpJvTErL9f74rzXFL/nMkILYfz5w/5o8X0hNqGHKspEytzqh4U/c1wsjoQm4o4bRZA8R
 35ow==
X-Gm-Message-State: AGi0PuYqKLmjUMNP97xOh0xIy7Y3Nrau7/4ANwEDK2DdFzKBbHGyze3W
 MVkM5QjwArXrfyeodQiRcGU+huWrR0f6560Ft/5E9g==
X-Google-Smtp-Source: APiQypJuR76/LW08ImUx/6Stbr8KXo3jLagEMDDWMCJ+qlOKjssz3DtPf0dePxfy9mmoTCGk7EqJwjxIUvjkpKddAJw=
X-Received: by 2002:a25:4f0a:: with SMTP id d10mr164888ybb.52.1587521954812;
 Tue, 21 Apr 2020 19:19:14 -0700 (PDT)
MIME-Version: 1.0
References: <158737719165.27947.6617937231903079086.stgit@localhost>
 <20200420190749.b508c7e6d60a8203360178ec@linaro.org>
 <CAK7LNAQtTPLdKN8cz842gvoS36GVQvk2ztahGp8XWoW3C8BzQg@mail.gmail.com>
 <CAA93ih0TNEfU_fiS_43+H6+UWrP2b8zh+PxMiiKBg3pZW8Jo8g@mail.gmail.com>
 <CAK7LNASjoM1vr6=nSfs76yauC+QChKC6VX_pZkq1rhXDnJE5+A@mail.gmail.com>
In-Reply-To: <CAK7LNASjoM1vr6=nSfs76yauC+QChKC6VX_pZkq1rhXDnJE5+A@mail.gmail.com>
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
Date: Wed, 22 Apr 2020 11:19:03 +0900
Message-ID: <CAA93ih0ksjwNzAW9+Y4ex+Ki8bCViwjcVZxftdQ8rk_YM_HmgA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: uniphier: Add support for Akebi96
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_191917_013453_0FCD2BF2 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 DTML <devicetree@vger.kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFtYWRhLXNhbiwKCjIwMjDlubQ05pyIMjHml6Uo54GrKSAyMTo1NyBNYXNhaGlybyBZYW1h
ZGEgPG1hc2FoaXJveUBrZXJuZWwub3JnPjoKPgo+IE9uIE1vbiwgQXByIDIwLCAyMDIwIGF0IDEw
OjIxIFBNIE1hc2FtaSBIaXJhbWF0c3UKPiA8bWFzYW1pLmhpcmFtYXRzdUBsaW5hcm8ub3JnPiB3
cm90ZToKPiA+ID4gaW5kZXggZjkzNTE5NzkzYmZiLi5hZmE5MGI3NjJlYTkgMTAwNjQ0Cj4gPiA+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvc29jaW9uZXh0L3VuaXBoaWVyLWxkMjAuZHRzaQo+
ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3NvY2lvbmV4dC91bmlwaGllci1sZDIwLmR0
c2kKPiA+ID4gQEAgLTMzNyw3ICszMzcsNyBAQCBncGlvOiBncGlvQDU1MDAwMDAwIHsKPiA+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MjEg
MjE3IDM+Owo+ID4gPiAgICAgICAgICAgICAgICAgfTsKPiA+ID4KPiA+ID4gLSAgICAgICAgICAg
ICAgIGF1ZGlvOiBhdWRpb0A1NjAwMDAwMCB7Cj4gPiA+ICsgICAgICAgICAgICAgICBhdWRpb0A1
NjAwMDAwMCB7Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic29j
aW9uZXh0LHVuaXBoaWVyLWxkMjAtYWlvIjsKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
cmVnID0gPDB4NTYwMDAwMDAgMHg4MDAwMD47Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
IGludGVycnVwdHMgPSA8MCAxNDQgND47Cj4gPiA+Cj4gPiA+Cj4gPiA+IExhc3RseSwgaXMgdGhl
IHBpbi1zZXR0aW5nICJhb3V0MSIsICJhb3V0MWIiIGNvcnJlY3QgPwo+ID4KPiA+IFllcywgYWNj
b3JkaW5nIHRvIHRoZSBzY2hlbWF0aWNzIG9mIEFrZWJpOTYoKiksIGl0IGlzIGNvbm5lY3RlZCB0
bwo+ID4gYW91dDFiKFhJUlEqKSBpbnN0ZWFkIG9mIGFvdXQxKEFPMSopLgo+ID4KPiA+ICgqKSBo
dHRwczovL3d3dy45NmJvYXJkcy5vcmcvZG9jdW1lbnRhdGlvbi9lbnRlcnByaXNlL2FrZWJpOTYv
aGFyZHdhcmUtZG9jcy9ha2ViaTk2LXNjaGVtYXRpY3MucGRmCj4KPiBTbywgSSB3YXMgYXNraW5n
IGFib3V0ICJhb3V0MSIsIG5vdCAiYW91dDFiIi4KCkFoLCBJIGdvdCBpdC4KCj4KPiBBY2NvcmRp
bmcgdG8gdGhlIHNjaGVtYXRpYywgbm90aGluZyBpcyBjb25uZWN0ZWQgdG8gQU8xKi4KPiBTZWUg
c2hlZXQgNi4KPgo+IFdoeSBkbyB5b3UgbmVlZCB0byBhc3NpZ24gdGhlIGFwcGFyZW50bHkgdW51
c2VkIHBpbnM/CgpObywgd2UgZG9uJ3QgbmVlZCBpdC4gSSBjb25maXJtZWQgd2Ugb25seSBuZWVk
IGdyb3VwcyA9ICJhb3V0MWIiLgpJJ2xsIHVwZGF0ZSB0aGUgc2VyaWVzIHdpdGggdGhhdCBmaXgu
CgpUaGFuayB5b3UhCgo+Cj4KPgo+IC0tCj4gQmVzdCBSZWdhcmRzCj4gTWFzYWhpcm8gWWFtYWRh
CgoKCi0tIApNYXNhbWkgSGlyYW1hdHN1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
