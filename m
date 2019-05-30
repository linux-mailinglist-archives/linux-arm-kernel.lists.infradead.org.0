Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C192FAA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 13:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ub32JAur821AzZH5lnzmDil8zDoLf5XzPn3EsEAQkRM=; b=AGA4c0RNQoohuZ
	RhJ0ZhbSYZ/96HZMflCzgdD35UG+vxmOjAmCXIG0pkkNq6K61/jLRZSsqjHq+sFvK6mMTnZrrJh3h
	aUH0qFeTWvf6CAsRlpShv3SiqlHPcMw0RpCGiOTgwZLKk/g0krzrP6C4oo6Jmd2luvDlNMP7bqpTO
	6riDH0N6H0scN50vnjAMbB3SFtLoCE595jty9DETqnHs6y4MidlJCl9sbv89lbtIaYKYkeUxiKHmm
	Q26rnfnikHozmgc9byyZAeeBqP2wew2Q5MgY6/B4pkTNNmR9QJSMxJIpcYn3NfXJ0kHzs3ptddh7T
	y8H0fo+I/gwG/OsrtFdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWIqv-0005Cb-KD; Thu, 30 May 2019 11:04:09 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWIqo-0005CC-Mu
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 11:04:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id z3so1808665pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 04:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S/cb0m9xHhDHoKqKMiFimQZjtq/GGyzkBYH+5P+CN/0=;
 b=zs+87dXY2uJHWUUk2UltFW9vWu7zXdUEpIxMKXcJPx8VZByqt6q5b8MmoQqAiPBIs0
 rbhatuc4l5So1hpFoZOObOs+vi3UzRzxLYi8EZ98U+3THxPaAGcpEGyfNVZSJL4LPKHJ
 KusupP2XA6wpIcYHn2evj4cWgrFh2GDjPpQNPwNn2cjECO2MkLAMRWej5ICmCRiowIGh
 VrSlwUfeUy0Fi4/oBaS5iHv9Mt5jgI1duviHzObo/RhV8t/0U1OWEno2LskN1A3wWthg
 ZfL8/Ic/lST3aXrc4TJ0MEPLD/L6TtCmHJHEydra4VrBEeC9CpaPSkQfsxvUXv81Crme
 Dwbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S/cb0m9xHhDHoKqKMiFimQZjtq/GGyzkBYH+5P+CN/0=;
 b=QWRRVW4yaiH4vwRPgPBoKk2yNEuHUDrYY4gY4Xim5is9y88te6XJOOf349zqmQe+s/
 C0++jDhPeo5zqQxQPfn4RWc4rEODFPLgF8WnKydNe1sswKmCpfKq1Vhv9eIbGJTFFFTd
 cGg5ATJKTwUzNirS5Hn1H5kXqowvooIXVEIz8sMJ1mYIpYAI3BMFxoERnMW/QURl+NG4
 Oo/Q23h+vq4/bwlUfFV8KAHNuKFanCOUcFp+JTLP0D40BM4umywzbR3TL/oyNRIdHppO
 GhbJSgOhYaofYbHO4GPY5ZDBe35TVQ84e4AteaNbxXmTJD3W6SnIBvAWKlNazV2PI0yj
 w9zw==
X-Gm-Message-State: APjAAAXfFpa1PwyDnRY442k0LgP09roJWGmVBE5FE8/XI9RwOBilVhku
 MwvaS4q+NsOnL6MyVby8uKAb4w==
X-Google-Smtp-Source: APXvYqz+vXGWZcBEZJYVx+rFv5sqTUAoCg0qb5bq3U1UYR5WpxnO0dE7UdJWmxFtnX3tHhlwh568aA==
X-Received: by 2002:a62:e10f:: with SMTP id q15mr3069680pfh.56.1559214241664; 
 Thu, 30 May 2019 04:04:01 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id r44sm2250083pjb.13.2019.05.30.04.03.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 04:03:58 -0700 (PDT)
Date: Thu, 30 May 2019 16:33:56 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Quentin Perret <quentin.perret@arm.com>
Subject: Re: [PATCH v5 2/3] thermal: cpu_cooling: Make the power-related code
 depend on IPA
Message-ID: <20190530110356.vet2exwowdbm4umq@vireshk-i7>
References: <20190530092038.12020-1-quentin.perret@arm.com>
 <20190530092038.12020-3-quentin.perret@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530092038.12020-3-quentin.perret@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_040402_753467_410C99A3 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pm@vger.kernel.org, rjw@rjwysocki.net, amit.kachhap@gmail.com,
 daniel.lezcano@linaro.org, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 edubezval@gmail.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30-05-19, 10:20, Quentin Perret wrote:
> The core CPU cooling infrastructure has power-related functions
> that have only one client: IPA. Since there can be no user of those
> functions if IPA is not compiled in, make sure to guard them with
> checks on CONFIG_THERMAL_GOV_POWER_ALLOCATOR to not waste space
> unnecessarily.
> 
> Suggested-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Signed-off-by: Quentin Perret <quentin.perret@arm.com>
> ---
>  drivers/thermal/cpu_cooling.c | 214 +++++++++++++++++-----------------
>  1 file changed, 104 insertions(+), 110 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
