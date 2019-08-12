Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A6289C12
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFZCvgP1/B0y5PfSQcU58pxcCkY9jvY7TJNzS6NYSiY=; b=NvHZAP1xU5ypLi
	x0P+BZVeoO26DtgnSSiatm7YoiF+pXh75WnSmNBZVBKWx2vPiVkkOfifTKaHq77odQ/NIps6g5ql2
	01toPR7m+2BZEXWErUQfs2edNOsy3NND9YwY6qy3XO65RR5mnKxSMOut99dO4jQZuj+sG+FBjC2gd
	JoPyoB3VfsT1CMWzzG+THXjsqdB2SYqVxS22SDrS7Xxl3lQhbjut2e8tQJrnwWhAYFlWZrcyfync9
	JOYKfuT1LfzcxDWaavRB66uRNaLDI7YZi8RC05oaeioVG7hsPS3otN+O0UnS0E/2uvyrvBiero4NE
	n5AD5kRMFKxIumelQrNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx816-0003jT-7T; Mon, 12 Aug 2019 10:57:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx80a-0003j2-Un
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:57:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id b16so7450600wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K78hhqilCXirWAVkuhMYsumaEi1zxudUZQ7iEz3kX74=;
 b=PdI/+tQ4letAYBv2LKdyiQh79k8OXmFVdA1aPMzyFY6KxCZy8EyOOdBqoVf9JVMfVO
 30m3LjeMpdM0OZFZZTRtCKqs2nyVfFAIaEWbx3Jk51IPkPPtDLndfj71VGWrn8fzM8xY
 U3sY85j6CJkurFsMuJDvx6AXb4BZoWQ3TQgHguNVzPnpBhfLicn//ZIWc1h/Cvn1oHZc
 8Q33Y8rxq3+Xgt2uo2oj/4TpPz8X7vfH2CxNf27UpaHgUG3X7fxmCdiMl8x/jBItfRLz
 NcKuELcTui9SWipQsllbPTSVxldRd2NmBhVvztGPtdoZv89YJ/80d2yl3HCw6rarNtZm
 MwVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K78hhqilCXirWAVkuhMYsumaEi1zxudUZQ7iEz3kX74=;
 b=gngF911ovN3Ywm9n6RyJaSDIHyN2JY9Dx2ESo2nJYwR1UhATePuK80aFFRRgyZrYkT
 cjYIQzLnNMTeVS/7y51F3/iRmsR6OQQ4mtmdYKXFRjqTFd2MZqMAX6nznUcwpPE/2v0K
 7zN/Z5R1/R48AqpgtPucYc/pPBLF7KcRfK5gZQNVbgpLb34G/WKcVhnAd9SvzvQAlquk
 vmZsWPe5k54J3TO48mLRu0F/3vY7Nhi1PhdRkEoCUeUqep7UrAUX629Uoo757oa47YQp
 6d5Kp2Tkh025u6E7/i30YnKwQFi8jgcAnZa8kGFOxyf/fUgPrxlpC5Xv+lgcp2gGeR2f
 o2Xw==
X-Gm-Message-State: APjAAAXW/J7voPdYA67qob+vfw0Rfai/NsGHR1JCVGsni1O1xoo6FIMy
 e7ADKjwMzJD8XC30VELxZpPykxEHu9I=
X-Google-Smtp-Source: APXvYqzz1/k5WxBr/pJpNEMxkuMePNDA75QA3mkP0fkCS8qkAfo5N9m+7vaBmpiUqwP5ZR0e9K9n/A==
X-Received: by 2002:adf:dbcb:: with SMTP id e11mr38755203wrj.272.1565607419384; 
 Mon, 12 Aug 2019 03:56:59 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net.
 [89.212.178.211])
 by smtp.gmail.com with ESMTPSA id c65sm13285562wma.44.2019.08.12.03.56.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 03:56:58 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, clabbe.montjoie@gmail.com
Subject: Re: [linux-sunxi] [PATCH] ARM64: dts: allwinner: Add devicetree for
 pine H64 modelA evaluation board
