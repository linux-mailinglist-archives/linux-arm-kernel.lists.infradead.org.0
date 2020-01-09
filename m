Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76891135846
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJu2vwQ5TBVscBLavoMv26M8PLbpSjx3BfRZfLL6Xwo=; b=tZt+VbRXKTWdBd
	C22oAU7rwgdaZ2RzkfWpRqIa4mMssY4TI5IG61Kjz37lVBX9R+X9dIFf43LYDvmr+O1HeqbqXrOnV
	by6hZlBBwb0I3FsKAc8jVLoS+VHIgAGUvJMvuJzImQ3VqZso9+c/aWjlLL8pcu6lDJf+5p+ZC++jn
	njDBx6ti0MmNlfuj/7DNtgK9iu6JI3oDDgz88BZ8mkbvREZyEtk9a39KA7GF4vTdoRiD9tAyVhWPT
	HnCHCqA2Ox9siiGVWCZDkOwixhMx1o0wcgIL9GrMfYxQ1SYNq7kBokwQDPaesvnHnQj8MVz+l80/6
	AENlf5yTViSwSpq4gzuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWDB-00040p-EW; Thu, 09 Jan 2020 11:42:49 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWD3-0003lX-TL
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:42:43 +0000
Received: by mail-wr1-x444.google.com with SMTP id q10so7011917wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 03:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eElglYsM8CmhB4Xu/jk0f8a/Sey3B/8IhEPKML5/44o=;
 b=c6c+/hbByMD0wYQE4UGCmHPYXvQ6QB41/27p+wEC+d+40b7pylAM2Jpdx/QtHWHBGd
 ztA2XaSsgEDi50UTyCNG1q+Fln50DAZTUT9T8hgBLngfSCQHH9xBuBmgUymy27jEboS7
 8vhZt0zUDYOC+MQJaU/v+MDjryDAnNypcaDMPO+TcjVSPq6SwbghXyVbTrLb3ku2Ehxe
 RqdaVPR4OeZ6a07fOPAGMJJS1TAlViDBZGWrIdtRjjdswTrO0YVgPcQX9RsunQlY5ymQ
 FRqI8Xp5C8s+xH7sb0fWE+GgrKbi+Xl794UpwcZvEL7tlmEqyq7+F1A50VG3CuAqljBN
 Ccgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=eElglYsM8CmhB4Xu/jk0f8a/Sey3B/8IhEPKML5/44o=;
 b=XgGUy3td0HxB9XrNnpTKZf0kiiZOOM4B5nQYzP9cfMujxUd/GCJLzJgNIp7gxuSsCv
 SoYtZoo2Npn+rlwH7coU66umhF5SIlVtdhV4zqu3OEjZcwAfiwf4ZPpwBCwo4n7/RF/6
 M0KV7fAhuhs5A/Tu1umIL/ztYIE3tqVWSVhfPe28Jm4CaMH4DY7cVSMAzWSd2i6ht/x6
 WIpj9WvsVKoEQ3p6f27+juLdsnuSL/ZLvVQjzDvUhEJObVQflgNiE/Xsp+zGLS5CCykK
 XDyT6LP7KIr4YCtVbel1vrBI5tECkEownGeS0ekTyYOpkd221dcwmpvDWdZTRwjB84RR
 azlw==
X-Gm-Message-State: APjAAAUHZTPgx884AA2ll8m1LrL6cdVljmlAcyw/m0WDc+lNDLl7tbj4
 y6ieksbEqa+5RvzkCi8HFxP/Lqicjiuk6A==
X-Google-Smtp-Source: APXvYqz0/ImjrjCC7Erlh6tj/NqoWIUe/vAkwTHntgOu10pwbIGdaxzzWRZjUsrvdwdWy2zNN2fHKg==
X-Received: by 2002:a5d:50ce:: with SMTP id f14mr10497708wrt.254.1578570159990; 
 Thu, 09 Jan 2020 03:42:39 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:f1d5:61e0:e9d8:1c3d?
 ([2a01:e34:ed2f:f020:f1d5:61e0:e9d8:1c3d])
 by smtp.googlemail.com with ESMTPSA id s128sm2659403wme.39.2020.01.09.03.42.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 03:42:39 -0800 (PST)
