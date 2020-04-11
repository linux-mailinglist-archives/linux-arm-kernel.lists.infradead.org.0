Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A5B1A4F25
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 11:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S91XqjbsE6/hyVrIrFhNwq/beS/mMS+Y1AS9+pLJMy0=; b=QFykZEbu1PnCcC
	Ln8C1hu75vhIjqE9McrA6ew13UiXepDdsrv+S8F30qBTyYg2cM54dlq+Ol1rKmOt9v2UN3ApbcDJf
	UnmhzuT5InG3zqgDNPQaMsBAfREG0jra65RdSCz/yTrRL+kJQ6OQMNCFbg5wbcyS7zErw0rF6dc11
	oQs8iFyZOTXVEO4TUyXGCk7CEZ87TAHs24NfEex8bicZmDBZt4sVVd0qINX8ckLvUHA4xqX5FocRW
	yGdXiNUK7vd4iosIt7MvzJt4U0CY27t1DeUBwlyvsPOL4Yp8akAQCU85rsa9biLrNx2Y1xkQmJN5+
	nm+80s4jaHy2aoCbYAkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNCSJ-0002Es-Oa; Sat, 11 Apr 2020 09:29:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNCSB-0002EU-6Q; Sat, 11 Apr 2020 09:29:32 +0000
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89D662137B;
 Sat, 11 Apr 2020 09:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586597370;
 bh=T2XJZMFnVJxhJBiSdgY1UUQ80WYQRwrWlS7q5nUYSuE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lKklqx8BYd0UYKMzJ+88WDj4CUjClWPQUqZk65uCWjZQBf06gH9JCvs+ztVxpg/iT
 PatLN98z/dFxVOm+WIBSKDrcST3y3XJctwwJWxUMBRHlbgoVWx7O26K3pj7MKnLBtz
 szIiBKsIpJioMBle3BBqn004L1i5nLqBpAH/tj7E=
Received: by mail-ed1-f50.google.com with SMTP id ca21so2943223edb.7;
 Sat, 11 Apr 2020 02:29:30 -0700 (PDT)
X-Gm-Message-State: AGi0PuZJgSTUFgmqLTvo9CSQsJGL9r8McEcxCGm+bSPPIBkMzh1s1GTo
 i4++DikzQuv6rdF61QHbnaHf+c5R3wzTu6Eeug==
X-Google-Smtp-Source: APiQypKEI2SJnc2qdBjS5UUds6QLILcrGaOGFdzZJduHjPg+e4go6UmBayzzuyz+ZWqMOPWss3L+1YG9LGFOdwNgYAY=
X-Received: by 2002:a17:906:124f:: with SMTP id
 u15mr7265836eja.360.1586597368924; 
 Sat, 11 Apr 2020 02:29:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200411074408.38090-1-jitao.shi@mediatek.com>
 <20200411074408.38090-5-jitao.shi@mediatek.com>
