Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E6DDE215
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 04:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16cboyS0rQQBY2JKg+0h69qPpKz5+XKS+cqDK/rOPzM=; b=czNIN+4/WgqudO
	U0ZCkWEPiv2PEWO4jj/p6h3oxXHjtesf9uuEWNvPhVblsk+hjEwm924aL6BTgpe/kIPv7DBCJNpGE
	nYp8SZjW6qqOZhGwtRnCb+c1qSnLRRe0PxLKKK0ZaepVqY+iRVwj4R42Af/mCNxYGCFQJ7Gl+Myae
	1ZeN/mCwX0jdW0w7uml7ZL1jpvz2GbiCdcxW48rA9cGqLkw+XLEhZj6SIj0FAOKGVWJKXcXCmPNh+
	7ape8pWZ/yW9IHtihDBT0315Z8aVM46WxVmzSMH90AJ2FBhjqUqElhhlkz1ZcwaixsRMuZXGgQmyy
	9Tm/uQQNMf9saRVBZByw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMNPV-0005eP-1g; Mon, 21 Oct 2019 02:27:05 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMNPK-0005e1-MM
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 02:26:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id 15so1438899pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 19:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PchkhkHkpHWC0kYmoj4khLkCE0HnDurJCIn5TTAejAE=;
 b=LynjyfctcGM82RPOYFgGlFv88Sy3AMQg7CFkCAguUJ1u6cRIXDI39p36h3Zk4ROoub
 PAR5KXyqX9Sga7DJm2HnNe252W1N3cdzeBRs+KnehKNxkco8+RVgnks2kr8IcxUf+0yj
 mDU4HpTZut+dqVBwxr4IQkr+bjo5IKzZPgvydCXme2aDho0jBUpWFg2JSGQlYU4zVkGE
 u2QrcJVwJyEq6wzOA7P2FWU19m4/BXdZEqA4dW88CvjoYCRgY+ppP7l903mFOoOqVYdK
 9TQEmaJswaqB0XK7E32BqzZr7GLr/8zzy9STDDELUvn2KqhAeALjmvY+2CwHH9GcvVKa
 GL9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PchkhkHkpHWC0kYmoj4khLkCE0HnDurJCIn5TTAejAE=;
 b=sNglODUwzJAvK5h70gXGtFORyb+++FkZ0I0iwaIMcfkXxGu2ET+q38OWLjilkbs87A
 /QYxRp1mJyWILXqbQ1N2+MFhnNsgjF6iAVs5v+yIBkGeIEM+/ecVMTA3dmrXWb8cKdKX
 Ith0FjZpMfFs5XToC+sPcm15GAoqcSF6X1xYzM/QF5PIUBnwXv0rz+UikK1pNnNAQGQO
 1WnM+/LawXWuLnq5tiVYyLmsoW36O1pwAV3873xXNQiX6BQF3PQun1j0bX3Tdg+piTDX
 zKwyy4QgypZLGPSOfIN8Jzdw1hlDPYZr3DulEEb6DDMHy1HfUMnwwUF+SJQ0IdKFIJzB
 ApUA==
X-Gm-Message-State: APjAAAVL1Rf8+wjrb1i+FcBzcoPXJqzXMC8OjVwBDW/kmGc48GxLQlKb
 NpVu1qTtnNoLljIsFbAbW6kq+g==
X-Google-Smtp-Source: APXvYqw0axn98Wbwcx34cJEfU2QUrsT2CWYt5o94Oi2ai9+QBXc30btlQrDjfUux1NoyVk8QLTB1cw==
X-Received: by 2002:a63:2889:: with SMTP id
 o131mr23130858pgo.444.1571624814098; 
 Sun, 20 Oct 2019 19:26:54 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id o42sm12916748pjo.32.2019.10.20.19.26.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 19:26:53 -0700 (PDT)
Date: Mon, 21 Oct 2019 07:56:50 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 35/46] cpufreq: pxa3: move clk register access to clk
 driver
Message-ID: <20191021022650.jgzfmzr6xyjkfalj@vireshk-i7>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-35-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018154201.1276638-35-arnd@arndb.de>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_192654_731574_1E31C4AA 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-clk@vger.kernel.org,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18-10-19, 17:41, Arnd Bergmann wrote:
> The driver needs some low-level register access for setting
> the core and bus frequencies. These registers are owned
> by the clk driver, so move the low-level access into that
> driver with a slightly higher-level interface and avoid
> any machine header file dependencies.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Cc: linux-clk@vger.kernel.org
> Cc: linux-pm@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/cpufreq/pxa2xx-cpufreq.c         |  3 --
>  drivers/cpufreq/pxa3xx-cpufreq.c         | 64 +++++++++++++-----------

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