Date: Mon, 12 Aug 2019 12:56:56 +0200
Message-ID: <1648748.TWHgARQioU@jernej-laptop>
In-Reply-To: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_035701_028245_ADAB0F25 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAwOC4gYXZndXN0IDIwMTkgb2IgMTA6NDI6NTMgQ0VTVCBqZSBDb3JlbnRp
biBMYWJiZSBuYXBpc2FsKGEpOgo+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgZXZhbHVhdGlvbiB2YXJp
YW50IG9mIHRoZSBtb2RlbCBBIG9mIHRoZSBQaW5lSDY0Lgo+IFRoZSBtb2RlbCBBIGhhcyB0aGUg
c2FtZSBzaXplIG9mIHRoZSBwaW5lNjQgYW5kIGhhcyBhIFBDSUUgc2xvdC4KPiAKPiBUaGUgb25s
eSBkZXZpY2V0cmVlIGRpZmZlcmVuY2Ugd2l0aCBjdXJyZW50IHBpbmVINjQsIGlzIHRoZSBQSFkK
PiByZWd1bGF0b3IuCgpJIGhhdmUgTW9kZWwgQSBib2FyZCB3aGljaCBhbHNvIG5lZWRzIGRkYy1l
bi1ncGlvcyBwcm9wZXJ0eSBmb3IgSERNSSBjb25uZWN0b3IgCmluIG9yZGVyIGZvciBIRE1JIHRv
IHdvcmsgY29ycmVjdGx5LiBPdGhlcndpc2UgaXQgd2lsbCBqdXN0IHVzZSAxMDI0eDc2OCAKcmVz
b2x1dGlvbi4gQ2FuIHlvdSBjb25maXJtIHRoYXQ/CgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKPiAK
PiBTaWduZWQtb2ZmLWJ5OiBDb3JlbnRpbiBMYWJiZSA8Y2xhYmJlLm1vbnRqb2llQGdtYWlsLmNv
bT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvTWFrZWZpbGUgICAgICAg
IHwgIDEgKwo+ICAuLi4vc3VuNTBpLWg2LXBpbmUtaDY0LW1vZGVsQS1ldmFsLmR0cyAgICAgICAg
fCAyNiArKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9u
cygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQKPiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktaDYtcGluZS1oNjQtbW9kZWxBLWV2YWwuZHRzCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL01ha2VmaWxlCj4gYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2FsbHdpbm5lci9NYWtlZmlsZSBpbmRleCBmNmRiMDYxMWNiODUuLjlhMDIxNjZjYmY3Mgo+
IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL01ha2VmaWxlCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvTWFrZWZpbGUKPiBAQCAtMjUsMyAr
MjUsNCBAQCBkdGItJChDT05GSUdfQVJDSF9TVU5YSSkgKz0gc3VuNTBpLWg2LW9yYW5nZXBpLTMu
ZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNIX1NVTlhJKSArPSBzdW41MGktaDYtb3JhbmdlcGktbGl0
ZTIuZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNIX1NVTlhJKSArPSBzdW41MGktaDYtb3JhbmdlcGkt
b25lLXBsdXMuZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNIX1NVTlhJKSArPSBzdW41MGktaDYtcGlu
ZS1oNjQuZHRiCj4gK2R0Yi0kKENPTkZJR19BUkNIX1NVTlhJKSArPSBzdW41MGktaDYtcGluZS1o
NjQtbW9kZWxBLWV2YWwuZHRiCj4gZGlmZiAtLWdpdAo+IGEvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LW1vZGVsQS1ldmFsLmR0cwo+IGIvYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LW1vZGVsQS1ldmFsLmR0cyBu
ZXcgZmlsZQo+IG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5kOGZmMDI3NDdlZmUK
PiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LXBpbmUtaDY0LW1vZGVsQS1ldmFsLmR0cwo+IEBAIC0wLDAgKzEsMjYgQEAKPiArLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBvciBNSVQpCj4gKy8qCj4gKyAqIENv
cHlyaWdodCAoQykgMjAxOSBDb3JlbnRpbiBMYWJiZSA8Y2xhYmJlLm1vbnRqb2llQGdtYWlsLmNv
bT4KPiArICovCj4gKwo+ICsjaW5jbHVkZSAic3VuNTBpLWg2LXBpbmUtaDY0LmR0cyIKPiArCj4g
Ky8gewo+ICsJbW9kZWwgPSAiUGluZSBINjQgbW9kZWwgQSBldmFsdWF0aW9uIGJvYXJkIjsKPiAr
CWNvbXBhdGlibGUgPSAicGluZTY0LHBpbmUtaDY0LW1vZGVsQS1ldmFsIiwgImFsbHdpbm5lcixz
dW41MGktaDYiOwo+ICsKPiArCXJlZ19nbWFjXzN2MzogZ21hYy0zdjMgewo+ICsJCWNvbXBhdGli
bGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MtZ21hYy0z
djMiOwo+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ICsJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ICsJCXN0YXJ0dXAtZGVsYXktdXMgPSA8
MTAwMDAwPjsKPiArCQlncGlvID0gPCZwaW8gMiAxNiBHUElPX0FDVElWRV9ISUdIPjsKPiArCQll
bmFibGUtYWN0aXZlLWhpZ2g7Cj4gKwl9Owo+ICsKPiArfTsKPiArCj4gKyZlbWFjIHsKPiArCXBo
eS1zdXBwbHkgPSA8JnJlZ19nbWFjXzN2Mz47Cj4gK307CgoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
