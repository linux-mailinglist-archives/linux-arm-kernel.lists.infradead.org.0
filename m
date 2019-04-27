Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2309AB1B7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 02:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pFNuhfQgCZqXlK64GtYg5hNm1/49uiTzTyjUrVzUEY=; b=juaBD2q0ks6YVJ
	piZ5/LCOFJBnYAPSgMaf3/jp978x4lO8l1lpMihit+I6ALJvGJdqfKwwdo6Ssc8ki767CBkRdmPT7
	bI1u0urA8ewmQ/YQBdi1EOUktkh/sV8IJ6XHRSg9ACG7XKzV0wmThKBNbSHSW6IRx81Lzcrd+fObR
	1sZLwthmW9xFJGw0VYUhDQ4cQTFhqTTllML3RrHts3IQRSZ3m+hWMRvoS8VWrx2Db3nZDdvmz5tAP
	9bLZk36W4jrmHYAFZ9oxdGyTMZA/pBUF1epNfsOxTMxPfJgs9Vj2aWbdKUYneuzgx+zxnW6tjAElw
	SowBlhWUcm3hNylY4l2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKB5K-0001xQ-TA; Sat, 27 Apr 2019 00:20:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKB5C-0001wV-SZ
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 00:20:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id w25so2449540pfi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Apr 2019 17:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T0jupFcF9hnJ5smEbqb8Uiz7NwwaG9r63Ny4hvX0g9A=;
 b=t/WZD0xWD4+qUwydinbxwpGTTZYKtmcQXMy+jVmll8VF7BiQzgxJipQJ+lgTVFVTZM
 QkIsgxanZ3IHVmprDg/XSLSPKJdXk/qm4l/MC7JDlj4GmYhliUuYibtHVLYYuKz+JKwm
 t3SZN0gEXwCh3wsqSS28M5OlAT+ui45cscRRAxQX50eFamkLbY7A45IpWJTtH9/4L8uZ
 HanjK8g0pfk2CR0vw6y5Bs/9kTM2M7siGv47V89UoG3QpIqfbtof0/QuA/pIgsIIEvEu
 M/UZF1NmYHxgD0M7u4ontGMDZ6lh6PLk4xV465NRajJEIw21S4dNDSLsu4nuPX7LjKMg
 cDlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T0jupFcF9hnJ5smEbqb8Uiz7NwwaG9r63Ny4hvX0g9A=;
 b=c2U8L4aR1Zqz1t9FMrOr5aTiVhG5yILIX2lnfOe/eWFJ5v7DPUWtLKmVP7BYKbbwba
 WkWp0+lwSyN2B+codWVgoHfP+6fQbC2G6TzkZkPdb076s7QLJ5Phi12SR7pJL8L8UJq9
 bdyxkdgYd+El1QQDHi7XwSiodn2eZfeGOKphRecco3/zWa0kRoqCcVE0t3e46XdYPcyv
 rc5jEdA4TZeUmf6z4oQhGdvZlwCsEncDMzNqW6vqKyu8Q0lKLN4arUgK5LZTTdJIkS/e
 MHg7RjTMbPL7Yq0o/kKunEUV9RGfgNkz4jFKuKUyOavjS8qAla+rNuNU7FNsPVvw8dR8
 G4ug==
X-Gm-Message-State: APjAAAWhvsLhm1q2mMWb0KWBhOC3SoL1IYm0eoPYhDgjBDZ6+SYPxdxq
 FecdeP4hKw2H8wNOF+DkYa5XxQ==
X-Google-Smtp-Source: APXvYqw2gLFtFNX39U/qRmokrO6vKW8rT5xiEM3Tlhb6+pACWd/nZ65bcBAT8wEHIpzApDIShepOaQ==
X-Received: by 2002:aa7:8083:: with SMTP id v3mr51379417pff.135.1556324442308; 
 Fri, 26 Apr 2019 17:20:42 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li990-117.members.linode.com.
 [45.33.40.117])
 by smtp.gmail.com with ESMTPSA id n3sm39239298pfa.99.2019.04.26.17.20.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 26 Apr 2019 17:20:40 -0700 (PDT)
Date: Sat, 27 Apr 2019 08:20:34 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v5 0/4] CoreSight: Support static funnel with DT binding
 consolidation
Message-ID: <20190427002034.GA6454@leoy-ThinkPad-X240s>
References: <20190412102738.12679-1-leo.yan@linaro.org>
 <CANLsYkyFXEiYh78uhhQRiqAOvv_u+oq5GS3z3-Lbj6RHm7x+sQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkyFXEiYh78uhhQRiqAOvv_u+oq5GS3z3-Lbj6RHm7x+sQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_172046_926324_1288C559 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 10:26:24AM -0600, Mathieu Poirier wrote:

[...]

> > Leo Yan (4):
> >   dt-bindings: arm: coresight: Add new compatible for static replicator
> >   coresight: replicator: Add new device id for static replicator
> >   dt-bindings: arm: coresight: Unify funnel DT binding
> >   coresight: funnel: Support static funnel
> >
> >  .../devicetree/bindings/arm/coresight.txt     |  60 +++++++--
> >  .../hwtracing/coresight/coresight-funnel.c    | 116 ++++++++++++++----
> >  .../coresight/coresight-replicator.c          |   6 +-
> >  3 files changed, 147 insertions(+), 35 deletions(-)
> 
> I have applied this set.

Thanks, Mathieu.  Also thanks Rob and you for clarification DT binding.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
