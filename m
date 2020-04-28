Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E091BBD0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qENiqM1hes3wTbo6R20Jx1CiuVYZ4gGJNJJ+yXmvqk=; b=ulgXf0vYhTUCvq
	4+Kg5Phr4u1v/FM/UwotsFP7ydtIHU67HtZBRdETq0lfLjOFeW72cLgD3sAH9XFnlESDY1eZabQOC
	oIp3o9lf9WpOtqUi6+LYK4oHyIYpq2FL/zLh8U2hGQKq4dA5IY3v8FbcfH4Rr6JV+i2HNM+0TnAja
	fYdvrXvBJJ4zkp7nnC6YabkiD7kPPcm0qH5rvSll7gubra0tbSulnDNphfS4WMuPRTxXVqtWRU7yI
	T9CbPAfpbOKYu09Yz0iLFAFXv3Ye3XO7q1hN2T3tAgsNaM6SVgd4tuexwFQsDU4yaX/yq0MsKyieC
	jjKtZT/yuj52qkBmXeeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTP0o-0006Qw-JU; Tue, 28 Apr 2020 12:06:54 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTP0W-0006I8-A2
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:06:38 +0000
Received: by mail-pf1-x441.google.com with SMTP id r14so10585892pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 05:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=qSnbHnhb/ImrO+E750ELL0K9ASPG1g7hbBn5rfr0x4c=;
 b=jR9eFaou+iyFSfX4VQBaBJ0D4UOtBuEz6lUWJct6oja3uQf/5KgF4ZId80WdawOIyA
 9Y2pWDGToovcozOo/7tIIS1iYKOr9zyzpUtxGGeBeGh1oBeil31lRaJbRyl4HKQYuGn4
 HW1Drb17QDC7nJzXjhe3y1tNvUFMcz5C3ZPhZTTeWcCqQh4tgVdPajM+Eu8l5TbL3SR3
 FtKuslmSvWDAqUoCyJkHlCfbEoxAyxrfgJlVykmzXYKcYPf0JUeaTumpwjsV+gRtNioY
 w3f3oxFawSM9P9jEmvp/ok1VHYLgngw0FRaKthA4mvhkzEnVgKSRPx50kb13KTNhukJR
 JqdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=qSnbHnhb/ImrO+E750ELL0K9ASPG1g7hbBn5rfr0x4c=;
 b=lB6/smxm3JWokbYNh0KKPRoX1ODgE3HNvbGaJo6bA/ueIsr476UrN972eokn/mLG1V
 vOQJY3tgrLS7gyphbTSz3cqT8w3dgznWKM94LBGpo4mn00FWD+SAhNzxMep4dzK01tym
 6U9dQBVBSHXmKuh3n0RhuZiLj54FHDjdNhX55vn8zymYXZlp//+BNEoUMcH41cKskzV1
 Um1rcuUG7IgimFl2+VZV/XECmEL7XM3wQcJhR5BcnT1DLqg9dZNR4Rt5We/ETQbHUxjf
 YuS0MS/7adVcI9JobbBtk61VHtQCcSVmKZ8ElOMEu84I164Wo2iOtNj1bEQfqf+eNZHH
 mCxQ==
X-Gm-Message-State: AGi0PuYdCFwS9BVVUC/KyZz0haDgSFzqQdgBNNLrPCQHOtnf3xKQ55u5
 tJ5Jyn3Hzt67BYABzbLxvxdbECz7hw==
X-Google-Smtp-Source: APiQypI0tvX/4A1LC0q9piuTrkImrZ05Sk2zx1XJrKPT5BlEwwzYPeny8WSqV+GVEHi1Stg1k6/3AQ==
X-Received: by 2002:a62:cf06:: with SMTP id b6mr31065848pfg.9.1588075595284;
 Tue, 28 Apr 2020 05:06:35 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:816:a859:6d8a:8338:74e:a3d1])
 by smtp.gmail.com with ESMTPSA id a200sm14696172pfa.201.2020.04.28.05.06.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 Apr 2020 05:06:34 -0700 (PDT)
Date: Tue, 28 Apr 2020 17:36:28 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] pinctrl: add pwm37 to bm1880_pctrl_groups
Message-ID: <20200428120627.GB5259@Mani-XPS-13-9360>
References: <20200428115543.33379-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428115543.33379-1-yanaijie@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_050636_887837_079FBF6F 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMDc6NTU6NDNQTSArMDgwMCwgSmFzb24gWWFuIHdyb3Rl
Ogo+IFRoZSAncHdtMzcnIGlzIG5vdCBhZGRlZCB0byBibTE4ODBfcGN0cmxfZ3JvdXBzLCB3aGlj
aCB0cmlnZ2VycyBhIGdjYwo+IGJ1aWxkIHdhcm5pbmc6Cj4gCj4gZHJpdmVycy9waW5jdHJsL3Bp
bmN0cmwtYm0xODgwLmM6MjYzOjI3OiB3YXJuaW5nOiDigJhwd20zN19waW5z4oCZIGRlZmluZWQK
PiBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAgc3RhdGljIGNvbnN0
IHVuc2lnbmVkIGludCBwd20zN19waW5zW10gPSB7IDExMCB9Owo+IAo+IFNpZ25lZC1vZmYtYnk6
IEphc29uIFlhbiA8eWFuYWlqaWVAaHVhd2VpLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKVGhhbmtzLApN
YW5pCgo+IC0tLQo+ICBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1ibTE4ODAuYyB8IDEgKwo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aW5jdHJsL3BpbmN0cmwtYm0xODgwLmMgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1ibTE4ODAu
Ywo+IGluZGV4IGY3ZGZmNGYxNDEwMS4uZDFhN2Q5ODM2Nzg3IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGluY3RybC9waW5jdHJsLWJtMTg4MC5jCj4gKysrIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0
cmwtYm0xODgwLmMKPiBAQCAtNDA4LDYgKzQwOCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYm0x
ODgwX3BjdHJsX2dyb3VwIGJtMTg4MF9wY3RybF9ncm91cHNbXSA9IHsKPiAgCUJNMTg4MF9QSU5D
VFJMX0dSUChwd20zNCksCj4gIAlCTTE4ODBfUElOQ1RSTF9HUlAocHdtMzUpLAo+ICAJQk0xODgw
X1BJTkNUUkxfR1JQKHB3bTM2KSwKPiArCUJNMTg4MF9QSU5DVFJMX0dSUChwd20zNyksCj4gIAlC
TTE4ODBfUElOQ1RSTF9HUlAoaTJjMCksCj4gIAlCTTE4ODBfUElOQ1RSTF9HUlAoaTJjMSksCj4g
IAlCTTE4ODBfUElOQ1RSTF9HUlAoaTJjMiksCj4gLS0gCj4gMi4yMS4xCj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
