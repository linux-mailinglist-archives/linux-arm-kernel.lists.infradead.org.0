Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447D31D3E7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 22:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wJPLbPHnQ/02lXh5dqw0dq5UKt/CYxeeNJE5GO8TcI=; b=sWEVSXOQpLayEg
	FIDGfmT3ydZrdL4G32EJ4Ps6pyeIcxPjdIAy5qOtMVUXG4sGc0OyGPdohtU0nGA+ah+u+GhC0ByuF
	BbMDey0A5gbsVxjVoLds9gGdfy49mGMF36ZjV4F1ghh2gZofFaz3e9D1B2ypXAj9eKi/2yBgXPRWA
	R5219F3ec5Y1xFd1GAkgLPmzP+lP1FPsBCfLeSH1fBNbzqSXwdzw7Ohsn1+42dRf4PF0ml/yj/OQw
	GQzMtOxQ6y6Y4WLdzDa8+Xu3qfnRw+3Wj6ue1/DS3DR+pbarM+l9N65PqIp3rBckf1cHMy0DrMe86
	P4U4WiW/52Mrw9MwDhSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZK8c-0000NS-0Q; Thu, 14 May 2020 20:07:26 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZK8R-0000MZ-7P
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 20:07:16 +0000
Received: by mail-lf1-x143.google.com with SMTP id h188so2980285lfd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 13:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WOuH1XOmPM4H+myJnWGIPlv/GSLKGvRLHlRm+1oHjes=;
 b=OVYKlyo5tYXCFqG9R7Ge9W7iXoaap3TbWVuCOzDYbfkzO4yLw2nn4s/mPYZX39Ux8P
 lFNGzLPtGV36ZU/XRsJ/b8wLh89m89ZNxrbWAfw7dhCB5DYaX437icl0syKPyPU9y6cv
 GOf4OqlcxzxK2qxduTZnPEGkJ5gudwR+BI+K1XOIjCSsVc7zFtsRw42RJv+A0VxmVprF
 Z/oR4RSUAo5dcE19PFCNWSPkwwFFSAckWWBLXv7yJ6KBOnbI5nIyFa0N2Dg1RhKKg6Km
 HV3XTRJC/mYTvuXUcWKv37AvIXqwUY0V5fVE7ciEbqB1wBc6ySSDl+xWctJrTYCOgk/M
 cdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WOuH1XOmPM4H+myJnWGIPlv/GSLKGvRLHlRm+1oHjes=;
 b=Kjn13SXZwKCb2DKxlQoyU6+8eKJfyKKho5bicUzrrcC6cuhHkSkgC5jYIGNjItDBI9
 +Bc4V+CZ4LJxXCVDn6xB7BiQ32YbciX4j6KwucOoBzqe0SXmNmCL0jBQnFvwuiHvJ1zk
 bJGNo6Ad/txrbjvD2WgR+lsICjAx+Bkr/QEOcB3MItFbXPY3o5OQPNy4qemupbzz4ELR
 k0VIMKcpoC0vhfCuf30wIIQ44vaYJPNjUxnM4GRUf7OvScpx3cGTfaHQN4x+DqVtos1n
 nl+TEZ4IqqyL3FoLYIpF2/QnfLrrTIv0KuIjA2viY0yY17Ti1Ftghl+E//3RKnL943Or
 D13g==
X-Gm-Message-State: AOAM532N1wz0SEetH9k5AREfHt7nMxyqLxskcrQdLeC+5FEMNmbpAw+u
 3NMZBrJCHN1CiKSMq6+bHBc=
X-Google-Smtp-Source: ABdhPJwTHexR/oCXDgBD97x5phSocPsVO5cLCrpN3UyXH7i+q+PwOPK8LeMXp5gf2iMucRKwwCs9rg==
X-Received: by 2002:a19:4f1b:: with SMTP id d27mr4462819lfb.81.1589486832616; 
 Thu, 14 May 2020 13:07:12 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id v16sm2428150lfi.49.2020.05.14.13.07.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 May 2020 13:07:11 -0700 (PDT)
Subject: Re: [PATCH v5 33/38] staging: tegra-vde: fix common struct sg_table
 related issues
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133321eucas1p13acea3aa6219ce5f7076c7677ef9eae3@eucas1p1.samsung.com>
 <20200513133245.6408-33-m.szyprowski@samsung.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <43f9f3cc-2afa-cec3-0dd4-335746ec886e@gmail.com>
