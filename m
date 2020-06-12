Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796131F73DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 08:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+ytWZHfapNlTnJzsdFbYlOdn0Gy0tHealD0cFBFc84=; b=nNBJOGHMeEJ/Pw
	nWfI2opBt5kw6vmJkjYGo4BYqvHs0zEIeNeduGUaA8fQeojpnqIBVdEz5ANTKAJaH1NTkVWk58+Kd
	7fVO1v0Jq93QgWjP49FIKm8WOYl+h4P7DjsBX35GTULTTCPu0l8kJ4N6PGHtT23O4nM/pHRNUw/hA
	JRw9XPS6WTeXqfewIuLBGCOLq78yjgL6+x92HzhhDM+tZhnYoigHmDJytU8yP63p9/h3uQHLR7bqe
	eAjFAkmMZuqYSAkTPUZ7brtrwfi2jHuVGBm1N1twQm7PCVttgMFgVW20x5npGfDi5IQSjPUSqB78S
	WU55QjCVajfVClpAbNkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjd5d-00013D-Br; Fri, 12 Jun 2020 06:22:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjd5V-00012H-5q
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 06:22:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id r15so7149282wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 23:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=r35/raZrWclZAQmDzK4QKGB4/ZtwPhHpA9L2VMxUYi0=;
 b=sHazt5Fwsvd+Og9/lqG/YprtOJYONjtaj7z08uneab2SJkRHMzqRUKn1v8POaYQOA2
 zHz0/+OMQvZIb8YYNsYmjNXYUPUgVEQT26KXtNg8vm/T9C8pQuO9BtKyHsEy+A0nfCFf
 wcB+W0Qpecva9B3Iw2Q3MHF53Vo3pji+WvOfnoyK5bsRzoQ/74XU/u706hSAF+KHHN4+
 2vvw63H0YZgUE0sNPAYF30qLixeRfwKACybBvfwfqwsCE1D2H1NN0c9+Ki/Uf/qcJ8oF
 9KvaznHC8ARcXKlWngB5c+c6s0RxHKD9RZQp5zggoTFa6q0yiNODbR3fdxPaP2CtgGDT
 yiSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=r35/raZrWclZAQmDzK4QKGB4/ZtwPhHpA9L2VMxUYi0=;
 b=CwbAOmhatP4923vR43Ryb8IT1pIfVEgWyW3Xp+S8bJS6oD9/URzfAqr8X7izqz3obP
 bbIu6my+Nmz8upllFBO7+MXwkH9/UPOjtfdyv0XIrc4OFAUjbsT2JJM5tnfKHs9Bwnk2
 2BSIGXAMwJwpL5VrfT49A79Mwt1A1VySAyexrPOveE95b/h8m9arjnQkgwb8YASPuoWU
 FTqOOmzc5rs/IMgqClFs/k+1WiQPtuc2JPO56bKAFQOoH5DyLvpKpKCdWGck3WR2vlQu
 uJOZmaGx8Z50qBQP2YhnycIj5Xvsqjldkk4XFB2sHC/fH5PUZZN6xRxFhaNtxE8Q1QiM
 1N9A==
X-Gm-Message-State: AOAM531+P15K7V61QhrQjEshQPnoZ/mqONzZWVy2tSo6sh/Kosg9OWIG
 MU2fXnxuKtNV49oq7zjsXE2Xhg==
X-Google-Smtp-Source: ABdhPJyMZ7jdqnrLlGWZOxx1xPXmlGZ65EoGe9atgpeXrfY05P+k4z1xx3SC4VvX1avfKNeZJIy8Ow==
X-Received: by 2002:a1c:c2c5:: with SMTP id s188mr11700526wmf.18.1591942963832; 
 Thu, 11 Jun 2020 23:22:43 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id o18sm7463231wme.19.2020.06.11.23.22.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 23:22:43 -0700 (PDT)
Date: Fri, 12 Jun 2020 07:22:40 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Rowand <frowand.list@gmail.com>
Subject: Re: [RFC] MFD's relationship with Device Tree (OF)
Message-ID: <20200612062240.GC4106@dell>
References: <20200609110136.GJ4106@dell>
 <7cf94809-7346-31bc-877c-679ecc4d9710@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7cf94809-7346-31bc-877c-679ecc4d9710@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_232249_225951_77FFDC5C 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: devicetree <devicetree@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Michael Walle <michael@walle.cc>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 GregKroah-Hartmangregkh@linuxfoundation.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAxMSBKdW4gMjAyMCwgRnJhbmsgUm93YW5kIHdyb3RlOgoKPiBQbGVhc2UgYWRkIG1l
IHRvIHRoZSBkaXN0cmlidXRpb24gbGlzdCBmb3IgZnV0dXJlIHZlcnNpb25zIG9mIHRoaXMuCgpU
aGUgc29sdXRpb24gcGF0Y2ggaXMgYWxyZWFkeSBvbiB2Mi4KCmh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xrbWwvMjAyMDA2MTExOTEwMDIuMjI1NjU3MC0xLWxlZS5qb25lc0BsaW5hcm8ub3JnLwoK
SSdsbCBib3VuY2UgaXQgdG8geW91LgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3Ig
VGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdp
dHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
