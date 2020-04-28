Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B57411BB3A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 03:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OSpD3GKqoKFnRAImhVeGJQKbefvvSxXV+CxK31xx+o0=; b=C2tHjHOtO1wTPd
	gST2KqPMkbAD3qQfyyEEnBmSg92qc+JR4RmYkgEPxtquKIKUQk3w/o5bDS3JpAEQECnRXuPSPIL7b
	UEVemGg/l4O/Kz6suUy0ko5XP+i3m0BaW63GIzeEaswpc/dmAdzJ0Deiy4NeNrCar9fDauRDD/wZq
	VnWHcAOQHqBh4sgdbSPPqBYRv9myCM9ypvoM2zt5yiv5pt8k62fD1c9223pw23mOKJ0IUtSNLROo+
	p9ywghFJo4qsQdttxSniy8Wx1xUslCygr56w+6grcGtOOU6wTJjiFGX4xLRWI6XtvDE+P1WfAbKrJ
	KfGOR49W5j7QEFlTvt1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTFSV-0004hF-QF; Tue, 28 Apr 2020 01:54:51 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTFSN-0004gG-3u
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 01:54:44 +0000
Received: by mail-io1-xd44.google.com with SMTP id b12so21117436ion.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 18:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Dn5FsFHXDoP63PfOK+hSyyadWEoDt1vFl68jXDW6Zcs=;
 b=DIysdPazFDSPjWrk9J98X+PHbjtukRlthArlsiKuuAdwBzWfCicMgBuJ0xfyvX7NQA
 OWgWZ8KUgpqJQgeK8x61TqtaPo+WcfYOyCM+yzAW3UUIRconylO19z25qm6WYlx0mmM1
 sbTETGjjaQ0hsRQFPAGzSo/6+tDT7W0hc+/uk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Dn5FsFHXDoP63PfOK+hSyyadWEoDt1vFl68jXDW6Zcs=;
 b=TpLn1p0pahp0D+IuTaLcFfTS/Z6KNL2oveG7jNoNGlVEidqGklq17F8J0C6G8C4D3x
 zJ3QG3cmKJ1D7tgvG7LEt679CLE5+iNvQRg1OIkQs5ViQCz8v3mcpwOXWO3t5bXfmoBu
 dvjDzNQIwr55tPXS3ZJA5kfpnn8ytAyCn8PYqO24e4OJzlVta34IdhTtHwQ1lZhpSMq+
 52OqCabFJhP4RIl1vYI3MxNIT7Cc09iRoNBJxynzG3S+bvSzqR5W1vxRuwk5pGuTt7bj
 3YIf05RWjgBnGSv19iBUjU0OsiLU+0Nw06gMYNXc1rBc3zQEJyAyBZHYWhp/icj8FGhb
 V8iw==
X-Gm-Message-State: AGi0PuZejPEtQp3Dp/OUm2HnYYYJShiILohryDDaeiyJb6F+YMJtNMk5
 Q1TZ4B9/buLVnOemw3w236XyXgl1aY8JaS1O
X-Google-Smtp-Source: APiQypJeUgm0Aq5+hefPlTGR7S3zgwR0gCZyg0ApiBVHAJKTMCerc43uBNkCRBVA/ndw8h0krrrfQA==
X-Received: by 2002:a5e:9806:: with SMTP id s6mr24105060ioj.59.1588038880736; 
 Mon, 27 Apr 2020 18:54:40 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com.
 [209.85.166.43])
 by smtp.gmail.com with ESMTPSA id j20sm5943302ile.41.2020.04.27.18.54.39
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 18:54:39 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id y26so11272174ioj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 18:54:39 -0700 (PDT)
X-Received: by 2002:a6b:9088:: with SMTP id
 s130mr23613954iod.122.1588038879127; 
 Mon, 27 Apr 2020 18:54:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200420060834.44461-1-amistry@google.com>
 <CAAOTY_81qB+WJN_2-ZNqM63NOp+Es1qEmsp2qje2bfePg1O5Vw@mail.gmail.com>