In-Reply-To: <20200411074408.38090-5-jitao.shi@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 11 Apr 2020 17:29:17 +0800
X-Gmail-Original-Message-ID: <CAAOTY__bMwxJ3GAK55nfabYWo4=fGrQC3XRj1uWaX=0nweueyw@mail.gmail.com>
Message-ID: <CAAOTY__bMwxJ3GAK55nfabYWo4=fGrQC3XRj1uWaX=0nweueyw@mail.gmail.com>
Subject: Re: [PATCH v6 4/4] drm/mediatek: config mipitx impedance with
 calibration data
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_022931_278167_4A9492C7 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, huijuan.xie@mediatek.com, stonea168@163.com,
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
tDTmnIgxMeaXpSDpgLHlha0g5LiL5Y2IMzo0NeWvq+mBk++8mgo+Cj4gUmVhZCBjYWxpYnJhdGlv
biBkYXRhIGZyb20gbnZtZW0sIGFuZCBjb25maWcgbWlwaXR4IGltcGVkYW5jZSB3aXRoCj4gY2Fs
aWJyYXRpb24gZGF0YSB0byBtYWtlIHN1cmUgdGhlaXIgaW1wZWRhbmNlIGFyZSAxMDBvaG0uCgpS
ZXZpZXdlZC1ieTogQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+Cgo+Cj4g
U2lnbmVkLW9mZi1ieTogSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX21pcGlfdHguYyAgICAgICAgfCA0MCArKysr
KysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbWlwaV90eC5o
ICAgICAgICB8ICAzICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbXQ4MTgzX21p
cGlfdHguYyB8IDIxICsrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCA2NCBpbnNlcnRpb25z
KCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19taXBpX3R4
LmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX21pcGlfdHguYwo+IGluZGV4IGUzMDFh
ZjY0ODA5ZS4uOGNlZTI1OTFlNzI4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfbWlwaV90eC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19t
aXBpX3R4LmMKPiBAQCAtODgsNiArODgsNDQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfb3Bz
IG10a19taXBpX3R4X29wcyA9IHsKPiAgICAgICAgIC5vd25lciA9IFRISVNfTU9EVUxFLAo+ICB9
Owo+Cj4gK3N0YXRpYyB2b2lkIG10a19taXBpX3R4X2dldF9jYWxpYnJhdGlvbl9kYXRhbChzdHJ1
Y3QgbXRrX21pcGlfdHggKm1pcGlfdHgpCj4gK3sKPiArICAgICAgIHN0cnVjdCBudm1lbV9jZWxs
ICpjZWxsOwo+ICsgICAgICAgc2l6ZV90IGxlbjsKPiArICAgICAgIHUzMiAqYnVmOwo+ICsKPiAr
ICAgICAgIGNlbGwgPSBudm1lbV9jZWxsX2dldChtaXBpX3R4LT5kZXYsICJjYWxpYnJhdGlvbi1k
YXRhIik7Cj4gKyAgICAgICBpZiAoSVNfRVJSKGNlbGwpKSB7Cj4gKyAgICAgICAgICAgICAgIGRl
dl9pbmZvKG1pcGlfdHgtPmRldiwgImNhbid0IGdldCBudm1lbV9jZWxsX2dldCwgaWdub3JlIGl0
XG4iKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsgICAgICAgfQo+ICsgICAgICAgYnVm
ID0gKHUzMiAqKW52bWVtX2NlbGxfcmVhZChjZWxsLCAmbGVuKTsKPiArICAgICAgIG52bWVtX2Nl
bGxfcHV0KGNlbGwpOwo+ICsKPiArICAgICAgIGlmIChJU19FUlIoYnVmKSkgewo+ICsgICAgICAg
ICAgICAgICBkZXZfaW5mbyhtaXBpX3R4LT5kZXYsICJjYW4ndCBnZXQgZGF0YSwgaWdub3JlIGl0
XG4iKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAg
IGlmIChsZW4gPCAzICogc2l6ZW9mKHUzMikpIHsKPiArICAgICAgICAgICAgICAgZGV2X2luZm8o
bWlwaV90eC0+ZGV2LCAiaW52YWxpZCBjYWxpYnJhdGlvbiBkYXRhXG4iKTsKPiArICAgICAgICAg
ICAgICAga2ZyZWUoYnVmKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsgICAgICAgfQo+
ICsKPiArICAgICAgIG1pcGlfdHgtPnJ0X2NvZGVbMF0gPSAoKGJ1ZlswXSA+PiA2ICYgMHgxZikg
PDwgNSkgfAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoYnVmWzBdID4+IDExICYg
MHgxZik7Cj4gKyAgICAgICBtaXBpX3R4LT5ydF9jb2RlWzFdID0gKChidWZbMV0gPj4gMjcgJiAw
eDFmKSA8PCA1KSB8Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIChidWZbMF0gPj4g
MSAmIDB4MWYpOwo+ICsgICAgICAgbWlwaV90eC0+cnRfY29kZVsyXSA9ICgoYnVmWzFdID4+IDE3
ICYgMHgxZikgPDwgNSkgfAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoYnVmWzFd
ID4+IDIyICYgMHgxZik7Cj4gKyAgICAgICBtaXBpX3R4LT5ydF9jb2RlWzNdID0gKChidWZbMV0g
Pj4gNyAmIDB4MWYpIDw8IDUpIHwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKGJ1
ZlsxXSA+PiAxMiAmIDB4MWYpOwo+ICsgICAgICAgbWlwaV90eC0+cnRfY29kZVs0XSA9ICgoYnVm
WzJdID4+IDI3ICYgMHgxZikgPDwgNSkgfAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAoYnVmWzFdID4+IDIgJiAweDFmKTsKPiArICAgICAgIGtmcmVlKGJ1Zik7Cj4gK30KPiArCj4g
IHN0YXRpYyBpbnQgbXRrX21pcGlfdHhfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiAgewo+ICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiBAQCAt
MTc0LDYgKzIxMiw4IEBAIHN0YXRpYyBpbnQgbXRrX21pcGlfdHhfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPgo+ICAgICAgICAgbWlwaV90eC0+ZGV2ID0gZGV2Owo+Cj4gKyAg
ICAgICBtdGtfbWlwaV90eF9nZXRfY2FsaWJyYXRpb25fZGF0YWwobWlwaV90eCk7Cj4gKwo+ICAg
ICAgICAgcmV0dXJuIG9mX2Nsa19hZGRfcHJvdmlkZXIoZGV2LT5vZl9ub2RlLCBvZl9jbGtfc3Jj
X3NpbXBsZV9nZXQsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtaXBpX3R4
LT5wbGwpOwo+ICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtf
bWlwaV90eC5oIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19taXBpX3R4LmgKPiBpbmRl
eCBlZWE0NDMyN2ZlOWYuLmM3NmYwN2MzZmRlYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX21pcGlfdHguaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfbWlwaV90eC5oCj4gQEAgLTEyLDkgKzEyLDExIEBACj4gICNpbmNsdWRlIDxsaW51eC9k
ZWxheS5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVs
ZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvbnZtZW0tY29uc3VtZXIuaD4KPiAgI2luY2x1ZGUgPGxp
bnV4L29mX2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4g
ICNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4K
PiAgc3RydWN0IG10a19taXBpdHhfZGF0YSB7Cj4gICAgICAgICBjb25zdCB1MzIgbXBwbGxfcHJl
c2VydmU7Cj4gQEAgLTI4LDYgKzMwLDcgQEAgc3RydWN0IG10a19taXBpX3R4IHsKPiAgICAgICAg
IHZvaWQgX19pb21lbSAqcmVnczsKPiAgICAgICAgIHUzMiBkYXRhX3JhdGU7Cj4gICAgICAgICB1
MzIgbWlwaXR4X2RyaXZlOwo+ICsgICAgICAgdTMyIHJ0X2NvZGVbNV07Cj4gICAgICAgICBjb25z
dCBzdHJ1Y3QgbXRrX21pcGl0eF9kYXRhICpkcml2ZXJfZGF0YTsKPiAgICAgICAgIHN0cnVjdCBj
bGtfaHcgcGxsX2h3Owo+ICAgICAgICAgc3RydWN0IGNsayAqcGxsOwo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX210ODE4M19taXBpX3R4LmMgYi9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX210ODE4M19taXBpX3R4LmMKPiBpbmRleCBlNGNjOTY3NzUwY2Iu
LjlmM2U1NWFlZWJiMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRr
X210ODE4M19taXBpX3R4LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX210
ODE4M19taXBpX3R4LmMKPiBAQCAtMjgsNiArMjgsNyBAQAo+ICAjZGVmaW5lIE1JUElUWF9QTExf
Q09ONCAgICAgICAgICAgICAgICAweDAwM2MKPiAgI2RlZmluZSBSR19EU0lfUExMX0lCSUFTICAg
ICAgICAgICAgICAgKDMgPDwgMTApCj4KPiArI2RlZmluZSBNSVBJVFhfRDJQX1JUQ09ERSAgICAg
IDB4MDEwMAo+ICAjZGVmaW5lIE1JUElUWF9EMl9TV19DVExfRU4gICAgMHgwMTQ0Cj4gICNkZWZp
bmUgTUlQSVRYX0QwX1NXX0NUTF9FTiAgICAweDAyNDQKPiAgI2RlZmluZSBNSVBJVFhfQ0tfQ0tN
T0RFX0VOICAgIDB4MDMyOAo+IEBAIC0xMDgsNiArMTA5LDI0IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgY2xrX29wcyBtdGtfbWlwaV90eF9wbGxfb3BzID0gewo+ICAgICAgICAgLnJlY2FsY19yYXRl
ID0gbXRrX21pcGlfdHhfcGxsX3JlY2FsY19yYXRlLAo+ICB9Owo+Cj4gK3N0YXRpYyB2b2lkIG10
a19taXBpX3R4X2NvbmZpZ19jYWxpYnJhdGlvbl9kYXRhKHN0cnVjdCBtdGtfbWlwaV90eCAqbWlw
aV90eCkKPiArewo+ICsgICAgICAgaW50IGksIGo7Cj4gKwo+ICsgICAgICAgZm9yIChpID0gMDsg
aSA8IDU7IGkrKykgewo+ICsgICAgICAgICAgICAgICBpZiAoKG1pcGlfdHgtPnJ0X2NvZGVbaV0g
JiAweDFmKSA9PSAwKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIG1pcGlfdHgtPnJ0X2NvZGVb
aV0gfD0gMHgxMDsKPiArCj4gKyAgICAgICAgICAgICAgIGlmICgobWlwaV90eC0+cnRfY29kZVtp
XSA+PiA1ICYgMHgxZikgPT0gMCkKPiArICAgICAgICAgICAgICAgICAgICAgICBtaXBpX3R4LT5y
dF9jb2RlW2ldIHw9IDB4MTAgPDwgNTsKPiArCj4gKyAgICAgICAgICAgICAgIGZvciAoaiA9IDA7
IGogPCAxMDsgaisrKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIG10a19taXBpX3R4X3VwZGF0
ZV9iaXRzKG1pcGlfdHgsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBNSVBJVFhf
RDJQX1JUQ09ERSAqIChpICsgMSkgKyBqICogNCwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDEsIG1pcGlfdHgtPnJ0X2NvZGVbaV0gPj4gaiAmIDEpOwo+ICsgICAgICAgfQo+ICt9
Cj4gKwo+ICBzdGF0aWMgdm9pZCBtdGtfbWlwaV90eF9wb3dlcl9vbl9zaWduYWwoc3RydWN0IHBo
eSAqcGh5KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgbXRrX21pcGlfdHggKm1pcGlfdHggPSBwaHlf
Z2V0X2RydmRhdGEocGh5KTsKPiBAQCAtMTMwLDYgKzE0OSw4IEBAIHN0YXRpYyB2b2lkIG10a19t
aXBpX3R4X3Bvd2VyX29uX3NpZ25hbChzdHJ1Y3QgcGh5ICpwaHkpCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBSR19EU0lfSFNUWF9MRE9fUkVGX1NFTCwKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIChtaXBpX3R4LT5taXBpdHhfZHJpdmUgLSAzMDAwKSAvIDIwMCA8
PCA2KTsKPgo+ICsgICAgICAgbXRrX21pcGlfdHhfY29uZmlnX2NhbGlicmF0aW9uX2RhdGEobWlw
aV90eCk7Cj4gKwo+ICAgICAgICAgbXRrX21pcGlfdHhfc2V0X2JpdHMobWlwaV90eCwgTUlQSVRY
X0NLX0NLTU9ERV9FTiwgRFNJX0NLX0NLTU9ERV9FTik7Cj4gIH0KPgo+IC0tCj4gMi4yMS4wCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1t
ZWRpYXRlayBtYWlsaW5nIGxpc3QKPiBMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRp
YXRlawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
