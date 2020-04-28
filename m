Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73401BBA6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 11:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toZrQOjZKqQsmrvdh6EHr05bw1EFeLeqTHbP1pJMlMM=; b=c32nV4Pj/dCwWT
	hVGPFs4F9Tsyoz3zAlSoh4pBW6JlRP5m+n6DjN0Sc1NtkrWbJeyzCntod+0kxCgFacwCfdMirGQUe
	NerxwgjoFQhT48UrgYLWSylIJrjpzXrmodrqQfhhqIciPyOWHWNmmWNBqD5FHrkbH8tkDMG8skgFb
	jWJu9GgI24ZztiJ0auMj7J3jr0v71RMlvuj1UCVyBNTQq+DxHap9A3kSy9SAqP3l+JQfr2nRT7y8x
	FMFijI6f4QM0KhOimmwVWtFb49jPm2Q/F9S3FtLKjw15TfZhcg6KcuCylyPO5moXF2tPkeP3TDvu9
	Eet4pxda/aaJCWOsgWcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMyv-0002wH-1L; Tue, 28 Apr 2020 09:56:49 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMyl-0002vv-5u
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 09:56:40 +0000
Received: by mail-lj1-x244.google.com with SMTP id a21so20794329ljb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 02:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dUYMvHNm1S+cpRAgh6CuSzaN8QMyIl6tpzVnoQoDNsE=;
 b=O6oemS2LnyyWHZ8OwOVA5KOWkg8pK08yWXcrww9azpSPIXoqcyZUqaeM+3xVi2ke0u
 +N6PeCK3fdOn6+nxTApK1Ve3c6+2SjX3uanr9QyJK0/7sHiR7ZSG3zOTztgcd/ym8fXa
 o1c6DSg/BSnqC0YDotD1dhY/RN0m/4GXyeUDpgX2b8XUHT9ZLKC5d0wy37aIV2JR2ANF
 edfFxnlJhe5pdtlMc2ZMCQZL0m2MykJTd5yLS1+DHzNuoUFcICYI/41mUidjkTSbpuoD
 9jH0Q7n7ugThfQG3sHPJfC7kpdAmjVEmtmUnEtLuu3ViKE03MeHAGm3FuPRkK6ZQeNTn
 QPQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dUYMvHNm1S+cpRAgh6CuSzaN8QMyIl6tpzVnoQoDNsE=;
 b=uXocacUa2PwYsqi3GBC9aANH9ciVlmRwY7UPjXUXA3BITAuQRSlH9GzR6IXrQEwuuI
 uzTGoQU6aFKAF9s5Rp4LZBSEJv8e2r7p8AS8M0wAqwT+LMbygc28BMxCPqTAcDughN1b
 KwgsSHXP+DEojXKu4bdwOfwfcW48ZYGpicX5XCYFs5FVnDjD9xOCgfSMmDDXo1oo/7dS
 qWWJTx7SCobmluT3v0fGUMZpgtfqVIpYe6z0RRiCkyuN7E+10uAAT8v9H5RJqU7y29ZE
 ge/lm3oGZqbXxIVpXDBlGx/RM/Ki0TLrnbzjMF/JUuTBxdc3ABy7wSuI1vugVPLqEUMc
 IV5A==
X-Gm-Message-State: AGi0PuZ/AQKlyO8OQe20QvNM4lYzK0x0n8S4qV3Exbj07Sr6Y7PdEruB
 OLbq3Gqz1z5z2vlp8OyoDQET/L/qy9dWU2lbxtUq0g==
X-Google-Smtp-Source: APiQypJlwiuxB4ab5wQqVxYuJTJqT6PIowMT3AHLQ+WNf0e2mYCYXwqrwm6FFZORaGA6n3AkLGy307SzZEMgXnQ6Ro8=
X-Received: by 2002:a2e:b6cf:: with SMTP id m15mr16549672ljo.168.1588067796808; 
 Tue, 28 Apr 2020 02:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200417073512.42350-1-yanaijie@huawei.com>
