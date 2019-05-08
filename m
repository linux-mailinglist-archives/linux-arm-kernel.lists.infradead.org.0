Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 270021740B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 10:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2rsJUXndGkthqUV1D6Oqyy87FR1o6527G4+OmcVEbA=; b=JxCHdciIhg69qu
	zsTTiNSFxEIALJU/Md/8EkliErBvCDnx5DTLsoKBhp2aV6tD3JRGCG4AGvs4tsy+jm5T3Lg6O0usK
	p4Zc+NAQOPpWmkEbBV+KLieK/WKug1B7QGrnZKzkzoa16Ie1At6vDLdqyXkkSCwnXgDXS/FB/nWLa
	1mFhILcuw7shICuDaD8ln7kqfRvxrb/RjKezXve/N4rvgmJlxL2zq+Fofp/n4nZttDzER610GO0la
	O1K9WItH+EmQ5zyUkx6xZqxIJYc0/5aTS0PRD/lsRB6mdLnOwCuvPZLl6wTQlKM25+WrgpH9uFvsU
	GPUvovY4Q4tZ9PjlR0cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOI83-0005Ak-Fs; Wed, 08 May 2019 08:40:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOI7w-0005A5-IK
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 08:40:37 +0000
Received: by mail-wr1-x442.google.com with SMTP id h4so6771778wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 01:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=5iV39oc7txFj1z14zStSzaic9qElbV7eM3bDdq2xNNs=;
 b=xJVgfbskTFpOrVO5RDoCGZrBXAQvJ7kr9yPJqSZVrEPUOuf48XOQL0xxm2Vx46zXbc
 +hG2kyg6u1/4yWPAwHu9AAnlGLSET2uQbA64QFgbNe4FBMqYbP5QWgmCgoHNOcWDNpFX
 hB9h3Kv5A/1bl6F8REG+lJSe/guSxnIZ73zrYHp8tENPVnROsePUZiVVjK7rcc+m70DK
 J/tTuiQTJdo11FqR5+F31zeGdMzTbQKOVEyQx7lku6gVFKzVTB9CloBBDQEEtR6iuUef
 E93Sd8aWp+Of26Z7kvQhkX8KwKy6Y+brLkL5Edua8zQhB8rV41ic3lyIpi4vvHnsFBDz
 gl9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=5iV39oc7txFj1z14zStSzaic9qElbV7eM3bDdq2xNNs=;
 b=dhfFkD9eGDPveW6Jq9wFj2KX49kJnjZwxYsmKizo/uwKpqFENwwnt2KEnmB+islJBD
 kY4ZfdLohlpPdH7zOJO92FHV9HR0CF/prPQyaEjfZ3uvWQwNx1zEcQ0zr6HoT9PWusOj
 MjOciunt3d9O14oH8RJAS5x8bAvpvkgo7FRAgH4YbJMTxprw/FzIVDtmj3AVyEVTQv+/
 cEWP2fGBkH3xC7glHKHYJIxZjtyBkgfVfd7p7cNH3LZVY9iuBsW1S/QRbfj1+wQ5eVcl
 lUhZuWw8d9SVkNmXXxE4A0qNK/Yf8W9268sDhN6FmayfxYPc3/Eg0OURkbh2rKxP5H9N
 njXg==
X-Gm-Message-State: APjAAAUvm82zFD3YyxotvXc+9kcKpiJPGPJI4bu+cChi4+iAyOoFInrl
 ZSjtKmATZaUTEmKUGO9HPx1xWA==
X-Google-Smtp-Source: APXvYqxT+p0H0/0rz0V5Jy4z/rmjEc/g5TciAjBtClxe3ObnYCxgA/8wzzmEJYlDAKpAIRAW1Pb3vw==
X-Received: by 2002:adf:f508:: with SMTP id q8mr7952043wro.225.1557304834919; 
 Wed, 08 May 2019 01:40:34 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id i9sm2526835wmb.4.2019.05.08.01.40.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 01:40:34 -0700 (PDT)
Date: Wed, 8 May 2019 09:40:32 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] mfd: sun6i-prcm: fix build warning for non-OF
 configurations
Message-ID: <20190508084032.GF3995@dell>
References: <20190416122506.3180853-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190416122506.3180853-1-arnd@arndb.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_014036_610257_95F747B6 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxNiBBcHIgMjAxOSwgQXJuZCBCZXJnbWFubiB3cm90ZToKCj4gV2hlbiBDT05GSUdf
T0YgaXMgZGlzYWJsZWQsIHdlIGdldCBhIGhhcm1sZXNzIHdhcm5pbmcgYWJvdXQgYW4KPiB1bnVz
ZWQgdmFyaWFibGU6Cj4gCj4gZHJpdmVycy9tZmQvc3VuNmktcHJjbS5jOiBJbiBmdW5jdGlvbiAn
c3VuNmlfcHJjbV9wcm9iZSc6Cj4gZHJpdmVycy9tZmQvc3VuNmktcHJjbS5jOjE1MToyMjogZXJy
b3I6IHVudXNlZCB2YXJpYWJsZSAnbnAnIFstV2Vycm9yPXVudXNlZC12YXJpYWJsZV0KPiAKPiBS
ZW1vdmUgdGhlIHZhcmlhYmxlIGFuZCBvcGVuLWNvZGUgdGhlIHZhbHVlIGluIHRoZSBvbmx5IHBs
YWNlCj4gaXQgaXMgdXNlZCwgc28gaXQgY2FuIGdldCBsZWZ0IG91dCBhcyB3ZWxsIHdpdGhvdXQg
Q09ORklHX09GLgo+IAo+IEZpeGVzOiBhMDVhMmU3OTk4YWIgKCJtZmQ6IHN1bjZpLXByY206IEFs
bG93IHRvIGNvbXBpbGUgd2l0aCBDT01QSUxFX1RFU1QiKQo+IFNpZ25lZC1vZmYtYnk6IEFybmQg
QmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL3N1bjZpLXByY20u
YyB8IDMgKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMo
LSkKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNl
cnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJl
IGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
