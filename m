Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC06561FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 08:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dnMkNaqJg95mwU1AtK6yNY1/TfgPtfudSBa02FMLVw=; b=FGw5M3gbwffCLy
	XMADHC991RjNuEBklbX4M24ngeYYX/Dtmy4fNJlbDYjAZvW8FdZvkQUf9+WqdNkojWAhFi9CLvlpO
	/+lqj7Va5gVZGpfNQS6SRgNszRC6cod9UIc0g/tUAqCYXg94hChuXa/qFAkfWrsgWo+HAXA16J+YP
	U+y+oBx/QzaBqkLAIflGFAtwfoLyp4JQLhRNy39Ku6heVvqShyKiBuYP+jhFTUSUpkPnCaKPIoUW1
	N5zHwz2iWwoHdsQF984+MKbQg5NZ4NdTu3l5ZdaFUQU6mUcnaRPs+Ry3Ze1yxF8gSAI9uK/wNvMrF
	H0Gvt0oTNbaWw9owGlpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg10l-0002TT-QM; Wed, 26 Jun 2019 06:02:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg10T-0002T1-2K
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 06:02:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id w9so3767671wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 23:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JE+TOhUHIrATlxgPGqOdu0Mpkm1mI9mozh/VZYXKh0M=;
 b=TXXMM5A6pGGNULhqD5rmeJMODf9Y+j0nrPR+5/5psBvvfvso+tmVV9ML1siql6CzqQ
 QulKmUP4FzzBVUT4Vzk6uXFNaCi5THQ4EFPeqJCsEl7dHGfnRB7tDu2a3Uvd0y9jhhMu
 wAzSV7sRp8T3ROyDAvlxe97966yfzv7Ajh9XIslOYmB1HYw8QLmakdx+9t1TynPqbA4S
 kHVLRC+uXFA1pOPtK3WZkCTGwvL1c9aZhIaoXP8mdUc2KrraGdPQ/EtMg19Fn0Nal9hj
 yyTHjNCNsilQkXHEznt5rKG6NJYnAfxPkksx2oxf/LWmy/omZ87JIho6FsbF9haPc7xX
 8png==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=JE+TOhUHIrATlxgPGqOdu0Mpkm1mI9mozh/VZYXKh0M=;
 b=BdAoxtPY+veWTcD4gxma9OH/tKkAwO1SAyrv3OWOnDLet/ldJZ+JRLfSGREOxIPeBN
 ioobFmu17UTev5/9wnH2WqFNUBN7WB4wnb6HbJyEFcFhEctfVug4Am3mRfX1AOTiA3Hi
 +s5eK0klRX6ZWwc/KRFDjyvyRNVx7gahTFitqsFaMbjrj16F0z+EgHv0APT97yPYbx//
 WavTSHvNXy9dMcULK3rscjhKP+q9orVZozI5uryMRZH4cW1+f0M63Duuv416I7VbWiU4
 MZXbzzJz+bVXWgJRMqe4yEmbmeoR//UP9iO1yKi1PQ5NYQbdAljilXh3GxKW3WcR2HHo
 63jg==
X-Gm-Message-State: APjAAAUKi8LQGbFFBndwu8AAD7iyRmo9onAd3M+wM5Pql0r39xQouMi5
 OjTDb4j2Pi5KR7immB0adgTrnA==
X-Google-Smtp-Source: APXvYqwc1QI2wKf0Z1qUM2fhZdejuMhb2mu8lEueS3C1ItnTa05hTFUW8CDyP150git5Laq+FgGbWQ==
X-Received: by 2002:a1c:a1c5:: with SMTP id k188mr1219098wme.102.1561528927278; 
 Tue, 25 Jun 2019 23:02:07 -0700 (PDT)
