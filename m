Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 558861B8DC0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 10:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxgAj65fMj/bWt7/4oOWBaJ5GpsO6sQmfXJ0uHANtU4=; b=PtJQgYupQMAqOW
	xhesQt1GlAFalJtYgyDn1Usb6sNMsKt9glopS+2DuqIevBgvaj2T5TUCcXJx5Mk+Y+mjcLKEMwwNp
	C9+5VHPIJrQ8HWMOyMH1FYeFnbR81OzyrSdm2HaV0PgPjzyBYCSroFOYIExTBAcPE0XOMGTkrlZeF
	XcxelemY5antuXCecWudhQOZG8Diyv4UKNkQZAxZc4U+nfeGNZGdG+Qdt0Y2G0otHcTrsyRBJlSRq
	POTSGoPTe479siBC8UwL7dYX/YOK1oKZS/i744kwAI5oItEd1H5Nzwh+oLK8mt39tewww/7r974jT
	D9J4dyxVDSH24tkT8l9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jScGt-0002os-GJ; Sun, 26 Apr 2020 08:04:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jScGl-0002o8-FU; Sun, 26 Apr 2020 08:04:08 +0000
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79F8A2071E;
 Sun, 26 Apr 2020 08:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587888246;
 bh=jphKvnWk7WVhKKU6EZqbG3syQ+XrF7hyrea1GwjpeqI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=a+fJbN9EkjIpg0Jp8YBMe5XxSzh6wc36zDkMIUlYAVFDj4cmPDpLPnaYnJB1NL6dZ
 sgt8EiV/UkIQINtObub79LC4m+H6TAMe7GTo4XoSv3kpIO8xDzgGARpOY1jpcG66/h
 RuBonpceH2JmY61Gx2sMeN3BjOa/9iQhANdcu/mA=
Received: by mail-ed1-f42.google.com with SMTP id d16so11022629edv.8;
 Sun, 26 Apr 2020 01:04:06 -0700 (PDT)
X-Gm-Message-State: AGi0PuY/Q4G5Kbv0kT5D/j6yM3796Jye2ROFqxMNb6WxlauIogwzKOpm
 Chh8flTvy6Jx6V3nvmHKruDZKHTIcePM/r9Zyw==
X-Google-Smtp-Source: APiQypI41ZgtUmbcPsFD/aQIGzgLUAlW+VK1CXBcWhrzELEevx/EHxwq4GUoRPrYvidlr2de35GPe+5uokqoXF6ePxE=
X-Received: by 2002:a50:ea87:: with SMTP id d7mr8373594edo.48.1587888244933;
 Sun, 26 Apr 2020 01:04:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200420060834.44461-1-amistry@google.com>
In-Reply-To: <20200420060834.44461-1-amistry@google.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 26 Apr 2020 16:03:53 +0800
X-Gmail-Original-Message-ID: <CAAOTY_81qB+WJN_2-ZNqM63NOp+Es1qEmsp2qje2bfePg1O5Vw@mail.gmail.com>
Message-ID: <CAAOTY_81qB+WJN_2-ZNqM63NOp+Es1qEmsp2qje2bfePg1O5Vw@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: stop iterating dma addresses when
 sg_dma_len() == 0
To: Anand K Mistry <amistry@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_010407_538516_DD63A748 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Anand K Mistry <amistry@google.com>,
 DRI Development <dri-devel@lists.freedesktop.org>, CK Hu <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEFuYW5kOgoKQW5hbmQgSyBNaXN0cnkgPGFtaXN0cnlAY2hyb21pdW0ub3JnPiDmlrwgMjAy
MOW5tDTmnIgyMOaXpSDpgLHkuIAg5LiL5Y2IMjowOeWvq+mBk++8mgo+Cj4gSWYgZG1hX21hcF9z
ZygpIG1lcmdlcyBwYWdlcyB3aGVuIGNyZWF0aW5nIHRoZSBtYXBwaW5nLCBvbmx5IHRoZSBmaXJz
dAo+IGVudHJpZXMgd2lsbCBoYXZlIGEgdmFsaWQgc2dfZG1hX2FkZHJlc3MoKSBhbmQgc2dfZG1h
X2xlbigpLCBmb2xsb3dlZCBieQo+IGVudHJpZXMgd2l0aCBzZ19kbWFfbGVuKCkgPT0gMC4KPgo+
IFNpZ25lZC1vZmYtYnk6IEFuYW5kIEsgTWlzdHJ5IDxhbWlzdHJ5QGdvb2dsZS5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jIHwgMyArKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9tZWRpYXRlay9tdGtfZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kcm1fZ2VtLmMKPiBpbmRleCBiMDRhM2MyYjExMWUwOS4uZjhmZDhiOThjMzBlM2QgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZ2VtLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYwo+IEBAIC0yMjQsNiArMjI0LDkg
QEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICptdGtfZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZShz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+Cj4gICAgICAgICBleHBlY3RlZCA9IHNnX2RtYV9hZGRy
ZXNzKHNnLT5zZ2wpOwo+ICAgICAgICAgZm9yX2VhY2hfc2coc2ctPnNnbCwgcywgc2ctPm5lbnRz
LCBpKSB7Cj4gKyAgICAgICAgICAgICAgIGlmICghc2dfZG1hX2xlbihzKSkKPiArICAgICAgICAg
ICAgICAgICAgICAgICBicmVhazsKCkkgdGhpbmsgdGhpcyBzaG91bGQgYmUgJ2NvbnRpbnVlJwoK
UmVnYXJkcywKQ2h1bi1LdWFuZy4KCj4gKwo+ICAgICAgICAgICAgICAgICBpZiAoc2dfZG1hX2Fk
ZHJlc3MocykgIT0gZXhwZWN0ZWQpIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBEUk1fRVJS
T1IoInNnX3RhYmxlIGlzIG5vdCBjb250aWd1b3VzIik7Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgcmV0ID0gLUVJTlZBTDsKPiAtLQo+IDIuMjYuMS4zMDEuZzU1YmMzZWI3Y2I5LWdvb2cKPgo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51
eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKPiBMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQu
b3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1t
ZWRpYXRlawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
