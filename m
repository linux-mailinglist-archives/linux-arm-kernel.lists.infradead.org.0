Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2BA1E51CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 01:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NREOKELT3g0u5nRLFX0l4gJUk/eaTivoMCtvcxlUvQ=; b=jMCp6Yas3/kt9P
	/yRs72K757EEPMB3p50B72WIxbiE+U8Gw5iV2fPp0f5mFclWO5wRlSnrt6MSegonKa/LpNn6tKDGN
	iy1VggbWYBxkkSZh2USZxHpDXFtTSoaUeEe6cKcRGnb556tMzHCRP1NhxrMmwSUricFl9hlHBwNEM
	Vb3cLco/0K/oWVplZIlPiQzkP3fPZttT1AbyOkNv91kzAC+uYLiQL+C7ud11TDxaBWI0xHx1j+aUe
	+2JYfgVsR+eB2wPqw2Z+d+mbXTfvNcDKPs4LsIopOZ6khfc4ZCWiBi4ID7G9mbGp629OenaWjKLbf
	78uU5nAzqE0xI/cDUMPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je5T6-0005PT-Vc; Wed, 27 May 2020 23:28:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je5Sx-0005On-Vf; Wed, 27 May 2020 23:28:09 +0000
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F3F1208E4;
 Wed, 27 May 2020 23:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590622086;
 bh=ON8PGesyAn+4FmexUP19mmvqNBZwY/TUXpZfPPF4QJ0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kwd/vg40MGTNgBlsGgZ1Ns4+sylbYRSUWSNWkKyvF2LP9p7PPuTN74buHh4ysAfUP
 kx3KaoRMpZhdY7tjVPWt3N1iEkG2St95fPYcLkiFUc6rRYsmwUdfCmOhbSkxxLlh5i
 poNDOBeCPqZrqDXH78oVECSagX75utQkwG/6d91Q=
Received: by mail-ej1-f52.google.com with SMTP id d7so30056793eja.7;
 Wed, 27 May 2020 16:28:06 -0700 (PDT)
X-Gm-Message-State: AOAM531cl7QnBSivzAhB7WcbsLsqqmPK+1UlN7sppCBKA0WCooFe/WKn
 GYjz/FzHzaaUfcM9VanIGVez1tw3+79sSUEAZA==
X-Google-Smtp-Source: ABdhPJzcHSIbC4Mtrhld0K/22ZiApP3zop/6GIPFmfLxlHDVkueEoHAc4k/CHn67ZoeNeAdbwomWMXLXwYcLw84+BHU=
X-Received: by 2002:a17:906:bcf8:: with SMTP id
 op24mr635286ejb.260.1590622084979; 
 Wed, 27 May 2020 16:28:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200522101225.62571-1-jitao.shi@mediatek.com>
In-Reply-To: <20200522101225.62571-1-jitao.shi@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Thu, 28 May 2020 07:27:51 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8=HvU8p=6xG5_bNHtjXOsQwNAn1zqHF6AmwtOReZ_Xzw@mail.gmail.com>
Message-ID: <CAAOTY_8=HvU8p=6xG5_bNHtjXOsQwNAn1zqHF6AmwtOReZ_Xzw@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: dsi: fix scrolling of panel with small hfp
 or hbp
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_162808_059146_99D3D9F3 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, cawa.cheng@mediatek.com,
 CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEppdGFvOgoKSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5
