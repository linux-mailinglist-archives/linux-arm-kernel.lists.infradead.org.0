Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2847FFC019
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 07:10:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7JAxle7sLbe4fYCb9pHk6+Uhsj2Mf+rnhvn1Mo4U3Y=; b=cV9J1m7XyCrnTJ
	lt3bQ3H9ueMah/MU0fWCes8zpZNoSd0DgzuAdiK11VtRav6ixVoSHCkB/AgzRhdns3toSMpHOw/rI
	+gg6rltzSipPNcurYud33YSDc44Y62wocG9FVaspvn26ZONHcaiEWwVqnLcVxodM/4lAcdXq7dML9
	uHay7/IpD8n0FDy5Xs4hfNm4hSB+FdVhiLlniwjoL8hhRcIK+T7qLF8dHqI2GhZol74MmPm2322FU
	sQsI5fEgq1sJMxPB4brIuC2s+rHyNiPbmSDJBh3tVOAvrFxcH79lJ8+xMNZK9zh0gdBYphKbhVOUe
	w9gm+EeK26VASONusGNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV8KK-0005RO-0Q; Thu, 14 Nov 2019 06:09:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV8KA-0005QU-GN
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 06:09:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id l4so2127549plt.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 22:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aw8y1jiGvDQuLoad9v02dXK5MRBBqE3yqRJRCShjhww=;
 b=KaUsoDMkOxGtKBYv81fJMUCgETapU2RakSt6h22VwS5B3+ecb9eOhYEJFqAU6u7coF
 4kb5d+Ozunov31XfwFnnoz+TFDqpuWPnyhQ5NOh2Kxs3JfccG8wE/SunSG1etjaVlV1j
 x/1wP6NZ6LKtUXjHzQk2koVYBye1heoA1pZPjPcvpxvmiu64B1nE5UxTeqGgLxt4eCj1
 b5ta7L4aWkW/vqmygbxb/Ku1N5239Ua6vJR8p2EBPEM0tey6KYECmV2MTpM4Cqsbs0sa
 dAksZhSCR9ZbieXb+/y6d2xsCKAW+Ajbo68p6PXoc9lTpPA/Ry4N8C/dfek+uf0i5NWs
 0RhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aw8y1jiGvDQuLoad9v02dXK5MRBBqE3yqRJRCShjhww=;
 b=jEKXTk8vo2KlGfBGB/fG+GkFKbKpKvIdg60DkYbG9/T6N4xxS3LBI4i6CbQLTo7M5W
 6+zV7cWNdWCgV6szcRIcD54kEXhSh1o4yBrlzCHQytPjLCWbvqy+YYQP9Nu5oGWVAAS/
 hxSim1HWuAc+gGVwHWDDzpnOBsckFwedc12fhq9tYDKV6yCjmagKz7jBEI81Vh6WiKO+
 sBWOWbcwMl/bUfLDVr33wqpTGXy2707yJsLllTHBG+bgssWhwbEJZxDZRrlh2LaWVXM5
 iNLYcWL0ht3VHBP7/wyQiVl+yw5qNu+g6Q2OjecLQnv42/tKqCJElTa/ZjfKgCpCHbG6
 /LfQ==
X-Gm-Message-State: APjAAAX4P8EkB+ZxGAY5w4iiaNZ3RVHmhX+5lX9a8FaueHCTIvHoWvTS
 1qtnBS59zCbdeORaKJEr9INU
X-Google-Smtp-Source: APXvYqzVItSwZLHCuH1SFvN8lnszFgvIq8ecWeEhJ4mhuw9CcYH9GPraKqjzKFczcLQSD2Wgpor8iA==
X-Received: by 2002:a17:902:ab87:: with SMTP id
 f7mr8011816plr.78.1573711785394; 
 Wed, 13 Nov 2019 22:09:45 -0800 (PST)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id w11sm4579443pgp.28.2019.11.13.22.09.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 13 Nov 2019 22:09:44 -0800 (PST)
Date: Thu, 14 Nov 2019 11:39:37 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v6 0/7] Add Bitmain BM1880 clock driver
Message-ID: <20191114060937.GD8459@mani>
References: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
 <20191113222116.E5E9B206E3@mail.kernel.org>
 <20191114053404.GA8459@mani>
 <20191114055054.C280F206DA@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114055054.C280F206DA@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_220946_554931_E87A20A3 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, darren.tsao@bitmain.com, robh+dt@kernel.org,
 haitao.suo@bitmain.com, fisher.cheng@bitmain.com, alec.lin@bitmain.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 09:50:53PM -0800, Stephen Boyd wrote:
> Quoting Manivannan Sadhasivam (2019-11-13 21:34:04)
> > On Wed, Nov 13, 2019 at 02:21:15PM -0800, Stephen Boyd wrote:
> > > Quoting Manivannan Sadhasivam (2019-10-26 04:02:46)
> > > > Hello,
> > > > 
> > > > This patchset adds common clock driver for Bitmain BM1880 SoC clock
> > > > controller. The clock controller consists of gate, divider, mux
> > > > and pll clocks with different compositions. Hence, the driver uses
> > > > composite clock structure in place where multiple clocking units are
> > > > combined together.
> > > > 
> > > > This patchset also removes UART fixed clock and sources clocks from clock
> > > > controller for Sophon Edge board where the driver has been validated.
> > > > 
> > > 
> > > Are you waiting for review here? I see some kbuild reports so I assumed
> > > you would fix and resend.
> > 
> > I'll fix it but I was expecting some review from you so that I can send the
> > next revision incorporating all comments.
> > 
> 
> Ok. I'm glad I broke the silence then.
> 
> Can you please resend without any dts changes? Those don't go through
> clk tree. 

I'm the platform maintainer, so I'll take the dts changes via ARM SoC tree.

> I think otherwise the patches look OK, although I was hoping
> you could register clks by using the new way of specifying parents. Is
> that possible?
> 

Eventhough I'd like to do, my time is very constrained these days. So please
consider merging it as it is and as I promised, I'll switch to the new way of
specifying parents soon.

Thanks,
Mani


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
