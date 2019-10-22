Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E818CDFF63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 10:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:Subject:References:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=US8C9EA4ldQ7G545lABW8ETuvDdUaYtySYvcwTsPBfw=; b=Q3yGi17a4X7B4h
	ztIrbWnp/AjnI+zwH2ZVr8H6+1fpOItj/S5bpqnx9TFIn33MH8lf2fJvqgpPZE1/kY83ea3A5Rmw+
	5y8mXj5rJO7tdzK3+UUeJqgNC9M2FPP+1MkK8U5osy8UHs8l+erQVjxJXFB1GwThyKMYBW98v4ShO
	HMd0W4Ivr4vLx9TJ32V+bO2hPbgp1S5BnQHI/T4NmT0ZsRs5rdtbOVmICYyvA1caY2q/1NmqCuK2o
	oOfhCZW4bSehEP+abybOdgIT+ngYc2S2zYh/NA0ZQFpxqLqOpts3Af5hNLhEQT4aUbgh31Z38X4rz
	s46U02Tnr04g/ORo6wnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpVZ-0005M6-F2; Tue, 22 Oct 2019 08:27:13 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpVP-0005LC-JS
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 08:27:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1571732803;
 bh=VWx2rTrvpZC0RZaMaSTUbJuSZo63JMW4L0AYgqe9ONg=;
 h=X-UI-Sender-Class:Cc:References:Subject:To:From:Date:In-Reply-To;
 b=p67MYo4vDOx2iE7SXU5Nc7PaQHGeLrs29ySqs2vsy4M+1wv5fXWFn8IBz3eZH+vG/
 Zf52ZgkaY4F0o84g/U0abuIaTLo5Hkh04SfwgXn6fXJ04elrt7Kiwsvx/fZnY5cWND
 xq8pdsAKJSJfch4eFuR+DyBsmQ6PpRF4DGv0uJHM=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.132.150.42]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MFL64-1iHH4Z2JCG-00EJI7; Tue, 22
 Oct 2019 10:26:43 +0200
References: <20191021201848.4231-1-navid.emamdoost@gmail.com>
Subject: Re: [PATCH] clocksource/drivers: Fix memory leak in
 ttc_setup_clockevent
To: Navid Emamdoost <navid.emamdoost@gmail.com>,
 linux-arm-kernel@lists.infradead.org
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <fb5d5331-9a89-8370-1e61-396dd05f291a@web.de>
Date: Tue, 22 Oct 2019 10:26:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191021201848.4231-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:77vlY4Vw7J5s2dUjjAW/OdxwC2PIkEjGDthypIiow25JGaqKBhe
 85x+/yAvM7C1nSAJgPT82JafPm4o/U9ZgS8u7Vh1Sml3ZjzlkxsgAJ28oZB5cz/BNe1dvht
 74wR0Kkw8cI/oEbDqcRgbeGnIq43n1f3odgRmEH2mUUj9pYlAFY2I3YCFAi6TWVRDhWjIAP
 G4vUmuLKLNLLVBmSimh3Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zwP1lSrkeoc=:0a9XvDjX4WsXajoLmgIJ6r
 Y3aMNKL0C77+YLBRhjwPdHhYZ5Oj/EITbJhcEczNYFW4FHHj1WweCVzkl2qHLQZzFhjsxDMo2
 0sTkcJ1JajwCTjj6F2uoUnTbOcFXBJjFQ79C7ZMziTBocKiQnDiQ6ShLHy0PfhcgTfJC5KeFA
 gsNrEhepUSl6N4SYSCGK6CIxGIvypv3hQGhaaYzc+UFIXq5VdeU+mPQGPsO/PiZvKsBwirh7s
 z2aYZvv5J5LfuscOdpACJWo19vKfYb9ZtFJ5HHzIUhcxlI/fW/EywEkGdSRGX8//YYmVhE4H4
 evsznwReaBMswadQtZO6BPXCiX4OkQRoVmZs/sP+DB/UOWeBJZ78/wC3b4/aWVoBUQj83ObqL
 qHUhQHEuR3K2nAcEWrnQPz/ldnKd4+oKLlYyBu7CKo5iCUluIcdSDbGVCHA/OsaxrpM7g9HTs
 7ge1yNbymoeEBwXAhGtqC28t2fnOf3xQVxUDwhjSQmYE6AsJZhUgNXMKMt3SaT3F/kzmxbAUb
 PHNnNrsa/ba4Wf5NA7H/cIK4cTRNJkyZVdI1eMwlMk5zVhYvNWcjzgWChs+UdGmHKywxgoK86
 M3ZvmfYrws+ZBvRMIYNXtnr7IAZSDDMlsRRtR3tctApngS0x5TgCTtZTPyUitwGtpALjZsUcK
 IYwwKyjq+QE51AnjxQyUbD/INzyh103zPi2IW837b5MPfORdcjLD0CqlZo9JIRmYSJDTGq/qX
 QEPNLhDlZ7HojA6+vXHUiAqZOuCdVrV2dsWEEy71fW10q9Nxz4pPogFdP0lRSKEvQ98xqS/nM
 +8i0hpFQOo7dwIC2IM6QujE5u/PoGRYYbVllRvg3OA2ZQcWGlPdRvEKFiteo8oplKfbDoauKf
 dmUkuhSt1VsbINj1Tqwuuf+UABvZXjb8pxOjTIn+5/+jLhJJybnrtW+fFcrMQhzR7yijLYTwI
 07fIEo6yUT6z9jCbMnsD/sH2MMCI+f2BACu0BKsOcIPRNhPbbjUk6z06+SCbnHdFiS0irpcGW
 X+nH9k10kA0worXOsUqz7/PuLtdmI0H8CSermeau/AKIn2vDHIQBv8LkMghgHxqAJG89uEIe8
 X5lUqeQhGDRzeOH3QJnokiQ1jT670AIXZrdfSkkkG7rb9tYL7kNByAn7l0a62NnyinEcVnaBA
 kUywuRKs7KUh498baUlG6XfOV/wJ/CATOeZPPAIx5UnUB9J9PUtko20K/Rdig67NhS2sAbBLf
 JdofDEwhcvc6JIeH24uDIFb7Tg8qs5u/7qk/OVKL2XMnqJkVkmk6q34I5/0k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_012703_936848_F6407F15 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-janitors@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kangjie Lu <kjlu@umn.edu>, linux-kernel@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, Navid Emamdoost <emamd001@umn.edu>,
 Stephen McCamant <smccaman@umn.edu>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBJbiB0aGUgaW1wZWxlbWVudGF0aW9uIG9mIHR0Y19zZXR1cF9jbG9ja2V2ZW50KCkgdGhlIGFs
