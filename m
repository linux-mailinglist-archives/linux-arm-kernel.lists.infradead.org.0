Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055AFDFB94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 04:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9o5eFu0T0Q6LE1NcUXu5Xu3y3KVuVMwd+JOJVzZKYk=; b=Jz4YsrSxIBMa2F
	EsrtlW1J93AGJ/1/xQuuf7Ia42AIPIeMp6kWyIh2zfT/f0tLuBICZLqzdD/fluA9LSgDjkUmK6vpj
	8eI7kC/ktG8KlUEdmbdapFFs3y3LUeA2wyy6AceESHHavE01w4viqGlgyKLBiPLE+1uyL6zbbvh/w
	6fc4DXwGqsKjwYf0LhJcy5jPx6s8EjiiZ48ikc6+zC+jNh93yTgair3KuWQ+rEOHE4gCCATj2Vuab
	IaF2+WVQ94VSu1qqnMzL3oddxMpH5BRviogtpP1iFi1Rig/QFzuo+SOYqNv79Sm9C8G+SXvY9aUNz
	FXFl+Tjy7qraMqFIJDbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMjq4-0006b5-Jb; Tue, 22 Oct 2019 02:24:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMjps-0006al-Ix
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 02:23:50 +0000
Received: by mail-pf1-x443.google.com with SMTP id x127so9643214pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 19:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AT7Vp+yACQ0gxVA6T92L6+q4sc2TtEu5B2tW7M476fE=;
 b=wAGpi/i7ToUnIHcgrBtOEeq9mKLemYp/7q8F4wQ/P1xghZ3Y/qiLVkjGKKUF2gZX2Q
 pJoV0/cyU1QmMb5z1/vwfhE/rUxstwDIpHLgS/6MU8e/4artDj0yGxvvhCoRZbyLjbqh
 uQ46+srG8EwwfpDLEILPDreo9TJu4K7WQmN+rDN5NoS1TRv10eQ/1WkenUw9cXcZLKVM
 ayb82Zy28qa7/4Gyptku1v1M9M71FlhQzs7Vx2tWtcKicL+gR6y5AMRX9rMHLKLTHRT3
 0Flf5YUfHgKm3tRu00ElqgxLV7OZW8AEPfCf/kFOXYdAZYRcHxTWNBK/nQKKYYyse3Jv
 KQKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AT7Vp+yACQ0gxVA6T92L6+q4sc2TtEu5B2tW7M476fE=;
 b=bbAT0QPn8DDHAaqIoz0XSijCO8l1u6kqeno+Phlk72KPnxtU7SaAkNLHgbY2lmC6TV
 OmgbE7wYDGimGjkFIfd7rZBOLx/W50ri54McTQhirQal3pV0I+F/NXEvsoGVIfsYfwr6
 R30sldp7tooB3o12xtrdL2zJ0OqQu4RmlWG4ez6hUw87x05xz6pS5Z1S91YqqXCZsH0y
 QAmTd5b4fZtXxGIWlTcLr84r9hONklzPXwRxN5yF1Mh2quEyt1kP4EX0XbYYyn8/s+xQ
 B09LOq7iUQv/tDgWcrifIR5eUqBxSHD4gErhh3+Bwy/znS2AEStfwLKRw87UeDLKmUKd
 +LiA==
X-Gm-Message-State: APjAAAUkwswQXYIitIS9yRl6QohVNcMRLX6lJr3gLYlH6iR0gTzGLa1w
 civqj9BlKxZvxZBCDxHSbeMEOA==
X-Google-Smtp-Source: APXvYqwD3LLESW9dtqRG9tRzGlNIUWLCdXMmmkM+V9LqAW0lYd0ou/d6RHGdRS4wqzKpk402x4m9pQ==
X-Received: by 2002:a65:67d0:: with SMTP id b16mr1165736pgs.64.1571711027447; 
 Mon, 21 Oct 2019 19:23:47 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id 62sm16643422pfg.164.2019.10.21.19.23.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 19:23:45 -0700 (PDT)
Date: Tue, 22 Oct 2019 07:53:41 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v5 1/4] PM / OPP: Support adjusting OPP voltages at runtime
Message-ID: <20191022022341.yd6ykeszsuprmop2@vireshk-i7>
References: <20191016145756.16004-1-s.nawrocki@samsung.com>
 <CGME20191016145810eucas1p1b31400c9b2e7f30cdf6deeb4ccee2788@eucas1p1.samsung.com>
 <20191016145756.16004-2-s.nawrocki@samsung.com>
 <20191017064258.yfbh7iz3pbzfhdvr@vireshk-i7>
 <20191021112354.GA2262@pi3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021112354.GA2262@pi3>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_192348_687544_8905D2DA 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

On 21-10-19, 13:23, Krzysztof Kozlowski wrote:
> On Thu, Oct 17, 2019 at 12:12:58PM +0530, Viresh Kumar wrote:
> > On 16-10-19, 16:57, Sylwester Nawrocki wrote:
> > > From: Stephen Boyd <sboyd@codeaurora.org>
> > > 
> > > On some SoCs the Adaptive Voltage Scaling (AVS) technique is
> > > employed to optimize the operating voltage of a device. At a
> > > given frequency, the hardware monitors dynamic factors and either
> > > makes a suggestion for how much to adjust a voltage for the
> > > current frequency, or it automatically adjusts the voltage
> > > without software intervention. Add an API to the OPP library for
> > > the former case, so that AVS type devices can update the voltages
> > > for an OPP when the hardware determines the voltage should
> > > change. The assumption is that drivers like CPUfreq or devfreq
> > > will register for the OPP notifiers and adjust the voltage
> > > according to suggestions that AVS makes.
> > > 
> > > This patch is derived from [1] submitted by Stephen.
> > > [1] https://lore.kernel.org/patchwork/patch/599279/
> > > 
> > > Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>
> > > Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> > > [s.nawrocki@samsung.com: added handling of OPP min/max voltage]
> > > Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> > > ---
> > >  drivers/opp/core.c     | 69 ++++++++++++++++++++++++++++++++++++++++++
> > >  include/linux/pm_opp.h | 13 ++++++++
> > >  2 files changed, 82 insertions(+)
> > 
> > Applied. Thanks.
> 
> Hi Viresh,
> 
> Can you provide a stable tag with this patch so I can take soc/samsung
> driver?

opp-5.4-support-adjust-voltages

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
