Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FF14C2ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 23:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQX0+oSsJJQ8ORAwFhvQcQlDIpDQK15DDogde+49F9Q=; b=CVR0JUESq3xP4O
	XTM+4bjQxeSRl3UBmNAiYejv3pfbu/9QVfBV6dISbGUa+UVDQs6MPOSIyHPhhAf1N0TqgoE7cob+/
	U4t8ePpUdonV8QMWT6YFt8kAkZde1LZvNrv7wRSEjHNFNCX1moG5szGZ05OuZKU6003ynZ1tbE3x2
	nYUN+OXFul3ck0G7dIfG/IWoV7NMbBc+kKe2M8Ftsix2XTXLk3buL4NkgTfUcA3Ev4ItMk6eUjauO
	7WzvnWfvexxiDlDTNVMDWJIe8wKTJohQPrgA68EYtsG2UOOAAq9556gZ9qIM2MGtkKphu4V/5krNM
	37FhgAXmf2/xwBG4jsCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdi5c-0003AW-NQ; Wed, 19 Jun 2019 21:25:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdi5Q-00039d-PR
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 21:25:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id x15so353395pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 14:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y9mMQK9sKtWkYVn2tTLrqE2pA0vjVcq3E0qdtFwjDm0=;
 b=P5V/sT+i6r81AGxDHVHYVwgTBdH9hf/mud3jTlfe52eCS6W+5ngfmHBS5Z0sHkjZdw
 P/hyp+SElxNTgemRSGOtbTDIUYWWHxkBwrIyTDtPXANTdBjE7SWyRMT0/BHQiAkYqtPc
 CSlOqLbY6l+1vYT1oVdeGzUXQmPLiA74Y4dL0y1Zj8En/UvVab1vDGuLxQtsk4rddVhb
 OcAr5e4o52ldWylZ/rrctkX2uy8M7eUQyGn8gsZDMCHYREcdFW24LXs34IwCBkBGl5ae
 N8iqEYxxI6acRivHQIYSUz5sAU6zqbAlhwwRES74c0CoBDLOtl1msA3bIVAvdRuQwNoZ
 KoRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y9mMQK9sKtWkYVn2tTLrqE2pA0vjVcq3E0qdtFwjDm0=;
 b=U9pM5FZd7LxO5V25F5Bu14rRKQTd8a/Kkat7T2J6QQcLK6IMCv7CgfqYK5ZuzCefab
 Kp0wSSwypOw/TanlUl9T0WOQYWxGIMiq3f4p/xMplRnCiPYfyYvuOX7gvhlOq54rCtmc
 MjzC+UBBj6LWSSXLn6u6mQIH93PXDe6UGTAjaoRvQ2+mRKbSsUHPNrMaJh/ZEXT1mE78
 KFA/Y7MrTSLikmcHw1iFtkTjVDCUsjRd2Gna02iLXic6BbH+ca8FDzESePPQvTD4pw2P
 7p4I6J6ia/o+vOdpHlUjRnexzpFif9fA/NQVLKWh7UX/XCPqhYvqgvAUmPwQ8CvNMX1q
 Z8vQ==
X-Gm-Message-State: APjAAAV1aevvp05iffFTbbJXyHOae+JXVAwSqGwxqTrwT89K3Zho9l2P
 oLZV0WfnJjvoB0GrTR5Rk1D+RxrFOghjVBC+wX90/A==
X-Google-Smtp-Source: APXvYqztE1b64ddvyGSTrs/viqOnx1s8V4PiJRCg0njvbgRaqHL43xEmtPe+sNLTtcWqmb9QiWUsUoMuerCidUN8TiA=
X-Received: by 2002:a63:c94f:: with SMTP id y15mr9670654pgg.159.1560979540781; 
 Wed, 19 Jun 2019 14:25:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190619205009.4176588-1-taoren@fb.com>
In-Reply-To: <20190619205009.4176588-1-taoren@fb.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 19 Jun 2019 14:25:29 -0700
Message-ID: <CAFd5g45TMtXcuqONdkpN_K+c0O+wUw8wkGzcQfV+sO8p5Krc9w@mail.gmail.com>
Subject: Re: [PATCH 1/2] i2c: aspeed: allow to customize base clock divisor
To: Tao Ren <taoren@fb.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_142544_851429_EDFA9E66 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 2:00 PM Tao Ren <taoren@fb.com> wrote:
>
> Some intermittent I2C transaction failures are observed on Facebook CMM and
> Minipack (ast2500) BMC platforms, because slave devices (such as CPLD, BIC
> and etc.) NACK the address byte sometimes. The issue can be resolved by
> increasing base clock divisor which affects ASPEED I2C Controller's base
> clock and other AC timing parameters.
>
> This patch allows to customize ASPEED I2C Controller's base clock divisor
> in device tree.

First off, are you sure you actually need this?

You should be able to achieve an effectively equivalent result by just
lowering the `bus-frequency` property specified in the DT. The
`bus-frequency` property ultimately determines all the register
values, and you should be able to set it to whatever you want by
refering to the Aspeed documentation.

Nevertheless, the code that determines the correct dividers from the
frequency is based on the tables in the Aspeed documentation. I don't
think the equation makes sense when the base_clk_divisor is fixed; I
mean it will probably just set the other divisor to max or min
depending on the values chosen. I think if someone really wants to
program this parameter manually, they probably want to set the other
parameters manually too.

[snip]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
