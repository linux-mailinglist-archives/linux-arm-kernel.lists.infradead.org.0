Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9075120F4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:24:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnZzPAJHe7NGj0n6xUGBTv99JI532ADLPVaixiJE7Ag=; b=mVUZjiIxfB+bJs
	eu7E+Lgono9TlhwOT/xzjhetuv0L77HaOcy+dAoIqGREIYmLKrxQWO39QkkILZMxE39JT6U9Qb9LT
	UWIgbnInA+0TFgSeXwbIVo+s/0ii5iAKPxez9KCUzKcffKd6GODFxsz6R0hf4svKJa5sInd7skirB
	9MhP3LhU0GWA4KiYF2VOMO61P33P7evFDT7rY/L24GO+04ETM2ewJBVRebLPDJ4EIuxv174lE4a3o
	DS2VFYl98C0zR3H3EOXlvywnr/B13BRcqoVDwzwS161/AvHSxkos2undYikwqBOnFcZkGlkcq0URG
	11qAzuD14Te+RsKs4Q8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igtAP-0001wy-CE; Mon, 16 Dec 2019 16:24:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igtAH-0001wa-5e
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:24:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id d73so7421096wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 08:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=llbkzlKSPIxwUXHWHgtqCw4kPqPvje1n5crDMdl/6tU=;
 b=qyo3qjQ6M9XGQSxgffMeMJUKMr8fujgew/LhXKhz2wdQG0sirrHw705Vp5FMH1Gene
 AMpppauj9lm4EqTDVn5sKT7re72xJWRtemS3Ltbdl3KKiwbH0Xkd3dsfBeRSKdipx15B
 v4ARdMaqDVZlhL5xZTWtjqai9RjyEcvFQxSH2ukyT3mL0wKR5DuvzB1joAD+IfnOldTa
 3VrfnJT4ZkiCVHcrPRubHViFym19DaqlL9/pC9tZlmp8/OAbVjcVZjPDw1EGSUydpQmX
 vwxiQxpufqd46BDsGnYd+x9cvJVZhd2IGq3ftVPSY6dmRrMWIrj494qqGVfYJqCw1Q33
 Us9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=llbkzlKSPIxwUXHWHgtqCw4kPqPvje1n5crDMdl/6tU=;
 b=ghncptE5bSLorRc1j34R5h3DNDW1yuvq/Ipnig6Js3G5y4jYShErxSSxsRVWjq4KyM
 aYt/FZ9Hv4dkFe4klj1dQZvOMK15p7TqqVirZRf2v2eXbJlH8E/8nJY+JtvyfnuJv8ew
 jrbA6vuIhxz7PsXWb+7GZC3U4E5sNLwllntHCo0UjJGgBBhAy0h6NEsb8NK1wj+c+knq
 9hvHF1ZDk837gfRjWH/EedUJ3iVjkAWx/+xfHj1bRObU2BwQa2IFjURkoIIe9wj0SRvL
 G+GiKslOtTE1LVqSwUbflsTbDSQ5XKb1h5eksSqLsztIAidfkQX8bfdwXXxBLAuvxqqw
 NdQg==
X-Gm-Message-State: APjAAAW8ceQYU0o0/bOnkMkGUXlfr3lJE4mW8bk/8cHKCCwGL2gtBAaj
 tldx39aakHHcgmfGhUu1r4Ul8g==
X-Google-Smtp-Source: APXvYqw/af4JJwzf37BYYywEn5ThaK6uC1VvISuGJMJj+/VkvCJB0tA9xjXtKQNDvnU5wA80dfkrJw==
X-Received: by 2002:a7b:c847:: with SMTP id c7mr31241155wml.3.1576513447276;
 Mon, 16 Dec 2019 08:24:07 -0800 (PST)
Received: from dell ([185.17.149.202])
 by smtp.gmail.com with ESMTPSA id h8sm23512856wrx.63.2019.12.16.08.24.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 08:24:06 -0800 (PST)
Date: Mon, 16 Dec 2019 16:24:06 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 4/6] mfd: atmel-hlcdc: return in case of error
Message-ID: <20191216162406.GQ2369@dell>
References: <1576249496-4849-1-git-send-email-claudiu.beznea@microchip.com>
 <1576249496-4849-5-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576249496-4849-5-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_082409_224945_782625D0 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, bbrezillon@kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, daniel@ffwll.ch, sam@ravnborg.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxMyBEZWMgMjAxOSwgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cgo+IEZvciBITENEQyB0
