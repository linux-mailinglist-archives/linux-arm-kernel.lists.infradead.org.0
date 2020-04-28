Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1E71BC27D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:15:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFC0yTOysZSpIuX2pVx6+kXYc2yMUg0t9lXi/FU63MA=; b=XM5/mDcK6Uv4ou
	mM9apxKIOG5frDKraEzJk8ZXE19yNHe0C3xF7LksyGDfbXE43w6AK540fVQ8YKK+fO9+1aMifLoLP
	yuHbFcN3CRlSOnrSexyNvcQouc+gPHnyLZzgZlK/tNejBXr/3AdqSrlNlcJIdrgDfSEPtJSKRA1I6
	aT+wAyYVZGIR3NMPOVRZLSVg8nesORxX7QgVSoJKY8j3aojCXo5VhcPtbjZQKG7HRIOv+OQzJkQNF
	Z6ldllR95vM02jG/bnHbfPbPrHHvn6tCysi6szDGgRAozr1dtSvohI59lQKwlC3Ipj/wsamw5HIjK
	w6IrEYVvyzUb7LBYr6cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRxL-0007iY-2O; Tue, 28 Apr 2020 15:15:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRx9-0007hX-Pl
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 15:15:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id g12so3278423wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 08:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=6RQa3/Ivl+erv2MC5JIerdVHsjcRsy5jElt25/tvg/I=;
 b=c/rDYXyVx+iz8SQtNmdLLH9jiyFcXnPbgx93UfB9RgZOLHKZjwmjlrpMpBrqvtv6Fw
 e3pdYB7gxw+aEHxM30rDVR+kHPY1rl9jcotFrTRSnlHN/Sy7vvx+LPXJNZwgEggzcTWB
 LuNAmn0HSFJVT70SwHLf3sgYl/Kx3gKsWpMIEQtqM8k0x9ytKRe8td2LPY1rCkMV3dw7
 psiw49gPvhkuxILNWN08yqhHImHmiI27uI55UfLBdsWcku7ZE2NvnEY2pv3lxOw5UkS9
 RV6DV8J10tXn4Za5fUe0JvrTCtHazLo7gOx6UIJnFQwRYybjgD3lh2zZDTK0vKtWyWpe
 IJqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=6RQa3/Ivl+erv2MC5JIerdVHsjcRsy5jElt25/tvg/I=;
 b=kqwuhTCOz7OLV84WlpwtrZAG34XPteA0oYGXKO8jiUwmnRsHQ53T2kRLW5RVM1XpEG
 yNkTNBRuIpmlr6ufVddZd+PiT+MIMWx9fOEs1OuvpihhekejxIYsZx7+WMnENiZSh9Gi
 Rle102ydi4fjqSjM3nFgol3RPnglKDDA5Rz9raUdXVtdxNjWebtMCj3ODFfnKHjuIQ6c
 nlOpNK8VHBx0eJCglGBV9OBPukqB8/jOiaqDgltXt8IId4TeXLLcgPpsnRfLsa/Qu2FN
 soI736y5OB91OWxAx6tOIf8nJLim/tCR5AGOFtqlC5sbV08B5HYf+mwmzdEoeVJVT8i6
 XIRg==
X-Gm-Message-State: AGi0PuaIAhJYIL3ZA9sJ8sSPSWj0r3TOnF9SDU8onByEBXYE7EN2UGJb
 5VBY7djg7xo4zSknWmgCJODZ++YO
X-Google-Smtp-Source: APiQypJXqdagbY7C95ErpdLoYp1uRYumNOUPPDPTkG1JE8zcrJsSYL5DCZa3nXGytS0h2Vy2ksxDbg==
X-Received: by 2002:a7b:c5d4:: with SMTP id n20mr5373467wmk.92.1588086918255; 
 Tue, 28 Apr 2020 08:15:18 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id 74sm26988379wrk.30.2020.04.28.08.15.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 08:15:17 -0700 (PDT)
Subject: Re: [RFC 10/17] drm: radeon: fix sg_table nents vs. orig_nents misuse
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132028eucas1p155a84ab14c6a6820b4c8240f01e98905@eucas1p1.samsung.com>
 <20200428132005.21424-11-m.szyprowski@samsung.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <94c45ded-6544-a922-7177-8255b44c4cfa@gmail.com>
