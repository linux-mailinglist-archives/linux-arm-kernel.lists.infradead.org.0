Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1616D85BA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 09:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHZm7uVLmsF0ct3BJA7Ep0+OjQlBkMMAxJsZreomyAs=; b=AYT51qjc0TXe6P
	0vPgrbV4jemuTGQ9xHVlxotVcQ3SvNr19I5aFvAQ9Kn0HuGPVLO/Dfp1BJtbGCVqA+U6LDg1+YRyF
	7ibhkdI5LTvGw4o18SPLEe3OPRhMT2rRFcxv45QUEHnTjG2xtBduaq1aBhGPfI2g5B5Wtd61PpktT
	Yjvsv8mYgDXtgYQqrKQlmnX0beEWDoaGONRH7YoAVw0b9qyRkIhHIV+77pfh3U1aOtzdeM+AtEtV9
	LbWFdxrhH+41I5Y1DAVBMd+QiIrzavujEJZVeNbzD0BbdomrbxImWnsKNWrhMSpgMgyi6VJCaMinr
	0GeTGhOPsEvza+uQkHBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcvF-0003Gp-Lr; Thu, 08 Aug 2019 07:33:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcue-00036R-8W
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 07:32:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id u25so1339327wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 00:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=rwsTN4PYWZDSBim2xfgbKTZBPcn1iO8XAT+A7X4RpJo=;
 b=Be3yljt2cUiFHhsA46esH7ke5SsW+gtpmpgBh4WrM0SnU0MsEG7+m40YcUB0Q8wFSc
 I5Zr6JDEfBUk8/vAZP19J2+MirRs3cbd1sIv9k1YXqYegmF+2Ft1JyJLxCRbQV2tH4n+
 VOvX3ohX4cogwB4NqpaGDG68gM17zp4kcnxtVfdZXLyoOycYq8PPp0s7vR0UET0PoVD4
 4y3q34HOeAWLzsx87yl6GHk4PXy5zBLXtQl53i3I4YmCZE50bKuZb0qjrAL/7R/aOFq/
 i04NBEE1lRBSM8f6uXk2KOdTqBr3wd5RHZj7CqLEekAzHDoVrTeR6vtcALmPVFaDXpnw
 f3WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=rwsTN4PYWZDSBim2xfgbKTZBPcn1iO8XAT+A7X4RpJo=;
 b=qWqCIotKpNSk0EmisIlOB3pXQFYbX2CjnUiiB6YrelNjrRdeOhYbL9esuEAEUiw8Vj
 iQUrjwdNMtpBp5KS90yUto2asWB0hFuTUkjEdX9XZYPfvoyvs5ybENw8C4nMfuTzzzse
 hUmNQkBwY5oVoqlqHDylJ7aCMIK5gMWl+xH3nq6uCKoCa1yN4WB4UTx284O+fXdrbQ6X
 AYa5dU5Pj4BpLtBrHFYppvbw8FBRz1F+q+SXu5rTRcGMBnt33cSzl1IFiLANlm8MKDU/
 hq6mi6CiDU5FBnjJrinrk3Yf8gcEbX2KD6VqyWfpkpJPEBqxXk8LvYJD+mi9HvW+jpyS
 BHwA==
X-Gm-Message-State: APjAAAVlwZ0hBtu8o0itJgrhjc7kqEvG+2WVvkuZZHNoWduQNfAqcHcN
 RVNYQ8QcH4w5mcGkp/SSptocvw==
X-Google-Smtp-Source: APXvYqzPnEJf3wzVF1oCKQHzErCA0BUxeZXArLH/0A2RVb7eYUOfGySo/SZcBJyarxcfrQhrzxrvFg==
X-Received: by 2002:a7b:ce83:: with SMTP id q3mr2697473wmj.116.1565249557789; 
 Thu, 08 Aug 2019 00:32:37 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id k63sm1840106wmb.2.2019.08.08.00.32.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 08 Aug 2019 00:32:37 -0700 (PDT)
Date: Thu, 8 Aug 2019 08:32:35 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/3] mfd: ab8500: no need to check return value of
 debugfs_create functions
Message-ID: <20190808073235.GL4739@dell>
References: <20190706164722.18766-1-gregkh@linuxfoundation.org>
 <20190706164722.18766-2-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190706164722.18766-2-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_003240_829705_4619EDE8 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCAwNiBKdWwgMjAxOSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgoKPiBXaGVuIGNh
bGxpbmcgZGVidWdmcyBmdW5jdGlvbnMsIHRoZXJlIGlzIG5vIG5lZWQgdG8gZXZlciBjaGVjayB0
aGUKPiByZXR1cm4gdmFsdWUuICBUaGUgZnVuY3Rpb24gY2FuIHdvcmsgb3Igbm90LCBidXQgdGhl
IGNvZGUgbG9naWMgc2hvdWxkCj4gbmV2ZXIgZG8gc29tZXRoaW5nIGRpZmZlcmVudCBiYXNlZCBv
biB0aGlzLgo+IAo+IENjOiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+
Cj4gQ2M6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gQ2M6IGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IFNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFy
dG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL2Fi
ODUwMC1kZWJ1Z2ZzLmMgfCAzMjQgKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDk4IGluc2VydGlvbnMoKyksIDIyNiBkZWxldGlvbnMoLSkKCkFw
cGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2Vz
IFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
