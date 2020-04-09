Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BC91A37D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 18:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJ+AL8okOPTTN922lj/gEEtegli200aqHtVUUD9nUJg=; b=JxJ2LlJ4MNzqsg
	bds0h16mQmYMRaHMbjoT49A9MSVsQ4ot6y7Z03RbZcIXuDLZ7a6w47HuWXLqDRgn+L+hb3j6+Lwv2
	u52pKngNclvJOxXLCIQLc7QuJi9hg/YANWTOoIRzL0NH1kaldPq7zq9urCH6Rwqj64Mb8pwonwvTg
	5GJrbRwjI5KIz/9mEPk4CoyUx2QwkiDCq5ibjcUGs9PAHN6XGeRE2gvdM9JhTbz9BYlQvFJU9bEJK
	c7UMbrsvpuKmqWVLMlGUwTsoLpTfZ4YXSstQx6b9dIhneh0jybmWfyJhKtnKmYkKXaCyg3OPQI5/D
	tpzX/YaUxXM/G632VnDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZm8-0005k6-LA; Thu, 09 Apr 2020 16:11:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZlF-00059b-4Q; Thu, 09 Apr 2020 16:10:43 +0000
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78FE1218AC;
 Thu,  9 Apr 2020 16:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586448635;
 bh=fVvP6SUlDpMc2d96/92LswakbtL1VsS55y5+h6rpY3A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jPmvECc5MbxkT11rQVdweMo1GgfsCfCfDNCAb+WP6gNKjHVsXFd+wiq5nPbJM9rWR
 oi1Y8TrzMQpsHiTJWSKQNwJn8sKA2SuCvEjBpTUxBVMMbVi3lgg7w7wPBJkyGWuq1j
 1gKHuIJqTuvJ+4FER8B1iIS7N5fmmYGhXzW7f7oU=
Received: by mail-ed1-f53.google.com with SMTP id dk4so346028edb.13;
 Thu, 09 Apr 2020 09:10:35 -0700 (PDT)
X-Gm-Message-State: AGi0PuaPkYL0sP8AGkvQ4RBngD4qkwml8woAIJ7MowlydNDJQtJ2Er/I
 zBwuheanI7S9YZVHiwliHN+q7H4TnyF9z8ueFw==
X-Google-Smtp-Source: APiQypL+qKD7yHrEW+JUzCaJa3ePCbbv5DvvhgZrZM52zY343hHolUioqNBoHQwpr2Z/SpKf/sp3enrttnW+5MQ39NE=
X-Received: by 2002:a05:6402:335:: with SMTP id
 q21mr720860edw.47.1586448633893; 
 Thu, 09 Apr 2020 09:10:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200409060209.202677-1-hsinyi@chromium.org>
