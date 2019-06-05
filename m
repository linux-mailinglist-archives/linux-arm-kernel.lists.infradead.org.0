Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962D835780
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClZEMOoiQemuOXt0hPsrR8UCu88vPyjsbUBOSeqyYTc=; b=VEkRKKmZxFeAiB
	Bid+AZPosfbuqgo1YwVF49FHeIKOHrtNQ4D0/XlvVfFyz7o2fMfiq2M+ktl1kY1b3Fxl3BseD6WhY
	3rxT05p4S3JkC42jINKgewUVh1Rq3OE8Kt6xjBHAVRXiXmlzFJmhA7fPYBNs7zMZItGLmvQXtAaHR
	1DBKBMNx1wRpjDV2WeMsZ+UHJtSn3E69PrzfWZrPc8nhXvQpB7B1KUOIBn15MJUaLywBQs/k04K3k
	1i04EnDHqa2nSXaHyes4H3+FdorDhWMfbDMEm95kfqkE63QdKTKCan0fgGhxTrRVP0s0QKV4sGsNd
	p0dnuOXseusp2xin2KpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQA1-0005Qw-4U; Wed, 05 Jun 2019 07:16:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQ9u-0005Qb-3W
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:16:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id m3so2470745wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 00:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=/udEs/DSMdBXnEwnuIqEjlT7x+xDAFJnL1HjRExEQQg=;
 b=NTnAK5ivPW3NG54ALQr84FAP98eLWpfAnjNwgSTdDWVGUCJkvoZXEngeyiP4i4Hryl
 f1ZlA4+MkIwHVHdjKQEFg3QYh9Gl3E4p6v33gY6ZggJi4RoGzA0gGHT7ugiy8EPzE8aN
 WZR6Wt3LVuGgVX9eVTPcUXgbnJ9dff5a1vIO0I419hlvZw0Vi355TEqqW4xa3I+WEIDy
 0+GnWVFOuj8bgxlEwuhbDeBAHD7UYmMNVtKNeJLrV71BUS+R/0Cr6jCsmRQAdGi+5aWi
 8Cds9Pqkx+w2WCyGQ6gUPTVKyNiaBfx8TH9Z9YqwBu8Fg8ZvF5w/FCQPtb5fmuW3NgTj
 VWbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=/udEs/DSMdBXnEwnuIqEjlT7x+xDAFJnL1HjRExEQQg=;
 b=J8HaaOPNU/BqOeG6LIlIAD78POxvjt115QD9yTN0bJrMo0KJQS7TZt1ghf6qahyTjr
 cAkMbygxmz7wPAX35Ubyy8IOBxp4wtWn2a2l4c70g6g8RuVb4AQbTcFVXnVtz11nXwGz
 UUuBFEg5WZgkhQUBbV8BEjEIEnHoNoGb9W8mp7yD0UmnUQrMXIs2ndR8ndciIjIfaMVj
 sqR/Dbs1kDT4U+PyVcWpZKP81zUBFTQ6U7/7Vo+6DNXbwoEmD8C3tquYWdO7AKkMl7JE
 sc8VCQ5BAE53zjX/XQDpCq8ssafqfj6Qc05gOQJrytzdr8DPs3fVAKoBmWKsbVV4QAXv
 ECuQ==
X-Gm-Message-State: APjAAAUt6C1mET0COydXhKeLy1J/nkRuMqjP744JLOBXIR/Qd3e4/+od
 t9zhKb+/X2Pbyt3c6P26DIYTbQ==
X-Google-Smtp-Source: APXvYqz9H7lT0gna4wU5EGIQbyq1C5dGS8hnYYVP15tsLXumj2S8AkD0vyjdO6QW78jgPUlRMocRLg==
X-Received: by 2002:adf:db8e:: with SMTP id u14mr25254849wri.190.1559718987824; 
 Wed, 05 Jun 2019 00:16:27 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id 67sm33163938wmd.38.2019.06.05.00.16.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 00:16:27 -0700 (PDT)
Date: Wed, 5 Jun 2019 08:16:25 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190605071625.GK4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
 <20190605062020.GL22737@tuxbook-pro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605062020.GL22737@tuxbook-pro>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_001630_150716_450E0256 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwNCBKdW4gMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBUdWUgMDQg
SnVuIDAzOjQ0IFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gCj4gPiBUaGUgUXVhbGNvbW0g
R2VuaSBJMkMgZHJpdmVyIGN1cnJlbnRseSBwcm9iZXMgc2lsZW50bHkgd2hpY2ggY2FuIGJlCj4g
PiBjb25mdXNpbmcgd2hlbiBkZWJ1Z2dpbmcgcG90ZW50aWFsIGlzc3Vlcy4gIEFkZCBhIGxvdyBs
ZXZlbCAoSU5GTykKPiA+IHByaW50IHdoZW4gZWFjaCBJMkMgY29udHJvbGxlciBpcyBzdWNjZXNz
ZnVsbHkgaW5pdGlhbGx5IHNldC11cC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVz
IDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvaTJjL2J1c3Nlcy9p
MmMtcWNvbS1nZW5pLmMgfCAyICsrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmku
YyBiL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcWNvbS1nZW5pLmMKPiA+IGluZGV4IDBmYTkzYjQ0
OGU4ZC4uZTI3NDY2ZDc3NzY3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2ky
Yy1xY29tLWdlbmkuYwo+ID4gKysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmku
Ywo+ID4gQEAgLTU5OCw2ICs1OTgsOCBAQCBzdGF0aWMgaW50IGdlbmlfaTJjX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgCQlyZXR1cm4gcmV0Owo+ID4gIAl9Cj4gPiAg
Cj4gPiArCWRldl9pbmZvKCZwZGV2LT5kZXYsICJHZW5pLUkyQyBhZGFwdG9yIHN1Y2Nlc3NmdWxs
eSBhZGRlZFxuIik7Cj4gPiArCj4gCj4gSSB3b3VsZCBwcmVmZXIgdGhhdCB3ZSBkbyBub3QgYWRk
IHN1Y2ggcHJpbnRzLCBhcyBpdCB3b3VsZCBiZSB0byBhY2NlcHQKPiB0aGUgZG93bnN0cmVhbSBi
ZWhhdmlvdXIgb2Ygc3BhbW1pbmcgdGhlIGxvZyB0byB0aGUgcG9pbnQgd2hlcmUgbm8gb25lCj4g
d2lsbCBldmVyIGxvb2sgdGhyb3VnaCBpdC4KCldlIHNob3VsZCBiZSBhYmxlIHRvIGZpbmQgYSBt
aWRkbGUgZ3JvdW5kLiAgU3BhbW1pbmcgdGhlIGxvZyB3aXRoIGFsbApzb3J0cyBvZiBkZXZpY2Ug
c3BlY2lmaWMgaW5mb3JtYXRpb24vZGVidWcgaXMgb2J2aW91c2x5IG5vdApjb25zdHJ1Y3RpdmUs
IGJ1dCBhIHNpbmdsZSBsaW5lciB0byBhZHZlcnRpc2UgdGhhdCBhbiBpbXBvcnRhbnQKZGV2aWNl
L2NvbnRyb2xsZXIgaGFzIGJlZW4gc3VjY2Vzc2Z1bGx5IGluaXRpYWxpc2VkIGlzIG1vcmUgaGVs
cGZ1bAp0aGFuIGl0IGlzIGhpbmRlcm91cy4KClRoaXMgcHJpbnQgd2FzIGFkZGVkIGR1ZSB0byB0
aGUgc2lsZW50IGluaXRpYWxpc2F0aW9uIGNvc3RpbmcgbWUKc2V2ZXJhbCBob3VycyBvZiBkZWJ1
Z2dpbmcgQUNQSSBkZXZpY2UvZHJpdmVyIGNvZGUgKGFsYmVpdCBsZWFybmluZyBhCmxvdCBhYm91
dCBBQ1BJIGFzIEkgZ28pIGp1c3QgdG8gZmluZCBvdXQgdGhhdCBpdCB3YXMgYWxyZWFkeSBkb2lu
ZyB0aGUKcmlnaHQgdGhpbmcgLSBqdXN0IHZlcnkgcXVpZXRseS4KCi0tIApMZWUgSm9uZXMgW+ad
jueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8
IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