Date: Tue, 28 Apr 2020 17:15:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200428132005.21424-11-m.szyprowski@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_081519_838957_926280B0 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ckoenig.leichtzumerken[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: christian.koenig@amd.com
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjguMDQuMjAgdW0gMTU6MTkgc2NocmllYiBNYXJlayBTenlwcm93c2tpOgo+IFRoZSBEb2N1
bWVudGF0aW9uL0RNQS1BUEktSE9XVE8udHh0IHN0YXRlcyB0aGF0IGRtYV9tYXBfc2cgcmV0dXJu
cyB0aGUKPiBudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRkcmVzcyBz
cGFjZS4gSG93ZXZlciB0aGUKPiBzdWJzZXF1ZW50IGNhbGxzIHRvIGRtYV9zeW5jX3NnX2Zvcl97
ZGV2aWNlLGNwdX0gYW5kIGRtYV91bm1hcF9zZyBtdXN0IGJlCj4gY2FsbGVkIHdpdGggdGhlIG9y
aWdpbmFsIG51bWJlciBvZiBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUKPiBzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCj4gaW4gaW5jbHVkZS9saW51eC9zY2F0dGVybGlzdC5oLiBBZGFwdCB0aGUg
Y29kZSB0byBvYmV5IHRob3NlIHJ1bGVzLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJv
d3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgoKUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL3JhZGVvbl90dG0uYyB8IDEwICsrKysrLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3Jh
ZGVvbl90dG0uYwo+IGluZGV4IDVkNTBjOWUuLjQ3NzA4ODAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFk
ZW9uL3JhZGVvbl90dG0uYwo+IEBAIC00ODEsNyArNDgxLDcgQEAgc3RhdGljIGludCByYWRlb25f
dHRtX3R0X3Bpbl91c2VycHRyKHN0cnVjdCB0dG1fdHQgKnR0bSkKPiAgIHsKPiAgIAlzdHJ1Y3Qg
cmFkZW9uX2RldmljZSAqcmRldiA9IHJhZGVvbl9nZXRfcmRldih0dG0tPmJkZXYpOwo+ICAgCXN0
cnVjdCByYWRlb25fdHRtX3R0ICpndHQgPSAodm9pZCAqKXR0bTsKPiAtCXVuc2lnbmVkIHBpbm5l
ZCA9IDAsIG5lbnRzOwo+ICsJdW5zaWduZWQgcGlubmVkID0gMDsKPiAgIAlpbnQgcjsKPiAgIAo+
ICAgCWludCB3cml0ZSA9ICEoZ3R0LT51c2VyZmxhZ3MgJiBSQURFT05fR0VNX1VTRVJQVFJfUkVB
RE9OTFkpOwo+IEBAIC01MjIsOCArNTIyLDggQEAgc3RhdGljIGludCByYWRlb25fdHRtX3R0X3Bp
bl91c2VycHRyKHN0cnVjdCB0dG1fdHQgKnR0bSkKPiAgIAkJZ290byByZWxlYXNlX3NnOwo+ICAg
Cj4gICAJciA9IC1FTk9NRU07Cj4gLQluZW50cyA9IGRtYV9tYXBfc2cocmRldi0+ZGV2LCB0dG0t
PnNnLT5zZ2wsIHR0bS0+c2ctPm5lbnRzLCBkaXJlY3Rpb24pOwo+IC0JaWYgKG5lbnRzID09IDAp
Cj4gKwl0dG0tPnNnLT5uZW50cyA9IGRtYV9tYXBfc2cocmRldi0+ZGV2LCB0dG0tPnNnLT5zZ2ws
Cj4gKwlpZiAodHRtLT5zZy0+bmVudHMgPT0gMCkKPiAgIAkJZ290byByZWxlYXNlX3NnOwo+ICAg
Cj4gICAJZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXModHRtLT5zZywgdHRtLT5wYWdl
cywKPiBAQCAtNTU0LDkgKzU1NCw5IEBAIHN0YXRpYyB2b2lkIHJhZGVvbl90dG1fdHRfdW5waW5f
dXNlcnB0cihzdHJ1Y3QgdHRtX3R0ICp0dG0pCj4gICAJCXJldHVybjsKPiAgIAo+ICAgCS8qIGZy
ZWUgdGhlIHNnIHRhYmxlIGFuZCBwYWdlcyBhZ2FpbiAqLwo+IC0JZG1hX3VubWFwX3NnKHJkZXYt
PmRldiwgdHRtLT5zZy0+c2dsLCB0dG0tPnNnLT5uZW50cywgZGlyZWN0aW9uKTsKPiArCWRtYV91
bm1hcF9zZyhyZGV2LT5kZXYsIHR0bS0+c2ctPnNnbCwgdHRtLT5zZy0+b3JpZ19uZW50cywgZGly
ZWN0aW9uKTsKPiAgIAo+IC0JZm9yX2VhY2hfc2dfcGFnZSh0dG0tPnNnLT5zZ2wsICZzZ19pdGVy
LCB0dG0tPnNnLT5uZW50cywgMCkgewo+ICsJZm9yX2VhY2hfc2dfcGFnZSh0dG0tPnNnLT5zZ2ws
ICZzZ19pdGVyLCB0dG0tPnNnLT5vcmlnX25lbnRzLCAwKSB7Cj4gICAJCXN0cnVjdCBwYWdlICpw
YWdlID0gc2dfcGFnZV9pdGVyX3BhZ2UoJnNnX2l0ZXIpOwo+ICAgCQlpZiAoIShndHQtPnVzZXJm
bGFncyAmIFJBREVPTl9HRU1fVVNFUlBUUl9SRUFET05MWSkpCj4gICAJCQlzZXRfcGFnZV9kaXJ0
eShwYWdlKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