In-Reply-To: <20200409060209.202677-1-hsinyi@chromium.org>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Fri, 10 Apr 2020 00:10:22 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9hOoW754+sFmr_cCf+kU7H2qv261Me777dcccKv5LFwg@mail.gmail.com>
Message-ID: <CAAOTY_9hOoW754+sFmr_cCf+kU7H2qv261Me777dcccKv5LFwg@mail.gmail.com>
Subject: Re: [PATCH v2] drm: mediatek: fix device passed to cmdq
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_091037_237763_15285B60 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEhzaW4tWWk6CgpIc2luLVlpIFdhbmcgPGhzaW55aUBjaHJvbWl1bS5vcmc+IOaWvCAyMDIw
5bm0NOaciDnml6Ug6YCx5ZubIOS4i+WNiDI6MDLlr6vpgZPvvJoKPgo+IGRybSBkZXZpY2UgaXMg
bm93IHByb2JlZCBmcm9tIG1tc3lzLiBXZSBuZWVkIHRvIHVzZSBtbXN5cyBkZXZpY2UgdG8gZ2V0
IGdjZQo+IG5vZGVzLiBGaXggZm9sbG93aW5nIGVycm9yczoKPgo+IFsgICAgMC43NDAwNjhdIG1l
ZGlhdGVrLWRybSBtZWRpYXRlay1kcm0uMS5hdXRvOiBlcnJvciAtMiBjYW4ndCBwYXJzZSBnY2Ut
Y2xpZW50LXJlZyBwcm9wZXJ0eSAoMCkKPiBbICAgIDAuNzQ4NzIxXSBtZWRpYXRlay1kcm0gbWVk
aWF0ZWstZHJtLjEuYXV0bzogZXJyb3IgLTIgY2FuJ3QgcGFyc2UgZ2NlLWNsaWVudC1yZWcgcHJv
cGVydHkgKDApCj4gLi4uCj4gWyAgICAyLjY1OTY0NV0gbWVkaWF0ZWstZHJtIG1lZGlhdGVrLWRy
bS4xLmF1dG86IGZhaWxlZCB0byByZXF1ZXN0IGNoYW5uZWwKPiBbICAgIDIuNjY2MjcwXSBtZWRp
YXRlay1kcm0gbWVkaWF0ZWstZHJtLjEuYXV0bzogZmFpbGVkIHRvIHJlcXVlc3QgY2hhbm5lbAoK
UmV2aWV3ZWQtYnk6IENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwub3JnPgoKPgo+
IEZpeGVzOiAxZDM2NzU0MWFkZWQgKCJzb2MgLyBkcm06IG1lZGlhdGVrOiBGaXggbWVkaWF0ZWst
ZHJtIGRldmljZSBwcm9iaW5nIikKPiBTaWduZWQtb2ZmLWJ5OiBIc2luLVlpIFdhbmcgPGhzaW55
aUBjaHJvbWl1bS5vcmc+Cj4gUmV2aWV3ZWQtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVu
cmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+Cj4gVGVzdGVkLWJ5OiBFbnJpYyBCYWxsZXRibyBp
IFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgo+IC0tLQo+IFRoZSBwYXRjaCBp
cyBiYXNlZCBvbgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwv
Z2l0L21hdHRoaWFzLmJnZy9saW51eC5naXQKPiBicmFuY2ggdjUuNi1uZXh0L3NvYwo+Cj4gQ2hh
bmdlIGxvZzoKPiB2MS0+djI6Cj4gYWxpZ24gd2l0aCA2MGZhOGMxM2FiMWEgKCJkcm0vbWVkaWF0
ZWs6IE1vdmUgZ2NlIGV2ZW50IHByb3BlcnR5IHRvIG11dGV4IGRldmljZSBub2RlIikKPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fY3J0Yy5jIHwgMyArKy0KPiAgZHJp
dmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmMgIHwgMiArLQo+ICAyIGZpbGVzIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9jcnRjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2RybV9jcnRjLmMKPiBpbmRleCA2MTVhNTRlNjBmZTIuLjcyNDdjNmY4N2Y0
YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9jcnRjLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9jcnRjLmMKPiBAQCAtODIy
LDcgKzgyMiw4IEBAIGludCBtdGtfZHJtX2NydGNfY3JlYXRlKHN0cnVjdCBkcm1fZGV2aWNlICpk
cm1fZGV2LAo+Cj4gICNpZiBJU19SRUFDSEFCTEUoQ09ORklHX01US19DTURRKQo+ICAgICAgICAg
bXRrX2NydGMtPmNtZHFfY2xpZW50ID0KPiAtICAgICAgICAgICAgICAgICAgICAgICBjbWRxX21i
b3hfY3JlYXRlKGRldiwgZHJtX2NydGNfaW5kZXgoJm10a19jcnRjLT5iYXNlKSwKPiArICAgICAg
ICAgICAgICAgICAgICAgICBjbWRxX21ib3hfY3JlYXRlKG10a19jcnRjLT5tbXN5c19kZXYsCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkcm1fY3J0Y19pbmRleCgm
bXRrX2NydGMtPmJhc2UpLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgMjAwMCk7Cj4gICAgICAgICBpZiAoSVNfRVJSKG10a19jcnRjLT5jbWRxX2NsaWVudCkpIHsK
PiAgICAgICAgICAgICAgICAgZGV2X2RiZyhkZXYsICJtdGtfY3J0YyAlZCBmYWlsZWQgdG8gY3Jl
YXRlIG1haWxib3ggY2xpZW50LCB3cml0aW5nIHJlZ2lzdGVyIGJ5IENQVSBub3dcbiIsCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jIGIvZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmMKPiBpbmRleCBlMmJiMGQxOWVmOTkuLjI4
NDE4ZTViODNlZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Ry
bV9kcnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jCj4g
QEAgLTUxNyw3ICs1MTcsNyBAQCBzdGF0aWMgaW50IG10a19kcm1fcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8g
ZXJyX25vZGU7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgfQo+Cj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgcmV0ID0gbXRrX2RkcF9jb21wX2luaXQoZGV2LCBub2RlLCBjb21wLCBjb21wX2lk
LCBOVUxMKTsKPiArICAgICAgICAgICAgICAgICAgICAgICByZXQgPSBtdGtfZGRwX2NvbXBfaW5p
dChkZXYtPnBhcmVudCwgbm9kZSwgY29tcCwgY29tcF9pZCwgTlVMTCk7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgaWYgKHJldCkgewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
b2Zfbm9kZV9wdXQobm9kZSk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnb3Rv
IGVycl9ub2RlOwo+IC0tCj4gMi4yNi4wLjI5Mi5nMzNlZjZiMmYzOC1nb29nCj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
