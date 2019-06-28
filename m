Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC48D59996
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:57:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzoohJSrcP5dsUnrE4jg0cEcC+fSqpZtita0g0MrhLs=; b=Tu1DQ9II2BCrUA
	12QaS0oH5o0n0pIFVsY4RQhcbLNN8K4YodxaptStG6IGBwIa1wuGAxdtqG3zZuHJ61WGv0zrQDinQ
	Hw1/XYhrygc1ot6cjwUzQT2+jIabYh6Musyxd+06waDlvr+PsHR0UIbMSeRVl4pCywx2BlcCSAOYV
	WOAo0ZaCMVVp/i2ZiXXnZotldPpvUga3ZptGQ+Qt6wIo7FiJmr8nKlO4kFgvzU2XvpMpQsCfhWYNy
	8/hgDYrC+utygfuy7Auh4dbzA3+SGKGx9z+y1/mIvGPxq4Vgwi2O0cTWrsabiV/pD6WYoXhNzfXqN
	/qFouYgxhcU48Zduc4lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgpVq-0007nR-Go; Fri, 28 Jun 2019 11:57:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgpVc-0007mr-Jz
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:57:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id s3so8833197wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 04:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wKwH5mQGhm6MNzG478HZlda8QvltLTF7q/Vlx9ciymY=;
 b=T2oeVgE/j59g/pfsPpZgNeoq4J6kC65EdHTRBRKSfd+jeBaU3SnFoTJpos6gFtEvTr
 DnSLzcqGkBBViMzNTfMJTB0o8Pb1vqsDyMAFfnopab+AxjVPqJqHriJGKbYV88LdF+/l
 RVvFrqPnuZw6hwjVvQS1kV3xEU7QkQFMk1rstOmukOgTSAFpWJwKYXunbpTD/oiEHT5h
 YkhX6eGucjL1wtaQsiv1y1yZj61ZwY+101FR/jjFOK3zOjop0PVLCV/5Ixp01kS9Kxrz
 z3wRE+du8i77fIeUL5Xq/YrSwZa5uC0vfeTGEta8JQirn7AfXmNms5roFQdl3kFhQxYt
 Qabw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=wKwH5mQGhm6MNzG478HZlda8QvltLTF7q/Vlx9ciymY=;
 b=GEdDIvRLwPgSGNN+SjVeWD9DEUx1QUT9lucOi4+mzq9kBvnNrOkfM92vf5yHby3YzZ
 4/XDgCXgWalfnQIAFlaUjQ8tNwa4MPvmpuW/nY8M9eEUzOVoHYHDwIpbfC3Y18wl5iFJ
 9uFT7amjl8mGdRhr2Z6ZnENa/k8Wr/crqVe0naThYEK3aDuewDJj9XO7JEGVDK98iMsb
 CUdMAwiRRvvta0psZDhKvyqA/c0Xh3aHrigPfPYZSd++jaHTFvDoqhBtW2t7U4fa47NT
 4/A2mZsGf90muYiZI6VEdjN6Rc79pklTWqW/PkIiWErMx826fjcAwLjlXyzvvfiD+V2F
 BsmA==
X-Gm-Message-State: APjAAAV9JzFVihBlLzx/pwW9+TwEYWflLnBJR+heqDHYFqhQBaRFSfUX
 rjSZwYocCStVGJp3SNqnXBjfag==
X-Google-Smtp-Source: APXvYqy0OwIH/35UDdSAyxJahHtLD+v+ng6nnSimL6nceg6lEdXbpJ7SDfe5zh23jazTj8F/yN/rzQ==
X-Received: by 2002:a1c:7f93:: with SMTP id a141mr7106857wmd.131.1561723058394; 
 Fri, 28 Jun 2019 04:57:38 -0700 (PDT)
Received: from [192.168.0.41] (11.117.130.77.rev.sfr.net. [77.130.117.11])
 by smtp.googlemail.com with ESMTPSA id r12sm2544335wrt.95.2019.06.28.04.57.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 04:57:37 -0700 (PDT)
Subject: Re: [PATCH V4 2/3] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <20190627210209.32600-1-daniel.lezcano@linaro.org>
 <20190627210209.32600-2-daniel.lezcano@linaro.org>
 <CAJZ5v0jJzCGfQFqi-S3vqs74D73MaE4f7WYF_NVnDKawNV4Wzw@mail.gmail.com>
 <cd79ffe3-4749-9135-27c4-deb4f259d702@linaro.org>
 <CAJZ5v0hPjPMLfiWMPnm59HpmTbJNXw0MDpvRwMGOUpMXYUwgRw@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <850b9fbb-e865-fea5-89c3-6eb26750048e@linaro.org>
