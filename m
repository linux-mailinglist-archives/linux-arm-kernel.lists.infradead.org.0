Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E19F28814
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 21:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vj5mWrCBgJoScFxKyFV3GIs6WZdtnGuMdrkM08jubiI=; b=ulWvx+kKU873Qj
	xlDi+4lfSQpqTms5IFWTff+dTGI4PFV+rWQQObQAeDpbDEXj+P3Q3SkbZe1oqCaphAWoqzIMA+fym
	tyKFfQlLuoYn13nDhe0gldsqQHa8MVDXE4/NS+vE134DkSyzu+YzYh87Ri+abjCanpf6ioiJYqbiu
	gJ5nhzLeS30jfrCmuuXK/qgaHp3tQYBEbg5jZV1lXdkkDR5qVSj8D5d6zV5rtVtAXwD6EZw2WCvwb
	jLyTwI40KfNwR1TZbwii6gzZWaMnLBD31VMzb2CCe97TncLLwdV+Ourmcduw+jIBF7sBE7F7wLfzM
	6ga4v+132xxwzF9E33RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTtY4-0002Jw-Ko; Thu, 23 May 2019 19:38:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtXx-0002Jb-Kp
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 19:38:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id i3so7016703wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 12:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=usHFsL/Ku0+Qt69lCmqe22nPRQ+KCZhK+aj6hDp84KA=;
 b=dEsVb+717tCpXM8S8/JVSdaPBKgC83leuc1FOaorAZjd+ULMl6eVEbEy2UPyYsCWUS
 mZh7R6nEIeJNMWh3SVxRpUQG4GqALYcrNmdzk5ytH9Li/qOOm8nlLHyKs+qYkU8r3392
 ma2KBLIJutn+5Gmum7VdZSYnYE52esHH2dxBAJ6hW2VRC353R0zjMxfFV2327qj+KdU2
 aPHX7J9eB+KtvkI8MM0Yt59wOkgZLOcMrbe/pc+3hbJG90+avzfCAoAGezfgnU4D95OC
 +a8BEz2AA0Qyc5zDGQL/+pI/U3Zt2lgbkKZrEq7qNvP5Apux5z8CxI/YRrJgv6UnrheQ
 +0ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=usHFsL/Ku0+Qt69lCmqe22nPRQ+KCZhK+aj6hDp84KA=;
 b=AKpDSgWO01g+cOpwBmp7pS/ZnNaBf+UjGuqFOW3KYfIJMVrwolM6qLNtlfHLBUJH8V
 AjGWs+1DYEAEXlHAMVMUHetIfys1Ey2uVEbeLmUgp/PYxvJqxF5QBOVhoVHS1W5+QvtX
 mCu2m2k36t1u57RcxtnKXL2au65wG11Qk9dy7L7WCQwkHxF1bF0Z3u3/PFoYkwdm5uI3
 3kWqpsmE8o810SQe1aw5UTiX1TRgm6BzctyWrK7goNj60pANmLKvVhuyZHqpRTsAo7Ia
 OOHSQ5Ro/2qBVn7H8jGdAOMTR8OFPZWCJXNXk36POBXdE87b/Or73l8dFcAQPwvT4kX8
 XTvg==
X-Gm-Message-State: APjAAAW+CsBNiZfoQSbMMJwJi4ApkFuWfpaJjxa6oNBMYPMvopjxWuYu
 DzyPGMroT+YSrMnDd2q8Fa9tfDZa+YFo0Q==
X-Google-Smtp-Source: APXvYqw6ha7d5sNzeDFQr/ijdtNE/bEpoeVCKgQGVyf/DObuR09g3pB8MvOSpCNmuBgVeq+biOQ4CA==
X-Received: by 2002:a1c:20d7:: with SMTP id
 g206mr12847712wmg.136.1558640315678; 
 Thu, 23 May 2019 12:38:35 -0700 (PDT)
Received: from [192.168.43.165] ([37.170.182.188])
 by smtp.googlemail.com with ESMTPSA id o6sm365890wrh.55.2019.05.23.12.38.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 12:38:35 -0700 (PDT)
Subject: Re: [PATCH] clocksource/drivers/ixp4xx: Implement delay timer
To: Linus Walleij <linus.walleij@linaro.org>
References: <20190523181602.3284-1-linus.walleij@linaro.org>
 <3496e81f-ea63-794d-0d8a-8eba9f2f6853@linaro.org>
 <CACRpkdZ5LCeqkvJrN-TAcSy7knNOQhGV7M_wfZZ4Rz5ah87KnA@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <08ab3a6e-5167-02e8-9d46-0186b92c8a71@linaro.org>
Date: Thu, 23 May 2019 21:38:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CACRpkdZ5LCeqkvJrN-TAcSy7knNOQhGV7M_wfZZ4Rz5ah87KnA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_123837_687770_8972A1B1 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMDUvMjAxOSAyMTozNCwgTGludXMgV2FsbGVpaiB3cm90ZToKPiBPbiBUaHUsIE1heSAy
MywgMjAxOSBhdCA5OjIxIFBNIERhbmllbCBMZXpjYW5vCj4gPGRhbmllbC5sZXpjYW5vQGxpbmFy
by5vcmc+IHdyb3RlOgo+PiBPbiAyMy8wNS8yMDE5IDIwOjE2LCBMaW51cyBXYWxsZWlqIHdyb3Rl
Ogo+IAo+Pj4gVGhpcyBhZGRzIGRlbGF5IHRpbWVyIGZ1bmN0aW9uYWxpdHkgdG8gdGhlIElYUDR4
eAo+Pj4gdGltZXIgZHJpdmVyLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IExpbnVzIFdhbGxlaWog
PGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KPj4KPj4gVGhlIHBhdGNoIGRvZXMgbm90IGFwcGx5
IG9uIHRpcC90aW1lcnMvY29yZQo+IAo+IFRoaXMgc2VlbXMgdG8gYmUgYmVjYXVzZSB0aXAvdGlt
ZXJzL2NvcmUgaXMgbm90IHlldCBjb250YWluaW5nCj4gdGhlIGNvbW1pdHMgZnJvbSB2NS4yLXJj
MS4KPiAKPiBNYXliZSBJIGp1c3Qgc2VuZCBteSBwYXRjaGVzIHRvbyBlYXJseSBhZnRlciB0aGUg
bWVyZ2Ugd2luZG93IDopCgpPaywgSSBzZWUgdGhhbmtzIQoKCi0tIAogPGh0dHA6Ly93d3cubGlu
YXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29D
cwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+
IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8
aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