Received: from [192.168.0.41] (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.googlemail.com with ESMTPSA id w23sm1033278wmi.45.2019.06.25.23.02.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 23:02:06 -0700 (PDT)
Subject: Re: [PATCH V3 2/3] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20190625113244.18146-1-daniel.lezcano@linaro.org>
 <20190625113244.18146-2-daniel.lezcano@linaro.org>
 <20190626025831.jmyzyypxr6ezpbtu@vireshk-i7>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <da1d2603-e30a-d877-54c3-1fad218f9d57@linaro.org>
Date: Wed, 26 Jun 2019 08:02:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190626025831.jmyzyypxr6ezpbtu@vireshk-i7>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_230209_126187_E9268D40 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keerthy <j-keerthy@ti.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIFZpcmVzaCwKCgpPbiAyNi8wNi8yMDE5IDA0OjU4LCBWaXJlc2ggS3VtYXIgd3JvdGU6Cj4g
T24gMjUtMDYtMTksIDEzOjMyLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvY3B1ZnJlcS9jcHVmcmVxLmMgYi9kcml2ZXJzL2NwdWZyZXEvY3B1ZnJlcS5jCj4+
IGluZGV4IGFlZTAyNGU0MjYxOC4uZjA3NDU0MjQ5ZmJjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2NwdWZyZXEvY3B1ZnJlcS5jCj4+ICsrKyBiL2RyaXZlcnMvY3B1ZnJlcS9jcHVmcmVxLmMKPj4g
QEAgLTEzNzksOCArMTM3OSw4IEBAIHN0YXRpYyBpbnQgY3B1ZnJlcV9vbmxpbmUodW5zaWduZWQg
aW50IGNwdSkKPj4gIAkJY3B1ZnJlcV9kcml2ZXItPnJlYWR5KHBvbGljeSk7Cj4+ICAKPj4gIAlp
ZiAoY3B1ZnJlcV90aGVybWFsX2NvbnRyb2xfZW5hYmxlZChjcHVmcmVxX2RyaXZlcikpCj4+IC0J
CXBvbGljeS0+Y2RldiA9IG9mX2NwdWZyZXFfY29vbGluZ19yZWdpc3Rlcihwb2xpY3kpOwo+PiAt
Cj4+ICsJCW9mX2NwdWZyZXFfY29vbGluZ19yZWdpc3Rlcihwb2xpY3kpOwo+PiArCQo+IAo+IFdl
IGRvbid0IG5lZWQgYW55IGVycm9yIGNoZWNraW5nIGhlcmUgYW55bW9yZSA/CgpUaGVyZSB3YXMg
bm8gZXJyb3IgY2hlY2tpbmcgaW5pdGlhbGx5LiBUaGlzIGNvbW1lbnQgYW5kIHRoZSBvdGhlcnMg
YmVsb3cKYXJlIGZvciBhbiBhZGRpdGlvbmFsIHBhdGNoIElNTywgbm90IGEgY2hhbmdlIGluIHRo
aXMgb25lLgoKPj4gIAlwcl9kZWJ1ZygiaW5pdGlhbGl6YXRpb24gY29tcGxldGVcbiIpOwo+PiAg
Cj4+ICAJcmV0dXJuIDA7Cj4+IEBAIC0xNDY4LDEwICsxNDY4LDggQEAgc3RhdGljIGludCBjcHVm
cmVxX29mZmxpbmUodW5zaWduZWQgaW50IGNwdSkKPj4gIAkJZ290byB1bmxvY2s7Cj4+ICAJfQo+
PiAgCj4+IC0JaWYgKGNwdWZyZXFfdGhlcm1hbF9jb250cm9sX2VuYWJsZWQoY3B1ZnJlcV9kcml2
ZXIpKSB7Cj4+IC0JCWNwdWZyZXFfY29vbGluZ191bnJlZ2lzdGVyKHBvbGljeS0+Y2Rldik7Cj4+
IC0JCXBvbGljeS0+Y2RldiA9IE5VTEw7Cj4+IC0JfQo+PiArCWlmIChjcHVmcmVxX3RoZXJtYWxf
Y29udHJvbF9lbmFibGVkKGNwdWZyZXFfZHJpdmVyKSkKPj4gKwkJY3B1ZnJlcV9jb29saW5nX3Vu
cmVnaXN0ZXIocG9saWN5KTsKPiAKPiBBbmQgd2UgdW5yZWdpc3RlciB1bmNvbmRpdGlvbmFsbHks
IGV2ZW4gaWYgd2UgZmFpbGVkID8gV2hhdCBpZiB0aGlzCj4gcm91dGluZSBwcmludHMgZXJyb3Ig
bWVzc2FnZXMgZm9yIHN1Y2ggYW4gY2FzZSA/Cj4+ICAKPj4gIAlpZiAoY3B1ZnJlcV9kcml2ZXIt
PnN0b3BfY3B1KQo+PiAgCQljcHVmcmVxX2RyaXZlci0+c3RvcF9jcHUocG9saWN5KTsKPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9jcHVfY29vbGluZy5jIGIvZHJpdmVycy90aGVybWFs
L2NwdV9jb29saW5nLmMKPj4gaW5kZXggODM0ODY3NzVlNTkzLi4wMDdjN2M2YmY4NDUgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9jcHVfY29vbGluZy5jCj4+ICsrKyBiL2RyaXZlcnMv
dGhlcm1hbC9jcHVfY29vbGluZy5jCj4+IEBAIC03OCw2ICs3OCw3IEBAIHN0cnVjdCBjcHVmcmVx
X2Nvb2xpbmdfZGV2aWNlIHsKPj4gIAlzdHJ1Y3QgY3B1ZnJlcV9wb2xpY3kgKnBvbGljeTsKPj4g
IAlzdHJ1Y3QgbGlzdF9oZWFkIG5vZGU7Cj4+ICAJc3RydWN0IHRpbWVfaW5faWRsZSAqaWRsZV90
aW1lOwo+PiArCXN0cnVjdCB0aGVybWFsX2Nvb2xpbmdfZGV2aWNlICpjZGV2Owo+PiAgfTsKPj4g
IAo+PiAgc3RhdGljIERFRklORV9JREEoY3B1ZnJlcV9pZGEpOwo+PiBAQCAtNjA2LDYgKzYwNyw3
IEBAIF9fY3B1ZnJlcV9jb29saW5nX3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4+
ICAJCWdvdG8gcmVtb3ZlX2lkYTsKPj4gIAo+PiAgCWNwdWZyZXFfY2Rldi0+Y2xpcHBlZF9mcmVx
ID0gZ2V0X3N0YXRlX2ZyZXEoY3B1ZnJlcV9jZGV2LCAwKTsKPj4gKwljcHVmcmVxX2NkZXYtPmNk
ZXYgPSBjZGV2Owo+PiAgCj4+ICAJbXV0ZXhfbG9jaygmY29vbGluZ19saXN0X2xvY2spOwo+PiAg
CS8qIFJlZ2lzdGVyIHRoZSBub3RpZmllciBmb3IgZmlyc3QgY3B1ZnJlcSBjb29saW5nIGRldmlj
ZSAqLwo+PiBAQCAtNjk5LDE4ICs3MDEsMTggQEAgRVhQT1JUX1NZTUJPTF9HUEwob2ZfY3B1ZnJl
cV9jb29saW5nX3JlZ2lzdGVyKTsKPj4gICAqCj4+ICAgKiBUaGlzIGludGVyZmFjZSBmdW5jdGlv
biB1bnJlZ2lzdGVycyB0aGUgInRoZXJtYWwtY3B1ZnJlcS0leCIgY29vbGluZyBkZXZpY2UuCj4+
ICAgKi8KPj4gLXZvaWQgY3B1ZnJlcV9jb29saW5nX3VucmVnaXN0ZXIoc3RydWN0IHRoZXJtYWxf
Y29vbGluZ19kZXZpY2UgKmNkZXYpCj4+ICt2b2lkIGNwdWZyZXFfY29vbGluZ191bnJlZ2lzdGVy
KHN0cnVjdCBjcHVmcmVxX3BvbGljeSAqcG9saWN5KQo+PiAgewo+PiAgCXN0cnVjdCBjcHVmcmVx
X2Nvb2xpbmdfZGV2aWNlICpjcHVmcmVxX2NkZXY7Cj4+ICAJYm9vbCBsYXN0Owo+PiAgCj4+IC0J
aWYgKCFjZGV2KQo+PiAtCQlyZXR1cm47Cj4+IC0KPj4gLQljcHVmcmVxX2NkZXYgPSBjZGV2LT5k
ZXZkYXRhOwo+PiAtCj4+ICAJbXV0ZXhfbG9jaygmY29vbGluZ19saXN0X2xvY2spOwo+PiAtCWxp
c3RfZGVsKCZjcHVmcmVxX2NkZXYtPm5vZGUpOwo+PiArCWxpc3RfZm9yX2VhY2hfZW50cnkoY3B1
ZnJlcV9jZGV2LCAmY3B1ZnJlcV9jZGV2X2xpc3QsIG5vZGUpIHsKPj4gKwkJaWYgKGNwdWZyZXFf
Y2Rldi0+cG9saWN5ID09IHBvbGljeSkgewo+PiArCQkJbGlzdF9kZWwoJmNwdWZyZXFfY2Rldi0+
bm9kZSk7Cj4+ICsJCQlicmVhazsKPj4gKwkJfQo+PiArCX0KPiAKPiBXaGF0IGlmIHdlIHJlYWNo
IGhlcmUgd2l0aG91dCBhIG1hdGNoIGZvciB0aGUgcG9saWN5ID8gV2Ugc2hvdWxkbid0Cj4gY29u
dGludWUgYW5kIGVycm9yIG91dCwgcmlnaHQgPyBQcmludCBhbiBlcnJvciBtZXNzYWdlIGFzIHdl
bGwgPwo+IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8v
d3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVy
LmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFy
by1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
