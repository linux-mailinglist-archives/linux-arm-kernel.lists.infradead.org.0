Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D8D38AA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 14:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRi08C+1qqZCrZP6LCJX80av2lT4j748/wmDenhTjjc=; b=s3Gue6XuUc1GWL
	nPYniavZriusc3od5WKVWdld3cmmtc1HZEoqumom59ljCbtIzAAcnyRVOboC5YGoJz3JyFjL6lt2j
	PCJfwoIcgxmhVpa6pG1NjASytFJ7kf97LaMi59GhvojFkIhxXSDm/bINqSr9U4J9jUVAAvkwaF81m
	RcsplCLHzpNge/Aqqam0nJGF4WR4IfK0bRKLZG2P9NMx/9jF4EQ3WE3lSephO9JH37l71BaNDI2Q+
	iP8+c8k+eEnPcAxSN93dNKOQztJG2dDhaZul+S0HFz9WStPAkwoh5/m4xwzsmU9imD6g/eoem1RUf
	OnTU1/Hj07S5voZF83lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZEJJ-0004cg-DB; Fri, 07 Jun 2019 12:49:33 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZEJA-0004bh-F5
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 12:49:26 +0000
Received: by mail-qt1-x842.google.com with SMTP id j19so2010523qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 05:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Wfc0ONRiE7if96re9IgwhqZxlxJKyUTTfg/JtYHw6Xs=;
 b=epxnDKo4vb2qpmp6p0AVIYMa9cl9iKK1LLOl5bMlGKR0AY6TJWtGjVXLspm3fDzjpk
 08cqKA5rMFu7QLp1C6F8FdK9n7Q8dw8tZF0E8uRQpfst5CtV3OhRFRVt5SAbGgrFB7Ob
 No+5OQktEuAF0RZ9GvgbPA/OhYIEY9Wt8KaKNtguH25pGRm8L2WXIG962zD3Ohs3cfw1
 OZEYVyHjjWDPBuFSYoDhDQinBJoIMk32aYaCF0k590G0ZnhK09Jm0om6LtTETvTKL5ub
 aK1wbChp7D+i9mX1eTTbaUVO+sWS7XQJTCL3hsuASYEWuhpWN5OzC1X9GGn0tyskeF25
 3T7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Wfc0ONRiE7if96re9IgwhqZxlxJKyUTTfg/JtYHw6Xs=;
 b=RrimUk1QgRI/rqVB9Ma6uEOiL/bV5N8yxdltakbjor2m2EdUzyXwxG9WNetyAur8t2
 b/ZBhKEjjj8BGNcAk0Cz0eRkljAk5P5sxvt0n3n09HXWBVuQ5murQBp01Spn7mgzHJQs
 ON92d6gysvXcB7E/QHK3xiLBEWmDMvqeObLeEnB39jcxBu5vpQBd0zHDobN4EadvWrH0
 jRyDE9uLLp4n08UjrIOgkL/SXABKUzDP8B8DQGawVkXF+nWDS+65y9ms7o5kofx2r7rV
 KeKifROWUkkhsGh7vCqfvMZ0uNvFOROEDxLLdOB9oPnEG5P97BWvaUXbvrV1O6C1hDJm
 FTWA==
X-Gm-Message-State: APjAAAWLh8FIBGUpCyw+AeWqdwV6pkzyDnVcgeW891qnDBr+sQDXit3m
 r5gmeEEt0jvBc4dfUZ5ew8BeeSyFvOsjGbKNXlQGbQ==
X-Google-Smtp-Source: APXvYqxikxR4bWp/IUM1Vo5wMutzlbB13crxKTadcYTVL5fEBAhSxYAflS6HqhnaINjHAyc+TYR4oIJwdCMD1i+/IoM=
X-Received: by 2002:ac8:395b:: with SMTP id t27mr46770308qtb.115.1559911763243; 
 Fri, 07 Jun 2019 05:49:23 -0700 (PDT)
MIME-Version: 1.0
References: <1559550694-14042-1-git-send-email-yannick.fertre@st.com>
 <ca5d4bcf-6020-e924-5577-d7cf9134958b@st.com>
In-Reply-To: <ca5d4bcf-6020-e924-5577-d7cf9134958b@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 7 Jun 2019 14:49:12 +0200
Message-ID: <CA+M3ks6uUXVCHvzAW90GWMgOpkpQUwFhTo_MWdLwur4ZGmsMXQ@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: ltdc: No message if probe
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_054924_517360_441E1038 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Vincent ABRIOU <vincent.abriou@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgdmVuLiA3IGp1aW4gMjAxOSDDoCAxMDo1MSwgUGhpbGlwcGUgQ09STlUgPHBoaWxpcHBlLmNv
cm51QHN0LmNvbT4gYSDDqWNyaXQgOgo+Cj4gSGkgWWFubmljaywKPgo+IFRoYW5rIHlvdSBmb3Ig
eW91ciBwYXRjaAo+Cj4gQWNrZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3JudUBz
dC5jb20+CgpBcHBsaWVkIG9uIGRybS1taXNjLW5leHQKClRoYW5rcywKQmVuamFtaW4KCj4gUGhp
bGlwcGUgOi0pCj4KPiBPbiA2LzMvMTkgMTA6MzEgQU0sIFlhbm5pY2sgRmVydHLDqSB3cm90ZToK
PiA+IFByaW50IGRpc3BsYXkgY29udHJvbGxlciBoYXJkd2FyZSB2ZXJzaW9uIGluIGRlYnVnIG1v
ZGUgb25seS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2su
ZmVydHJlQHN0LmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyB8
IDIgKy0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jIGIvZHJpdmVy
cy9ncHUvZHJtL3N0bS9sdGRjLmMKPiA+IGluZGV4IGE0MDg3MGIuLjJmZTZjNGEgMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3N0bS9sdGRjLmMKPiA+IEBAIC0xMjI5LDcgKzEyMjksNyBAQCBpbnQgbHRkY19sb2FkKHN0
cnVjdCBkcm1fZGV2aWNlICpkZGV2KQo+ID4gICAgICAgICAgICAgICBnb3RvIGVycjsKPiA+ICAg
ICAgIH0KPiA+Cj4gPiAtICAgICBEUk1fSU5GTygibHRkYyBodyB2ZXJzaW9uIDB4JTA4eCAtIHJl
YWR5XG4iLCBsZGV2LT5jYXBzLmh3X3ZlcnNpb24pOwo+ID4gKyAgICAgRFJNX0RFQlVHX0RSSVZF
UigibHRkYyBodyB2ZXJzaW9uIDB4JTA4eFxuIiwgbGRldi0+Y2Fwcy5od192ZXJzaW9uKTsKPiA+
Cj4gPiAgICAgICAvKiBBZGQgZW5kcG9pbnRzIHBhbmVscyBvciBicmlkZ2VzIGlmIGFueSAqLwo+
ID4gICAgICAgZm9yIChpID0gMDsgaSA8IE1BWF9FTkRQT0lOVFM7IGkrKykgewo+ID4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBt
YWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
