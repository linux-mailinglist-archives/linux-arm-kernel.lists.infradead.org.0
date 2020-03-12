Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88843182D3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tG3HP3fENNfF5hWSZzdByQl0VI1ccbzZtJiARP2lmY=; b=p/UO92eG6lzrW0
	u8kH5ecIxks70BkaOoUUjlrJc1t/KionHHYVc73aoKpuVoeVmmTj2Opm65PymTxsEFAtL/kCk0kn1
	EhGFuHikoO24Fc4wISHE/cMjin/CTVg+OhTgOE2/zwUL637/HqInrBaFZCwgovw4xtlzM4Kqrw254
	l23BiT9KAMabYvppgfUzbKyZzvqx1JQ1XBNrunNo81OY/kEtMevNt36E2h0azZJ4/uKDIkkeIMS6n
	IGSY2fY/WRhAJdtig9ilsy6jJ6A4LEz1cwvF8Oy+GAq/pRkqreCJOeVU4L9MH6apCZ1/8irFAqQxD
	Yuh5CIclSMs0VyUzLXag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCKsd-0003Gh-3v; Thu, 12 Mar 2020 10:15:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCKsU-0003GB-Bk
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:15:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so3020727pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 03:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NrWeVKFKm3KJNrhGkRSBOYO/xSPIyOJst+AQW6M9RlY=;
 b=INV4LL9JXfbpzVD8X22Gzz4sGDVyD0phYXZQyeiJmO9hr7b6vrOq4zFT5582gefjGs
 b5tydoyHozZ0f3bpca+Kd/p2S9/V6Y6aiTWPnr0ZDOPGH6Ezrlph57M+fAJXh3XLihFN
 CGwlKXzSHIlrwTz/0VZPEMV9a1IX4SOV+4fnViqwf9TDKAai7+ANbFEv1kDJZ4OzC/B7
 3D7JvUo009N7SdgRmuTRgvewAOOllNZ/H7xymAeE9sbdzcUs+IW8JLmvr5H/Sof7zHgy
 c37veR7aR/9LU0Mksf/C564ikV2HJlrWyJZa5YeeY12sAamI3BoW3s4XnPsxEK6MvN2B
 uFmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NrWeVKFKm3KJNrhGkRSBOYO/xSPIyOJst+AQW6M9RlY=;
 b=mpxsBXIhDLqQz6aGj4oO7mPX5Ssm2u/t+dH5SY6+yrvy9Lmf6B9KhcJdqu20+XCqZo
 44w9kdxi2JXk/i4/66aVpFoByIS9RwGDv5XASJANxdajIcIXFFnS7ki5F5htTkcNazq0
 mdlw9QnH67ywiLva7X9fHOf/o0XqnJtWVQe8Fmy+iK7OezCqex5AeVbkfYGhEYcmCKhC
 hvlLjA0D6puM5MxEdfepQ6jjpVGMTdKEIBMOnaFN7WNfsa+89fDZc4WWkZgt3T2W6TTM
 Sgydn5ECxBIiiFZXcd1hZseUhD7gb5bhLb7LESeEEWMwqnSmFEy9ynEvKsZZHL8/EPc3
 tCoA==
X-Gm-Message-State: ANhLgQ0U79F7olIVKllP4DidJ8194XnszBNDfpdkJBwTHstV5KLWLbF2
 E9I7kksc86xZaM4LUaQKL5ReRg==
X-Google-Smtp-Source: ADFU+vuI3QrWm3vKU3oXZdjQWeApNK1gMeLeM9Hp1wmXvFbbfWlWeXr+uPrSgioZqMfq5JoeGYvaNA==
X-Received: by 2002:a63:da45:: with SMTP id l5mr6719291pgj.273.1584008145505; 
 Thu, 12 Mar 2020 03:15:45 -0700 (PDT)
Received: from localhost ([122.171.122.128])
 by smtp.gmail.com with ESMTPSA id p21sm53946207pfn.103.2020.03.12.03.15.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2020 03:15:44 -0700 (PDT)
Date: Thu, 12 Mar 2020 15:45:43 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH v2 10/14] cpufreq: dt: Allow platform specific
 intermediate callbacks
Message-ID: <20200312101543.ktvmfedt2o4ovsms@vireshk-i7>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-11-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582099197-20327-11-git-send-email-peng.fan@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_031546_688263_FCCAAB13 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: abel.vesa@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 festevam@gmail.com, s.hauer@pengutronix.de, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-02-20, 15:59, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Platforms may need to implement platform specific get_intermediate and
> target_intermediate hooks.
> 
> Update cpufreq-dt driver's platform data to contain those for such
> platforms.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/cpufreq/cpufreq-dt.c | 4 ++++
>  drivers/cpufreq/cpufreq-dt.h | 4 ++++
>  2 files changed, 8 insertions(+)

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
