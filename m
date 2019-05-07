Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F491646D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFZeIH+eaeJwOUkUUibv37vY/GhNPHgE7h1f83UMki8=; b=R8h6NreHTrksuu
	OV23QieYgFamlXX6gnp6KAJkXMyZ4g04bHpImBePx0dAGHCXAsSAV4MqA1fZTHEOXLNFoq2EBqya3
	D0Y82pVvVVSUhjFraC56CMtRAh4BPFsjYEmNTTJ/euTfH1fDnYSXPRBY3U6KaO5QqX+OMQwWIwsYV
	rZXISkn5K+5UgStG34NU0tbkyS2tsyGgaSSqXF4lcOLg2YTqh2/l12yyc5fqcnvqDQsgtctzAWWg4
	fdDYqkvzZJEBWouwPc7SSwXEQEuUWMFxFDKsZik/Do82QcxqO6WAkY4OEmQ2pi6xY5ZTwyuOlbV79
	3+8/UIMdybRe5yoPQCUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzyw-0005al-Cb; Tue, 07 May 2019 13:18:06 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzyq-0005aS-Cd
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:18:01 +0000
Received: by mail-yw1-xc44.google.com with SMTP id n188so13194563ywe.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 06:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+G2PZOXhphMVRio3+o7+J+xy7+EbGDGUf52xdm8eGto=;
 b=HszlHktNSEhdS6y6pF8BLAMxgq6N/dBeaxKhn3s+C7hEa9KWWYx5ql7lZqebRYfB0R
 r7lwHumkMNhG19j2nQSwS9gAu4eyoSQ9bywaUqU/HxvuaeALBPquW3j1UpKdWvoSLnIK
 +pwrGle1dRfXNdOLdRguvmhEH47eW4T0QSL7r8fZm6oknbyeft/zPBO0U77UWAJ+BNI8
 EOnZWumERYhRkcAgP5oht0nqo6IQ0WE4wJlDhVXXgbwgWuWNqrW73QyL/FJJ32Smm+rn
 CWvJXYVBHFpbh+j7v4qLdiVbMrLjZ97tI1uaRAFAATJdgW85UBuEfDITev6xAEesL2+w
 SA/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+G2PZOXhphMVRio3+o7+J+xy7+EbGDGUf52xdm8eGto=;
 b=T1Bi+Yy4u0xK/zRTafsDvAFu8kJxbDqtRJaQ4RSNjECYRBuMDG8AL+HzGloofria01
 cuWZ6QH5cedwrnu0mxTaO4L3qq8+qlWa0FTe3NEm85tm7fksQPCPATT4HKaBZKMoLtdp
 jzFNmjD26GimF4gLRvu1hy93tRBUVmOKe05rbu59+JauaGD6R2R3XAsxCRVCeMbzjzmU
 738EH7LRiNXwxNlbN9z0eiySZDr2MliwfnX0S6sznUYh2rAqTEOz/LcqpzmyaQ1BPr7Z
 C295PI6Yq/fWf6R71L6yOMsZoLMkjCVXO+CLDaN/eXJW5UOVXcTngtiJ02hYl+uQtMvz
 Ua1w==
X-Gm-Message-State: APjAAAXalYiVtwUb74MM191ZxOgyVlxCWjMgdGTbrFDo0Rb0uVlElllu
 LkbOuQYkhcxg4wrqY0nGPQ3vnw==
X-Google-Smtp-Source: APXvYqwVn9N2OO0gaK8Nwc2EFsWV42Zl7mOjYFOXGjk6IWhMf8AObq1uDxCyBWs5c47OgnL8pJGUIA==
X-Received: by 2002:a25:ab0a:: with SMTP id u10mr21248467ybi.359.1557235079108; 
 Tue, 07 May 2019 06:17:59 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id h10sm4763221ywh.80.2019.05.07.06.17.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 06:17:58 -0700 (PDT)
Date: Tue, 7 May 2019 21:17:50 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v1 04/17] ARM: dts: imx7s: Update coresight bindings for
 funnel
Message-ID: <20190507131750.GG21730@leoy-ThinkPad-X240s>
References: <20190507034734.20622-1-leo.yan@linaro.org>
 <20190507034734.20622-5-leo.yan@linaro.org>
 <CAOMZO5D-8o25Wg1JW2rmWQepAKKGr5XTtpJm7J_qHJ8vLb-RKw@mail.gmail.com>
 <20190507123413.GF21730@leoy-ThinkPad-X240s>
 <CAOMZO5DdmLaaz0+puaHPvpT=FSZPBb9Ok4Y7axb3mMSOZ5vWag@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5DdmLaaz0+puaHPvpT=FSZPBb9Ok4Y7axb3mMSOZ5vWag@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_061800_428492_55958C64 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Chris Healy <cphealy@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

On Tue, May 07, 2019 at 09:36:43AM -0300, Fabio Estevam wrote:
> Hi Leo,
> 
> On Tue, May 7, 2019 at 9:34 AM Leo Yan <leo.yan@linaro.org> wrote:
> 
> > The main reason for changing the compatible string is: the old binding
> > strings are obsolete (the old bindings are still supported for backwards
> > compatibility) and the drivers will report warning if DTS uses these
> > obsolete strings; so this patch tries to update bindings with latest
> > compatible strings and thus can dismiss warning during CoreSight
> > driver's initialization.
> >
> > Please let me know if anything is not clear for you.
> 
> What I am saying is that the patch should have such explanation in the
> commit log.

Makes sense :)  Will spin new patch set with more clear explanation.

Thanks for the suggestion!
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