In-Reply-To: <CAAOTY_81qB+WJN_2-ZNqM63NOp+Es1qEmsp2qje2bfePg1O5Vw@mail.gmail.com>
From: "Anand K. Mistry" <amistry@chromium.org>
Date: Tue, 28 Apr 2020 11:54:28 +1000
X-Gmail-Original-Message-ID: <CAATStaNwCyveF-fmrT=1m-BJh=8WOyaffFzVsC_Lo_rFkm6Z=Q@mail.gmail.com>
Message-ID: <CAATStaNwCyveF-fmrT=1m-BJh=8WOyaffFzVsC_Lo_rFkm6Z=Q@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: stop iterating dma addresses when
 sg_dma_len() == 0
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_185443_160636_BC8811BE 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyNiBBcHIgMjAyMCBhdCAxODowNCwgQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gSGksIEFuYW5kOgo+Cj4gQW5hbmQgSyBNaXN0cnkgPGFt
aXN0cnlAY2hyb21pdW0ub3JnPiDmlrwgMjAyMOW5tDTmnIgyMOaXpSDpgLHkuIAg5LiL5Y2IMjow
OeWvq+mBk++8mgo+ID4KPiA+IElmIGRtYV9tYXBfc2coKSBtZXJnZXMgcGFnZXMgd2hlbiBjcmVh
dGluZyB0aGUgbWFwcGluZywgb25seSB0aGUgZmlyc3QKPiA+IGVudHJpZXMgd2lsbCBoYXZlIGEg
dmFsaWQgc2dfZG1hX2FkZHJlc3MoKSBhbmQgc2dfZG1hX2xlbigpLCBmb2xsb3dlZCBieQo+ID4g
ZW50cmllcyB3aXRoIHNnX2RtYV9sZW4oKSA9PSAwLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFu
YW5kIEsgTWlzdHJ5IDxhbWlzdHJ5QGdvb2dsZS5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYyB8IDMgKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVk
aWF0ZWsvbXRrX2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dl
bS5jCj4gPiBpbmRleCBiMDRhM2MyYjExMWUwOS4uZjhmZDhiOThjMzBlM2QgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYwo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMKPiA+IEBAIC0yMjQsNiArMjI0LDkg
QEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICptdGtfZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZShz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ID4KPiA+ICAgICAgICAgZXhwZWN0ZWQgPSBzZ19kbWFf
YWRkcmVzcyhzZy0+c2dsKTsKPiA+ICAgICAgICAgZm9yX2VhY2hfc2coc2ctPnNnbCwgcywgc2ct
Pm5lbnRzLCBpKSB7Cj4gPiArICAgICAgICAgICAgICAgaWYgKCFzZ19kbWFfbGVuKHMpKQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4KPiBJIHRoaW5rIHRoaXMgc2hvdWxkIGJl
ICdjb250aW51ZScKCnNjYXR0ZXJsaXN0LmggaGFzIHRoZSBjb21tZW50OgovKgogKiBUaGVzZSBt
YWNyb3Mgc2hvdWxkIGJlIHVzZWQgYWZ0ZXIgYSBkbWFfbWFwX3NnIGNhbGwgaGFzIGJlZW4gZG9u
ZQogKiB0byBnZXQgYnVzIGFkZHJlc3NlcyBvZiBlYWNoIG9mIHRoZSBTRyBlbnRyaWVzIGFuZCB0
aGVpciBsZW5ndGhzLgogKiBZb3Ugc2hvdWxkIG9ubHkgd29yayB3aXRoIHRoZSBudW1iZXIgb2Yg
c2cgZW50cmllcyBkbWFfbWFwX3NnCiAqIHJldHVybnMsIG9yIGFsdGVybmF0aXZlbHkgc3RvcCBv
biB0aGUgZmlyc3Qgc2dfZG1hX2xlbihzZykgd2hpY2gKICogaXMgMC4KICovCgpTbyBicmVha2lu
ZyBvbiB0aGUgZmlyc3Qgc2dfZG1hX2xlbihzZykgPT0gMCBhcHBlYXJzIHRvIGJlIChvbmUgb2Yp
CnRoZSBkb2N1bWVudGVkIGFwcHJvYWNoLgoKPgo+IFJlZ2FyZHMsCj4gQ2h1bi1LdWFuZy4KPgo+
ID4gKwo+ID4gICAgICAgICAgICAgICAgIGlmIChzZ19kbWFfYWRkcmVzcyhzKSAhPSBleHBlY3Rl
ZCkgewo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJzZ190YWJsZSBpcyBu
b3QgY29udGlndW91cyIpOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgcmV0ID0gLUVJTlZB
TDsKPiA+IC0tCj4gPiAyLjI2LjEuMzAxLmc1NWJjM2ViN2NiOS1nb29nCj4gPgo+ID4KPiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBMaW51eC1t
ZWRpYXRlayBtYWlsaW5nIGxpc3QKPiA+IExpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bWVkaWF0ZWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