Subject: Re: [PATCH] clocksource: timer-ti-dm: Fix regression
To: Tony Lindgren <tony@atomide.com>, Thomas Gleixner <tglx@linutronix.de>
References: <20200106203700.21009-1-tony@atomide.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <799dbdec-bfa2-e9d5-d541-b7ad7b04dd46@linaro.org>
Date: Thu, 9 Jan 2020 12:42:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200106203700.21009-1-tony@atomide.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_034241_966844_E421375C 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYvMDEvMjAyMCAyMTozNywgVG9ueSBMaW5kZ3JlbiB3cm90ZToKPiBDbGVhbi11cCBjb21t
aXQgOGM4MjcyMzQxNGQ1ICgiY2xvY2tzb3VyY2UvZHJpdmVycy90aW1lci10aS1kbTogU3dpdGNo
IHRvCj4gcGxhdGZvcm1fZ2V0X2lycSIpIGNhdXNlZCBhIHJlZ3Jlc3Npb24gd2hlcmUgd2Ugbm93
IHRyeSB0byBhY2Nlc3MKPiB1bmluaXRpYWxpemVkIGRhdGEgZm9yIHRpbWVyOgo+IAo+IGRyaXZl
cnMvY2xvY2tzb3VyY2UvdGltZXItdGktZG0uYzogSW4gZnVuY3Rpb24gJ29tYXBfZG1fdGltZXJf
cHJvYmUnOgo+IGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItdGktZG0uYzo3OTg6MTM6IHdhcm5p
bmc6ICd0aW1lcicgbWF5IGJlIHVzZWQKPiB1bmluaXRpYWxpemVkIGluIHRoaXMgZnVuY3Rpb24g
Wy1XbWF5YmUtdW5pbml0aWFsaXplZF0KPiAKPiBPbiBib290IHdlIG5vdyBnZXQ6Cj4gCj4gVW5h
YmxlIHRvIGhhbmRsZSBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGF0IHZpcnR1YWwg
YWRkcmVzcwo+IDAwMDAwMDA0Cj4gLi4uCj4gKG9tYXBfZG1fdGltZXJfcHJvYmUpIGZyb20gWzxj
MDYxYWM3Yz5dIChwbGF0Zm9ybV9kcnZfcHJvYmUrMHg0OC8weDk4KQo+IChwbGF0Zm9ybV9kcnZf
cHJvYmUpIGZyb20gWzxjMDYxOGMwND5dIChyZWFsbHlfcHJvYmUrMHgxZGMvMHgzNDgpCj4gKHJl
YWxseV9wcm9iZSkgZnJvbSBbPGMwNjE4ZWY0Pl0gKGRyaXZlcl9wcm9iZV9kZXZpY2UrMHg1Yy8w
eDE2MCkKPiAKPiBMZXQncyBmaXggdGhlIGlzc3VlIGJ5IG1vdmluZyBwbGF0Zm9ybV9nZXRfaXJx
IHRvIGhhcHBlbiBhZnRlciB0aW1lciBoYXMKPiBiZWVuIGFsbG9jYXRlZC4KPiAKPiBGaXhlczog
OGM4MjcyMzQxNGQ1ICgiY2xvY2tzb3VyY2UvZHJpdmVycy90aW1lci10aS1kbTogU3dpdGNoIHRv
IHBsYXRmb3JtX2dldF9pcnEiKQo+IENjOiBZYW5ndGFvIExpIDx0aW55LndpbmR6ekBnbWFpbC5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogVG9ueSBMaW5kZ3JlbiA8dG9ueUBhdG9taWRlLmNvbT4KPiAt
LS0KCkFwcGxpZWQsIHRoYW5rcy4KCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGlu
YXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8
aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3Lmxp
bmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
