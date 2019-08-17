Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4435690CA3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 05:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sc658sOri7tx+jd3rBRBf+fRY0N4cd5/5G44LSVX/iw=; b=ImDKG9xVsckuBb
	mEh+u2C5KuJVzU//EXmu5mzlntxJbNl1pwQWdwfgPupzrNZ1Dww6XATmm3xEOuGBxexvRnIzM8Tut
	+vMAsgR8gDjJsRVHl28nnnnq9GlkOlJZPYwLNEjppI6qO6jj7/0+Dh1JnsDyRXKzddGc6uCGv1/oE
	bbqwfCEbOX0HUG43HxcN6317oH1RF+ycq+BFPQ37bk5QY7RGLSk8bBjZw//jdjcpEskmNHO5HZgkc
	GJgn5pjHFkUOxnq0aTX02tKMUvVHaZ+aJNkaWozLMjbyB/caajFV+3fliOEDrScAsmA8IlyRi1A3H
	x36YzMhDHgajlXjtZ9Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyprv-0002ta-VH; Sat, 17 Aug 2019 03:59:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyprk-0002sv-Fy
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 03:58:57 +0000
Received: by mail-pl1-x642.google.com with SMTP id c2so3215317plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 20:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fpzq1IJyTN3+XLH7OodHaHJGoEjp28ZAcokHx0BKwM8=;
 b=zj4wTskwXi8JTaFitu4xIdG1IKRFka99SesptRKIhfkVA9A3VUY8yxC+C6V5UFh1EJ
 BL3kfdAw/RH+la1vpcg1SJWRfLITpUj5rbuMbZQ3kd7BJLWhTQyLReBp5wg4iiGd8n6F
 /TDmGGNEbLWhCTFPeScJfGvABGU3dWQdhQFqKJ9Xa6JgmG8r3VmspZ3BaH4aHaXWWK/6
 W+6MxtpTUyxRSJsKCGFHH5BIrGPp6Jm2CRy5rZVGQiqxgwJKTuQvJhvzJ8lYYX0MeoXN
 UEndhJEX/f0wLy7ztz4/Y5rk9U2OlywenbKF1/Ag+KfUO/6F3KUcHJM/+TTGTBYMtJrj
 pxaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fpzq1IJyTN3+XLH7OodHaHJGoEjp28ZAcokHx0BKwM8=;
 b=TjQiMyNTm2hOeOab1RzLEnWLu0oUw25dfbzARxbxLqnCAY8m5JJy0Xaul9pFvRfef2
 Ofoh/+zFUQ/7H+JJrvDZFca9qbDLSV4icwqO7ig2nFoHSpCT772anslDockw577URQXf
 PahcuI5SGpb5nJYB+3tB7I0KiJNrNG4kFy6cbVgxN0h0wBfC/xwRdoC5HKDuSlICndA0
 2s3KVgsaH47FUD/LfXQ84EvtbcrgAzoUlIL4ujNPuaTtuHqFMdVozwV1JFX8UWwrfNqb
 +bWTreLNlO77HPJnIah1xJRPljmrpzjXeUi/GmCSrQhJoR6p9kYejXdEDFBpCdMRCC9d
 2mow==
X-Gm-Message-State: APjAAAX/mL+myGsBh9Y0ybwQMAjOaOLhhZ3/smUNGbm+Giqr8D3bzgDf
 uLsB2blw3b9yHQxx4THnBWsT
X-Google-Smtp-Source: APXvYqxdLtY4XshCz+FNTJXBVbPVkfdMbdGtSuK9U+G+VAYToLM0bknoU7ihCSGgVowQBAlCe/CjAA==
X-Received: by 2002:a17:902:7612:: with SMTP id
 k18mr12190722pll.48.1566014335297; 
 Fri, 16 Aug 2019 20:58:55 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:70a:af69:9185:a772:a21d:70ac])
 by smtp.gmail.com with ESMTPSA id u7sm8165596pfm.96.2019.08.16.20.58.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 16 Aug 2019 20:58:54 -0700 (PDT)
Date: Sat, 17 Aug 2019 09:28:45 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/5] dt-bindings: clock: Add Bitmain BM1880 SoC clock
 controller binding
Message-ID: <20190817035845.GD14652@Mani-XPS-13-9360>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
 <20190705151440.20844-2-manivannan.sadhasivam@linaro.org>
 <20190808050128.E3DA52186A@mail.kernel.org>
 <20190817033422.GB14652@Mani-XPS-13-9360>
 <20190817034612.6DA7E21721@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817034612.6DA7E21721@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_205856_542350_CF26A9A1 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: devicetree@vger.kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, darren.tsao@bitmain.com, robh+dt@kernel.org,
 haitao.suo@bitmain.com, fisher.cheng@bitmain.com, alec.lin@bitmain.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 08:46:11PM -0700, Stephen Boyd wrote:
> Quoting Manivannan Sadhasivam (2019-08-16 20:34:22)
> > On Wed, Aug 07, 2019 at 10:01:28PM -0700, Stephen Boyd wrote:
> > > Quoting Manivannan Sadhasivam (2019-07-05 08:14:36)
> > > > +It is expected that it is defined using standard clock bindings as "osc".
> > > > +
> > > > +Example: 
> > > > +
> > > > +        clk: clock-controller@800 {
> > > > +                compatible = "bitmain,bm1880-clk";
> > > > +                reg = <0xe8 0x0c>,<0x800 0xb0>;
> > > 
> > > It looks weird still. What hardware module is this actually part of?
> > > Some larger power manager block?
> > > 
> > 
> > These are all part of the sysctrl block (clock + pinctrl + reset) and the
> > register domains got split between system and pll.
> > 
> 
> And that can't be one node that probes the clk, pinctrl, and reset
> drivers from C code?

It is not a MFD for sure. It's just grouping of the register domains together.

Thanks,
Mani
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
