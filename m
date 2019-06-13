Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9627543253
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 05:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/Vv+5aZjWfn9BCnWz55ycuDlyiMCLKvlfeLZ+Xw/DI=; b=Brb6sxG/Ht/G/7
	JTQbhYGwTjpuGbJPNjbbC4iJ3zl64qmU5+gmj8YzYc2f5dp3loiRyfjE/PhVE48fBhlYOp/sfwE6e
	fvcQE6pesJaGj2OFkb42VGHc+6dl2JmKYeBYVI2dt5uGgg8Aw3aUbfPFUwCIcayiRU3Gb399fruvo
	itiH2rxihWMtq4jQFOd+TBat9d1pvtKZAoSwBAr7cx9C94iwxv/hgjxvYMmq+NcotU4wHTarh2F1y
	fSikyD1IVscbUBQNljxMAyeaxwVmRF9G/5JH08sCyDUbKBPkXD8PzxgtuX9btdUsr9kLGU8LAz6ci
	125F/r4+JbD7FsvpiuGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbGQo-0005bt-Ko; Thu, 13 Jun 2019 03:29:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbGQ9-0005b5-KO
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 03:29:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id j2so10879427pfe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 20:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Y0RXF4gWpg6oRev0V7qX7zvfsm8kw/NN62sxjqPfMWk=;
 b=WDkShjUqr7OdKx3xze67gTatNDPEQdHEKzUEZhf5VJRnMGTGr+0TodpBpsYi22fHXQ
 yGX/7D1trCLjI/pOgYmz5EPF09mx/zBREXyL1gtGJdqmJK3XHEOQuIStQCknN/QZqo/j
 Sk7x0EBYLCtp3BsdU6cuy+FGNu+spl6f+yLvhYv6T8SDHZ7agwTJeQ9W6jw/sWCbL+uQ
 9BwjOFSDhTsTZ7Gpc7BHSibDsj5XrvD/jVwsjQQMU9fX5bUHY0tK9IebaADaeMUnOjBS
 KVTizgjHB/l863d+4fw5SjiN6weba69/fRrdFPSu41y/vnn0i9+TZj3uetd+6VAADhGe
 DP4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y0RXF4gWpg6oRev0V7qX7zvfsm8kw/NN62sxjqPfMWk=;
 b=SHJ6M18TrSPrDWoitlV+oM0ja83EMmL+maqQamGy3hA8Mtpa1Yhv1ERP1tHRsQDtOm
 5TNg9ejjcFXUnCGZeQDDQrGZmkZzun7bq4/lq4S0oZ4ndZ8VuKM6GyP0431IigTH+Rg+
 3xkuFkB6HvVwnXBHQi1/+Rg67sfesULKcdqnClM2fNhg7Qiri3n2XTJn7HpQdFDrR8DZ
 1qJ0F5aYjVXgjaKEauscSdMJbN4FichKdgHxgJi/gsIhAfL8zGkFt5X01knjJCPK+Sz1
 qJKiAIMYOgGVR66NtKkDJFVh4peGxZd7Asqf/vvGRQrkiqW0zU6ZIJcv+38avll6kv26
 gbPA==
X-Gm-Message-State: APjAAAXk81+RPeNgu+XonfulH23snJBkPwY9vnKgicyGBEOg9nYiKh0o
 sOoikHL0/zg82kiT+ymYsoU64g==
X-Google-Smtp-Source: APXvYqzeOaLF3t0SmMiR779Mvfmp+z/EooCVSQRsNsjXE6iUYXAx0qAfy9hRnNnJItYipyXKylLwlw==
X-Received: by 2002:a17:90a:aa88:: with SMTP id
 l8mr2523399pjq.65.1560396538076; 
 Wed, 12 Jun 2019 20:28:58 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id f88sm818781pjg.5.2019.06.12.20.28.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 20:28:56 -0700 (PDT)
Date: Thu, 13 Jun 2019 08:58:54 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v4 4/7] cpufreq: add driver for Raspberry Pi
Message-ID: <20190613032854.wz76t3mq5t2zqcup@vireshk-i7>
References: <20190612182500.4097-1-nsaenzjulienne@suse.de>
 <20190612182500.4097-5-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612182500.4097-5-nsaenzjulienne@suse.de>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_202901_698578_A557E2A8 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com,
 linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 mturquette@baylibre.com, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12-06-19, 20:24, Nicolas Saenz Julienne wrote:
> Raspberry Pi's firmware offers and interface though which update it's
> performance requirements. It allows us to request for specific runtime
> frequencies, which the firmware might or might not respect, depending on
> the firmware configuration and thermals.
> 
> As the maximum and minimum frequencies are configurable in the firmware
> there is no way to know in advance their values. So the Raspberry Pi
> cpufreq driver queries them, builds an opp frequency table to then
> launch cpufreq-dt.
> 
> Also, as the firmware interface might be configured as a module, making
> the cpu clock unavailable during init, this implements a full fledged
> driver, as opposed to most drivers registering cpufreq-dt, which only
> make use of an init routine.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Acked-by: Eric Anholt <eric@anholt.net>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
