Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83602BBBD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Z6cImloY9qKMabq6iga6EUE7X7278EJQmoAk+cxwGU=; b=JMwtXzosZKLCYi
	E/seMpaeljBX9WIA1EUoXBOJ7Y0BUcL1NA8e3dIqxloTK4gp5Kl4ut3BOR3bLR1EqW2Nz3/YzEEYI
	e5VDE3zetXKGr0r2w7LLwa46PtSpjC/jzoESrGzDBittBNmSkaJ5LcljqMSDLLslS4pKiWm++SIL4
	yfLy1ulxf1ckPKJ5fYlv7hK4BhxUhf6aHMPsBi3I6qb7Nu5e1fQ5o8JJnyvJeAAkLpR2Mktv0LS2m
	TG6LqR+9ay4fu2e97TIYZwjjLPah0bMqL/BQdE3KgaokrDhdnjM21Rlqk6WEfzP4LtyekGYd0bVnj
	GfGudl+px5HMz4eABFtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCTQN-0002VY-7M; Mon, 23 Sep 2019 18:51:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCTQB-0002Uv-4s
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:50:52 +0000
Received: by mail-pg1-x542.google.com with SMTP id s1so7369941pgv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 11:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OFEreeiuCWUIubUDu2nto0CXXCx0l8DJdtGf7sQk5hI=;
 b=PC+bmEyewuG+cCx1WrX3c9poig072MLtq/y1UcRcWcBXMSKhoY0i5IiADx21Q9ZQiI
 ucpQftg/fj56BCAHbQjurIeU5lwudfMoc8oN+4M4HGsrMOUnW/vcJcu+rOTvaI6E/Xce
 YLmVdHUNPoxYwHaMxhb/IQGLNj2dQkNbhBkjg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OFEreeiuCWUIubUDu2nto0CXXCx0l8DJdtGf7sQk5hI=;
 b=HFKA9mKv69wl4jKEc9drIK4RLtNQX8oL0JboEeT0OsayRbYmx9kzMHhDl3FzBufJwe
 xorLdu9U8vC5Kg1Zvg+PUnGgbg8O05tIHkz01DdTTt0ADmcwQIcc4jRHxE6BdhTIkTX6
 6kP/210lXumpJ8bOcsy/PR1H7Zi/hVPqhmj8oNCQvgNs+gESdXpFkZ/z40Nw9Quwmn/x
 BANoMPRtlmjQc0zUMs9C7AVCfxK7QrWtw6An57Kb8OOYxzqCE9bQQkfhhLcg2ymanwpQ
 YWdIoekQMF5QwEQP6qlpax/2LukRiV672xb1OpAwIIS4F+vACEKjsZJDGuqUf1CfTtF5
 3SXw==
X-Gm-Message-State: APjAAAVpUvVNaJl2Ab1tvSw6Xi0oRm/A+j2ajCa2igNM5E+pwTdX2dSi
 t7D6ujAneBQc+t3LPxNwOR9GNA==
X-Google-Smtp-Source: APXvYqwtX/NH+k4fVe4nAuqpRJwbGGrTrWKGRhBCpwxl3cOXJkcFUpjjDRPZQlN/cssPs2EU87T9hw==
X-Received: by 2002:a17:90a:8001:: with SMTP id
 b1mr1024129pjn.10.1569264650065; 
 Mon, 23 Sep 2019 11:50:50 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id h6sm17603497pfg.123.2019.09.23.11.50.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 11:50:49 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:50:47 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] PM / devfreq: Check NULL governor in
 available_governors_show
Message-ID: <20190923185047.GC133864@google.com>
References: <96f459015e6418cee4fa20fdbdb80c4caf417c19.1569256298.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96f459015e6418cee4fa20fdbdb80c4caf417c19.1569256298.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_115051_190267_23D88257 
X-CRM114-Status: GOOD (  17.39  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 07:34:43PM +0300, Leonard Crestez wrote:
> The governor is initialized after sysfs attributes become visible so in
> theory the governor field can be NULL here.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Found this by hacking device core to call attribute "show" functions
> from inside device_add.
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 00fc23fea5b2..896fb2312f2f 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -1322,11 +1322,11 @@ static ssize_t available_governors_show(struct device *d,
>  
>  	/*
>  	 * The devfreq with immutable governor (e.g., passive) shows
>  	 * only own governor.
>  	 */
> -	if (df->governor->immutable) {
> +	if (df->governor && df->governor->immutable) {
>  		count = scnprintf(&buf[count], DEVFREQ_NAME_LEN,
>  				  "%s ", df->governor_name);
>  	/*
>  	 * The devfreq device shows the registered governor except for
>  	 * immutable governors such as passive governor .

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
