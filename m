Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6EC3C09D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 02:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Le538iR7iW+NndLPle1Lcqq56ogdc0QO5AlMgO5Pag=; b=ni15ZHCdjcrLvt
	sYv2gZA6dy8M5pQ8b05PtqOU+xt7muZzIGJVpmYum+6qzCA9A7+grDPGlN33A+RfBuJmE0YQ9U+RQ
	ZWt9q9p78tVH/UzmKBsOZwULeCXAnbKkglwwXLmEOL5XhXBYrC4gZNuX7HcawEUxWaSgIg6P48EoM
	Owwf03rD97iXQbAir1OOgZ6iVEBO9ue8/ZVO70dj3gzxfrotr/OfjiTpEyFwXrQwOh9MqURxRl4tK
	o8nMn6XRYGNPtaHmzKtTh+xh08bBJcvmpeEDqlRbkWqyq4O3W7up4lkPLfYzcxqMn/gunXOjOCaIi
	/Flphd6U5iX07ISl2pMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUhc-0000sX-FC; Tue, 11 Jun 2019 00:31:52 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUhP-0000rg-Q1
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 00:31:41 +0000
Received: by mail-it1-x142.google.com with SMTP id m187so2056942ite.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 17:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Q+q3Jj3P/wEz9k/LF4yrVB0MK2jEr9dEeFUcbQlT9GU=;
 b=CM1dORqYQM2ipZY5oNybwUIL0KwgNjOfk3Kl9w/DhBKo+wCV0ASGN04Aldq+1SFYEZ
 f7Z4ShsaN/iJWjjkk5Cl3KNdcEyHieX6OWgehxxLgNbB5pOywJze2bolQ2YNJE3LdaLb
 PxlJqhya+6Gpxp31XcWLiPhkcZpqOPX6SFVoeGIwzINHyJJtFKXSnJCC7WyLMOjaIj5s
 RpHe9ZUI8OK9VnFGNRhbf4KXQW8X5NUhdecDum9jGxDBZd8Hl6P5/hQeJHrO8KKTqVqf
 7jGD4MOHYffF0q+VQy/peMbOSabL586+xGRU6Mm3I3xA2SbhnkN9uceHdeI2VKSxhfbS
 cDFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Q+q3Jj3P/wEz9k/LF4yrVB0MK2jEr9dEeFUcbQlT9GU=;
 b=aUYCbIPP4OJo9Uvxv0qwTpRx82DrOsqy296VlUt2PjIGPB7h5p4tbWZm3V86fpe7dM
 ON5Ns7DWX6evk8959OAFAZsWH1jHjiNPItJ2xOgD0lNLMyvjZJAjVSKpzB96ZpDolg64
 PAeNiVMV/kM1yBMkY4z1RKgkfqOZ54rnsacS+lkXEY8Wg3M93spoQ0xNsKYjZ5XClTnY
 smYhTy14dONamr5CL5dYCv97tCq8bWt7LU0aTm6t0oyF8ukNf/IQhw07zIKw9E3SrJaI
 hnc9MsnXtEAi1c55ONH/xOWJPC4BQPwnLiaZP1nfJWxHav2LzENsaedywfdO/k4dLYw+
 Pw9w==
X-Gm-Message-State: APjAAAW02VpCazVTotjq90B02hf6t+eZyiH9FAxcpEkrq20wrIZIp4lJ
 PKtImriQJ1DiNXHMT3r62E1j2Ftgh2JS5g3FgX0=
X-Google-Smtp-Source: APXvYqxNggVVfpV5Krk5yzsxhZtB5DI+b0F9entbVHlyJw8x1NfRB+IUQrtXUmQsrDzcxija2zLnc+hUajb+QOgYt60=
X-Received: by 2002:a02:8816:: with SMTP id r22mr30641561jai.60.1560213097226; 
 Mon, 10 Jun 2019 17:31:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-2-tiny.windzz@gmail.com>
 <CA+E=qVdh1E8Y7dZO0JSS4DJE2bo=98MuSKRt7nmeFg-td7Ua9Q@mail.gmail.com>
In-Reply-To: <CA+E=qVdh1E8Y7dZO0JSS4DJE2bo=98MuSKRt7nmeFg-td7Ua9Q@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Tue, 11 Jun 2019 08:31:25 +0800
Message-ID: <CAEExFWtjNridLsMXOnBe2mJOPhUOYJ6G3wGF3gx=0oQoQROOGg@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: sun8i: add thermal driver for h6
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_173139_867294_AD12D182 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 paulmck@linux.ibm.com, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgNzoyOSBBTSBWYXNpbHkgS2hvcnV6aGljayA8YW5hcnNv
dWxAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIFNhdCwgTWF5IDI1LCAyMDE5IGF0IDExOjE3IEFN
IFlhbmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gVGhpcyBw
YXRjaCBhZGRzIHRoZSBzdXBwb3J0IGZvciBhbGx3aW5uZXIgdGhlcm1hbCBzZW5zb3IsIHdpdGhp
bgo+ID4gYWxsd2lubmVyIFNvQy4gSXQgd2lsbCByZWdpc3RlciBzZW5zb3JzIGZvciB0aGVybWFs
IGZyYW1ld29yawo+ID4gYW5kIHVzZSBkZXZpY2UgdHJlZSB0byBiaW5kIGNvb2xpbmcgZGV2aWNl
Lgo+Cj4gSGkgWWFuZ3RhbywKPgo+IEFueSBwbGFucyBvbiB2NCBvZiB0aGlzIHNlcmllcz8KPgoK
SSBhbSB3YWl0aW5nIGZvciBjb21tZW50IGZyb20gTWF4aW1lLgoKSeKAmWxsIHN1cHBvcnQgYm90
aCBoMyBhbmQgaDYgaW4gdjQuCgpZYW5ndGFvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
