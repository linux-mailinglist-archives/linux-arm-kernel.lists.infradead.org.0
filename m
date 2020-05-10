Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6EF1CC5F8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 03:24:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwMBimmSRfg0b3O15tf1Yzp+ehFEfgtYi2ZbH4cuOec=; b=lXtT6iUndettDr
	X2E5eYv0TN6ETgDdLn0ca7sfwjF4szdkt2jLF99xBoiKMFyMoj8arLBGkOyvKPp6nA491/VAeouuO
	dMcJL7NPzY/XiFr1qlBzX148PFuDMDvf+SvtuvSPa4tg7tqkYc1qpeM99HLM2qMGgkIFVHNrEOaTZ
	aWmCVFMUutMDswd+Q7sujw7XvTWYfy4ldErjPWvvDfPw42IuofSEKgrn50n4R1xag3uG3VKXfg+0z
	/wYmGTkmWt6u+unYig+xetYTtA5GNw2dznzNNLgICeinUQpRjlH4ygExRAAefwfowtUF2MiD74piH
	v352zAZM8wm3M6p8GVoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXai0-0006ck-Dw; Sun, 10 May 2020 01:24:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXahu-0006bN-PS; Sun, 10 May 2020 01:24:44 +0000
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F65F24953;
 Sun, 10 May 2020 01:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589073879;
 bh=VDbINtk/hHh41cZphTvVQ8Ky+q+Za8dszq3rcDCuDgg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2s5RwkcCgY+7iBY9+BSxiC+PdZ3wCBfzORu1ikUu7+4VooqNCZ3Tp2S4MfpDzYqxD
 /Aiv27Fw5wwj6oC2C5Q0YbYIiWsI04Mf0rUOHlM+gZOIGafmPPxIGvmo/ldBlY9SzS
 bmWdTDX7rnr0Tn4kc9+cT7MdRhvcIb9g4jkIxy7M=
Received: by mail-ej1-f54.google.com with SMTP id s9so4806595eju.1;
 Sat, 09 May 2020 18:24:39 -0700 (PDT)
X-Gm-Message-State: AGi0PuYV17Wrv+TvIXF9DW9aUGI91KHghiG2O6hx74CkMIuCz/I0BW3I
 Tygla8UarNkRPPISMc4ci1tnDoLQlzOLboS3Jw==
X-Google-Smtp-Source: APiQypJQq9WhDnA9jUZbUiITcFvF3ELgL4vCwkLG+ADbvWTfS2qBr5SHAnlXV3hHEHN/KVbA4TLWtj15E1RhlIcsNFA=
X-Received: by 2002:a17:906:7717:: with SMTP id
 q23mr7983742ejm.38.1589073877528; 
 Sat, 09 May 2020 18:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200504141408.60877-1-enric.balletbo@collabora.com>
In-Reply-To: <20200504141408.60877-1-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 10 May 2020 09:24:26 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8vMG1k86V+qBhs0YH5QHELmgtJ0PNOAzWTHoTy2j=R2Q@mail.gmail.com>
Message-ID: <CAAOTY_8vMG1k86V+qBhs0YH5QHELmgtJ0PNOAzWTHoTy2j=R2Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] Convert mtk-dpi to drm_bridge API
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_182442_848616_7F9834C8 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQ15pyINOaXpSDpgLHkuIAg5LiL5Y2IMTA6MTTlr6vpgZPvvJoK
Pgo+IFRoZSBtdGstZHBpIGRyaXZlciBzdGlsbCB1c2VzIHRoZSBkcm1fZW5jb2RlciBBUEkgd2hp
Y2ggaXMgbm93IHNvbWVob3cKPiBkZXByZWNhdGVkLiBXZSBzdGFydGVkIHRvIG1vdmUgYWxsIHRo
ZSBNZWRpYXRlayBkcml2ZXJzIHRvIHRoZSBkcm1fYnJpZGdlIEFQSSwKPiBsaWtlIHdlIGRpZCBm
b3IgdGhlIG10ay1kc2kgZHJpdmVyIFsxXSwgdGhpcyBpcyBhbm90aGVyIHNtYWxsIHN0ZXAgdG8g
YmUgYWJsZSB0bwo+IGZ1bGx5IGNvbnZlcnQgdGhlIERSTSBNZWRpYXRlayBkcml2ZXJzIHRvIHRo
ZSBkcm1fYnJpZGdlIEFQSS4gQSBkdW1teQo+IGRybV9lbmNvZGVyIGlzIG1haW50YWluZWQgaW4g
dGhlIG10ay1kcGkgZHJpdmVyIGJ1dCB0aGUgZW5kIGdvYWwgaXMgbW92ZSBhbGwgdGhlCj4gZHVt
bXkgZHJtX2VuY29kZXIgKG10ay1kc2ksIG10ay1kcGksIGV0YykgdG8gdGhlIG1haW4gbXRrX2Ry
bV9kcnYgZHJpdmVyLgoKRm9yIHRoaXMgc2VyaWVzLCBhcHBsaWVkIHRvIG1lZGlhdGVrLWRybS1u
ZXh0IFsxXSwgdGhhbmtzLgoKWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L2NodW5rdWFuZy5odS9saW51eC5naXQvbG9nLz9oPW1lZGlhdGVrLWRybS1u
ZXh0CgpSZWdhcmRzLApDaHVuLUt1YW5nLgoKPgo+IEJlc3QgcmVnYXJkcywKPiAgRW5yaWMKPgo+
IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcHJvamVjdC9sa21sL2xpc3Qv
P3Nlcmllcz00NDE1NTkKPgo+IEVucmljIEJhbGxldGJvIGkgU2VycmEgKDMpOgo+ICAgZHJtL21l
ZGlhdGVrOiBtdGtfZHBpOiBSZW5hbWUgYnJpZGdlIHRvIG5leHRfYnJpZGdlCj4gICBkcm0vbWVk
aWF0ZWs6IG10a19kcGk6IENvbnZlcnQgdG8gYnJpZGdlIGRyaXZlcgo+ICAgZHJtL21lZGlhdGVr
OiBtdGtfZHBpOiBVc2Ugc2ltcGxlIGVuY29kZXIKPgo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0
ZWsvbXRrX2RwaS5jIHwgODQgKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCA0NSBkZWxldGlvbnMoLSkKPgo+IC0tCj4gMi4y
Ni4yCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
