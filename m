Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B27BE1CDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLyxDy9dbY3TTsnBt36BmJRyVC+pCuHYE6eX1OwRJ/g=; b=HRLyJYs0ZLCNu+
	kzNs3f4ycBQiZUjWY10FVCg6/rgY8e4QxEwkd/NDxQLJ15TtUuTR1g5OQSVIU8s0EFr3Z8K3DI3MW
	jymg1gCarE14jdEuuQCG/hulFUi2Vr+yc3Quwqvin3Z39yohy1sXz/et0aO2s0+vQ3nbYr7D0kMYL
	LD3/xERxHNfvz3Kp8vHVrAyZbGnS/1O/dHIretthrs2mQs4c7L4mKXrjz3flZDYfsKozRpt4JZlwh
	ZY4IjZULikAH1DhcCobOjxO/JpDJUWFJfSiqUJjdFguQPhMrwkeFPfFhokp6MHSNlBiPCfpkLjah7
	9WMi/HtUR2XLLdbAvqdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGrU-0007ci-9B; Wed, 23 Oct 2019 13:39:40 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGrF-0007c4-Db
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:39:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id g7so3231732wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=5T/MoSeXRvOkVox5hp0mSxwsnPbBwGiugOsPGPiVrU8=;
 b=WTeLh8M3lxNhpkfwYwFMHlcPhKIXYRT0p9/eP9nI54LGkFxOxk8DhkIGWl2q4NFVHl
 2EA7zM0yapmyaIetbOq2dc+BjjnvfxL7amqvYonpgiDt710d/mKF1L9uh5llf2Xh7rkf
 A/ErZoT5sPtCN32j+1ScJ1VEWQP6Top+BG8t/WSLVuz5qoKI6S3wodXQ23DNW/13PhOS
 xWu74+92vmUXgvyZQOGWtqJ887kZh+v27wvQBDhdBSXH5s4vmkQNt//dTxba6fU3beq3
 gkUqqRwzx11uv0fudpX/lrYtz17W3mVa76N7wLtRmXGjUD86E43D8Ji0wkD6ZLiOhUwY
 YWfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5T/MoSeXRvOkVox5hp0mSxwsnPbBwGiugOsPGPiVrU8=;
 b=rtkhcENnsV86BKJ9AVg5Z4YAUo6c1F1WkPJSlJTdkNwa70HQqX4MSBxJsY/hM0a838
 zmZLqOli6ohboctX+8biff1Uk4uHTKpOIFAYugjfxOyF3CRgcN9ZUwa9BY4Szjt/LZmG
 aTHa2aHFxmk7b7QgVk8rsIOA1+iOm84GBggFh3gymvVdY8/OHNdqMpRhtns2Lhpa/M4C
 pk1rDX8ql6Rf671Lr6H5eIjqoJXrPHfbTR7tjAaKguFYSbynCp981uSOWBj9pKz9V9Bt
 Qa+BDjXr/YrV4vmJovTKhgjr7tHpRIefJOlVf4L+TuzCL1WbHe1ooe/UwUgI3WBaLmdn
 DDuA==
X-Gm-Message-State: APjAAAVNjLo1D/H6rrkNGIO+iOfkpvZ0sHpX7gDhX7WnccTBeTb3CymS
 j4OcN9MAQaRQTpoxNjgVqqwIKjM7ypMxFg==
X-Google-Smtp-Source: APXvYqyuEJaMFICfXNABHTPXz7GkIecaJLIiU1WeYhAN+gYZFSeibrU2kiSo91fXlKup1iWBQ4gD9A==
X-Received: by 2002:a1c:9c0c:: with SMTP id f12mr7972419wme.133.1571837963549; 
 Wed, 23 Oct 2019 06:39:23 -0700 (PDT)
Received: from [192.168.27.135] ([37.157.136.206])
 by smtp.googlemail.com with ESMTPSA id b5sm19095690wmj.18.2019.10.23.06.39.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Oct 2019 06:39:22 -0700 (PDT)
Subject: Re: [PATCH 5/5] ARM: dts: qcom: msm8974: add interconnect nodes
To: Brian Masney <masneyb@onstation.org>
References: <20191013080804.10231-1-masneyb@onstation.org>
 <20191013080804.10231-6-masneyb@onstation.org>
 <d154b0c6-fc39-bebc-d1b5-cc179fb6055d@linaro.org>
 <20191023124753.GA14218@onstation.org>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <c26159f5-e6fe-07f1-51b3-50b72b258846@linaro.org>