tDXmnIgyMuaXpSDpgLHkupQg5LiL5Y2INjoxMuWvq+mBk++8mgo+Cj4gSWYgcGFuZWwgaGFzIHRv
byBzbWFsbCBoZnAgb3IgaGJwLCBob3Jpem9udGFsX2Zyb250cG9yY2hfYnl0ZSBvcgo+IGhvcml6
b250YWxfYmFja3BvcmNoX2J5dGUgbWF5IGJlY29tZSB2ZXJ5IHNtYWxsIHZhbHVlIG9yIG5lZ2F0
aXZlCj4gdmFsdWUuIFRoaXMgcGF0Y2ggYWRqdXN0cyB0aGVpciB2YWx1ZXMgc28gdGhhdCB0aGV5
IGFyZSBncmVhdGVyCj4gdGhhbiBtaW5pbXVtIHZhbHVlIGFuZCBrZWVwIHRvdGFsIG9mIHRoZW0g
dW5jaGFuZ2VkLgo+Cj4gU2lnbmVkLW9mZi1ieTogSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0
ZWsuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jIHwgMTgg
KysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYyBiL2RyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMKPiBpbmRleCAwZWRlNjk4MzBhOWQuLmFlYmFh
ZmQ5MGNlYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYwo+IEBAIC0xNDgsNiAr
MTQ4LDkgQEAKPiAgICAgICAgICh0eXBlID09IE1JUElfRFNJX0dFTkVSSUNfUkVBRF9SRVFVRVNU
XzJfUEFSQU0pIHx8IFwKPiAgICAgICAgICh0eXBlID09IE1JUElfRFNJX0RDU19SRUFEKSkKPgo+
ICsjZGVmaW5lIE1JTl9IRlBfQllURSAgICAgICAgICAgMHgwMgo+ICsjZGVmaW5lIE1JTl9IQlBf
QllURSAgICAgICAgICAgMHgwMgo+ICsKPiAgc3RydWN0IG10a19waHlfdGltaW5nIHsKPiAgICAg
ICAgIHUzMiBscHg7Cj4gICAgICAgICB1MzIgZGFfaHNfcHJlcGFyZTsKPiBAQCAtNDUwLDYgKzQ1
Myw3IEBAIHN0YXRpYyB2b2lkIG10a19kc2lfY29uZmlnX3Zkb190aW1pbmcoc3RydWN0IG10a19k
c2kgKmRzaSkKPiAgICAgICAgIHUzMiBob3Jpem9udGFsX3N5bmNfYWN0aXZlX2J5dGU7Cj4gICAg
ICAgICB1MzIgaG9yaXpvbnRhbF9iYWNrcG9yY2hfYnl0ZTsKPiAgICAgICAgIHUzMiBob3Jpem9u
dGFsX2Zyb250cG9yY2hfYnl0ZTsKPiArICAgICAgIHMzMiBzaWduZWRfaGZwX2J5dGUsIHNpZ25l
ZF9oYnBfYnl0ZTsKPiAgICAgICAgIHUzMiBkc2lfdG1wX2J1Zl9icHAsIGRhdGFfcGh5X2N5Y2xl
czsKPiAgICAgICAgIHN0cnVjdCBtdGtfcGh5X3RpbWluZyAqdGltaW5nID0gJmRzaS0+cGh5X3Rp
bWluZzsKPgo+IEBAIC01MTksNiArNTIzLDIwIEBAIHN0YXRpYyB2b2lkIG10a19kc2lfY29uZmln
X3Zkb190aW1pbmcoc3RydWN0IG10a19kc2kgKmRzaSkKPiAgICAgICAgICAgICAgICAgfQo+ICAg
ICAgICAgfQo+Cj4gKyAgICAgICBzaWduZWRfaGZwX2J5dGUgPSAoczMyKWhvcml6b250YWxfZnJv
bnRwb3JjaF9ieXRlOwo+ICsgICAgICAgc2lnbmVkX2hicF9ieXRlID0gKHMzMilob3Jpem9udGFs
X2JhY2twb3JjaF9ieXRlOwo+ICsKPiArICAgICAgIGlmIChzaWduZWRfaGZwX2J5dGUgKyBzaWdu
ZWRfaGJwX2J5dGUgPCBNSU5fSEZQX0JZVEUgKyBNSU5fSEJQX0JZVEUpIHsKPiArICAgICAgICAg
ICAgICAgRFJNX1dBUk4oIkNhbGN1bGF0ZWQgaGZwX2J5dGUgYW5kIGhicF9ieXRlIGFyZSB0b28g
c21hbGwsICIKPiArICAgICAgICAgICAgICAgICAgICAgICAgInBhbmVsIG1heSBub3Qgd29yayBw
cm9wZXJseS5cbiIpOwo+ICsgICAgICAgfSBlbHNlIGlmIChzaWduZWRfaGZwX2J5dGUgPCBNSU5f
SEZQX0JZVEUpIHsKPiArICAgICAgICAgICAgICAgaG9yaXpvbnRhbF9mcm9udHBvcmNoX2J5dGUg
PSBNSU5fSEZQX0JZVEU7Cj4gKyAgICAgICAgICAgICAgIGhvcml6b250YWxfYmFja3BvcmNoX2J5
dGUgLT0gTUlOX0hGUF9CWVRFIC0gc2lnbmVkX2hmcF9ieXRlOwo+ICsgICAgICAgfSBlbHNlIGlm
IChzaWduZWRfaGJwX2J5dGUgPCBNSU5fSEJQX0JZVEUpIHsKPiArICAgICAgICAgICAgICAgaG9y
aXpvbnRhbF9mcm9udHBvcmNoX2J5dGUgLT0gTUlOX0hCUF9CWVRFIC0gc2lnbmVkX2hicF9ieXRl
Owo+ICsgICAgICAgICAgICAgICBob3Jpem9udGFsX2JhY2twb3JjaF9ieXRlID0gTUlOX0hCUF9C
WVRFOwo+ICsgICAgICAgfQo+ICsKCkkgdGhpbmsgaG9yaXpvbnRhbF9mcm9udHBvcmNoX2J5dGUg
d291bGQgbmV2ZXIgYmUgbmVndGl2ZSwgYW5kCmhvcml6b250YWxfYmFja3BvcmNoX2J5dGUgd291
bGQgYmUgbmVndGl2ZSB3aGVuCgogaWYgKGRzaS0+bW9kZV9mbGFncyAmIE1JUElfRFNJX01PREVf
VklERU9fU1lOQ19QVUxTRSkKaG9yaXpvbnRhbF9iYWNrcG9yY2hfYnl0ZSA9Cih2bS0+aGJhY2tf
cG9yY2ggKiBkc2lfdG1wX2J1Zl9icHAgLSAxMCk7CmVsc2UKaG9yaXpvbnRhbF9iYWNrcG9yY2hf
Ynl0ZSA9ICgodm0tPmhiYWNrX3BvcmNoICsgdm0tPmhzeW5jX2xlbikgKgpkc2lfdG1wX2J1Zl9i
cHAgLSAxMCk7CgpJZiB0aGlzIHRpbWUgaXQncyBuZWd0aXZlLCB0aGUgY2FsY3VsYXRpb24gb2YK
aG9yaXpvbnRhbF9mcm9udHBvcmNoX2J5dGUgaXMgc28gc3RyYW5nZS4KSSB0aGluayBwcm9jZXNz
aW5nIG5lZ3RpdmUgdmFsdWUgc2hvdWxkIGJlZm9yZSBoZXJlLgoKUmVnYXJkcywKQ2h1bi1LdWFu
Zy4KCj4gICAgICAgICB3cml0ZWwoaG9yaXpvbnRhbF9zeW5jX2FjdGl2ZV9ieXRlLCBkc2ktPnJl
Z3MgKyBEU0lfSFNBX1dDKTsKPiAgICAgICAgIHdyaXRlbChob3Jpem9udGFsX2JhY2twb3JjaF9i
eXRlLCBkc2ktPnJlZ3MgKyBEU0lfSEJQX1dDKTsKPiAgICAgICAgIHdyaXRlbChob3Jpem9udGFs
X2Zyb250cG9yY2hfYnl0ZSwgZHNpLT5yZWdzICsgRFNJX0hGUF9XQyk7Cj4gLS0KPiAyLjI1LjEK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4
LW1lZGlhdGVrIG1haWxpbmcgbGlzdAo+IExpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1l
ZGlhdGVrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
