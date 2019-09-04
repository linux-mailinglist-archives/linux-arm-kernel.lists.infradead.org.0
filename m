Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D47A7C27
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 08:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/lQb30KJhJqSkWFJt9AiA2Zx05eUkQntL4al24EGaA=; b=hT1X5LmpMPOXHm
	69KJDeajOLqTAfflvlojhkDIcTIkkm/8VaTSODIGYa8yjKqh0QVH5YfuFMMapbmNkc4XhqBOeBLj+
	+zpbnKS49BirE8+W4C0x1mOuUjWGUnEEB7t/AeL9XIOoNO4CmLrw68CoMhrXk3o3aKm3iX/I1U8rz
	7aZ9z0PYD89h4uSTbRD0v9tQQ2X+rsLO5HNQ14ME+oH7VePq8SGYXNYieMKMOoZdLomxvSeIXiJwM
	Xofr/xXEZ63/37SDgnOqQnzWnVaPIxcT+zixQNq0w16gdj1Y6fZK5gaHxrfMu0k4NpWIMIo3gxFpv
	7NiBNrieFauWulkW4+Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PFD-00009j-4c; Wed, 04 Sep 2019 06:58:19 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PEs-0008Vd-Rj
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 06:58:00 +0000
Received: by mail-ot1-x342.google.com with SMTP id r20so19558835ota.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 23:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Dt75WhUIfHVQfvigwZn6/besGZVEJEtBIQcEOqZ+B54=;
 b=Pvsm0jkNiRhObMK4vm9PFjK6gDG1RInx1dfQIY+anapAMmQ7BBqa+FSp2oQcED/5ZB
 fMFHq1bQSJaQxWDjSZDwYSgSZiGzcMYKOHp3BHHpvmkR/bFVtnN1/nZhEyIerU3Ius5Z
 nhj9GQwxsboOGg+Xy6lXBu8TMN5aY7NAg746v/3ONWMWbQRN3cS84RI2pA4veYqocRhW
 Tk70wmmQirUWHbVtRF2QYa5Fa7ZUVBzx4h5df3jv2vIplCQB6rnVK09hgrU5zieTdwdI
 HxM/Gs7C8qN25BCH3ub6QKRMsgVuWSajuOJsabMCCXmOevSJjqfqamqw3aKhEiPWNJMV
 /Q6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Dt75WhUIfHVQfvigwZn6/besGZVEJEtBIQcEOqZ+B54=;
 b=U8hXzwY/N0VCCKfHEljkZbqT6nusSc54121IYNpMcHzuu8JSgBLRWTmTwvR9nhJrC1
 FP431hOw+KgyTwKqSNdzKADDQ0K8AOtGdcg4NOexbdh6e6mMx8a/UkVQy7OgvwcZ1pcj
 0pQtjVdJZfYkcW7j3zHEd2g28xcsvMNSaizyY5wIA9+ituoTxIp6eLS0R/eU3wsPWvgT
 aPHB0RtTrhvmJ/P9ZzLCddWZIGYxMNlYPV8m7gBF/jS7tgGkDQvGjsvdQyyr9MLOaLTM
 2hLnKa+237VNgTruymkjdk79i2tOAihlIHAiUJ49X3S0d6tiyN2gpJSvvrVn/PLFwrA9
 +jIw==
X-Gm-Message-State: APjAAAU/1ZrVkB5jXb8Xd76VUA6q5sV/mVarv0NjzHohmxrxP0i0I44Z
 //HYKYzBQ/HT+YPJUrcCnoerl2WnJLRGXeUqbxUIdg==
X-Google-Smtp-Source: APXvYqwU0uoAvsRitFcgVrGOxLPCnceC5cmEGe0+fYS1mNopOondiib3itWCLOA9ZD86Hadp9khJFTIPsIhusxb2mrI=
X-Received: by 2002:a9d:6c0d:: with SMTP id f13mr1329516otq.85.1567580275770; 
 Tue, 03 Sep 2019 23:57:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190904061245.30770-1-rashmica.g@gmail.com>
In-Reply-To: <20190904061245.30770-1-rashmica.g@gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 4 Sep 2019 08:57:44 +0200
Message-ID: <CAMpxmJUVijPRGDw3GcSVt=MYod4nCD-npQKVmn2L4AdBSy5++w@mail.gmail.com>
Subject: Re: [PATCH 1/4] gpio/aspeed: Fix incorrect number of banks
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_235758_993395_4C3237FB 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Joel Stanley <joel@jms.id.au>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgNCB3cnogMjAxOSBvIDA4OjEzIFJhc2htaWNhIEd1cHRhIDxyYXNobWljYS5nQGdtYWls
LmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBGaXhlczogMzYxYjc5MTE5YTRiNyAoJ2dwaW86IEFkZCBB
c3BlZWQgZHJpdmVyJykKPgoKUGxlYXNlLCBhZGQgYSBwcm9wZXIgY29tbWl0IGRlc2NyaXB0aW9u
LiBDaGVja3BhdGNoIHNob3VsZCBoYXZlIHdhcm5lZAp5b3UgYWJvdXQgaXQuCgpCYXJ0Cgo+IFNp
Z25lZC1vZmYtYnk6IFJhc2htaWNhIEd1cHRhIDxyYXNobWljYS5nQGdtYWlsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncGlvL2dwaW8tYXNwZWVkLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bp
by9ncGlvLWFzcGVlZC5jIGIvZHJpdmVycy9ncGlvL2dwaW8tYXNwZWVkLmMKPiBpbmRleCA5ZGVm
ZTI1ZDQ3MjEuLjc3NzUyYjI2MjRlOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwaW8vZ3Bpby1h
c3BlZWQuYwo+ICsrKyBiL2RyaXZlcnMvZ3Bpby9ncGlvLWFzcGVlZC5jCj4gQEAgLTExNjUsNyAr
MTE2NSw3IEBAIHN0YXRpYyBpbnQgX19pbml0IGFzcGVlZF9ncGlvX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICBncGlvLT5jaGlwLmJhc2UgPSAtMTsKPgo+ICAg
ICAgICAgLyogQWxsb2NhdGUgYSBjYWNoZSBvZiB0aGUgb3V0cHV0IHJlZ2lzdGVycyAqLwo+IC0g
ICAgICAgYmFua3MgPSBncGlvLT5jb25maWctPm5yX2dwaW9zID4+IDU7Cj4gKyAgICAgICBiYW5r
cyA9IChncGlvLT5jb25maWctPm5yX2dwaW9zID4+IDUpICsgMTsKPiAgICAgICAgIGdwaW8tPmRj
YWNoZSA9IGRldm1fa2NhbGxvYygmcGRldi0+ZGV2LAo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGJhbmtzLCBzaXplb2YodTMyKSwgR0ZQX0tFUk5FTCk7Cj4gICAgICAgICBp
ZiAoIWdwaW8tPmRjYWNoZSkKPiAtLQo+IDIuMjAuMQo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
