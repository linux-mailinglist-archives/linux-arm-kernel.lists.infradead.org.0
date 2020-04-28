Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864111BBBCE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjMho/uuzB8gCtsgZVhb8mLXWF3dosIBx/NbD8IqKs0=; b=q6D3r7zAp0Yjqr
	T8WP5izpWoEPVzlyBwBpVmPSefue0vJc1Axsv+y6rJ8AEIStXGmuw0ZCcoYv8zdynQT8d/P+/negC
	v7s9jDThYDtGwTdvqUSuOstsT6zq8M38BoPB3xwH7nD94FM+SgvITepQYjB7j661whWVN3QOO/tp+
	bY2xdpAlFrYFCwOBbfvFTBgZFZx8L458Vjr36boErgqmHuz0tuosf+vEDA8CT+17QVoUss9PVUUvT
	0xDnYR4U4CrD2O8p+PZDvOpVX9/NoLBOOLFg1l4kdpchaV6wnEVuvKNXSJR8S66arm6s7ZrQ2bTD+
	QlX9fxty5eu6WNaQ0+pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTNzm-0008AI-74; Tue, 28 Apr 2020 11:01:46 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTNzX-00088n-8H
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:01:32 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t40so976627pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 04:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZECYmOh8GHeDtWKEVN9mB2cMfDA4CqdHy3DVPieFtU8=;
 b=Fp6Rdy7X/Au1Bogcm9JL1jp6M4qSLsYbzFhSC9yOg6l+3kkiXKIi8rdJl0lMmjYsMm
 q2eAMBXUdoiBgNdIcVvDdJtwn51TJIBDUoRmMmMRO65okmPBGBQnqa4N2mW34RVNy+NS
 /ExDJhJme0OTu0O+ThAbuwtuOn9QVCqcocS2OAbos64IX7v99N7dXsjYPfR94kImkQdL
 2C4SKfj5IHeZRVtrj9RCGzxPkrzc+ekNRHs9yMP7N2wdx0Z331vPSyXPvI3E7ud8GKzg
 HCR2Mo3MrY6wCTSX+YaHkiccIMPd/cE90wlzZDas+3LNmUPVv3C3TMpQqP+CqlpbyaYl
 Oc3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZECYmOh8GHeDtWKEVN9mB2cMfDA4CqdHy3DVPieFtU8=;
 b=Ts6oI81jn8tRcTDHKTWYDOjYkomyts6c1TzGAyfI4mwu4sO27wui8FQa59tKBQGPHa
 JjmlVNyUhej+VSMjs8H001eA/CjK54G8IpB3vsMquyNKqS74TTAQ3HJd8iXCCbqulFiO
 TrYKL5J5Uh+ZDMcDqqNosEPnhGvSh6+IPBN2T2+NgX1c4glphSiLCCeflqA0+aXc47Yf
 +/hH+kngP5H6FdQ7Jxe33XM0bzT/Da97DMqoSjnQRFrCzxCmiqISObz0zK7kdu5flEzr
 y1YdsNJ+2ckoKR6fryjddJLUYo25x/uleR3jZidZxIC3/6ZZvYCFYgR9aTpsZgF2YVPz
 Ac5A==
X-Gm-Message-State: AGi0PuZWHHjR4+S4oh4P3AlmSu7nQ05EaXepj1bBGuWKIo4Kj0y+anmu
 AT+1Vo1ny9SY1RRhFFyAqfXuIXyiieI=
X-Google-Smtp-Source: APiQypKCUoSWq+WSJVcxTjVfaz6aX0BH3kxmg8S6JEc81aCuemoUOA0OgzndCgwVZlV3UAjOtj9NPQ==
X-Received: by 2002:a17:902:7793:: with SMTP id
 o19mr28241721pll.107.1588071688818; 
 Tue, 28 Apr 2020 04:01:28 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id b24sm14158840pfi.4.2020.04.28.04.01.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 04:01:28 -0700 (PDT)
Date: Tue, 28 Apr 2020 16:31:25 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: rjw@rjwysocki.net, Mian Yousaf Kaukab <ykaukab@suse.de>
Subject: Re: [PATCH v2 1/2] cpufreq: qoriq: convert to a platform driver
Message-ID: <20200428110125.lobyrsbma6astfmq@vireshk-i7>
References: <20200421083000.16740-1-ykaukab@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421083000.16740-1-ykaukab@suse.de>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_040131_322869_BB189D16 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: andy.tang@nxp.com, linux-pm@vger.kernel.org, sboyd@kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, shawnguo@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21-04-20, 10:29, Mian Yousaf Kaukab wrote:
> The driver has to be manually loaded if it is built as a module. It
> is neither exporting MODULE_DEVICE_TABLE nor MODULE_ALIAS. Moreover,
> no platform-device is created (and thus no uevent is sent) for the
> clockgen nodes it depends on.
> 
> Convert the module to a platform driver with its own alias. Moreover,
> drop whitelisted SOCs. Platform device will be created only for the
> compatible platforms.
> 
> Reviewed-by: Yuantian Tang <andy.tang@nxp.com>
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
> ---
> v2:
>  +Rafael, Stephen, linux-clk
>  Add Reviewed-by and Acked-by tags
> 
>  drivers/cpufreq/qoriq-cpufreq.c | 76 ++++++++++++++++-------------------------
>  1 file changed, 29 insertions(+), 47 deletions(-)

@Rafael,

Though this looks to be PPC stuff, but it is used on both ARM and PPC. Do you
want to pick them up or should I do that ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
