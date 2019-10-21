Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E9CDEAFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFM6UvKpbMHNSd4iUR4csQd7eYswBQ3CNglAdNbEQA4=; b=hx5kC1HZc6W2x8
	2STgwl7ZKx2ldb+HzYeOdpMwcw4xKl+RP2yLSqOEokQQntq4LLvnhQMBYxzF4Tq9st3ASRT2uR/z5
	TQWJ5Tzj04BqPLZ5yLRxImjOUdGbirIhcz77OLTVy7xu1D/wwidXMA7nsb74GfFjjFh78OAd0jrZy
	RCoVsGDy/Xw9MjcotQTsi3TvGXoOaEXpSnJd6JZT+atjhFPfL7vRjNIg3JoZMQyCUtfiTwzNVYzu5
	Bur4mtAGh3wbaztQh2WxYGRIHZK0nW5X/7N5Ldxbf7PSbKO1gE8TB0pEG45y/CwfvkpRIOK7wSq9/
	oNjptT+CwX5TqIRK6+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVwG-00029p-FA; Mon, 21 Oct 2019 11:33:28 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVw7-00029E-Jt
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:33:21 +0000
Received: by mail-wr1-x442.google.com with SMTP id s1so4786560wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=NvogyYcPH5HiSpRRQoQRP+VJ8MEq3onz6Q0+j4Mfoeg=;
 b=Oy1bDj8cgdLtX4MeiPkZTXa0D+BsfxOlUyDd1G94MhAQlyikxatILkupmu8WpJHKhr
 vZ6WT8psdPmKrzaYFRunzvze6/aEy3RAYxWRZ8qtAZfTLsmd1GTW7hyrkb/T/Ov1mNNk
 NX/X/sYIS9v7KTaHCJD11X4THvbgd53xXx/rnoHat2Y5X5uDlVHoneJklSnl439iAGoj
 76f8ZodNxPqIBfxoy2YpqezgC4NBmmSdYwvu8vPOKJS4E0UsbD6q3IFIj3bV9pn6KOic
 4I2FslXSg2psH7JqqY3h0d4EQ0S+I6rz1WxJqctQNUkJBMiSb4+9CC3hPSo1jg34a7pE
 u6Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=NvogyYcPH5HiSpRRQoQRP+VJ8MEq3onz6Q0+j4Mfoeg=;
 b=F3eGO6nkUdi6VksF+czTHFFf+eCnug5V91ZpsGEETIPsN9Neubsr6ywdB7BXtN+8Iz
 hWsCAPvpWzSbqJTCH8DgEmGEidhDyqc/sTf8estwOd8VOb8sXG057DaGH4H0H+skduYM
 FWfQBT1sZ4xpbEwH/FiVfUqO/TPx0zHpZ0Zdcf+UmZHbjp4mHUa4c1tkNWFj1zmdccZw
 itM5G5Myer/LmsMB9yo6Nc9/S1yzsdbIsdysh1SAWJ7zYC+JVLtk0UNd262l5+0JZTIR
 1jBM86t841qZ8kw1VJYn77ifOMO/ywBHDkpq/Hd2l7f9Np5QKKGAIx1q7OOf8SXPab3j
 fgeA==
X-Gm-Message-State: APjAAAWLZAiAhxlEqMlCetHjVdaTxjc0MLzUN7Pa8gO7oVJMc5Xbae2o
 gttmHhC/CiXsLRNgh23hQkwudw==
X-Google-Smtp-Source: APXvYqyMIAyEPCNwcjoYQRMWKDg+5l3URiHknN8ipHfDzYk/6uRZQr+BzUbWIv6eq6k9BO1W7E1c+Q==
X-Received: by 2002:a5d:678e:: with SMTP id v14mr12033062wru.393.1571657598261; 
 Mon, 21 Oct 2019 04:33:18 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id l7sm5284560wro.17.2019.10.21.04.33.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 04:33:17 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:33:16 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v2 1/9] mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and
 tidy error message
Message-ID: <20191021113316.GA4365@dell>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-2-lee.jones@linaro.org>
 <20191021111555.zsvvdfun3gqhrurw@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021111555.zsvvdfun3gqhrurw@holly.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_043319_686055_A8DA145E 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMSBPY3QgMjAxOSwgRGFuaWVsIFRob21wc29uIHdyb3RlOgoKPiBPbiBNb24sIE9j
