Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C1B141B2C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 03:26:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVTQDyALP9oP1d+e5dQhnG/IjDQgYH2PGfeyw/tW3R0=; b=nwi9E9d2iua1SP
	S+Ni6gXPyQwRCCNHXNWnVNLG82U7YDo2ThQPrqJAh/hp8tPN9tlNAHEyZ7YOTmTBrLm8+ncyx3FT9
	faqJ7/ZB62cvOaqUetmuv2WkBVC1UrSUrDh8/iNDGSjHgymyhnFHxgwfUYLDbwRq82tZDmUKmInLd
	8++SZXUjW/5Ad8dzo2JDSYg9hVaPwg+tCGai2qBCZFHViFzTebb/BOOj0JQo+LvEr8HPqmZSeWD18
	s9b747gt86/0ZSLh/S9ZC26yys+PTONljGjUnFJcCb/A9TkYVlwkfs67X4FKxCdvOuL9mdG/bgONw
	APz7Ihx8uI9QW6/yRbzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it0HF-0001Gt-Og; Sun, 19 Jan 2020 02:25:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it0H9-0001GR-55
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 02:25:20 +0000
Received: by mail-pf1-x441.google.com with SMTP id x6so13932849pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Jan 2020 18:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dTrZCBkewhR6vLVB77oZ0SSXBeG8KYL0GW7GFSN+FnE=;
 b=iwVk3BA21WLg5/7JVvxKRP3tCyVtKvzjKIoNMvuGX5cDpYc48Povn0zMkaoY4Go0Rc
 MAREiZJfgBOmDRv609TJ0sjPSPgGGnjFU8gaO+itqtY98JJA7lGh4tQFej7cH+g4MALM
 DVl164Bd1qTyr0+mfZoF4XoXADe7ctw1r2+dpK4Ed1rtSE+imA4WqJtnPkwuViFuqPAO
 aoJyAEWl47gcDZbfd6OUs3Mn2eQBUItA5mKmKvD2MrrCf+wXzssIxvyNQpuoVLeEQIz2
 gp93Tb/hJJGN3dnWUUkwzA/G/W9UE0BWF54hggRHr1/gCozwM1OKrFYjcOFjGYBK512Q
 9AQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dTrZCBkewhR6vLVB77oZ0SSXBeG8KYL0GW7GFSN+FnE=;
 b=Okhjkehg/UBpL2ld1QGqt8x3Pu640dMxnELOuxsoHQqnY9wBDn62aoQV3vgyK9YuZV
 DxMRgtMJw5DL7UErXG8sKAyorfMtgnUedR+ZBegZi0oEgRdH71tTpz00EAuiXOunl5So
 ri67dNe5+RaSn1UMWFk70fgNd/JeGrFSR2llpAVzyXJ/cMTwls/D+J6N/cT7/zyGFUm9
 AB+zRb++t2LYIdmcEqGAi8n4ptOHqmR60KlV0f6WDRuZ2Rs4K9VLMDU8ebXmkbsZW6x1
 5+Ed1YOJyfF0JU4icxbAHYYLKIVJvEv2BuGAKyHuernuHEFrc/FVIZJPR22anssPkTTR
 sLOw==
X-Gm-Message-State: APjAAAWcLWwc/5yAT7aLtjeaUKJC5544XhPZ7EQJAJ1mRMCwcJ6boe3h
 mh9cbrgO32C0ErBQy/thwvg=
X-Google-Smtp-Source: APXvYqy4jV3Jx6p9CNZk9DaObz5rsgtr6HZxKEhG54e1AQVylDXjSigIJEe6E9TCNTooRShc49cXBA==
X-Received: by 2002:a63:f643:: with SMTP id u3mr50862475pgj.291.1579400715911; 
 Sat, 18 Jan 2020 18:25:15 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id b65sm33984060pgc.18.2020.01.18.18.25.15
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sat, 18 Jan 2020 18:25:15 -0800 (PST)
Date: Sun, 19 Jan 2020 10:25:13 +0800
From: chenqiwu <qiwuchen55@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v2] cpufreq: brcmstb-avs-cpufreq: avoid potential stuck
 and UAF risk
Message-ID: <20200119022513.GA21407@cqw-OptiPlex-7050>
References: <1578228650-17157-1-git-send-email-qiwuchen55@gmail.com>
 <20200106055637.zq4icl5klg4wpvkx@vireshk-i7>
 <20200106070910.GA17897@cqw-OptiPlex-7050>
 <20200106073109.ndm7enzyznquqps5@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106073109.ndm7enzyznquqps5@vireshk-i7>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_182519_222678_EF0ED02D 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (qiwuchen55[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (qiwuchen55[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 bcm-kernel-feedback-list@broadcom.com, mmayer@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 01:01:09PM +0530, Viresh Kumar wrote:
> On 06-01-20, 15:09, chenqiwu wrote:
> > There could be a case as the description of this patch besides
> > brcm_avs_driver unloads. Since cpufreq_policy_free() will free
> > the mm of cpufreq_policy at the last moment.
> 
> Ahh, right. Please fix the other "policy" thing I reported and resend
> the patch then.
> 
> -- 
> viresh
Hi,
Any progress about this patch?

Qiwu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
