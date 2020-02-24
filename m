Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C2E16B018
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTYOSKMhu4bRmDfgr0pwmlsdgAwD/SnhOq+Bn065km8=; b=CwJ5/tAzXPGiRV
	2b+3/AlEvkW5nGkxhxR9R3L7DXAoPQ9PI4k8T7ssrZWukZNVxsB1+2+q5fik3cSAX4RdhWdvuj8bt
	xfEIwE4ZDdjaMLWUOsYX7SVVdKfboBsXs+KO7gEHB5r3GS5kSI4agW6SxZWluR3mzQhHb7jJi7Bpp
	eprnbBSXPnNPk/FLHliZ5b+zpFGB4/YsJAIuqqK4ARY2FiBexXD8tNM66EikzHJkrzKL3rgAodlMW
	woHDwFyVjXsBu6LfJxEWhLXfpsLwP/A8MV8rObhmWHOYvsVVdsDzTj8oZfUNcr3KPSOTxDmiv6S5d
	ITWQdxzPar/kIUAShGKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JB9-00022I-7X; Mon, 24 Feb 2020 19:14:07 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JAY-0001fM-PJ; Mon, 24 Feb 2020 19:13:32 +0000
Received: by mail-ed1-x544.google.com with SMTP id r21so13276850edq.0;
 Mon, 24 Feb 2020 11:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xkWaeMtsXnKRrdWbd6x45iH+7lmvkEIdnypEtDebppw=;
 b=ldlg3pBME1sCG3OTpIyFgHbvs9K5K6YkBneM3CMu3vKiwYiL1d3pXgGhw8h34dEy2M
 t7nL6Z9WmvA9WL+3wc207MYSlwj2zfswn8isxPi/tGCSH2PAFchP6VnR1Rahk3sMjHCs
 +js5ZqOFrfSiEz3So2R8/7JzTJNIydJ47+C4XcYwjJIfkNQQwBM4mUgAee3BUuQ892Wz
 k4CjsEXpsAjERqbvFWnNbSH18PMN6Af/FcvWuj+sniez/RtUxuqabWrN0YGmPeUtcREp
 sG9MDmpnCbiIYB1Kzl/HkAxhsd4rHWrzksXBOPeDG7ffDt4RBmie2yHwV6GjU/gJ95ni
 Dygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xkWaeMtsXnKRrdWbd6x45iH+7lmvkEIdnypEtDebppw=;
 b=hqpPPDLoct2xXXd2JHq2dBuDGbz3RrbLorrVcNrRdgTAstl2ChGBHHa9O+bTrXttIL
 XrxgaLE5bAfL4lbMiPyLnUYYxdyUgbRhNLAaZ7HmuyxQfVIG3XuhaIBUxjNAVSKgda3Q
 lxB7OF20RpHUMuU/++bIu2bao6hv+JRDOxEEjLtkrGfBouQif9eGjnzYvaRBEWHfDof5
 5LtP/k170zY8FvCt+ezXpb1mfwU8sQ8rsGaksPNEjD3fup11MO/Dq4DTt3JH9BSS/aiD
 BzBtDIhyzfGX6l9d07/lGyo4tA3ZIibMVcGPCCvhP8WS65dx3xPDe9amP1pF2elGjMHU
 FHyw==
X-Gm-Message-State: APjAAAXpjWmAwkyV6AhqfJm373ExewK6Nw/Km0+49a67HJbt2wwrrjHS
 8+qocK0u2eZxlpYrBSuYsOwJve2rj82Yfkk6C5a/7gmn
X-Google-Smtp-Source: APXvYqzHtQxMY2oHx8Of7QEKvDPjWLpAYTMKKAAkyNSEIPSlGsMRLUvAcWteNZ7vWD3vUSDcV+2lJcwXRWVx01UO9b8=
X-Received: by 2002:a17:906:1181:: with SMTP id
 n1mr49180167eja.218.1582571607685; 
 Mon, 24 Feb 2020 11:13:27 -0800 (PST)
MIME-Version: 1.0
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
 <20200221210319.2245170-38-daniel.vetter@ffwll.ch>
