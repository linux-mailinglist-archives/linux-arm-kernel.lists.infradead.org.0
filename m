Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E11152E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 19:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQWoEYHjKofAVeBnMZdW0kXLsgG/74xt9G546dltNy4=; b=IN1MYKyF7BfQDs
	gvr2hQUP+Jp0AVQ52/rfv1rgCpgcLUQjkAu7iZO7MSFYDKVaSUK+DC8ARkWtJdyKNjc9SlpyfjkKe
	dL/jpC/WkJUx2EOtUKXtwTvqxBq1sKi6JLsKxu/3tLWFLBXrxVJknHJw8UcCgk71BgXEiTcRGp//d
	Euo5xrZ9dq5XP/VVkdfF/nEwIyGGJJaVLtVoA2lXD2/2uYBikpN9xEU2xpkfYpQjUqkLHqMZ5j1Xv
	ieTkMxGCuLr57UOm2MzVaASPrDvsXkD+DcmTtjkwcw+GeQ04h/myf3QXJN01kCVfrJ5SOF3OcKy5i
	UpC3fgLGdHm5IjM0XWew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhao-0003cz-B8; Mon, 06 May 2019 17:39:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhag-0003cG-EE
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 17:39:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id n25so16172814wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 10:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zyUOqcowBEJ2l4EmKaOqaodsfJOAPAaE+gwxfie0pw4=;
 b=La7fGjQN+Tpg654Ybjsk8nXf7jdW84uWIoMQaXu8pTlYA0Myq4YdTiSHebksnInCDo
 /V7cI5O49WZLtPVV6FYMvA9wON4PdzXSt7fxkc+ZDJ6yiuOeoyc4TN2bogyL02Q8mzDq
 Yci7sXQxTCv+FuegY4C05KNNZk64+CIykfDMLSC6/0Nh1oMETGYUbHeXV5+V8xxKk3Yl
 8NgSQ15TJqWs31GO1Sb2lajRQltIrAo806AjwfL393auq7UBb1qpKen0JMQlySzM+xqD
 RET9nrIzoW2oitxET50ZstzHqDWJY3iN7sLe4RYRBwzy/nlY36KyNMqR20pKaxB5g7C0
 0Lwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zyUOqcowBEJ2l4EmKaOqaodsfJOAPAaE+gwxfie0pw4=;
 b=qhD1K9e9G1b8k9F+CsaJ3rT7jbOZTFp2homMnE/k64EeggEMpJLGHZn/25awwI31lR
 RgrwZuB/TifIYxkYnJsdc1lcWwWYy3tI2hvg+qLRD6gQHHR5S39HnnmCgybLjYIbgK32
 SVCC0JkDpPP7R1LGDwal1T8dQ3U+N5o11NmsokqqiX/UZEAcGaI9f2NsbeFkSuVMpoQu
 9ZjrT3iNME4wakZRAcYkA/gTvOjz2v8gAGvGCvd2XaHfoEkMTwurXjHkbySPbvlxLa9z
 /LuN/kMJVXj1qUW7LgOIDZfKX+ef9evQK5rmMHPYNDEEs9nAPOFAX3vmdU4NGFKt1CAM
 NX8g==
X-Gm-Message-State: APjAAAVbeKwMfEh8rqOvzcPt1rPw4PlGVM3sEvkH2nHVKdKXuwLmOWjk
 67ayyfaPu4HkCUtdED7IBO0eUkZdK+w=
X-Google-Smtp-Source: APXvYqyf2cb8qXuGQGElB8nD4bTSPaG//hqg3L0nOyHcl3aEnxN38pPpVbUEQDPY9YPGpLFejjha4A==
X-Received: by 2002:a1c:f30e:: with SMTP id q14mr18837542wmq.31.1557164385868; 
 Mon, 06 May 2019 10:39:45 -0700 (PDT)
Received: from [192.168.0.41] (64.93.129.77.rev.sfr.net. [77.129.93.64])
 by smtp.googlemail.com with ESMTPSA id j10sm32918866wrb.0.2019.05.06.10.39.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 10:39:45 -0700 (PDT)
Subject: Re: [PATCH] Remove MODULE_ALIAS() calls that take undefined macro
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kbuild@vger.kernel.org
References: <1557163697-17882-1-git-send-email-yamada.masahiro@socionext.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <6d8e2880-0cc0-a7d8-1d42-4401e15e3ac9@linaro.org>
Date: Mon, 6 May 2019 19:39:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557163697-17882-1-git-send-email-yamada.masahiro@socionext.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_103950_483748_90B5283A 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Alexey Gladkov <gladkov.alexey@gmail.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYvMDUvMjAxOSAxOToyOCwgTWFzYWhpcm8gWWFtYWRhIHdyb3RlOgo+IFRoZXNlIGZpbGVz
IGRvIG5vdCBkZWZpbmUgKFVTQkhTXylEUklWRVJfTkFNRS4gWWV0LCB0aGV5IGNhbiBiZQo+IHN1
Y2Nlc3NmdWxseSBjb21waWxlZCBiZWNhdXNlIHRoZXkgYXJlIG5ldmVyIGJ1aWx0IGFzIGEgbW9k
dWxlIGJ5Cj4gYW55b25lLCBpLmUsIHRoZSBNT0RVTEVfQUxJQVMoKSBjYWxscyBhcmUgYWx3YXlz
IG5vLW9wLgo+IAo+IEEgcHJvYmxlbSBzaG93ZWQgdXAgd2hlbiBhIHBhdGNoICJtb2R1bGVwYXJh
bTogU2F2ZSBpbmZvcm1hdGlvbiBhYm91dAo+IGJ1aWx0LWluIG1vZHVsZXMgaW4gc2VwYXJhdGUg
ZmlsZSIgaXMgYXBwbGllZC4gV2l0aCB0aGlzIG5ldyBmZWF0dXJlLAo+IE1PRFVMRV8qKCkgYXJl
IHBvcHVsYXRlZCBldmVuIGlmIHRoZSBjYWxsZXJzIGFyZSBidWlsdC1pbi4KPiAKPiBUbyBhdm9p
ZCB0aGUgYnVpbGQgZXJyb3JzLCB0aGUgbGluZXMgcmVmZXJlbmNpbmcgdG8gdGhlIHVuZGVmaW5l
ZAo+IG1hY3JvIG11c3QgYmUgcmVtb3ZlZC4KPiAKPiBUaGUgY29tcGxldGUgZml4IGlzIHRvIHJl
bW92ZSBhbGwgTU9EVUxFXyogYW5kICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiBsaWtlIG1h
bnkgIm1ha2UgLi4uIGV4cGxpY2l0bHkgbm9uLW1vZHVsYXIiIGNvbW1pdHMgZGlkLgo+IAo+IEZv
ciBub3csIEkgYW0gdG91Y2hpbmcgdGhlIG9mZmVuZGluZyBsaW5lcy4KPiAKPiBSZXBvcnRlZC1i
eTogU3RlcGhlbiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+Cj4gU2lnbmVkLW9mZi1i
eTogTWFzYWhpcm8gWWFtYWRhIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KPiAtLS0K
CkFja2VkLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KCgoK
Ci0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNl
IHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vi
b29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9s
aW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4g
QmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
