Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6B081765
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxbWMYIbshwsgyOruA4EUwErpcadTn2hIk2Li3RTstQ=; b=hh6FHudLdnHSY2
	sB1t0sDNu2xVSDqicrvtUgZdDBjzZ2XSud95FwIIZGFakdZraRLM4GABLMsnfIl1NrJrvDVJAogdm
	lllCzO6f2O6Fy9RqovViRdFCTUMPGSiADCgsJlKncOPBeewqcaiX1cYqsZCXrkR7PK6mcRuPd7Lde
	hSwXPAKJxy7P7RMhUHK/qogVpF9ca4WT4qOwqXWGZiTzpkQadlANrb48uaSYl4tUaruv25VS6xsbJ
	ZqNWpYB469gLwHd1gQLkEX9cKeXGYcucorYAiKL9a1a2Y9q97gZSAnmTuGhzN5qrQpFwk65KJj4CZ
	Rg8B3h14VVsIM8UIPwhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaYM-0001vF-17; Mon, 05 Aug 2019 10:49:22 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaY4-0001uf-Ky
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:49:05 +0000
Received: by mail-lj1-x244.google.com with SMTP id z28so24675925ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zyWsXMkk6iYIEgII1oOJY8ugYk5vzPXYCtQlb3UFPac=;
 b=p8YZD2U4JcoxOrifQes9j3JCaAfhm7o6USZZn0949Khu+OleChnYcRfI+39orr96Sv
 pDMdXHaz6fS1XUsCCKp0w4RcDrzKXKl6EOZwrYgE5dQHWk9iigtwULLPoyoG2BMVu9vG
 kvAuL51lL2OoTsLuVwBsGWfCtRbYG7VIc8NDjruo6AMYEtoZd+znBsmmHY2Ll8FcaqUQ
 0OPryf7N8p0erCSYcfVN7ycuF+vhWFALeWbYx0ZZ70eUMFPI/W44qRIj3MyVuOLOpH79
 r0lMZp7KsHkL2CF8P/dByC4r4M0tGxCRfH6gRf5mLdID+8voRToNX5qas9UKKdse0DK8
 vVMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zyWsXMkk6iYIEgII1oOJY8ugYk5vzPXYCtQlb3UFPac=;
 b=aQtFBy/d2+/y9OAUfNTXYmxvnX9mMa1ojcOUum91YWLmttlaxBBeZb/XxWnSw2K7Q+
 WsapZAd93cBZe45Wl8RzR9Zt0BjRhUM9F1mxYhqg4EmXeG/0u6G0FKoZdgJu4sceOz3w
 /btfVDCnxi1CmjhHL+lgN+16t7/3XwqsovrVKgoYNBk/4JJG6G7wLG2J4BA52a31haUA
 hTwgU0prKgOZ/OwKmX49zaCPQUWQrCzbveAQXpMw+ySpuuXN9r3jPpayDTramNDw3EYR
 veepRga7hw21goLanIzP9tbY7opbC58IzY+nhY3dmuffhe7W6vCfK9eptqwLtfmOhpGh
 oejw==
X-Gm-Message-State: APjAAAX3t8XfdETRrovWesAz0pibWFhLdPZwMSPYvSPRM6buGizxh9pS
 DdVoGPuxahW5vqmARhLSEf6S2kO22gQ5C19keN0VdA==
X-Google-Smtp-Source: APXvYqwv1epfSf4ijzEUccvR56Qz9qbH+rnx/bhn0Kh+aaPW/inmXM+/zCQxf4A9MHgYUbFT258fn6fea66xtBqoGC4=
X-Received: by 2002:a2e:781a:: with SMTP id t26mr29589680ljc.28.1565002143043; 
 Mon, 05 Aug 2019 03:49:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190724081313.12934-1-andrew@aj.id.au>
 <20190724081313.12934-4-andrew@aj.id.au>
In-Reply-To: <20190724081313.12934-4-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:48:51 +0200
Message-ID: <CACRpkdZCJWeZO6CFvkq4uhnX+o_q_AfkDZ=a2kmUgbS3JtDqfA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: aspeed: Remove mention of deprecated
 compatibles
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_034904_686280_95807667 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 10:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> Guide readers away from using the aspeed,g[45].* compatible patterns.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Patch applied to the pinctrl tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