bG9jYXRlZCBtZW1vcnkKPiBmb3IgdHRjY2Ugc2hvdWxkIGJlIHJlbGVhc2VkIGlmIGNsa19ub3Rp
Zmllcl9yZWdpc3RlcigpIGZhaWxzLgoKKiBQbGVhc2UgYXZvaWQgdGhlIGNvcHlpbmcgb2YgdHlw
b3MgZnJvbSBwcmV2aW91cyBjaGFuZ2UgZGVzY3JpcHRpb25zLgoKKiBVbmRlciB3aGljaCBjaXJj
dW1zdGFuY2VzIHdpbGwgYW4g4oCcaW1wZXJhdGl2ZSBtb29k4oCdIG1hdHRlciBmb3IgeW91IGhl
cmU/CiAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9y
dmFsZHMvbGludXguZ2l0L3RyZWUvRG9jdW1lbnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0
Y2hlcy5yc3Q/aWQ9N2QxOTRjMjEwMGFkMmE2ZGRlZDU0NTg4N2QwMjc1NDk0OGNhNTI0MSNuMTUx
CgoKPiArKysgYi9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWNhZGVuY2UtdHRjLmMKPiBAQCAt
NDI0LDYgKzQyNCw3IEBAIHN0YXRpYyBpbnQgX19pbml0IHR0Y19zZXR1cF9jbG9ja2V2ZW50KHN0
cnVjdCBjbGsgKmNsaywKPiAgCQkJCSAgICAmdHRjY2UtPnR0Yy5jbGtfcmF0ZV9jaGFuZ2VfbmIp
Owo+ICAJaWYgKGVycikgewo+ICAJCXByX3dhcm4oIlVuYWJsZSB0byByZWdpc3RlciBjbG9jayBu
b3RpZmllci5cbiIpOwo+ICsJCWtmcmVlKHR0Y2NlKTsKPiAgCQlyZXR1cm4gZXJyOwo+ICAJfQoK
VGhpcyBhZGRpdGlvbiBsb29rcyBjb3JyZWN0LgpCdXQgSSB3b3VsZCBwcmVmZXIgdG8gbW92ZSBz
dWNoIGV4Y2VwdGlvbiBoYW5kbGluZyBjb2RlIHRvIHRoZSBlbmQgb2YKdGhpcyBmdW5jdGlvbiBp
bXBsZW1lbnRhdGlvbiBzbyB0aGF0IGR1cGxpY2F0ZSBzb3VyY2UgY29kZSB3aWxsIGJlIHJlZHVj
ZWQuCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRpb24vcHJvY2Vzcy9jb2Rpbmctc3R5bGUucnN0
P2lkPTdkMTk0YzIxMDBhZDJhNmRkZWQ1NDU4ODdkMDI3NTQ5NDhjYTUyNDEjbjQ1MAoKUmVnYXJk
cywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