In-Reply-To: <20200417073512.42350-1-yanaijie@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 11:56:25 +0200
Message-ID: <CACRpkdaH1bet-iBxB7pM9-_swpXkuUiMeg6jwTyx2j8WiB2G_g@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: nomadik: db8500: remove some unused symbols
To: Jason Yan <yanaijie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_025639_239383_4A361E1C 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephan Gerhold <stephan@gerhold.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBcHIgMTcsIDIwMjAgYXQgOTowOCBBTSBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdl
aS5jb20+IHdyb3RlOgoKPiBGaXggdGhlIGZvbGxvd2luZyBnY2Mgd2FybmluZzoKPgo+IGRyaXZl
cnMvcGluY3RybC9ub21hZGlrL3BpbmN0cmwtbm9tYWRpay1kYjg1MDAuYzo4OTk6MjA6IHdhcm5p
bmc6Cj4g4oCYc2JhZ19ncm91cHPigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNv
bnN0LXZhcmlhYmxlPV0KPiAgREI4NTAwX0ZVTkNfR1JPVVBTKHNiYWcsICJzYmFnX29jMl8xIiwg
InNiYWdfb2M0XzEiKTsKPiAgICAgICAgICAgICAgICAgICAgIF4KPiBkcml2ZXJzL3BpbmN0cmwv
bm9tYWRpay9waW5jdHJsLW5vbWFkaWstZGI4NTAwLmM6NTcwOjIzOiB3YXJuaW5nOgo+IOKAmGlw
Z3BpbzZfY18yX3BpbnPigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZh
cmlhYmxlPV0KPiAgc3RhdGljIGNvbnN0IHVuc2lnbmVkIGlwZ3BpbzZfY18yX3BpbnNbXSA9IHsg
REI4NTAwX1BJTl9HMyB9Owo+ICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fgo+IGRyaXZlcnMvcGluY3RybC9ub21hZGlrL3BpbmN0cmwtbm9tYWRpay1kYjg1MDAuYzo0NzI6
MjM6IHdhcm5pbmc6Cj4g4oCYbWMxZGlyX2FfMV9waW5z4oCZIGRlZmluZWQgYnV0IG5vdCB1c2Vk
IFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCj4gIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBtYzFk
aXJfYV8xX3BpbnNbXSA9IHsgREI4NTAwX1BJTl9BSDEzLAo+IERCODUwMF9QSU5fQUcxMiwKPiAg
ICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fgo+IGRyaXZlcnMvcGluY3RybC9u
b21hZGlrL3BpbmN0cmwtbm9tYWRpay1kYjg1MDAuYzo0NTM6MjM6IHdhcm5pbmc6Cj4g4oCYbW9k
ZW1fYV8xX3BpbnPigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlh
YmxlPV0KPiAgc3RhdGljIGNvbnN0IHVuc2lnbmVkIG1vZGVtX2FfMV9waW5zW10gPSB7IERCODUw
MF9QSU5fRDIyLAo+IERCODUwMF9QSU5fQzIzLAo+ICAgICAgICAgICAgICAgICAgICAgICAgXn5+
fn5+fn5+fn5+fn4KPiBkcml2ZXJzL3BpbmN0cmwvbm9tYWRpay9waW5jdHJsLW5vbWFkaWstZGI4
NTAwLmM6NDMwOjIzOiB3YXJuaW5nOgo+IOKAmGtwc2thc2tiX2FfMV9waW5z4oCZIGRlZmluZWQg
YnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCj4gIHN0YXRpYyBjb25zdCB1
bnNpZ25lZCBrcHNrYXNrYl9hXzFfcGluc1tdID0geyBEQjg1MDBfUElOX0QxNywKPiBEQjg1MDBf
UElOX0QxNiB9Owo+ICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn4KPgo+
IFJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90IDxodWxrY2lAaHVhd2VpLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+CgpUaGVzZSBzaG91bGQgbm90IGJl
IGRlbGV0ZWQgYnV0IHVzZWQgcHJvcGVybHkuIEkndmUgc2VudCBhbm90aGVyCnBhdGNoIGZpeGlu
ZyB0aGUgcHJvYmxlbSBhbmQgYWRkaW5nIHlvdSBhcyBSZXBvcnRlZC1ieS4KCllvdXJzLApMaW51
cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