Date: Thu, 14 May 2020 23:07:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513133245.6408-33-m.szyprowski@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_130715_269402_60A77B66 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTMuMDUuMjAyMCAxNjozMiwgTWFyZWsgU3p5cHJvd3NraSDQv9C40YjQtdGCOgo+IFRoZSBEb2N1
bWVudGF0aW9uL0RNQS1BUEktSE9XVE8udHh0IHN0YXRlcyB0aGF0IHRoZSBkbWFfbWFwX3NnKCkg
ZnVuY3Rpb24KPiByZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmllcyBpbiB0
aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCj4gSG93ZXZlciB0aGUgc3Vic2VxdWVudCBjYWxscyB0byB0
aGUgZG1hX3N5bmNfc2dfZm9yX3tkZXZpY2UsY3B1fSgpIGFuZAo+IGRtYV91bm1hcF9zZyBtdXN0
IGJlIGNhbGxlZCB3aXRoIHRoZSBvcmlnaW5hbCBudW1iZXIgb2YgdGhlIGVudHJpZXMKPiBwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KPiAKPiBzdHJ1Y3Qgc2dfdGFibGUgaXMgYSBjb21tb24g
c3RydWN0dXJlIHVzZWQgZm9yIGRlc2NyaWJpbmcgYSBub24tY29udGlndW91cwo+IG1lbW9yeSBi
dWZmZXIsIHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4g
SXQKPiBjb25zaXN0cyBvZiBhIHNjYXR0ZXJsaXN0IHdpdGggbWVtb3J5IHBhZ2VzIGFuZCBETUEg
YWRkcmVzc2VzIChzZ2wgZW50cnkpLAo+IGFzIHdlbGwgYXMgdGhlIG51bWJlciBvZiBzY2F0dGVy
bGlzdCBlbnRyaWVzOiBDUFUgcGFnZXMgKG9yaWdfbmVudHMgZW50cnkpCj4gYW5kIERNQSBtYXBw
ZWQgcGFnZXMgKG5lbnRzIGVudHJ5KS4KPiAKPiBJdCB0dXJuZWQgb3V0IHRoYXQgaXQgd2FzIGEg
Y29tbW9uIG1pc3Rha2UgdG8gbWlzdXNlIG5lbnRzIGFuZCBvcmlnX25lbnRzCj4gZW50cmllcywg
Y2FsbGluZyBETUEtbWFwcGluZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRy
aWVzIG9yCj4gaWdub3JpbmcgdGhlIG51bWJlciBvZiBtYXBwZWQgZW50cmllcyByZXR1cm5lZCBi
eSB0aGUgZG1hX21hcF9zZygpCj4gZnVuY3Rpb24uCj4gCj4gVG8gYXZvaWQgc3VjaCBpc3N1ZXMs
IGxldHMgdXNlIGEgY29tbW9uIGRtYS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJhdGluZwo+IGRpcmVj
dGx5IG9uIHRoZSBzdHJ1Y3Qgc2dfdGFibGUgb2JqZWN0cyBhbmQgdXNlIHNjYXR0ZXJsaXN0IHBh
Z2UKPiBpdGVyYXRvcnMgd2hlcmUgcG9zc2libGUuIFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVz
IHJlZmVyZW5jZXMgdG8gdGhlCj4gbmVudHMgYW5kIG9yaWdfbmVudHMgZW50cmllcywgbWFraW5n
IHRoZSBjb2RlIHJvYnVzdCwgZWFzaWVyIHRvIGZvbGxvdwo+IGFuZCBjb3B5L3Bhc3RlIHNhZmUu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1
bmcuY29tPgo+IC0tLQo+IEZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUgJ1tQQVRDSCB2NSAwMC8z
OF0gRFJNOiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCj4gdnMuIG9yaWdfbmVudHMgbWlzdXNl
JyB0aHJlYWQ6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUvMjAyMDA1MTMx
MzIxMTQuNjA0Ni0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS9ULwo+IC0tLQo+ICBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lvbW11LmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3RlZ3JhLXZkZS9pb21tdS5jIGIvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3RlZ3JhLXZkZS9pb21tdS5jCj4gaW5kZXggNmFmODYzZC4uYWRmOGRjNyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lvbW11LmMKPiArKysgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL2lvbW11LmMKPiBAQCAtMzYsOCArMzYsOCBAQCBp
bnQgdGVncmFfdmRlX2lvbW11X21hcChzdHJ1Y3QgdGVncmFfdmRlICp2ZGUsCj4gIAo+ICAJYWRk
ciA9IGlvdmFfZG1hX2FkZHIoJnZkZS0+aW92YSwgaW92YSk7Cj4gIAo+IC0Jc2l6ZSA9IGlvbW11
X21hcF9zZyh2ZGUtPmRvbWFpbiwgYWRkciwgc2d0LT5zZ2wsIHNndC0+bmVudHMsCj4gLQkJCSAg
ICBJT01NVV9SRUFEIHwgSU9NTVVfV1JJVEUpOwo+ICsJc2l6ZSA9IGlvbW11X21hcF9zZ3RhYmxl
KHZkZS0+ZG9tYWluLCBhZGRyLCBzZ3QsCj4gKwkJCQkgSU9NTVVfUkVBRCB8IElPTU1VX1dSSVRF
KTsKPiAgCWlmICghc2l6ZSkgewo+ICAJCV9fZnJlZV9pb3ZhKCZ2ZGUtPmlvdmEsIGlvdmEpOwo+
ICAJCXJldHVybiAtRU5YSU87Cj4gCgpSZXZpZXdlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdl
dHhAZ21haWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
