Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB33CDEAC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xi/24YC47h/wrLzt+NTEBFLVawpdu/t9/kPFwrbWeA4=; b=fr9345uyPU5Df6
	JJ8lyJg+xcKnjME5LzUfUHOc7M4Lr6PER4BWgJ6l4769QET+BdbZ4Lm+jtUDP5yMio6Is75SqgjTQ
	n3BIXPXKs2pfBEbxshEN3PtSk9fULmdFGsWc0lTWyuZXonTRvljGaUfnl77Jnn9YzqKFI5S9ZZ849
	zvWiBCA0F8KdbcNMh5nSTbWE9a2Tul7VKNsBK44YoWYp8JJrcYhy33CZp/+wjpQpQIzdyMS7NqBlB
	hlx9RZF10kX31TVgNRP/mD3guzBtAMxsidxB0QLx8dlMnxw9coMjhq1OI4YW3OexL1LVqiL+79BQT
	PbyQiV2k73lxvVv6D0cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVnH-0005wL-87; Mon, 21 Oct 2019 11:24:11 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVn5-0005vw-0D
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:24:00 +0000
Received: by mail-ed1-f66.google.com with SMTP id s20so3707463edq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:23:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BVlXhkUOcHB+M6im4W80bsAnmThctBDhzXi/Z0FpqPM=;
 b=D9p9EVuJZKjor7m27nKq8lsh1skBtDexXHiEopZ3ry2EUOHorCqM/HBqdhp4PoGQly
 LfWUka6lQlqpvrixxY+mpUKz+JlAW1le1csovRKYEEetectG3SwMMJyfwyzaov7eBvPt
 iupDbIL47cbAB1wH6OUKkex3OMLoz2D1s7hWB4LcFmU7AQdSW+Eq41aw5a9TkCyQ8Ej1
 lD/a/8cjtHOGDvAJu272VoT2+KTC1HM9+hhVF+vmsJC1n0aNed6QU79BLVKSM0o8EvWj
 or4xhT1XupuMTfZ6pRYXJ+s/kGhMVZImLnFIpfmlHwHfK8/ljwn2Y+HCj2p46PsnArJ0
 PSSw==
X-Gm-Message-State: APjAAAWGxmwpW8EMjvT9C+r+T5bFrjZ0JOicBbibY6eqpGXABUtNQS9k
 +a/cTj4dKyZAAyWktE57tRk=
X-Google-Smtp-Source: APXvYqwff/GiwAwp/7TONncf6a2J4jtHzGlSJbceQ9C74FUOcOXZ54eJ4FoTQ+a8fgD2rHnjfyIlmQ==
X-Received: by 2002:a17:906:5292:: with SMTP id
 c18mr21356043ejm.129.1571657037596; 
 Mon, 21 Oct 2019 04:23:57 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id w16sm579189edd.93.2019.10.21.04.23.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 04:23:56 -0700 (PDT)
Date: Mon, 21 Oct 2019 13:23:54 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v5 1/4] PM / OPP: Support adjusting OPP voltages at runtime
Message-ID: <20191021112354.GA2262@pi3>
References: <20191016145756.16004-1-s.nawrocki@samsung.com>
 <CGME20191016145810eucas1p1b31400c9b2e7f30cdf6deeb4ccee2788@eucas1p1.samsung.com>
 <20191016145756.16004-2-s.nawrocki@samsung.com>
 <20191017064258.yfbh7iz3pbzfhdvr@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017064258.yfbh7iz3pbzfhdvr@vireshk-i7>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_042359_045074_34C2682F 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, sboyd@kernel.org, vireshk@kernel.org,
 b.zolnierkie@samsung.com, roger.lu@mediatek.com, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Stephen Boyd <sboyd@codeaurora.org>, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 12:12:58PM +0530, Viresh Kumar wrote:
> On 16-10-19, 16:57, Sylwester Nawrocki wrote:
> > From: Stephen Boyd <sboyd@codeaurora.org>
> > 
> > On some SoCs the Adaptive Voltage Scaling (AVS) technique is
> > employed to optimize the operating voltage of a device. At a
> > given frequency, the hardware monitors dynamic factors and either
> > makes a suggestion for how much to adjust a voltage for the
> > current frequency, or it automatically adjusts the voltage
> > without software intervention. Add an API to the OPP library for
> > the former case, so that AVS type devices can update the voltages
> > for an OPP when the hardware determines the voltage should
> > change. The assumption is that drivers like CPUfreq or devfreq
> > will register for the OPP notifiers and adjust the voltage
> > according to suggestions that AVS makes.
> > 
> > This patch is derived from [1] submitted by Stephen.
> > [1] https://lore.kernel.org/patchwork/patch/599279/
> > 
> > Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>
> > Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> > [s.nawrocki@samsung.com: added handling of OPP min/max voltage]
> > Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> > ---
> >  drivers/opp/core.c     | 69 ++++++++++++++++++++++++++++++++++++++++++
> >  include/linux/pm_opp.h | 13 ++++++++
> >  2 files changed, 82 insertions(+)
> 
> Applied. Thanks.

Hi Viresh,

Can you provide a stable tag with this patch so I can take soc/samsung
driver?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
