Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8318F8D468
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y60nSGej8gbfNvutrWFvHNHLYV/4dLkkZfJOMhHYgzI=; b=tflM1Zr3kuOyg7j0zjRpWmDuG
	mKElgerPdiMChj0A/mINpXwEWA10wGdUXiNJU+zWcqsABbd3Sd+oBFKozqAtrUDmSRxYTmhxwi1P+
	KyKkUDuWgo/BivL662oOc+surRevwCUyS1AtAhxVo9knX5JgRBvPHnQL21/NYLd/ocbLLisedOtlh
	Rl1WkRn6bA2pjy1cZoBV+VgU29o/G5jXdJd5tnaB+YZ2VF1nHPzU+HiFmNY7lBxSYankgyp5zlvS4
	DF2oz8dNf7RTQFNiV/4W053ScZ82OTPm092Gimgh8D3DGwPPt21vLcGfAw2g67jg8Y+bGHg21E0RB
	9rymO1YpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxt7V-00005E-PP; Wed, 14 Aug 2019 13:15:17 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxt7J-0007w3-Lo; Wed, 14 Aug 2019 13:15:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id 31so111097094wrm.1;
 Wed, 14 Aug 2019 06:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=l+DBXb28UlWmpaDB+1JSMKN1QA0f4oxNynDruzjGeUQ=;
 b=uPlsGHb95cC8NgoZoj0H0Ac8di2gv5OtlJm6ZAeD2k/toyaIqSch32S62gmsQqyz8v
 1xE3G75L/vUVfvltuFbCYmSzwItVFwU/qyu8z46VC5XgeYFzaXphBvF6CimOHmnQAwdf
 Nzk+TnXfgc0ImLDv7UjLIQnrYAxHJIj4EKKKrjUSYGAvSwpsOasj/MhR8t1Qe4b/zlq/
 fzwTzeir3WtY/zIldQ+t2Myu1D0vBMc9n6sVeogMaeoI3VzOUPghP6IUbFCH8418qwaU
 Nr6HZvVduLlXln5Z8/7DTubX6ukCVMhNKteiGq9/inC2/rkoUvoOqfEArE1iKJfJKzoS
 aQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=l+DBXb28UlWmpaDB+1JSMKN1QA0f4oxNynDruzjGeUQ=;
 b=N0bsqsPq9gYjMjkfkkFj06t6+tMRLDe9ITHGMztwhSl500MOfyMTAoTYg2nMnL4Ljn
 58XRwrQhZR9yIh1oGmrvNZc+QYJVbcb/dsonOdn4xe3lzMW6qNxt9s4QEDm7sJ2oQbXT
 PHNsBnqRKmH6ud27psBD+vl2o3dyBtlr2jFfZmoCScDfYMPmqp01MV3L+0kV/uMZH7iR
 N4Ak9xH/rhsLZexLxqZ2S3t0rfHN5TjADCsBOyLpmibJW1TIOtxhaPWgE6OaX35jj2n+
 BqUnj9WFN32lM+iTy9NAUzcsIdAPi3EkBqAVFmFJYdxnkNg5eDLDgG3+n5z2uspQk3h+
 JMpQ==
X-Gm-Message-State: APjAAAWA7jQP19Sggidl6tidlHd384jSfxhwD1C775TsfPaiwvUVmdja
 JzZ1bUnS/ITgH8lOV+SkfjEdQtUiWdA=
X-Google-Smtp-Source: APXvYqwsZx99AiaojhhlGOTWmFsuPCcQ2lZGzaWrlhqpWyE0N8zODSVZNQVlRAff82QSaQamKQaLbw==
X-Received: by 2002:adf:dfc8:: with SMTP id q8mr23712313wrn.121.1565788504202; 
 Wed, 14 Aug 2019 06:15:04 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id t19sm4622137wmi.29.2019.08.14.06.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 06:15:03 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Felipe Balbi <balbi@kernel.org>