dCAyMSwgMjAxOSBhdCAxMTo1ODoxNEFNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBJbiBt
b3N0IGNvbnRleHRzICctMScgZG9lc24ndCByZWFsbHkgbWVhbiBtdWNoIHRvIHRoZSBjYXN1YWwg
b2JzZXJ2ZXIuCj4gPiBJbiBhbG1vc3QgYWxsIGNhc2VzLCBpdCdzIGJldHRlciB0byB1c2UgYSBo
dW1hbiByZWFkYWJsZSBkZWZpbmUuICBJbgo+ID4gdGhpcyBjYXNlIFBMQVRGT1JNX0RFVklEXyog
ZGVmaW5lcyBoYXZlIGFscmVhZHkgYmVlbiBwcm92aWRlZCBmb3IgdGhpcwo+ID4gcHVycG9zZS4K
PiA+IAo+ID4gV2hpbGUgd2UncmUgaGVyZSwgbGV0J3MgYmUgc3BlY2lmaWMgYWJvdXQgdGhlICdN
RkQgZGV2aWNlcycgd2hpY2gKPiA+IGZhaWxlZC4gIEl0IHdpbGwgaGVscCB3aGVuIHRyeWluZyB0
byBkaXN0aW5ndWlzaCB3aGljaCBvZiB0aGUgMiBzZXRzCj4gPiBvZiBzdWItZGV2aWNlcyB3ZSBh
Y3R1YWxseSBmYWlsZWQgdG8gcmVnaXN0ZXIuCj4gCj4gTm8gb2JqZWN0aW9ucy4uLiBidXQgd29u
J3QgdGhlIHRhZyBhZGRlZCBieSBkZXZfZXJyKCkgYWxyZWFkeQo+IGRpc2FtYmlndWF0ZT8KClRo
ZSBkaWZmZXJlbmNlIHdpbGwgYmUgYmV0d2VlbiBDUzU1MzIgYW5kICBDUzU1MzIgT0xQQy4KClBs
ZWFzZSBzZWUgcGF0Y2ggNCBpbiB0aGUgc2VyaWVzLgoKPiA+IFNpZ25lZC1vZmYtYnk6IExlZSBK
b25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL21mZC9jczU1
MzUtbWZkLmMgfCA1ICsrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL2NzNTUzNS1t
ZmQuYyBiL2RyaXZlcnMvbWZkL2NzNTUzNS1tZmQuYwo+ID4gaW5kZXggZjE4MjVjMGNjYmQwLi4y
YzQ3YWZjMjJkMjQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL21mZC9jczU1MzUtbWZkLmMKPiA+
ICsrKyBiL2RyaXZlcnMvbWZkL2NzNTUzNS1tZmQuYwo+ID4gQEAgLTEyNywxMCArMTI3LDExIEBA
IHN0YXRpYyBpbnQgY3M1NTM1X21mZF9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKPiA+ICAJ
CWNzNTUzNV9tZmRfY2VsbHNbaV0uaWQgPSAwOwo+ID4gIAl9Cj4gPiAgCj4gPiAtCWVyciA9IG1m
ZF9hZGRfZGV2aWNlcygmcGRldi0+ZGV2LCAtMSwgY3M1NTM1X21mZF9jZWxscywKPiA+ICsJZXJy
ID0gbWZkX2FkZF9kZXZpY2VzKCZwZGV2LT5kZXYsIFBMQVRGT1JNX0RFVklEX05PTkUsIGNzNTUz
NV9tZmRfY2VsbHMsCj4gPiAgCQkJICAgICAgQVJSQVlfU0laRShjczU1MzVfbWZkX2NlbGxzKSwg
TlVMTCwgMCwgTlVMTCk7Cj4gPiAgCWlmIChlcnIpIHsKPiA+IC0JCWRldl9lcnIoJnBkZXYtPmRl
diwgIk1GRCBhZGQgZGV2aWNlcyBmYWlsZWQ6ICVkXG4iLCBlcnIpOwo+ID4gKwkJZGV2X2Vycigm
cGRldi0+ZGV2LAo+ID4gKwkJCSJGYWlsZWQgdG8gYWRkIENTNTUzMiBzdWItZGV2aWNlczogJWRc
biIsIGVycik7Cj4gCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF5eXgo+IAo+IFR5cG8gKGFuZCBNT0RVTEVfREVTQ1JJUFRJT04oKSBzYXlzIHRoaXMgaXMgYSBk
cml2ZXIgZm9yIENTNTUzNiB0b28pLgo+IE9uY2UgdGhhdCBpcyBmaXhlZDoKPiBSZXZpZXdlZC1i
eTogRGFuaWVsIFRob21wc29uIDxkYW5pZWwudGhvbXBzb25AbGluYXJvLm9yZz4KClRhLgoKLS0g
CkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5h
cm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
