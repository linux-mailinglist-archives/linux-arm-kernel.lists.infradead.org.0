Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E241911D6DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 20:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ioHEB1t5JoVhfVP25Stx22agrufVQ8Gn54bdqOozPhk=; b=VAG3S6CcABzYNZ
	icP/StyyHHecvQKnRJqkenHtXjvW7wPdU0299nXC7J82e3UQoYcUi6dpv4CFF0DeQiUk9Xxpq5DuU
	jE+9AN2Hsjkb5r5aWdz9bxZ0bbo+7w6Bc/LzaXTzudEzR/sQshOcXVbeK3EbLM9Ucmu10VS7KRUcq
	EGLShsfovS7lPF99nN4+rkhbvCeUbCb/O1TurM3hYYaAbhNucdTl9Jbgq98vmfYWnGEbjDhA3ArLE
	Oww7sMfvURzNNksWxb3LCvLJyvfjfNUVkPijtXht/wsz8KHCRCZ+WKHGQF7Z/yX2iTRpI07Dj68rk
	YVK/gO92VQ+Qq+xbrPRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifTqs-0003XB-TX; Thu, 12 Dec 2019 19:10:18 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifTqg-00034X-R8
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 19:10:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id s10so1040737plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 11:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/CFTvsuLouSL+b+ykFmdN8fLszmQshAka4tYRtpWxCg=;
 b=DDCckX+53jRup7lxzh/bxqu4w8WMEM7JfkNDE8ddbtmubhsPo4HzghREbieunEzc4N
 /QIPAlyEXZJpzbxaTi/10nLMDa2VjWS3gJv37yKhE9LNJVNy2mVKqq/QAOaZqPnDnqUI
 JGiiJtS9CXi/rZk6LP7urXNmhEgcbd9d9neOsGM0759DtGXJxFhvRqYZW0WivJwpCv/K
 Q2eqUU2ulZ32zGaWZ0ojcvhTNMi2R8RD0zyGSumPB/oCZbcQInbGOvCBYz5DNbmVfl3t
 YZFHzsIy/mTl3a9enQkCC7bg68f7N4oj8pajqNH3ytaqLgRJbHxLhxIg1QOQl2HpmsZu
 4OeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/CFTvsuLouSL+b+ykFmdN8fLszmQshAka4tYRtpWxCg=;
 b=sKad3VpnDigiwSQdHra+V7GJ9QWJKMrZdIJaZyktl8RtbCsRgexEp4tl74MvwISS9h
 TAwkKeBNPm3ysm8jGP80dvlbPMHcxnlCR8zW42WctQWDaBtH8ol/uHVTLnqdRm6vVnm+
 TS/b8q9QBuWFbmuD8896cXWI5j6jlhUmx9A/OjJavsWIb6pI3k5lL0DtZJd/0Lwf5Dle
 ynqp1OSdXcZbHRgcWmPrmBD967/Zu0Jyep7fwIQTBiCjtU9qq8On5aFjfBB37dsI/wzz
 k3wNlup0qfQNC1PRuXk8AEnKY1nbhxOqUaGiTMGaMjShyti9uOCVu48MlR5cG5eIeJGo
 vDUw==
X-Gm-Message-State: APjAAAUuumvE4dWf6uRbVNyJ8tN0IRDuag3n2cHGndGwEPyScVrZKcom
 Ojb8qBBKEDD5o1pcRI9fK4U=
X-Google-Smtp-Source: APXvYqy80cGHOGC3vXShKkDjiLlNoD3iNKSNfr0cJkwWPHaK/hzVp8CcTB//JpDWpvEmMRR4xvjaSA==
X-Received: by 2002:a17:902:7287:: with SMTP id
 d7mr11152811pll.17.1576177805515; 
 Thu, 12 Dec 2019 11:10:05 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id v29sm7466413pgl.88.2019.12.12.11.10.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:10:04 -0800 (PST)
Date: Thu, 12 Dec 2019 11:10:02 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
Message-ID: <20191212191002.GA101194@dtor-ws>
References: <20191128185630.GK82109@yoga> <20191202014237.GR248138@dtor-ws>
 <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
 <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
 <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
 <20191211222829.GV50317@dtor-ws>
 <70528f77-ca10-01cd-153b-23486ce87d45@free.fr>
 <cf5b3dee-061e-a476-7219-aa08c2977488@arm.com>
 <6a647c20-c2fa-f14c-256d-6516d0ad03b0@free.fr>
 <6ce49a67-8065-277b-5f80-ed47011e50d6@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ce49a67-8065-277b-5f80-ed47011e50d6@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_111006_909681_144CE008 
X-CRM114-Status: GOOD (  23.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, x86 <x86@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 06:15:16PM +0000, Robin Murphy wrote:
> On 12/12/2019 4:59 pm, Marc Gonzalez wrote:
> > On 12/12/2019 15:47, Robin Murphy wrote:
> > 
> > > On 12/12/2019 1:53 pm, Marc Gonzalez wrote:
> > > 
> > > > On 11/12/2019 23:28, Dmitry Torokhov wrote:
> > > > 
> > > > > On Wed, Dec 11, 2019 at 05:17:28PM +0100, Marc Gonzalez wrote:
> > > > > 
> > > > > > What is the rationale for the devm_add_action API?
> > > > > 
> > > > > For one-off and maybe complex unwind actions in drivers that wish to use
> > > > > devm API (as mixing devm and manual release is verboten). Also is often
> > > > > used when some core subsystem does not provide enough devm APIs.
> > > > 
> > > > Thanks for the insight, Dmitry. Thanks to Robin too.
> > > > 
> > > > This is what I understand so far:
> > > > 
> > > > devm_add_action() is nice because it hides/factorizes the complexity
> > > > of the devres API, but it incurs a small storage overhead of one
> > > > pointer per call, which makes it unfit for frequently used actions,
> > > > such as clk_get.
> > > > 
> > > > Is that correct?
> > > > 
> > > > My question is: why not design the API without the small overhead?
> > > 
> > > Probably because on most architectures, ARCH_KMALLOC_MINALIGN is at
> > > least as big as two pointers anyway, so this "overhead" should mostly be
> > > free in practice. Plus the devres API is almost entirely about being
> > > able to write simple robust code, rather than absolute efficiency - I
> > > mean, struct devres itself is already 5 pointers large at the absolute
> > > minimum ;)
> > 
> > (3 pointers: 1 list_head + 1 function pointer)
> 
> Ah yes, I failed to mentally preprocess the debug config :)
> 
> > I'm confused. The first patch was criticized for potentially adding
> > an extra pointer for every devm_clk_get (e.g. 800 bytes on a 64-bit
> > platform with 100 clocks).
> 
> I'm not sure it was a criticism so much as an observation of an aspect that
> deserved consideration (certainly it was on my part, and I read Dmitry's "It
> might still, ..." as implying the same). I'd say by this point it has been
> thoroughly considered, and personally I'm now happy with the conclusion that
> the kind of embedded platforms that will have many dozens of clocks are also
> the kind that will tend to have enough padding to make it moot, and thus the
> code simplification probably is worthwhile overall.

I wonder if we could actually avoid allocating the data with
ARCH_KMALLOC_MINALIGN in all the cases. It is definitely needed for the
devm_k*alloc() group of functions as they are direct replacement for
k*alloc() APIs that give users aligned memory, but for other data
structures (clocks, regulators, etc, etc) it is not required.

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