aW1pbmcgZW5naW5lIGNvbmZpZ3VyYXRpb25zIGJpdCBBVE1FTF9ITENEQ19TSVAgb2YKPiBBVE1F
TF9ITENEQ19TUiBuZWVkcyB0byBiZSBwb2xsZWQgYmVmb3JlIGFwcGx5aW5nIG5ldyBjb25maWcu
IEluIGNhc2Ugb2YKPiB0aW1lb3V0IHRoZXJlIGlzIG5vIGluZGljYXRvciBhYm91dCB0aGlzLCBz
bywgcmV0dXJuIGluIGNhc2Ugb2YgdGltZW91dAo+IGFuZCBhbHNvIHByaW50IGEgbWVzc2FnZSBh
Ym91dCB0aGlzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJl
em5lYUBtaWNyb2NoaXAuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21mZC9hdG1lbC1obGNkYy5jIHwg
MTUgKysrKysrKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9hdG1lbC1obGNkYy5j
IGIvZHJpdmVycy9tZmQvYXRtZWwtaGxjZGMuYwo+IGluZGV4IDkyYmZjYWE2MmFjZS4uYTFlNDZj
ODdiOTU2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL2F0bWVsLWhsY2RjLmMKPiArKysgYi9k
cml2ZXJzL21mZC9hdG1lbC1obGNkYy5jCj4gQEAgLTQwLDEwICs0MCwxNyBAQCBzdGF0aWMgaW50
IHJlZ21hcF9hdG1lbF9obGNkY19yZWdfd3JpdGUodm9pZCAqY29udGV4dCwgdW5zaWduZWQgaW50
IHJlZywKPiAgCj4gIAlpZiAocmVnIDw9IEFUTUVMX0hMQ0RDX0RJUykgewo+ICAJCXUzMiBzdGF0
dXM7Cj4gLQo+IC0JCXJlYWRsX3BvbGxfdGltZW91dF9hdG9taWMoaHJlZ21hcC0+cmVncyArIEFU
TUVMX0hMQ0RDX1NSLAo+IC0JCQkJCSAgc3RhdHVzLCAhKHN0YXR1cyAmIEFUTUVMX0hMQ0RDX1NJ
UCksCj4gLQkJCQkJICAxLCAxMDApOwo+ICsJCWludCByZXQ7Cj4gKwo+ICsJCXJldCA9IHJlYWRs
X3BvbGxfdGltZW91dF9hdG9taWMoaHJlZ21hcC0+cmVncyArIEFUTUVMX0hMQ0RDX1NSLAo+ICsJ
CQkJCQlzdGF0dXMsCj4gKwkJCQkJCSEoc3RhdHVzICYgQVRNRUxfSExDRENfU0lQKSwKPiArCQkJ
CQkJMSwgMTAwKTsKPiArCQlpZiAocmV0KSB7Cj4gKwkJCWRldl9lcnIoaHJlZ21hcC0+ZGV2LAo+
ICsJCQkJIlRpbWVvdXQgd2FpdGluZyBmb3IgQVRNRUxfSExDRENfU0lQXG4iKTsKCk5pdDogSnVz
dCBpbiBjYXNlIHlvdSBoYXZlIHRvIHJld29yayB0aGlzLCBwbGFjaW5nIHJlZ2lzdGVyIG5hbWVz
IGluCnRoZSBrZXJuZWwgbG9nIGlzbid0IHVzdWFsbHkgaGVscGZ1bC4gIENhbiB5b3Ugc3dhcCBp
dCBvdXQgZm9yIGEgbW9yZQp1c2VyIGZyaWVuZGx5IG1lc3NhZ2U/CgoiVGltZWQgb3V0IHdhaXRp
bmcgZm9yIC4uLiIKCi4uLiBYIHN0YXR1cwouLi4gWSB0byB1cGRhdGUKLi4uIHNldHRpbmcgWiBj
b25maWd1cmF0aW9uCgpFdGMuCgo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCX0KPiAgCX0KPiAgCj4g
IAl3cml0ZWwodmFsLCBocmVnbWFwLT5yZWdzICsgcmVnKTsKCi0tIApMZWUgSm9uZXMgW+adjueQ
vOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3
aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