Subject: Re: kexec on rk3399
Date: Wed, 14 Aug 2019 15:15:02 +0200
MIME-Version: 1.0
Message-ID: <4fc3e5b5-31fe-41f6-8031-b37454f21437@gmail.com>
In-Reply-To: <87v9uzaocj.fsf@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com> <87v9uzaocj.fsf@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_061505_748537_464F410A 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkbmVzZGF5LCBBdWd1c3QgMTQsIDIwMTkgMzowNjowNCBQTSBDRVNULCBGZWxpcGUgQmFs
Ymkgd3JvdGU6Cj4gSGksCj4KPiBWaWNlbnRlIEJlcmdhcyA8dmljZW5jYkBnbWFpbC5jb20+IHdy
aXRlczoKPj4gT24gTW9uZGF5LCBKdWx5IDIyLCAyMDE5IDQ6MzE6MjcgUE0gQ0VTVCwgVmljZW50
ZSBCZXJnYXMgd3JvdGU6Cj4+PiBIaSwgaSBoYXZlIGJlZW4gcnVubmluZyBsaW51eCBvbiByazMz
OTkgYm9vdGVkIHdpdGgga2V4ZWMgZmluZSB1bnRpbCA1LjIKPj4+IEZyb20gNS4yIG9ud2FyZHMs
IHRoZXJlIGFyZSBtZW1vcnkgY29ycnVwdGlvbiBpc3N1ZXMgYXMgcmVwb3J0ZWQgaGVyZToKPj4+
IGh0dHA6Ly9sa21sLml1LmVkdS9oeXBlcm1haWwvbGludXgva2VybmVsLzE5MDYuMi8wNzIxMS5o
dG1sCj4+PiBrZXhlYyBoYXMgYmVlbiBpZGVudGlmaWVkIGFzIHRoZSBwcmluY2lwYWwgcmVhc29u
IGZvciB0aGUgaXNzdWVzLgo+Pj4gCj4+PiBJdCB0dXJucyBvdXQgdGhhdCBrZXhlYyBoYXMgbmV2
ZXIgd29ya2VkIHJlbGlhYmx5IG9uIHRoaXMgcGxhdGZvcm0sIC4uLgo+PiAKPj4gVGhhbmsgeW91
IGFsbCBmb3IgeW91ciBzdWdnZXN0aW9ucyBvbiB3aGVyZSB0aGUgaXNzdWUgY291bGQgYmUuCj4+
IAo+PiBJdCBzZWVtcyB0aGF0IGl0IHdhcyB0aGUgVVNCIGRyaXZlci4KPj4gTm93IHVzaW5nIHY1
LjIuOCBib290ZWQgd2l0aCBrZXhlYyBmcm9tIHY1LjIuOCB3aXRoIGEgd29ya2Fyb3VuZCBhbmQK
Pj4gc28gZmFyIHNvIGdvb2QuIEl0IGlzIGJlaW5nIHRlc3RlZCBvbiB0aGUgU2FwcGhpcmUgYm9h
cmQuCj4+IAo+PiBUaGUgd29ya2Fyb3VuZCBpczoKPj4gLS0tIGEvZHJpdmVycy91c2IvZHdjMy9k
d2MzLW9mLXNpbXBsZS5jCj4+ICsrKyBiL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1vZi1zaW1wbGUu
Ywo+PiBAQCAtMTMzLDYgKzEzMywxMyBAQAo+PiAgCXJldHVybiAwOwo+PiAgfQo+PiAgCj4+ICtz
dGF0aWMgdm9pZCBkd2MzX29mX3NpbXBsZV9zaHV0ZG93bihzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+PiArewo+PiArCXN0cnVjdCBkd2MzX29mX3NpbXBsZSAqc2ltcGxlID0gcGxhdGZv
cm1fZ2V0X2RydmRhdGEocGRldik7Cj4+ICsKPj4gKwlyZXNldF9jb250cm9sX2Fzc2VydChzaW1w
bGUtPnJlc2V0cyk7Cj4+ICt9Cj4+ICsKPj4gIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgZHdj
M19vZl9zaW1wbGVfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgCj4+ICpkZXYpCj4+ICB7
Cj4+ICAJc3RydWN0IGR3YzNfb2Zfc2ltcGxlCSpzaW1wbGUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2
KTsKPj4gQEAgLTE5MCw2ICsxOTcsNyBAQAo+PiAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2
ZXIgZHdjM19vZl9zaW1wbGVfZHJpdmVyID0gewo+PiAgCS5wcm9iZQkJPSBkd2MzX29mX3NpbXBs
ZV9wcm9iZSwKPj4gIAkucmVtb3ZlCQk9IGR3YzNfb2Zfc2ltcGxlX3JlbW92ZSwKPj4gKwkuc2h1
dGRvd24JPSBkd2MzX29mX3NpbXBsZV9zaHV0ZG93biwKPj4gIAkuZHJpdmVyCQk9IHsKPj4gIAkJ
Lm5hbWUJPSAiZHdjMy1vZi1zaW1wbGUiLAo+PiAgCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9kd2Mz
X3NpbXBsZV9tYXRjaCwKPj4gCj4+IElmIHRoaXMgcGF0Y2ggaXMgT0sgYWZ0ZXIgcmV2aWV3IGkg
Y2FuIHJlc3VibWl0IGl0IGFzIGEgcHVsbCByZXF1ZXN0Lgo+Cj4gbm90IGEgcHVsbCByZXF1ZXN0
LCBqdXN0IHNlbmQgYSBwYXRjaCB1c2luZyBnaXQgc2VuZC1lbWFpbAo+Cj4+IFNob3VsZCBhIHNp
bWlsYXIgY2hhbmdlIGJlIGFwcGxpZWQgdG8gZHJpdmVycy91c2IvZHdjMy9jb3JlLmMgPwo+Cj4g
SXMgaXQgbmVjZXNzYXJ5PyBXZSBoYXZlbid0IGhhZCBhbnkgYnVnIHJlcG9ydHMgcmVnYXJkaW5n
IHRoYXQuIEFsc28sIGlmCj4gd2UgaGF2ZSByZXNldCBjb250cm9sIHN1cHBvcnQgaW4gdGhlIGNv
cmUgZHJpdmVyLCB3aHkgZG8gd2UgbmVlZCBpdCBpbgo+IG9mX3NpbXBsZT8gU2VlbXMgbGlrZSBv
Zl9zaW1wbGUgY291bGQganVzdCByZWx5IG9uIHdoYXQgY29yZSBkb2VzLgoKdGhlIHdvcmthcm91
bmQgaGFzIGJlZW4gdGVzdGVkIHBhdGNoaW5nIG9ubHkgY29yZS5jIHdpdGgKLS0tIGEvZHJpdmVy
cy91c2IvZHdjMy9jb3JlLmMKKysrIGIvZHJpdmVycy91c2IvZHdjMy9jb3JlLmMKQEAgLTE1NjEs
NiArMTU2MSwxMyBAQAogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZCBkd2MzX3NodXRkb3du
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCit7CisJc3RydWN0IGR3YzMgKmR3YyA9IHBs
YXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOworCisJcmVzZXRfY29udHJvbF9hc3NlcnQoZHdjLT5y
ZXNldCk7Cit9CisKICNpZmRlZiBDT05GSUdfUE0KIHN0YXRpYyBpbnQgZHdjM19jb3JlX2luaXRf
Zm9yX3Jlc3VtZShzdHJ1Y3QgZHdjMyAqZHdjKQogewpAQCAtMTg2Niw2ICsxODczLDcgQEAKIHN0
YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGR3YzNfZHJpdmVyID0gewogCS5wcm9iZQkJPSBk
d2MzX3Byb2JlLAogCS5yZW1vdmUJCT0gZHdjM19yZW1vdmUsCisJLnNodXRkb3duCT0gZHdjM19z
aHV0ZG93biwKIAkuZHJpdmVyCQk9IHsKIAkJLm5hbWUJPSAiZHdjMyIsCiAJCS5vZl9tYXRjaF90
YWJsZQk9IG9mX21hdGNoX3B0cihvZl9kd2MzX21hdGNoKSwKCmFuZCBsZWF2aW5nIGR3YzMtb2Yt
c2ltcGxlLmMgYXMgaXMsIHRoZSBpc3N1ZSBwZXJzaXN0ZWQuCgpSZWdhcmRzLAogIFZpY2Vuw6cu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