Date: Fri, 28 Jun 2019 13:57:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0hPjPMLfiWMPnm59HpmTbJNXw0MDpvRwMGOUpMXYUwgRw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_045740_664595_4F53EDC2 
X-CRM114-Status: GOOD (  19.06  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 Quentin Perret <quentin.perret@arm.com>,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 Keerthy <j-keerthy@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
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

T24gMjgvMDYvMjAxOSAxMjowMywgUmFmYWVsIEouIFd5c29ja2kgd3JvdGU6Cj4gT24gRnJpLCBK
dW4gMjgsIDIwMTkgYXQgMTE6NTggQU0gRGFuaWVsIExlemNhbm8KPiA8ZGFuaWVsLmxlemNhbm9A
bGluYXJvLm9yZz4gd3JvdGU6Cj4+Cj4+Cj4+IE9uIDI4LzA2LzIwMTkgMTE6MTIsIFJhZmFlbCBK
LiBXeXNvY2tpIHdyb3RlOgo+Pj4gT24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMTE6MDIgUE0gRGFu
aWVsIExlemNhbm8KPj4+IDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPiB3cm90ZToKPj4+Pgo+
Pj4+IEN1cnJlbnRseSB0aGUgZnVuY3Rpb24gY3B1ZnJlcV9jb29saW5nX3JlZ2lzdGVyKCkgcmV0
dXJucyBhIGNvb2xpbmcKPj4+PiBkZXZpY2UgcG9pbnRlciB3aGljaCBpcyB1c2VkIGJhY2sgYXMg
YSBwb2ludGVyIHRvIGNhbGwgdGhlIGZ1bmN0aW9uCj4+Pj4gY3B1ZnJlcV9jb29saW5nX3VucmVn
aXN0ZXIoKS4gRXZlbiBpZiBpdCBpcyBjb3JyZWN0LCBpdCB3b3VsZCBtYWtlCj4+Pj4gc2Vuc2Ug
dG8gbm90IGxlYWsgdGhlIHN0cnVjdHVyZSBpbnNpZGUgYSBjcHVmcmVxIGRyaXZlciBhbmQga2Vl
cCB0aGUKPj4+PiBjb2RlIHRoZXJtYWwgY29kZSBzZWxmLWVuY2Fwc3VsYXRlLiBNb3Jlb3Zlciwg
dGhhdCBmb3JjZXMgdG8gYWRkIGFuCj4+Pj4gZXh0cmEgdmFyaWFibGUgaW4gZWFjaCBkcml2ZXIg
dXNpbmcgdGhpcyBmdW5jdGlvbi4KPj4+Pgo+Pj4+IEluc3RlYWQgb2YgcGFzc2luZyB0aGUgY29v
bGluZyBkZXZpY2UgdG8gdW5yZWdpc3RlciwgcGFzcyB0aGUgcG9saWN5Lgo+Pj4+Cj4+Pj4gQmVj
YXVzZSB0aGUgY3B1ZnJlcV9jb29saW5nX3VucmVnaXN0ZXIoKSBmdW5jdGlvbiB1c2VzIHRoZSBw
b2xpY3kgdG8KPj4+PiB1bnJlZ2lzdGVyIGl0c2VsZi4gVGhlIG9ubHkgcHVycG9zZSBvZiB0aGUg
Y29vbGluZyBkZXZpY2UgcG9pbnRlciBpcwo+Pj4+IHRvIHVucmVnaXN0ZXIgdGhlIGNwdSBjb29s
aW5nIGRldmljZS4KPj4+Pgo+Pj4+IEFzIHRoZXJlIGlzIG5vIG1vcmUgbmVlZCBvZiB0aGlzIHBv
aW50ZXIsIHJlbW92ZSBpdC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBMZXpjYW5v
IDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgo+Pj4+IEFja2VkLWJ5OiBWaXJlc2ggS3VtYXIg
PHZpcmVzaC5rdW1hckBsaW5hcm8ub3JnPgo+Pj4KPj4+IFRoaXMgZG9lc24ndCBhcHBseSBmb3Ig
bWUuCj4+Pgo+Pj4gQ2FyZSB0byByZWJhc2UgaXQgb24gdG9wIG9mIHRoZSBMaW51cycgdHJlZT8K
Pj4KPj4gU3VyZSBidXQgdGhlIHBhdGNoIGRlcGVuZHMgb24gMS8zIHdoaWNoIGlzIGluIGJsZWVk
aW5nIGVkZ2UuIFNoYWxsIEkKPj4gcmViYXNlIHRoZSAzIHBhdGNoZXMgb24gdjUuMi1yYzYgYW5k
IHJlc2VuZCA/Cj4gCj4gWW91IGNhbiBkbyB0aGF0Lgo+IAo+IEFsdGVybmF0aXZlbHksIHlvdSBj
YW4gcmViYXNlIG9uIHRvcCBvZiBteSBsaW51eC1uZXh0IGJyYW5jaC4KCk9rLCBpdCBpcyByZWJh
c2VkIG9uIHRvcCBvZiBsaW51eC1uZXh0LCBob3dldmVyIHRoZSBjb25mbGljdCBpcyBjb21pbmcK
ZnJvbSB0aGUgZW5lcmd5IG1vZGVsIHBhdGNoc2V0IHNlbnQgYnkgUXVlbnRpbiBbMV1bMl0gSSB1
c2VkIHRvIGJhc2VkIG15CnNlcmllcyB3aGljaCBpcyBub3QgeWV0IGFwcGxpZWQgaW4gdGhlIHRo
ZXJtYWwgdHJlZS4KCkknbSB3b25kZXJpbmcgaWYgaXQgd291bGRuJ3QgbWFrZSBzZW5zZSB0byB0
YWtlIFF1ZW50aW4ncyBzZXJpZXMgYWxzbywKaXQgaXMgYSBsb25nIHRpbWUgYXJvdW5kIGluIHRo
ZSBtYWlsaW5nIGxpc3QsIHJldmlld2VkIGFuZCBhY2tlZC4gU28gSQpjYW4gc2VuZCB0aGUgdHdv
IHJlbWFpbmluZyBwYXRjaGVzIG9uIHRvcCBvZiBpdCB3aXRob3V0IGNvbmZsaWN0LApvdGhlcndp
c2Ugd2Ugd2lsbCBoYXZlIGEgY29uZmxpY3QgaW4gdGhlIG1lcmdlIHdpbmRvdy4KClsxXSBodHRw
czovL2xrbWwub3JnL2xrbWwvMjAxOS81LzMwLzc5NApbMl0gaHR0cHM6Ly9sa21sLm9yZy9sa21s
LzIwMTkvNi8xOS8xOTAKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg
4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxo
dHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90
d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3Jn
L2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
