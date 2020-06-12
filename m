Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DED1F76DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGugflLtOpt/8s0w5oP5xHLc41iaYLHOuQPPUWmS3Fw=; b=a57MrVGd7VONJ8
	LISTDijSLRoyMVKhV25DRXuXBeK0bkSn397zk4yJkU2ik89j4QJSqijAVV2so1aD4WVPHEVE8kJ/w
	EFhLRfDeg0Y59Gfv29r3HAO9CFahKLdoPxeNPXkHsXsUdSdLkR2Ed6x40juMXedJWQjtEZdUwkZBe
	Ytk83k8avYhT8Os8DMivtALIH8hK7rYA7WzF+Q3G/J2gWZ+ePVcCLzm3DYQBWlVxGyPidNReL+zq4
	KepJBYz8PyTECkvnRUiwFteH0BJlDK6jyg91zeV0gnSaOlEhw9ifLqMQynwQh+HjStdUxqN+BvuMc
	PfmP4owskXKBjDm9bP4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjhAj-0002md-Lc; Fri, 12 Jun 2020 10:44:29 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjhAY-0002mE-LV
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:44:19 +0000
Received: by mail-ed1-f67.google.com with SMTP id e12so6098185eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 03:44:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SOdvZcfgq0T/N/xg8rXOaGi/fRghIZcBnPCYUJJXVXo=;
 b=H/VNdSEynh5u674wnkJvhzowUAxuTN1iclWbRdxbucc9IYPMZoi3/jh9b/h5EMTZp5
 qyLQ5Wo4U3XmL3o8/R4iDN54h3Ygd7KT8ClWMwZCVglimDajTQTta4/KFhSGrVAtDz0H
 yWTmMbCbTAyZ3UpuGg59pBgPYcdNrbjJ+lKadCJx0l/5JIGm7beE7BJEgxoWRFrIiD6z
 vvc+Rm9znLQASRhLZlMJhPWL2mdyyg/Me/dsC6Fd8QpIdTRjaxx86vP2IXFBcL4OzaLQ
 FeayTe80GOShG1Ksju4hmdsPVQcKGYG07WdAVA5RNYttoMnf4T/6fyF5xerdkw0XpT1T
 Nb7A==
X-Gm-Message-State: AOAM5338+NmIgDbS73eFexyiXeuCu/sPMDEQo7RnVqLbD+APGIQfLqZO
 CIcCu+Nvs9M0ZFNNBLHhB94=
X-Google-Smtp-Source: ABdhPJyw3kA/fGMFrQUC6hcemwafnWF3BI1uel/lQVb1PPosuNiApnhc+TX5NqRonlyy8zcCJJHFfQ==
X-Received: by 2002:a05:6402:1285:: with SMTP id
 w5mr11232244edv.73.1591958657053; 
 Fri, 12 Jun 2020 03:44:17 -0700 (PDT)
Received: from pi3 ([194.230.155.184])
 by smtp.googlemail.com with ESMTPSA id oq28sm3429888ejb.12.2020.06.12.03.44.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 03:44:16 -0700 (PDT)
Date: Fri, 12 Jun 2020 12:44:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612104413.GC26056@pi3>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612090517.GA3030@ninjato> <20200612092941.GA25990@pi3>
 <20200612095604.GA17763@ninjato> <20200612102113.GA26056@pi3>
 <20200612103149.2onoflu5qgwaooli@pengutronix.de>
 <2bc70a44-8b98-0da5-9408-15d6fa0c20fe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2bc70a44-8b98-0da5-9408-15d6fa0c20fe@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_034418_703441_96C1B849 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Oleksij Rempel <linux@rempel-privat.de>, Wolfram Sang <wsa@kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 12:34:47PM +0200, Marc Kleine-Budde wrote:
> On 6/12/20 12:31 PM, Oleksij Rempel wrote:
> > On Fri, Jun 12, 2020 at 12:21:13PM +0200, Krzysztof Kozlowski wrote:
> >> On Fri, Jun 12, 2020 at 11:56:04AM +0200, Wolfram Sang wrote:
> >>> On Fri, Jun 12, 2020 at 11:29:41AM +0200, Krzysztof Kozlowski wrote:
> >>>> On Fri, Jun 12, 2020 at 11:05:17AM +0200, Wolfram Sang wrote:
> >>>>> On Wed, Jun 10, 2020 at 03:46:42PM +0200, Krzysztof Kozlowski wrote:
> >>>>>> If interrupt comes early (could be triggered with CONFIG_DEBUG_SHIRQ),
> >>>>>
> >>>>> That code is disabled since 2011 (6d83f94db95c ("genirq: Disable the
> >>>>> SHIRQ_DEBUG call in request_threaded_irq for now"))? So, you had this
> >>>>> without fake injection, I assume?
> >>>>
> >>>> No, I observed it only after enabling DEBUG_SHIRQ (to a kernel with
> >>>> some debugging options already).
> >>>
> >>> Interesting. Maybe probe was deferred and you got the extra irq when
> >>> deregistering?
> >>
> >> Yes, good catch. The abort happens right after deferred probe exit.  It
> >> could be then different reason than I thought - the interrupt is freed
> >> through devm infrastructure quite late.  At this time, the clock might
> >> be indeed disabled (error path of probe()).
> 
> From my point of view, the clocks are disabled as Oleksij pointed out, due to
> RUNTIME_PM at the end of probe():
> 
> > 	pm_runtime_mark_last_busy(&pdev->dev);
> > 	pm_runtime_put_autosuspend(&pdev->dev);

These lines come from regular successful probe path, not deferred error path.

The clock is indeed disabled but not because of runtime PM, but:
clk_disable:
	clk_disable_unprepare(i2c_imx->clk);


Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
