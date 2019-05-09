Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A79A187D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 11:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRrzmNf5bcbaUTf5y7tXy6K9wyMk8kbJGXpDIPayqKs=; b=EYUY1zuwKxI6Jr
	r3sjgVBsFhhml9dGBbpLtYZLUs5DYgiDrLjzm6uIR50Did5Y91kSgo9qOmnvnj0lLsHw/3y2nGzBn
	IeQKkswqO4acryR1mJ/OTbk9d7CnI1Z9JiyUJqGbVowCFHlp2KoJoYe3fvCf7HdmFD4wtGiar4Wvf
	kiyo+gtgKQNrikscCcLsgiqB4GjHvX0nom7dEfBNCU1aoXwzNjRJtdRUjgY3sGBVri+S1ibk41PY0
	dTHba231JOhXA3sWgGeQlG8OIWZnv0D4osBUKeJ8NJ/mE94k2HUjo+YDqyei6xTsGYYhnFS4vgPll
	uPOPaht3bhPDVgNRKK9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfR8-00076t-H2; Thu, 09 May 2019 09:33:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfQi-0006wo-1v
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 09:33:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id j187so2273094wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 02:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=SyRgRxtjdMJpbsjK9vjm2B3TwSm8QJJ2pjmdSOpbmps=;
 b=AauaUrfm2cnOW6SNDfuMRv0+hlgU2BgvMMo5qTYqMWmgv0tM2Y605oJ9MDb6GCKkyr
 xxLZDhgFvVAUlAqzhZZgGwA2pJ050Cg3c+g34asToSOFZ08TE2qbNZLS3DeuykRS59oz
 8+wg3JumczxfcDO7Pl6qu7oRNbTm/41lIdyzvY1NkLggKzIkIhVByv0CcEtkutzoETEX
 NxstvI4XTnL3mAERfoDswn2CPdQJx+hVe0gJm0AM6FQHrltYCRVbW5fJLJS4w4cxHgzg
 ACVVbtk5SuzhgRFF6Z67DPh3S/iQNyWj0leAwGWeu9gnUt6RivRWexcjB7HEr88L+o0d
 BWvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=SyRgRxtjdMJpbsjK9vjm2B3TwSm8QJJ2pjmdSOpbmps=;
 b=brVUe0wybOIno2N/9sn7OniEyRXX+9q4YT1MjxLeyg6p9BViCabb49U4uEJhayyS7d
 506m8bJEO6pyO9iZ4vY62+yi/hd0H9mYPHBMEJaWAqWqAgO9deFud3/O3uCIElnXj/YJ
 6zabPdMkFDsYbl0eIB7pN67fHbn1uaE3wdFsEiwGlpJhDGHbKz10/zVyusOZDjfjq6if
 kaRpl0IicpBXQoaNl7EVAKr3/2r+Wpj+hT4NqjaqATpplynxpW+BqLUq0Nt/qCNf8ChU
 sX+JIY+6A+YyMK3hOKuozspxsd/AxB0n3bsEiDRShLAPAQwyUYqt2/GXDnXwd5ZNBDWI
 Qv6w==
X-Gm-Message-State: APjAAAUfytl8w6uJQj4WY5/fcLKqa8J4YsEGpdpj58/5GlmDoj86yURb
 1drzCwA4xb1Ua26Va6/TAqAzOQ==
X-Google-Smtp-Source: APXvYqzWxiSGBE8sUUva3+DpZ/awGVFeFFPJtZu5iHJoO63RJCNa28okuodpAuszCvvYsv8zSHsUTA==
X-Received: by 2002:a1c:f111:: with SMTP id p17mr1919584wmh.62.1557394409462; 
 Thu, 09 May 2019 02:33:29 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id j131sm4430911wmb.9.2019.05.09.02.33.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 May 2019 02:33:28 -0700 (PDT)
Date: Thu, 9 May 2019 10:33:26 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH v6 1/9] dt-bindings: mfd: Add ST Multi-Function eXpander
 (STMFX) core bindings
Message-ID: <20190509093326.GV31645@dell>
References: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
 <1557392336-28239-2-git-send-email-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557392336-28239-2-git-send-email-amelie.delaunay@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_023332_198508_5382B83A 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAwOSBNYXkgMjAxOSwgQW1lbGllIERlbGF1bmF5IHdyb3RlOgoKPiBUaGlzIHBhdGNo
IGFkZHMgZG9jdW1lbnRhdGlvbiBvZiBkZXZpY2UgdHJlZSBiaW5kaW5ncyBmb3IgdGhlCj4gU1RN
aWNyb2VsZWN0cm9uaWNzIE11bHRpLUZ1bmN0aW9uIGVYcGFuZGVyIChTVE1GWCkgTUZEIGNvcmUu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQW1lbGllIERlbGF1bmF5IDxhbWVsaWUuZGVsYXVuYXlAc3Qu
Y29tPgo+IFJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5v
cmc+Cj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gQWNrZWQt
Zm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiAtLS0KPiAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zdG1meC50eHQgfCAyOCArKysrKysr
KysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZk
L3N0bWZ4LnR4dAoKQXBwbGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpM
aW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8
IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