Date: Wed, 23 Oct 2019 16:39:21 +0300
MIME-Version: 1.0
In-Reply-To: <20191023124753.GA14218@onstation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_063925_467726_51651CDF 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMuMTAuMTkg0LMuIDE1OjQ3INGHLiwgQnJpYW4gTWFzbmV5IHdyb3RlOgo+IE9uIFdlZCwg
T2N0IDIzLCAyMDE5IGF0IDAyOjUwOjE5UE0gKzAzMDAsIEdlb3JnaSBEamFrb3Ygd3JvdGU6Cj4+
IE9uIDEzLjEwLjE5INCzLiAxMTowOCDRhy4sIEJyaWFuIE1hc25leSB3cm90ZToKPj4+IEFkZCBp
bnRlcmNvbm5lY3Qgbm9kZXMgdGhhdCdzIG5lZWRlZCB0byBzdXBwb3J0IGJ1cyBzY2FsaW5nLgo+
Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEJyaWFuIE1hc25leSA8bWFzbmV5YkBvbnN0YXRpb24ub3Jn
Pgo+Pj4gLS0tCj4+PiAgYXJjaC9hcm0vYm9vdC9kdHMvcWNvbS1tc204OTc0LmR0c2kgfCA2MCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA2MCBpbnNl
cnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3Fjb20tbXNt
ODk3NC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcWNvbS1tc204OTc0LmR0c2kKPj4+IEBAIC0x
MTUyLDYgKzEyMDcsMTEgQEAKPj4+ICAJCQkJICAgICAgICAgICAgICAiY29yZSIsCj4+PiAgCQkJ
CSAgICAgICAgICAgICAgInZzeW5jIjsKPj4+ICAKPj4+ICsJCQkJaW50ZXJjb25uZWN0cyA9IDwm
bW1zc25vYyBNTk9DX01BU19HUkFQSElDU18zRCAmYmltYyBCSU1DX1NMVl9FQklfQ0gwPiwKPj4+
ICsJCQkJICAgICAgICAgICAgICAgIDwmb2NtZW1ub2MgT0NNRU1fVk5PQ19NQVNfR0ZYM0QgJm9j
bWVtbm9jIE9DTUVNX1NMVl9PQ01FTT47Cj4+Cj4+IFdobyB3aWxsIGJlIHRoZSByZXF1ZXN0aW5n
IGJhbmR3aWR0aCB0byBERFIgYW5kIG9jbWVtPyBJcyBpdCB0aGUgZGlzcGxheSBvciBHUFUKPj4g
b3IgYm90aD8gVGhlIGFib3ZlIHNlZW0gbGlrZSBHUFUtcmVsYXRlZCBpbnRlcmNvbm5lY3RzLCBz
byBtYXliZSB0aGVzZQo+PiBwcm9wZXJ0aWVzIHNob3VsZCBiZSBpbiB0aGUgR1BVIERUIG5vZGUu
Cj4gCj4gVGhlIGRpc3BsYXkgaXMgd2hhdCBjdXJyZW50bHkgcmVxdWVzdHMgdGhlIGludGVyY29u
bmVjdCBwYXRoLAo+IHNwZWNpZmljYWxseSBtZHA1X3NldHVwX2ludGVyY29ubmVjdCgpIGluCj4g
ZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL21kcDUvbWRwNV9rbXMuYy4gVGhlIEZyZWVkcmVubyBH
UFUgYmluZGluZ3MKPiBjdXJyZW50bHkgZG9uJ3QgaGF2ZSBpbnRlcmNvbm5lY3Qgc3VwcG9ydC4g
TWF5YmUgdGhpcyBpcyBzb21ldGhpbmcgdGhhdAo+IEkgc2hvdWxkIGFkZCB0byB0aGF0IGRyaXZl
ciBhcyB3ZWxsPwoKVGhlICJtZHAwLW1lbSIgYW5kICJtZHAxLW1lbSIgcGF0aHMgbWVudGlvbmVk
IGluIHRoZSBtZHA1X2ttcy5jIGFyZSB0aGUgdHdvCmludGVyY29ubmVjdHMgYmV0d2VlbiB0aGUg
ZGlzcGxheSBhbmQgRERSIG1lbW9yeS4gVGhlcmUgaXMgYWN0dWFsbHkgYSBwYXRjaCBbMV0KdG8g
YWRkIHRvIEdQVSBiaW5kaW5ncywgYnV0IGl0IHNlZW1zIHRoYXQgd2UgbWlzc2VkIHRvIHBpY2sg
aXQgdXAuCgo+IAo+Pj4gKwkJCQlpbnRlcmNvbm5lY3QtbmFtZXMgPSAibWRwMC1tZW0iLAo+Pj4g
KwkJCQkgICAgICAgICAgICAgICAgICAgICAibWRwMS1tZW0iOwo+Pgo+PiBBcyB0aGUgc2Vjb25k
IHBhdGggaXMgbm90IHRvIEREUiwgYnV0IHRvIG9jbWVtLCBpdCBtaWdodCBiZSBiZXR0ZXIgdG8g
Y2FsbCBpdAo+PiBzb21ldGhpbmcgbGlrZSAiZ3B1LW9jbWVtIi4KPiAKPiBJIHVzZWQgd2hhdCBt
ZHA1X2ttcy5jIGV4cGVjdGVkLgoKVGhpcyBpcyBmb3IgdGhlIGRpc3BsYXkgYW5kIGhlcmUgWzJd
IGFyZSBzb21lIHBhdGNoZXMgZm9yIHRoZSBHUFUuIE5vdCBzdXJlIGhvdwp0aGUgTm9DcyBhcmUg
Y29uZmlndXJlZCBvbiA4OTc0IGJ5IGRlZmF1bHQsIGJ1dCBpZiB5b3Ugbm90aWNlIGFueSBibHVl
L2JsYWNrCnNjcmVlbnMsIHlvdSBtYXkgbmVlZCB0byByZXF1ZXN0IGJhbmR3aWR0aCBmb3IgZGlz
cGxheSB0b28uCgpUaGFua3MsCkdlb3JnaQoKWzFdCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3Iv
MTU1NTcwMzc4Ny0xMDg5Ny0xLWdpdC1zZW5kLWVtYWlsLWpjcm91c2VAY29kZWF1cm9yYS5vcmcK
WzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAxODEyMjAxNzMwMjYuMzg1Ny0xLWpjcm91
c2VAY29kZWF1cm9yYS5vcmcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
