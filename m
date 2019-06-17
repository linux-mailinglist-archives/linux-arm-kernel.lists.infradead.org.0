Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40010483DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PA3mNqwhkgqqT5IyCIsqFvqAjMXMGpZZ46Cf4E6KBzM=; b=eqUKYDZTv7R1/T
	O/DKP1zybPftLqN+FZeJpE/6EubTPuILuzppkh6VSKprN587jk77RxV9qyTVyWvstUgWZZBNzZgKI
	9MoEQOrNUmKmL33UrtqV8innInfTkpS2AiPHPTAxmRP4pQNsjyS3GTAK2YJL+SO7UvdVzf0578/kv
	PC4+p31raVDDcPs7Ojkej6roSEvdWx5hJGzeti829lqXrqJSPbMiJ2SVco7sQREkkQsp2ZtGPR+Vq
	G6cIVVoY6zizUQdrEvcPtkkdv3F7/5VNwv3ltnlywR7rJW3Fh5pCUlQ5zhH1AcipCzPRYYESTBX0D
	TxXjciut5z5dxfI74vNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrcA-0005o1-Uc; Mon, 17 Jun 2019 13:24:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrc1-0005nc-N1
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:23:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id g135so9242575wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 06:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=MCk0UOttsjHTOmjWH/1wGCIVEMWTEE7JSr9eSJt8E6U=;
 b=bLYB71SoakdZWD0bbECjOZJpTdloiPafIY+LfUEJDGwY71oMCbzPqrfRdvuCruNWE2
 Z+qz9f9vsaeBGq/9asrdH8Mbm5YhHQgJTCIuHyw354P4+ZrZ/6dFrkwbFECyXZxQ1Qlz
 gth04rJNMbeXq3hzKkApLHYFKVjT6rW7WUaHWECkpti41bOC/FFL2Ce0zBEd5+qFBQaE
 DkxDjumSNL1g1YJWqj5O+dUQ0d/aheJuKd6dTCgdgqZopQzAKfh+mkYcY9tdItS8wXiA
 +KXAT4cV1mdqlwVJqq0b7RBPDVpQOtorkV1Wq/5Rw++d3HSWAaDPaUlkG8eOHiMz3G7m
 rmeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=MCk0UOttsjHTOmjWH/1wGCIVEMWTEE7JSr9eSJt8E6U=;
 b=CG+mn/BGpiG04NJggTcZjAKvHiAuQrD4tesC4tg/YOgkl1g+KgrkDrZ/QY5t649aMq
 mxwpU2ekgS4WQMBMgD47EwcdSAmVQjzoeDMBY24J8HUmrcK802Arv49SFO280HJB70cB
 HdAafOVcCQe4FaflG0x95WOoppo2tehJFLsw7gAJiT4saHnZm7fnWhlK5+cJmhI+gqOW
 oHv2SQppvWbTJn4DQn2FjsUU1G1KxDTf20QyxaPlogdoaLKZx6RiGCFK9qUhfJR+7Sjm
 nlbyiGoXyjYhuW37B0oIm0OV6sv9LYyBC/OkB5Qz1zkyYdUdSOcRfClJrWb5qKi6DSeJ
 NbzA==
X-Gm-Message-State: APjAAAVESUrYcf8qsVa4XsMVTlhsJqfLU+rXIB1wGZ+lFWBqyaHXiooP
 org3BmP3eOsGP8uajfRPAf+WaQ==
X-Google-Smtp-Source: APXvYqyrzflhrnZXLI/k9VPq8CsskPBB/8KzjstR9LOm9dfd2dHTNp7j6C7TFEfXsWqkUzxuqmhaQA==
X-Received: by 2002:a1c:be12:: with SMTP id o18mr443929wmf.21.1560777831804;
 Mon, 17 Jun 2019 06:23:51 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id u25sm9662835wmc.3.2019.06.17.06.23.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 06:23:51 -0700 (PDT)
