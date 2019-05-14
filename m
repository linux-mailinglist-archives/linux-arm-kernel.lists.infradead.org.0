Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11821C3AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 09:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oluxc6e5n+oFZPGEVZhNnoLOtfPjQiNza01OHtXnMaE=; b=cziqSkqqOTWeXM
	1LWI9Bu9b09mBOGDNGH0xSWihXE52o08ZGKlfDfPYT+p3A/esnaQWd+G18ElWjpwEEUUkYcZr/9ab
	pR2YGtPRQuX3PEJw1lsZbjbDiWumKiqIAa1Y7k07YvGaleEMZ1VfSh658ajl7uYQw3xnV6u4BkgE1
	UiUecJlRYkamXlfQUrMJfUzEr1+VKIuQseZnum+aBRGTWk2nyjhH4y4KGEPqHe0gDXSLIBP7aCnKm
	6fFBPj+VuDG41PzsWfC2PrDtIlZ6asOGitXXUqVb8vpPjizhPNxziyaHrmGluTnlKTwVttDkKqZo7
	mCa51XaWVb0bY9buwgTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQRd2-0008G0-E0; Tue, 14 May 2019 07:13:36 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQRcw-0008FW-9t
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 07:13:31 +0000
Received: by mail-pf1-x443.google.com with SMTP id z26so8624405pfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 00:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iQPLHP05DqTegTE4TUsSF3/FbmYhNyo/2jB+YqeEkrI=;
 b=a4hZDKAvf2U8Toua66nWLCC4rtqeiHw+52aauyS6hdU9pTo2sSelpzKs56LSDfezND
 X6Ev/N4UprzvoP9j+EhrsDOY/OvUj6nrV6mP+hU7L6d25vL7CQJvzjVsp8j128EGi73s
 9rRJuh5eBSkh6+DwcDEbbna13+qK9sXI3hIUj3J4i0ni7+zRnTpGo/nZgeBEIAbG5uFq
 7Y3qQvWMy284c2y/zasJqA+6IRjJnL6Wka8V94+U2JunJf9JHe55sXhBEUiGNVjGaV41
 eYjMM3rKCKPNAJACWSEgSArOToAjuFPBNhgaWUGjKb2qOYHm9PQKPNi1LXKJAnHnnMr+
 Negg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iQPLHP05DqTegTE4TUsSF3/FbmYhNyo/2jB+YqeEkrI=;
 b=myJRg3pM2WYuUy7DyEr0Hdm1p6SGFe09IYt6x49UJ8wf/40pEK8nRSPX+u9RItPy5b
 BJBATU8G6KfErjpWG+ueeeHOYjxqOJ0CvHeaS3IuZ5tsvk1HLMHVQz7vYyp3geFUKdJq
 wUbwgbXxQWKBV8QRv6C5gUUexF9ur3Iz2txQDpGeGJUOETpK2V86iDzpdggTYqENdKHq
 EaIatoIguS5uA93qSGX99cZyuUtOLm60+0OOdmjzFyq3zK/y+c2WesnB8t2XSOqy/9u9
 u1qv/W27RRpz3CQf2WOs05UKF2FTqzjXhkWjXaAVdBR8hfI8jlMzP5VQRmZs2AgylS7d
 ZaYg==
X-Gm-Message-State: APjAAAXXY0wrKyMlG7kFkpsKxfnYLWN3mCTPCk7C5d+xCqP9AA8phrh9
 25il6Gg3vNHTu5OPPoBiXlkMpw==
X-Google-Smtp-Source: APXvYqxlwCtWVIeqSWNPyeiO1Zvjxtcd6+21+Dr/KyIW9UCRHmAKi1NUfC5srjjkBFwN/NXsOhfJ6A==
X-Received: by 2002:a63:c64c:: with SMTP id x12mr36252780pgg.379.1557818007151; 
 Tue, 14 May 2019 00:13:27 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id y14sm18254920pga.54.2019.05.14.00.13.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 00:13:26 -0700 (PDT)
Date: Tue, 14 May 2019 12:43:22 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v4 0/5] cpufreq: Add imx-cpufreq-dt driver for speed
 grading
Message-ID: <20190514071322.avosfk4fzz2hzzx6@vireshk-i7>
References: <cover.1557742902.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1557742902.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_001330_349189_86B78D87 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13-05-19, 11:01, Leonard Crestez wrote:
> Right now in upstream imx8m cpufreq support just lists a common subset
> of OPPs because the higher ones should only be attempted after checking
> speed grading in fuses.
> 
> Driver reads from nvmem and calls dev_pm_opp_set_supported_hw before
> registering cpufreq-dt.

Who will apply patches 3-5 ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
