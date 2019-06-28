Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CBD593F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 08:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waXcQx70omLq2/OZVM0+1kOJNa7wLKBbBWCDiF6/uqY=; b=SZCDwV/06M/9Zr
	kGM3vmeh/nJOLJhI3wmU9WIdca/c5uVoXJkrVa9zwITpKOacSMSNJcThgm5dXoQHbWafNBO8TwFkA
	fjv+bpdS3sABQPa9a4A9pCKuDDfxeOQY3nnxc/Gy+SSGEs5ErvsbCTt20G4luP1rkdFq4FhbOC4h5
	UDzydfnDmsMtmd+KXR3AJgJX8BQuKM8xIwv0vNBKSK/R7M39FgDl8X4906eLQ5cJWW4JcSjwVS9gK
	z5fO7oRQglzYrDYi8cviw8iCIyxyuUS+xGiUaJy54vdsEmswWfNqIWSUdxtP02pt5rH0/VRXQPrJe
	kYdW+Bhj+Og1L5OD7xTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjxP-0000HZ-BN; Fri, 28 Jun 2019 06:01:59 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjx9-0000GL-84
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 06:01:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id cl9so2607044plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 23:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yPRaQJzmFQwYi8hosJXjNAPxaw+qeTsDk1d+L2uAT1Q=;
 b=vvNL9fbJcjLCGE94UWKp38ok8N+6iZufXNYCef+hRYEt93VhjGYVeKaRdM9GFD0kq5
 /fTAzVWftSGRxWLvIiQf0tEwg7U4Mg2PAXVQyVIBmnSB2eO0Mvl3jq1wg7cvLF844thv
 cwA/XYaRACYItx2RywEjMnWdNCJV8fMJSSIgsjnTiZWsICUaHkFztJsRNVxtTvyJn5fq
 EkQxIQ7yqinxpgFe9RfhZkChUKYaAQyXeCMDcPD0hZ0uSWkb2unPMoaeDDbKx33qhn4m
 3sitMlJ2o/JTlsEHUBVmNpqoNA6tt79R8WgiXArCix4nvxu+S9XZVtdQ6gxEJWAenFg8
 zpkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yPRaQJzmFQwYi8hosJXjNAPxaw+qeTsDk1d+L2uAT1Q=;
 b=ApSJNwbACQERoL1vHZJv4JlgUkU0RLfo54TB4yO3pjwm/EhU2FbYXC039lsOCDp9yt
 3jc5R9WZTrQ6s9ITjWAjbfEv147+103knXI9zODR9wqQWzNP8P/wI15kmEdhRWJpoIcH
 P05y3W0UckLLxvYM8gKzcspyFte+9vYMjiZSWB1G6mYcELFUNwhEJRcB0fwvB5lmhsfD
 IfD5w+ozHzCdLIdWhYlpHcTgNOo0nexQfEKWwmozYEUWuAVB5Y9pHAGh+w2fP5C5SiCY
 k5Aokpj04qf68dkUQXz0VnEWAgIXWIIfXMu3K6CCJpaHUrta1mGRo3+pOvMddL4YbnxV
 daBQ==
X-Gm-Message-State: APjAAAWs1Gd+qj4SN6EltX2bLHCua3ZBQQTFR7fpdYNBRfKq5ujcITMN
 qIQbbK5ILmOtE8RXZlhi0Wzm/g==
X-Google-Smtp-Source: APXvYqzbAhcap8BbHfMDCoOkrOvthmGqMacGqdcSZfyzVyXrEL6joFCpneO3Qz+XBoTszEuWTC1xEA==
X-Received: by 2002:a17:902:8490:: with SMTP id
 c16mr9620055plo.1.1561701702042; 
 Thu, 27 Jun 2019 23:01:42 -0700 (PDT)
Received: from localhost ([122.172.211.128])
 by smtp.gmail.com with ESMTPSA id c9sm975912pfn.3.2019.06.27.23.01.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 23:01:41 -0700 (PDT)
Date: Fri, 28 Jun 2019 11:31:39 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH V4 3/3] thermal/drivers/cpu_cooling:
 cpufreq_cooling_register returns an int
Message-ID: <20190628060139.czridjqrblu2ufjj@vireshk-i7>
References: <20190627210209.32600-1-daniel.lezcano@linaro.org>
 <20190627210209.32600-3-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627210209.32600-3-daniel.lezcano@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_230143_298990_8BDA5C58 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 "open list:THERMAL/CPU_COOLING" <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Keerthy <j-keerthy@ti.com>,
 Zhang Rui <rui.zhang@intel.com>, Javi Merino <javi.merino@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27-06-19, 23:02, Daniel Lezcano wrote:
> It looks like after the changes in the patch the only reason for
> returning (struct thermal_cooling_device *) from
> cpufreq_cooling_register() is error checking, but it would be much
> more straightforward to return int for this purpose.
> 
> Moreover, that would prevent the callers of it from doing incorrect
> things with the returned pointers (like using it to unregister the
> cooling device).
> 
> Replace the returned value an integer instead of a pointer to a
> thermal cooling device structure.
> 
> Suggested-by: Rafael J. Wysocki <rafael@kernel.org>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  drivers/thermal/cpu_cooling.c                 | 63 +++++++++----------
>  drivers/thermal/imx_thermal.c                 |  6 +-
>  .../ti-soc-thermal/ti-thermal-common.c        |  7 +--
>  include/linux/cpu_cooling.h                   | 16 ++---
>  4 files changed, 40 insertions(+), 52 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
