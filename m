Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198BC1BBC76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLoIKV3AjyEosaW+hEmVcNPz3/IsfFG7ZQYX0bmdx28=; b=J0GeQ9wuH0X+LV
	XqaxFLyDGLqqBkIiQMkovfUiOz7NArv8yxTcIbFGwGyFPRHVpkaJblnJBaPrEKXorxDNuBJxNLwCR
	v7ydR9JDlvVaOJkDFBO2GEJDq8XAyJRwDct0toGhu81oceq13fcTbf+62Pkd6peNkKOFTPpue/HXs
	Jbv4/R6levECWzlB+1sXuX1vQLadNFdV5FdXfdLLn2zg9BJ3uMEIdaaLzZipJFlYunT/zLLa1gQKI
	vyxjy2RaoS3C5NjAy0ruk7JHYoW7xFZHOImYAdTiveQTeM12Kh2ggZ+10XCYkXwh7Nh6nIed19tXu
	Y+NJxBCXMHE4JSTH1ubQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOSE-0005pw-FV; Tue, 28 Apr 2020 11:31:10 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOS4-0005hh-0p
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:31:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id 18so9328220pfv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 04:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=7mluZ8A4I9xD33tssLfMPlz8TFvmTBj7H//FiLCwMKQ=;
 b=Uzz6rxf2M+0uA0gqifTALGQks4hWRLyGGLFFT02xEl0ZpUVciIXpgIq1gLWPdfAZ5N
 5yy8L64gbdCHAqkLOXIH5OnuIedLJ0Zvhv4fpsYM5iQjhPkeQpNIfXRz1NH0+UW3dx8y
 svQWYO809ihQXo7WeYTtvcjEPZYLHdfasSMCPzy4ko0SYKhoEDGD80hzwFffKVrcwfhC
 14f6c1qi+Xuk4D31slGnBdu3nOYteQ3OBHuc/WX2rWNVW0jfDoIL2mKF9BW41MfZJseD
 HUldHwkxqtRtPIdRaoZgIcOHdCxjGOTYUJvwvRnPM6eSB1zdDNrZ8UQuBshdv3hpvnsC
 H1CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=7mluZ8A4I9xD33tssLfMPlz8TFvmTBj7H//FiLCwMKQ=;
 b=dp8aDe1zqbOuJf5nJRyyQmpsyOw322W8NSGWZ3jdAoqC2YDd3o9KoWUAORkIOTBymC
 RBEnPifptYGxW0qUGSdgkO+yJXgYNXth2L4UTz1eWIpyoTIaG12QFMQ1yoA1YhbYJ87a
 UdzvS6NYxgzkSk9THv8MyRCPpNUG77iKhdKR5Wzh88w5GU5aO94Vu9mUO1b0Es45vA8Z
 Va+l7cBCZvwOrq/WyIiecFgODzPALhlXeNMT/SF0iYdGzok8ROIom24IgjuDiS2GF3pR
 KyF+o/EIBTAfBfWKeK1d7PWiMz9Ks3emAqhOkQuRUC2dh4qNjYnjLBia2BP9Ftczdiib
 uKPA==
X-Gm-Message-State: AGi0PubheT1OhDFnVlxK+SbVvVJPI0Ic+Zmlh1srN8HMKRLSbRFDzbh7
 7l8atF5DKwfOIHr9sItfYMHKZcttmg==
X-Google-Smtp-Source: APiQypL9Kkbnieket+vePrygfOB6d5NB7/ZBGTCpfca9KeSGImCWXC/JlcXcQDHRS2TXxne/Tg0jMw==
X-Received: by 2002:aa7:94a3:: with SMTP id a3mr29670332pfl.101.1588073457999; 
 Tue, 28 Apr 2020 04:30:57 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:816:a859:6d8a:8338:74e:a3d1])
 by smtp.gmail.com with ESMTPSA id y25sm13511710pgc.36.2020.04.28.04.30.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 Apr 2020 04:30:57 -0700 (PDT)
Date: Tue, 28 Apr 2020 17:00:49 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] pinctrl: remove unused 'pwm37_pins'
Message-ID: <20200428113049.GA5259@Mani-XPS-13-9360>
References: <20200417092112.12303-1-yanaijie@huawei.com>
 <CACRpkdb5Ozz_MKAUDoyOxdnu_NkN72vRu=ZY7j_Lb5uMAiS3SA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdb5Ozz_MKAUDoyOxdnu_NkN72vRu=ZY7j_Lb5uMAiS3SA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_043100_232898_8D1308CF 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Hulk Robot <hulkci@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMTE6NTg6MDFBTSArMDIwMCwgTGludXMgV2FsbGVpaiB3
cm90ZToKPiBPbiBGcmksIEFwciAxNywgMjAyMCBhdCAxMDo1NCBBTSBKYXNvbiBZYW4gPHlhbmFp
amllQGh1YXdlaS5jb20+IHdyb3RlOgo+IAo+ID4gRml4IHRoZSBmb2xsb3dpbmcgZ2NjIHdhcm5p
bmc6Cj4gPgo+ID4gZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYm0xODgwLmM6MjYzOjI3OiB3YXJu
aW5nOiDigJhwd20zN19waW5z4oCZIGRlZmluZWQKPiA+IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQt
Y29uc3QtdmFyaWFibGU9XQo+ID4gIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgcHdtMzdfcGlu
c1tdID0geyAxMTAgfTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn4K
PiA+Cj4gPiBSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVsa2NpQGh1YXdlaS5jb20+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+Cj4gCj4gSSdtIHNj
ZXB0aWMgYWJvdXQgdGhpcy4gSSB0aGluayBQV00zNyBleGlzdHMgYW5kIGp1c3QgbmVlZCB0byBi
ZQo+IHByb3Blcmx5IGRlZmluZWQuCj4gCj4gTWFuaSB3aWxsIGtub3cgdGhlIHJpZ2h0IHNvbHV0
aW9uIHRvIHRoaXMuCj4gCgpTb3JyeSBmb3IgbWlzc2luZyB0aGlzIHRocmVhZCBiZWZvcmUuIFRo
ZSBvcmlnaW5hbCBwYXRjaCBkaWRuJ3QgbGFuZCBpbiBteQppbmJveC4KCkFueXdheSB0aGUgaXNz
dWUgaXMsIHB3bTM3IGlzIG5vdCBhZGRlZCB0byBCTTE4ODBfUElOQ1RSTF9HUlAuIFNvIHRoZSBw
cm9wZXIKZml4IHdvdWxkIGJlIHRvIGFkZCBpdC4KCkphc29uLCB3aWxsIHlvdSBiZSBhYmxlIHRv
IHNlbmQgYSBwYXRjaCBmb3IgYWRkaW5nIGl0PyBPdGhlcndpc2UgSSdsbCBkbyB0aGF0LgoKVGhh
bmtzLApNYW5pCgo+IFlvdXJzLAo+IExpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
