Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA441C34B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 10:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjS7EYNZbCZzouDB5z+pPGzHgHjlaL3DDH2YDHBaYo4=; b=iJxBsO3hRPRLuK
	L8/CRU4oW7chHUy8zeBc+7Qfm0yq8cMENjyTSStR8wLFyQMMCVMp7T8ey+JjgAKk1Qb3Czb3ww/tL
	3HVjWPKPwc0jtK4wwqQ9oC0eqKuHRfSITx4vZy3JY8nutVmhpSczDWuRSs1Z1nR+rIjgxEY3l2eww
	Uwe59EbM8+M3ON8WTWZP7KEtQ2N4tV0jJXsjBJfGlMxQ/zAXdwsawxdkUnqe8X30lx6nrOJTqHlAu
	aNK6OWz3AhgcMDSd7ZNayHbIgwFcv/U1Asz9qzLREQ+BP8eLhgT71fhJoDTUWzGcjsFOubUpOvhlW
	87fgJOngAHQdfWVD3r1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWfm-0007r9-W8; Mon, 04 May 2020 08:41:59 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWfe-0007qJ-Ur
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 08:41:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id x17so19880133wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 01:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=VM7VC+aZxRIIjdCBOQHvIXwbqHzjf4bIXyafLz2UVVw=;
 b=RjPsBETLO2dNrY+Auu4dgqM9exSWQtO1FAqtcTqCzyYkoPRMr7xdWcL+GI9NST02AK
 cHSoATJXpm5e2y7/QNadZUhNWuhOInhSkxjieQ4bSX4Q4RxHtHA6/lNm2CkXcYDqkXLO
 RdP/Y0rQNGRM0dZdAGhIE6nw9MwzIH3+9Vx6gSZ81yiYIH+Yt/uJyqUBDMZlj6L8Wd6G
 zP1h5xerEBmVd69CDoZuYIpgmk5v4ydnGCJq6IyN/2nWBAqEWOooWzQZ+Vj4EnBK8LZN
 fN+KqzuMSVNh1hMxU7Gw5NMEJNE0Nm1vEE0dOIUN91boAbqODzPziN0ZvFsd1jARsv61
 3KFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=VM7VC+aZxRIIjdCBOQHvIXwbqHzjf4bIXyafLz2UVVw=;
 b=g06plQdy2KkY3U0ebhEc9ke9FxZ791PNy/MSxXrJIgArSkNRHIyVO1MpDsZUW6Uehn
 MIdK7ilRogSMOhH6BZXcYdW2MMvxCYi8034WxijYJpIIu7HdFE8jYsc+2Eht0GOwFHLO
 tFuxJhBXBFL672bRdL+ZvfHt08EIE2krE2dPa7q6A6R407xT+YuMsnr9r1FphjQHAbFX
 lgR676ap6s9DU3DSZo0WPoLztAM7Emm01ox+mpoFT/Erq9CF3kmyazDDJI3XpbMhEps0
 Nl/rcwEGHqELPYDV5X+KeT2BjX/W3qnRet8K3HH1m4mUXrhDtbhIbeQG9yW9kywRMWrE
 MSmA==
X-Gm-Message-State: AGi0PubHJS565LK1pIZsLLXR1NDqwQrm/8CiQC3gmWILZtebsuqP378y
 iIJLbWNDTkZaRwBO+SPJdb76NA==
X-Google-Smtp-Source: APiQypI+t6WMQSWVXziEfHyZzUtFtpAZcKAwAAx++OmvHlF7x5SKQ4lqJsjgLXdlYVbLIoovy6n+dw==
X-Received: by 2002:a5d:4b0a:: with SMTP id v10mr19482111wrq.342.1588581709480; 
 Mon, 04 May 2020 01:41:49 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id q14sm6560533wrc.66.2020.05.04.01.41.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 01:41:48 -0700 (PDT)
Date: Mon, 4 May 2020 09:41:47 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 09/16] mfd: vexpress-sysreg: Drop unused syscon child
 devices
Message-ID: <20200504084147.GG298816@dell>
References: <20200429205825.10604-1-robh@kernel.org>
 <20200429205825.10604-10-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429205825.10604-10-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_014150_999226_3D3E1412 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-pm@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyOSBBcHIgMjAyMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IFRoZSAic3lzX2lkIiwg
InN5c19taXNjIiBhbmQgInN5c19wcm9jaWQiIGRldmljZXMgZG9uJ3QgaGF2ZSBhIHVzZXIKPiBh
bnl3aGVyZSBpbiB0aGUgdHJlZSBhbmQgZG8gbm90aGluZyBtb3JlIHRoYW4gY3JlYXRlIGEgc3lz
Y29uIHJlZ21hcCBmb3IKPiBhIHNpbmdsZSByZWdpc3RlciBvciAyLiBUaGF0J3MgYW4gb3Zlcmtp
bGwgZm9yIGNyZWF0aW5nIGNoaWxkIGRldmljZXMuCj4gTGV0J3MganVzdCByZW1vdmUgdGhlbS4K
PiAKPiBDYzogTGl2aXUgRHVkYXUgPGxpdml1LmR1ZGF1QGFybS5jb20+Cj4gQ2M6IFN1ZGVlcCBI
b2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+Cj4gQ2M6IExvcmVuem8gUGllcmFsaXNpIDxsb3Jl
bnpvLnBpZXJhbGlzaUBhcm0uY29tPgo+IENjOiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlq
QGxpbmFyby5vcmc+Cj4gQ2M6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gU2ln
bmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiBOb3RlIHRo
YXQgdGhlIG90aGVyIEdQSU8gY2hpbGQgZGV2aWNlcyBjb3VsZCBwcm9iYWJseSBiZSByZW1vdmVk
IGFuZAo+IGFkZGVkIHRvIHRoZSBiZ3BpbyBkcml2ZXIuIFVuZm9ydHVuYXRlbHksIHRoZSBtb2Rl
bCBkdHMgZmlsZXMgd2VyZQo+IG5ldmVyIHVwZGF0ZWQgNiB5ZWFycyBhZ28uIE5vdCBzdXJlIGlm
IHRoZSBtb2RlbHMgcmVhbGx5IG5lZWQgTEVEcy4uLgo+IAo+IHYyOgo+ICAtIEFkZCBtaXNzaW5n
IGNvbW1taXQgbWVzc2FnZQo+IC0tLQo+ICBkcml2ZXJzL21mZC92ZXhwcmVzcy1zeXNyZWcuYyB8
IDM2IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzNiBkZWxldGlvbnMoLSkKCkFja2VkLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8u
b3JnPgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2Fs
IExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZv
bGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
