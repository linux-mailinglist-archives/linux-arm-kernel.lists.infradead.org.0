Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4491BBA75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 11:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfIFF/qBkQ2R9dzuOdYisYdcnlRcGpqbVkSBWte3W4g=; b=R0kB8qWvN2QEqK
	dcHCD7Pw+2XjR0MckvhDqSHn/SuXzXQFaTQiosN+sVBPUTeu3Jw7r2nytq0uzlNOpfTvVImrskoLt
	ZaTG2uVcU9zMOVyBHac5Hev0QSSfpwXmcwl2yVWWEL9MzHo1z5mbpKZewS4YbIuDt0uNx5XyxHXVH
	+ySBux6yvKvyrTu7vXajxoJ0zmDdBplbP/RjuHHlGsbzLCCvcnfsPSsRq+r9aLmTwepqJg504mYGI
	56Dy8oxNzmzPxygC+q/KVFpi5Q1tXJ/AjCmao7ebuMeD3EcBc3ks2zFDJ3Rrej3Yz4wlj3GjrkBB2
	+3kQDMAsQmSQqnKBS9ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN0U-0003HR-Ej; Tue, 28 Apr 2020 09:58:26 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN0I-0003Gi-CG
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 09:58:15 +0000
Received: by mail-lf1-x141.google.com with SMTP id r17so16366034lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 02:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=K2sBtRNx7PhSzPZ9iZVY4Qa3ve/fLU6E7fXk7zTXtP8=;
 b=mVHgFUR1ptdq+Ra8ChQLqF/rBEoIstE8ZBn5MRfdiJ14YLJ6cavaqDVU6z+YK01SxN
 9oSCd2xltXsQOw+tPEZsGRD8GYzQGPo1Ea1wLTII2u0YadLLZY0MXG/yJ6kRCVDL3vuW
 hfAP1AZTWzl9jOEHnzzQdL9pm2ue0k344DbUvhnI0zDXPTwdaMCeezeZtKVQACEAl6S/
 0daqPZV9EqIaH5rndilcywTc+NddK9HZCNH8sesUleOkWX8U+CSkZUJ4GcNHQEaIDvV8
 SejsV30Q/Wb93azr7u4zwHNknX/4kq9pPDrLjAqQT+bGtfLqT0VE/8dnE0NEmVwR8mBY
 sfuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=K2sBtRNx7PhSzPZ9iZVY4Qa3ve/fLU6E7fXk7zTXtP8=;
 b=XpeONDpNUaK+hb5RN31veiCMvMvMVScwvYEurWVJ7MdCaImWHGEDJUpNnzHlDulzg2
 c8zeVfVfo3meTq6zhIYttXKqc0oH8KpZw4Y54HU+GxicV6+Ucact1a3PBl8RoSozU4rV
 vGntsYTIY18mblBAd2dogTRckJ6wJcty6Y07FFZBdhe1JiF7gr9yOUp2RenWphCAceTe
 wY2EY2ZZutHaCrGu8kxXby8MpMiHTZqu5yfl3zhqqSdOytGta814y/GhGey8sWd15zGn
 T/kb7UjWebe7bSN17fhhwtXHHZOF5DSBxeD8g+EbPavALXaWMWimTNxFPrBcUi9cXiB2
 Lgpw==
X-Gm-Message-State: AGi0PuaAHIJh0RZSY4Ras/K/UmEP+wGK/7jfprS/ypeuF8/OwIk1BTm5
 05Xso67WuwpxAx1IUJam0uw4dVXAsujT13sNP79q0A==
X-Google-Smtp-Source: APiQypJgR9W6U13zcfDrGvlRdKXdtFC8wu0m0JoeHg9XV6mKnUUCD0eedTeCwViJJKUt9nBuCBxDv6Y3SnUETZJxBQs=
X-Received: by 2002:ac2:5c4e:: with SMTP id s14mr18862973lfp.77.1588067892086; 
 Tue, 28 Apr 2020 02:58:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200417092112.12303-1-yanaijie@huawei.com>
In-Reply-To: <20200417092112.12303-1-yanaijie@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 11:58:01 +0200
Message-ID: <CACRpkdb5Ozz_MKAUDoyOxdnu_NkN72vRu=ZY7j_Lb5uMAiS3SA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: remove unused 'pwm37_pins'
To: Jason Yan <yanaijie@huawei.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_025814_429619_4C14E761 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Hulk Robot <hulkci@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBcHIgMTcsIDIwMjAgYXQgMTA6NTQgQU0gSmFzb24gWWFuIDx5YW5haWppZUBodWF3
ZWkuY29tPiB3cm90ZToKCj4gRml4IHRoZSBmb2xsb3dpbmcgZ2NjIHdhcm5pbmc6Cj4KPiBkcml2
ZXJzL3BpbmN0cmwvcGluY3RybC1ibTE4ODAuYzoyNjM6Mjc6IHdhcm5pbmc6IOKAmHB3bTM3X3Bp
bnPigJkgZGVmaW5lZAo+IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+
ICBzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IHB3bTM3X3BpbnNbXSA9IHsgMTEwIH07Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fgo+Cj4gUmVwb3J0ZWQtYnk6IEh1bGsg
Um9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphc29uIFlhbiA8eWFu
YWlqaWVAaHVhd2VpLmNvbT4KCkknbSBzY2VwdGljIGFib3V0IHRoaXMuIEkgdGhpbmsgUFdNMzcg
ZXhpc3RzIGFuZCBqdXN0IG5lZWQgdG8gYmUKcHJvcGVybHkgZGVmaW5lZC4KCk1hbmkgd2lsbCBr
bm93IHRoZSByaWdodCBzb2x1dGlvbiB0byB0aGlzLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
