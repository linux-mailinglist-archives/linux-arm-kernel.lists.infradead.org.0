Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF1148148
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 13:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbXaEdLuCgSX9s+s2MxFdDpr0wVpLc12yGn5+/2+UCY=; b=JJv4pKf6BjvyWF
	sYv7WWWy2EzuJzRVWSKLAJvKGhZziedx5MCbJGwb1kFaKsjXWFDp5njRUF5jI6qyG9Ylcro6kL+47
	Kzz+MlJ7l0k9Dp5b1hsc8op0MNTbBKtmUkMkUQtz4KpvrjA/bihf3bnVQen2djC7a1EKB3E26GOZ8
	1L+26/LOVDRKBTr/xLqiVsBBdSKhgsH4ZoRfIYoiIF08e2M8R02tWcHN7k4+ZUehlNXKS0eUdx8fU
	fYSM6uDawNEUpW6gv3DBlrTWr55cHXq38F7rQgufW1QLsb2DsHappYinYp776/x/Hqfov4uDq2CKO
	f86mc5tshGComVzvOd6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqAk-00068I-UU; Mon, 17 Jun 2019 11:51:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqAc-00067x-Eh
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 11:51:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id c6so8777060wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 04:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aZ8QtsrtMIusCLPlsjYQHwFkxZ6K3K1okJLbjtfVOSw=;
 b=naTRECVBUzklFTiHTqoj34uL//CxaOGvXkAv1iLuo8yMqeJxPuJoppq25pMGEmeQJp
 JHisBsmVR+kdUcZj59RPZ2B9zibPgqLHKq8xvxUM3UwMErRw3SWIoBLIWAtwUx7dIPuL
 y+BmfRaAwRoVB/lwMbbmcnFhIgTDf8v0cXc9QxgPTxWLErrtpFlDc1uGAOQIsPr8k/Ar
 kV/cvdzfZ1YqVPQPYH/ud3qAqFFB7k+E/cl1yDuR9Jf4L9Izw+z3IvX0dcxyTENfRekY
 htXyIvJFPNgVrjRb4N7qU4qTgyWSr8QdMAGBAs8/9RXTDmCqpNBBrVsk1wP+DvT/3Mh1
 LzSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=aZ8QtsrtMIusCLPlsjYQHwFkxZ6K3K1okJLbjtfVOSw=;
 b=H/fETrJD0JOMgFQBiBpgLc67/7uZbi/bi6w8+2IPJ28j0N+a7T5zsElYrlvjUokT0J
 BWDxY36apIVtJd3UiaM72Tr5UBw0lxzcmCMMXUBsJDoZSpgIy8yr69HcOUMdZNeYq5XH
 J6NS+uZcuUC0Zf0Y/04Cu4aeqgQ3PJTBsplGh2K86FiV6DWj/qXzWd4erNd4DQUygpzc
 GmesMC3GMjohbqGJN2gxB3FnAV/dY+9TQA/7WVsyGQB8fhGpScY+RCuHbxvCcuu/Ckuf
 lOqdYcNwVhQiwYbowuxlJ+UcbdX2ZXTzbrv1hQUynf61uz/1aCOEPuysNjg6uTEdBhV0
 mtKA==
X-Gm-Message-State: APjAAAXYFizaJQMT8StEp/8Euzyp3SMEC4l+CBy5iPC1HXn3oqTxpFzg
 nSzXlmPzCsZwjtJKZlEYrONdnw==
X-Google-Smtp-Source: APXvYqzXpPJI9h40SWIeKZSPF7O/cNOzrF7OQjiLhEMWt1Gt/RwIBwTyv/O+R88q5eTkd/C64DyHTQ==
X-Received: by 2002:a1c:407:: with SMTP id 7mr19605412wme.113.1560772288372;
 Mon, 17 Jun 2019 04:51:28 -0700 (PDT)
Received: from [141.115.39.235] ([141.115.39.235])
 by smtp.googlemail.com with ESMTPSA id r2sm15563608wma.26.2019.06.17.04.51.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 04:51:27 -0700 (PDT)
Subject: Re: [PATCH] clocksource/arm_arch_timer: remove unused return type
To: Andrew Murray <andrew.murray@arm.com>, Mark Rutland
 <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
References: <20190617093601.34511-1-andrew.murray@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <efcbf978-bab3-9914-9953-64c96af7208e@linaro.org>
Date: Mon, 17 Jun 2019 13:51:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617093601.34511-1-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_045130_501348_DC6BB8FB 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTcvMDYvMjAxOSAxMTozNiwgQW5kcmV3IE11cnJheSB3cm90ZToKPiBUaGUgZnVuY3Rpb24g
J2FyY2hfdGltZXJfc2V0X2V2dHN0cm1fZmVhdHVyZScgaGFzIG5vIHJldHVybiBzdGF0ZW1lbnQK
PiBkZXNwaXRlIGl0cyBwcm90b3R5cGUgLSBsZXQncyBjaGFuZ2UgdGhlIGZ1bmN0aW9uIHByb3Rv
dHlwZSB0byByZXR1cm4KPiB2b2lkLiBUaGlzIG1hdGNoZXMgdGhlIGVxdWl2YWxlbnQgYXJtNjQg
aW1wbGVtZW50YXRpb24uCj4gCj4gZml4ZXM6IDExZTM0ZWNhNWQwYSAoImNsb2Nrc291cmNlL2Fy
bV9hcmNoX3RpbWVyOiBFeHRyYWN0IGVsZl9od2NhcCB1c2UgdG8gYXJjaC1oZWxwZXIiKQo+IFJl
cG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBBbmRyZXcgTXVycmF5IDxhbmRyZXcubXVycmF5QGFybS5jb20+Cj4gLS0tCgpJIGNhbiBy
ZWJhc2UgbXkgYnJhbmNoLiBJJ2xsIGZvbGQgdGhpcyBwYXRjaCB3aXRoIDExZTM0ZWNhNWQwYQoK
VGhhbmtzCiAgLS0gRGFuaWVsCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJv
Lm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJv
OiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0
cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFy
by5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