In-Reply-To: <20200221210319.2245170-38-daniel.vetter@ffwll.ch>
From: Francesco Lavra <francescolavra.fl@gmail.com>
Date: Mon, 24 Feb 2020 20:13:10 +0100
Message-ID: <CAOau3s8hWzD6xc6grZJr+yjtXuW1g=E_8tPigOUk-cJEQ8-JfQ@mail.gmail.com>
Subject: Re: [PATCH 37/51] drm/rockchip: Drop explicit drm_mode_config_cleanup
 call
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_111330_864080_35E26B66 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [francescolavra.fl[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBGZWIgMjEsIDIwMjAgYXQgMTA6MDQgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4gd3JvdGU6Cj4KPiBJdCdzIChhbG1vc3QsIHRoZXJlJ3Mgc29tZSBpb21t
dSBzdHVmZiB3aXRob3V0IHNpZ25pZmljYW5jZSkgcmlnaHQKPiBhYm92ZSB0aGUgZHJtX2Rldl9w
dXQoKS4KPgo+IFRoaXMgaXMgbWFkZSBwb3NzaWJsZSBieSBhIHByZWNlZWRpbmcgcGF0Y2ggd2hp
Y2ggYWRkZWQgYSBkcm1tXwo+IGNsZWFudXAgYWN0aW9uIHRvIGRybV9tb2RlX2NvbmZpZ19pbml0
KCksIGhlbmNlIGFsbCB3ZSBuZWVkIHRvIGRvIHRvCj4gZW5zdXJlIHRoYXQgZHJtX21vZGVfY29u
ZmlnX2NsZWFudXAoKSBpcyBydW4gb24gZmluYWwgZHJtX2RldmljZQo+IGNsZWFudXAgaXMgY2hl
Y2sgdGhlIG5ldyBlcnJvciBjb2RlIGZvciBfaW5pdCgpLgo+Cj4gQXNpZGU6IEFub3RoZXIgZHJp
dmVyIHdpdGggYSBiaXQgbXVjaCBkZXZtX2t6YWxsb2MsIHdoaWNoIHNob3VsZAo+IHByb2JhYmx5
IHVzZSBkcm1tX2t6YWxsb2MgaW5zdGVhZCAuLi4KPgo+IHYyOiBFeHBsYWluIHdoeSB0aGlzIGNs
ZWFudXAgaXMgcG9zc2libGUgKExhdXJlbnQpLgo+Cj4gQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxh
dXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiBDYzogU2FuZHkgSHVhbmcgPGhqY0By
b2NrLWNoaXBzLmNvbT4KPiBDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgo+
IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2Rydi5jIHwgMTAgKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gaW5kZXggMjBlY2IxNTA4YTIyLi5kMGViYTIxZWVi
YzkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9k
cnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMK
PiBAQCAtMTM1LDcgKzEzNSw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0
IGRldmljZSAqZGV2KQo+ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgZ290byBl
cnJfZnJlZTsKPgo+IC0gICAgICAgZHJtX21vZGVfY29uZmlnX2luaXQoZHJtX2Rldik7Cj4gKyAg
ICAgICByZXQgPSBkcm1fbW9kZV9jb25maWdfaW5pdChkcm1fZGV2KTsKPiArICAgICAgIGlmIChy
ZXQpCj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWU7CgpTaG91bGRuJ3QgdGhlIGdvdG8g
bGFiZWwgYmUgZXJyX21vZGVfY29uZmlnX2NsZWFudXAgaGVyZT8gT3RoZXJ3aXNlCnRoaXMgZXJy
b3IgcGF0aCBtaXNzZXMgdGhlIGNhbGwgdG8gcm9ja2NoaXBfaW9tbXVfY2xlYW51cCgpLgoKPgo+
ICAgICAgICAgcm9ja2NoaXBfZHJtX21vZGVfY29uZmlnX2luaXQoZHJtX2Rldik7Cj4KPiBAQCAt
MTc0LDExICsxNzYsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2RybV9iaW5kKHN0cnVjdCBkZXZp
Y2UgKmRldikKPiAgZXJyX3VuYmluZF9hbGw6Cj4gICAgICAgICBjb21wb25lbnRfdW5iaW5kX2Fs
bChkZXYsIGRybV9kZXYpOwo+ICBlcnJfbW9kZV9jb25maWdfY2xlYW51cDoKPiAtICAgICAgIGRy
bV9tb2RlX2NvbmZpZ19jbGVhbnVwKGRybV9kZXYpOwo+ICAgICAgICAgcm9ja2NoaXBfaW9tbXVf
Y2xlYW51cChkcm1fZGV2KTsKPiAgZXJyX2ZyZWU6Cj4gLSAgICAgICBkcm1fZGV2LT5kZXZfcHJp
dmF0ZSA9IE5VTEw7Cj4gLSAgICAgICBkZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKPiAgICAg
ICAgIGRybV9kZXZfcHV0KGRybV9kZXYpOwo+ICAgICAgICAgcmV0dXJuIHJldDsKPiAgfQoKT24g
RnJpLCBGZWIgMjEsIDIwMjAgYXQgMTA6MDQgUE0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4gd3JvdGU6Cj4KPiBJdCdzIChhbG1vc3QsIHRoZXJlJ3Mgc29tZSBpb21tdSBz
dHVmZiB3aXRob3V0IHNpZ25pZmljYW5jZSkgcmlnaHQKPiBhYm92ZSB0aGUgZHJtX2Rldl9wdXQo
KS4KPgo+IFRoaXMgaXMgbWFkZSBwb3NzaWJsZSBieSBhIHByZWNlZWRpbmcgcGF0Y2ggd2hpY2gg
YWRkZWQgYSBkcm1tXwo+IGNsZWFudXAgYWN0aW9uIHRvIGRybV9tb2RlX2NvbmZpZ19pbml0KCks
IGhlbmNlIGFsbCB3ZSBuZWVkIHRvIGRvIHRvCj4gZW5zdXJlIHRoYXQgZHJtX21vZGVfY29uZmln
X2NsZWFudXAoKSBpcyBydW4gb24gZmluYWwgZHJtX2RldmljZQo+IGNsZWFudXAgaXMgY2hlY2sg
dGhlIG5ldyBlcnJvciBjb2RlIGZvciBfaW5pdCgpLgo+Cj4gQXNpZGU6IEFub3RoZXIgZHJpdmVy
IHdpdGggYSBiaXQgbXVjaCBkZXZtX2t6YWxsb2MsIHdoaWNoIHNob3VsZAo+IHByb2JhYmx5IHVz
ZSBkcm1tX2t6YWxsb2MgaW5zdGVhZCAuLi4KPgo+IHYyOiBFeHBsYWluIHdoeSB0aGlzIGNsZWFu
dXAgaXMgcG9zc2libGUgKExhdXJlbnQpLgo+Cj4gQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJl
bnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiBDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2Nr
LWNoaXBzLmNvbT4KPiBDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgo+IENj
OiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2Rydi5jIHwgMTAgKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gaW5kZXggMjBlY2IxNTA4YTIyLi5kMGViYTIxZWViYzkg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKPiBA
QCAtMTM1LDcgKzEzNSw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0IGRl
dmljZSAqZGV2KQo+ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgZ290byBlcnJf
ZnJlZTsKPgo+IC0gICAgICAgZHJtX21vZGVfY29uZmlnX2luaXQoZHJtX2Rldik7Cj4gKyAgICAg
ICByZXQgPSBkcm1fbW9kZV9jb25maWdfaW5pdChkcm1fZGV2KTsKPiArICAgICAgIGlmIChyZXQp
Cj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWU7Cj4KPiAgICAgICAgIHJvY2tjaGlwX2Ry
bV9tb2RlX2NvbmZpZ19pbml0KGRybV9kZXYpOwo+Cj4gQEAgLTE3NCwxMSArMTc2LDggQEAgc3Rh
dGljIGludCByb2NrY2hpcF9kcm1fYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIGVycl91bmJp
bmRfYWxsOgo+ICAgICAgICAgY29tcG9uZW50X3VuYmluZF9hbGwoZGV2LCBkcm1fZGV2KTsKPiAg
ZXJyX21vZGVfY29uZmlnX2NsZWFudXA6Cj4gLSAgICAgICBkcm1fbW9kZV9jb25maWdfY2xlYW51
cChkcm1fZGV2KTsKPiAgICAgICAgIHJvY2tjaGlwX2lvbW11X2NsZWFudXAoZHJtX2Rldik7Cj4g
IGVycl9mcmVlOgo+IC0gICAgICAgZHJtX2Rldi0+ZGV2X3ByaXZhdGUgPSBOVUxMOwo+IC0gICAg
ICAgZGV2X3NldF9kcnZkYXRhKGRldiwgTlVMTCk7Cj4gICAgICAgICBkcm1fZGV2X3B1dChkcm1f
ZGV2KTsKPiAgICAgICAgIHJldHVybiByZXQ7Cj4gIH0KPiBAQCAtMTk0LDExICsxOTMsOCBAQCBz
dGF0aWMgdm9pZCByb2NrY2hpcF9kcm1fdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPgo+ICAg
ICAgICAgZHJtX2F0b21pY19oZWxwZXJfc2h1dGRvd24oZHJtX2Rldik7Cj4gICAgICAgICBjb21w
b25lbnRfdW5iaW5kX2FsbChkZXYsIGRybV9kZXYpOwo+IC0gICAgICAgZHJtX21vZGVfY29uZmln
X2NsZWFudXAoZHJtX2Rldik7Cj4gICAgICAgICByb2NrY2hpcF9pb21tdV9jbGVhbnVwKGRybV9k
ZXYpOwo+Cj4gLSAgICAgICBkcm1fZGV2LT5kZXZfcHJpdmF0ZSA9IE5VTEw7Cj4gLSAgICAgICBk
ZXZfc2V0X2RydmRhdGEoZGV2LCBOVUxMKTsKPiAgICAgICAgIGRybV9kZXZfcHV0KGRybV9kZXYp
Owo+ICB9Cj4KPiAtLQo+IDIuMjQuMQo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
