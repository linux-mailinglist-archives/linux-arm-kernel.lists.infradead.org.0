Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D9AEB9A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 23:24:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpDeaLhsceldeoQDDoWb9Zz1waeQOvfc7z+fbp1L/I8=; b=NIhk8V0N5ATGpz
	PB08yPWG1D4y5m43MzJZhHh0dDHJ+PJiXpqZzbpIaF6KrErhZffnZ8H2mwxygR0Kxe+X+mmixbVti
	sYsCpeWUXVZklimSV6+kGC/sHDFpK3bxsHqwcXX1vmddhmOR9CsPFMfOIu1wmfD2qxmLRgmPatORk
	31xM8IY/HJ1i2sh8VIw4Y2glIZiTV9RW4dCnYx5JpItT2Guhkvg2/oV8ahn2Ct28WSS2IvFRNxGup
	ckRYm4Jf/Zmlyh+F+IMJNW9GFrKrQnFG35iVmbxD7kSpLECcM3yT0/eXObAIwpD94O3Bq12rpIHQf
	Wksmj4UbGyT3DjZEmlwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQIrP-0000M1-2C; Thu, 31 Oct 2019 22:24:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQIrH-0000LY-Id
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 22:24:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id u23so5056660pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 15:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SKGgL+l3I4cTUfYsDNCk4em6H5Eawid8b/zxLf81N/Y=;
 b=YlcnDl/IEI9bxcUtH3e4eha3zBNrSkXhqkORi8o+V/3u2NnNjtf5CfJ2Mjmcd0h3nG
 x/TMlweb3+p3ag0jh+1F+pr8BP9JyZzd9I7n1DHPc2/i8Tu7sgUAlgm2q3BJneuw+b5n
 tEi3E6y9SEAe/ZvKPyTIbf6Nkjl83BH7TgAYc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SKGgL+l3I4cTUfYsDNCk4em6H5Eawid8b/zxLf81N/Y=;
 b=lPfYGX1IpObAsKvSTnITUcfLtETe2Ux3CPV4kWJWKiXFn/YfqgKQRX9/iFNfVnkUql
 Mi3C8x9ViFetoIyjsKnH7hfJjoXA78vPvGN9n+e8klj84655O3x4gs1DPxH8rAbeq7+n
 kOWHMgWoCyiq/TS2BXG3hzIt4coiYOW+BXU8eDavsY38qfpWjsVzRP+lutdPl1yTRGeV
 ydJZgQuMMthHFIy/s3G7EOAQjIuqKGk3pr/ToTvy3cA4hiQDy3No+1MDRszUq5WJkIgw
 Z6IMyJ7anQ2gFIaFO0IZU6kCDoo3WLUaVxCdZ53ilpGf2hiBB99X+pA13yK9kHZOzW/3
 IgMg==
X-Gm-Message-State: APjAAAWvXNQdcE2MleyRNjy0WlpiECCc3lzsAgae+N7UGuzmwNLN0DSv
 3sHFa8WmRtvD8pr6/K0trLSusw==
X-Google-Smtp-Source: APXvYqzigiCQ005SliDdxLkAbxe7L6nNy7Lo3E43CnhaZThQBDAgHYJdN7sSuJ7SmGCgR71ECNhp3g==
X-Received: by 2002:aa7:9482:: with SMTP id z2mr9193349pfk.98.1572560638740;
 Thu, 31 Oct 2019 15:23:58 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id f13sm3915110pgs.83.2019.10.31.15.23.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Oct 2019 15:23:57 -0700 (PDT)
Date: Thu, 31 Oct 2019 15:23:56 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH] cpufreq: Add user_min/max_freq
Message-ID: <20191031222356.GE27773@google.com>
References: <c222deda79ad334ff4edcbd49ddda248685c4ee1.1572395990.git.leonard.crestez@nxp.com>
 <3169109.BFaCN5124U@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3169109.BFaCN5124U@kreacher>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_152359_638509_774AFA5C 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 11:24:31AM +0100, Rafael J. Wysocki wrote:
> On Wednesday, October 30, 2019 1:41:49 AM CET Leonard Crestez wrote:
> > Current values in scaling_min_freq and scaling_max freq can change on
> > the fly due to event such as thermal monitoring.
> 
> Which is intentional.
> 
> > This behavior is confusing for userspace and because once an userspace
> > limit is written to scaling_min/max_freq it is not possible to read it back.
> 
> That can be argued both ways.
> 
> It is also useful to know the effective constraints and arguably the ability
> to read back the values that you have written is mostly needed for debugging
> the code.

Agreed that reading the values back is probably mostly useful for debugging.

Reading the effective constraints is a debugging use case as well, userspace
can't make any decisions based on values which might be in constant flux.

IMO the current interface is completely counterintuitive, I really hope we
wouldn't implement it the same way if given a chance to do it again. If there
is use for reading the effective constraints it should be exposed as a separate
read-only attribute. Keep it simple (when possible).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