Date: Mon, 17 Jun 2019 14:23:49 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Felipe Balbi <balbi@kernel.org>
Subject: Re: [RESEND v4 0/4] I2C: DWC3 USB: Add support for ACPI based
 AArch64 Laptops
Message-ID: <20190617132349.GI16364@dell>
References: <20190617125105.6186-1-lee.jones@linaro.org>
 <87lfy0gym0.fsf@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87lfy0gym0.fsf@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_062353_762163_6393C3B8 
X-CRM114-Status: GOOD (  11.27  )
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
Cc: linux-kernel@vger.kernel.org, ard.biesheuvel@linaro.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, agross@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org, alokc@codeaurora.org,
 linux-arm-msm@vger.kernel.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxNyBKdW4gMjAxOSwgRmVsaXBlIEJhbGJpIHdyb3RlOgoKPiBMZWUgSm9uZXMgPGxl
ZS5qb25lc0BsaW5hcm8ub3JnPiB3cml0ZXM6Cj4gCj4gPiBUaGlzIHBhdGNoLXNldCBlbnN1cmVz
IHRoZSBrZXJuZWwgaXMgYm9vdGFibGUgb24gdGhlIG5ld2x5IHJlbGVhc2VkCj4gPiBBQXJjaDY0
IGJhc2VkIExhcHRvcHMgdXNpbmcgQUNQSSBjb25maWd1cmF0aW9uIHRhYmxlcy4gIFRoZSBQaW5j
dHJsCj4gPiBjaGFuZ2VzIGhhdmUgYmVlbiBhY2NlcHRlZCwgbGVhdmluZyBvbmx5IEkyQyAoa2V5
Ym9hcmQsIHRvdWNocGFkLAo+ID4gdG91Y2hzY3JlZW4sIGZpbmdlcnByaW50LCBldGMsIEhJRCBk
ZXZpY2UpIGFuZCBVU0IgKHJvb3QgZmlsZXN5c3RlbSwKPiA+IGNhbWVyYSwgbmV0d29ya2luZywg
ZXRjKSBlbmFibGVtZW50Lgo+ID4KPiA+IFJFU0VORDogU3RyaXBwZWQgSTJDIHBhdGNoZXMgYXMg
dGhleSBoYXZlIGFsc28gYmVlbiBtZXJnZWQgaW50bwo+ID4gICAgICAgICB0aGVpciByZXNwZWN0
aXZlIHN1YnN5c3RlbS4KPiA+Cj4gPiB2NDoKPiA+ICAqIENvbGxlY3RpbmcgQWNrcwo+ID4gICog
QWRkaW5nIEFuZHkgR3Jvc3MnIG5ldyBlbWFpbAo+ID4gICogUmVtb3ZpbmcgYXBwbGllZCBQaW5j
dHJsIHBhdGNoZXMKPiA+Cj4gPiBMZWUgSm9uZXMgKDQpOgo+ID4gICBzb2M6IHFjb206IGdlbmk6
IEFkZCBzdXBwb3J0IGZvciBBQ1BJCj4gPiAgIHVzYjogZHdjMzogcWNvbTogQWRkIHN1cHBvcnQg
Zm9yIGJvb3Rpbmcgd2l0aCBBQ1BJCj4gPiAgIHVzYjogZHdjMzogcWNvbTogU3RhcnQgVVNCIGlu
ICdob3N0IG1vZGUnIG9uIHRoZSBTRE04NDUKPiA+ICAgdXNiOiBkd2MzOiBxY29tOiBJbXByb3Zl
IGVycm9yIGhhbmRsaW5nCj4gCj4gcHVzaGVkIHRvIHRlc3RpbmcvbmV4dAoKU291bmRzIHByb21p
c2luZywgdGhhbmtzIEZlbGlwZS4KCk9PSSwgd2hhdCBpcyB5b3VyIHByb2Nlc3M/CgpIb3cgZG9l
cyBkbyB0aGUgcGF0Y2hlcyB0eXBpY2FsbHkgc2l0IGluIHRoZXJlPwoKLS0gCkxlZSBKb25lcyBb
5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29r
IHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
