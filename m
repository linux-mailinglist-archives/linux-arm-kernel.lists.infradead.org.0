Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8FCE0BA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 20:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q32JqIBnOruWQTBwbbDcFWZh2QfEaWUkrX/a5hzxJ+8=; b=EyielUo+Fbtzix
	UPTiK2avUw9c9Z1HLn5F015mPEw1P8Z3Jw65c5QW1/28PDt//TYCdFQiEPIJo03CzIZHhlVrj3LAu
	0RorA3VOJHg2pKJ3CN+/KDED1ep+qgBxbY1v6UjMNj6GAYmH3mCbmJ3oju19E+lE+f+9MXDseyDIO
	TKSDoe23zPxRuwC5EAp59DbM81/NV7DFc2DKoo9snNNTzGIFv6wXLlR2vDxUl9RL2XBRfhvHFZhS5
	/ux8q94gFK49Nu72hI/nnNRM1dZU7BIdVx9GxXPvnpVsAOYmMZYFygdp3ODT8eY7fyG68S7J/vhT5
	Me4GOhBtgg0WCUWVZSyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMz8K-00018C-Sk; Tue, 22 Oct 2019 18:43:52 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMz87-00017O-R4
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 18:43:41 +0000
Received: by mail-ed1-f68.google.com with SMTP id c4so13721819edl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 11:43:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MaK9HZRo2yPA34xjdPj8WIVzo4X/HVsTE3eZR+WBcic=;
 b=YocLrKZwxHsh4XYQheEIEPoeR7tVcbpkgs4O/Tol9XyCYWnQDANB5Rqj3+6YPwjzFU
 PnotgQVLNWuWsDQxwARKjR1UEABcc5uKZVR9XKyz0+X7QLNwUgtGjKFUyILgYAiV2ZLJ
 LQVjVFY9FgSHSUVKrkD0ACX32tYzaRF/84+0BQmrWQfwi0856gXVf0gyQvrvQs+kyaVJ
 jO6tl9UV5HwP3V7O9dCB8jsa9wKK15ynN5S3duFPw7VKRsI0MLQ87P40PbedJcp6yGoz
 ydBt74cwTLNgdO9fFVGtT+AnMjFIQ+O6rB+Ct+o2XOKZP1ni4tpDEfZTeS0NDA5hfY+B
 2Eyg==
X-Gm-Message-State: APjAAAWPbt5bxyMo+ovoBFB7iv84JOsXSJWvjnHPodUncOpUxPCcxQgS
 F30irugUxYy5qJfE4+UDVic=
X-Google-Smtp-Source: APXvYqwaza4IQ48vd2aWTDDcq9RRblSoEI8imxQjQ2w9B33BxUNL8U7MIIpmrU+/Ly8hAxGL9ziPmQ==
X-Received: by 2002:a17:906:69cc:: with SMTP id
 g12mr28731760ejs.235.1571769817645; 
 Tue, 22 Oct 2019 11:43:37 -0700 (PDT)
Received: from kozik-lap ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id w19sm123844ejo.3.2019.10.22.11.43.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 22 Oct 2019 11:43:36 -0700 (PDT)
Date: Tue, 22 Oct 2019 20:43:34 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v5 1/4] PM / OPP: Support adjusting OPP voltages at runtime
Message-ID: <20191022184334.GA8305@kozik-lap>
References: <20191016145756.16004-1-s.nawrocki@samsung.com>
 <CGME20191016145810eucas1p1b31400c9b2e7f30cdf6deeb4ccee2788@eucas1p1.samsung.com>
 <20191016145756.16004-2-s.nawrocki@samsung.com>
 <20191017064258.yfbh7iz3pbzfhdvr@vireshk-i7>
 <20191021112354.GA2262@pi3>
 <20191022022341.yd6ykeszsuprmop2@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022022341.yd6ykeszsuprmop2@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_114339_878831_7EAE95D5 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Tue, Oct 22, 2019 at 07:53:41AM +0530, Viresh Kumar wrote:
> On 21-10-19, 13:23, Krzysztof Kozlowski wrote:
> > On Thu, Oct 17, 2019 at 12:12:58PM +0530, Viresh Kumar wrote:
> > > On 16-10-19, 16:57, Sylwester Nawrocki wrote:
> > > > From: Stephen Boyd <sboyd@codeaurora.org>
> > > > 
> > > > On some SoCs the Adaptive Voltage Scaling (AVS) technique is
> > > > employed to optimize the operating voltage of a device. At a
> > > > given frequency, the hardware monitors dynamic factors and either
> > > > makes a suggestion for how much to adjust a voltage for the
> > > > current frequency, or it automatically adjusts the voltage
> > > > without software intervention. Add an API to the OPP library for
> > > > the former case, so that AVS type devices can update the voltages
> > > > for an OPP when the hardware determines the voltage should
> > > > change. The assumption is that drivers like CPUfreq or devfreq
> > > > will register for the OPP notifiers and adjust the voltage
> > > > according to suggestions that AVS makes.
> > > > 
> > > > This patch is derived from [1] submitted by Stephen.
> > > > [1] https://lore.kernel.org/patchwork/patch/599279/
> > > > 
> > > > Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>
> > > > Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> > > > [s.nawrocki@samsung.com: added handling of OPP min/max voltage]
> > > > Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> > > > ---
> > > >  drivers/opp/core.c     | 69 ++++++++++++++++++++++++++++++++++++++++++
> > > >  include/linux/pm_opp.h | 13 ++++++++
> > > >  2 files changed, 82 insertions(+)
> > > 
> > > Applied. Thanks.
> > 
> > Hi Viresh,
> > 
> > Can you provide a stable tag with this patch so I can take soc/samsung
> > driver?
> 
> opp-5.4-support-adjust-voltages

Thanks, merged.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
