Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4334AA6BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 17:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzOfIsNryxifDEtQwKB+EkNnYv6MkLKZTGgAS6sJ4Q0=; b=HCVkTpXL2LaakG
	CZb4Olp70rtNSzmTHROLGTOU55qnHXHxCJmmb6ftseAYFqdIMqqPBh6ZAUNWtr9aN8iqnaFd+8lcI
	f0OdLpsyWqaPMrx3NuBAGDesNvySLQ4kT5wYUXiLOCJJY0LxvOov7bU7OkIfWwUtaXYjWYY1l9OtQ
	e1OmlddBxdyb2FJl67puRpH0qIzBqmYWRamAm2QuaEV9A6m+/xURzOhY1s+41dEN7D8DNbNlV/d/o
	FZy1XGbWoEdaowYA/k5zikcA5fCnSRCixWgQHvi3Kqmw4MpEbeYbb5HIpgfTcQzbeK9sa0i+o5ECM
	jCWFO4E6uVo5eWmUHabQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5tKw-0006i2-57; Thu, 05 Sep 2019 15:06:14 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5tKl-0006hG-P3
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 15:06:05 +0000
Received: by mail-pf1-x444.google.com with SMTP id d15so1928547pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 08:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AguZPT09i2MW35dbWpY+fBOKGp/0MXMj2MJKZ8LdyJ8=;
 b=VFslLs1i8f06aUrJwS01nIMEgRk3Rl3SjvLT4LD4jPEvm5GXr9kfykPeN9F0boLKsT
 A3vmAWLlujE6HxFNVDbWOH3pTjWRd4cWwS+E4DxuFE64aPSUnh/Cqn0CZAfR2LGaWP90
 12MtvyoG8+isQMd+2A/Do/GnSshj8qx3jYfD+JhbjNHyD8cX/Di11PgF8bWI6W2L0pPZ
 +pSUW1s78oFfd0M9fZC9d1N1CY+gR2Vkfg6Lgw6Wv5CmRfYxyauIXaIZmixVJCd4Yh/A
 Wps3iM+rXAQcgvQIE1V9LKEOwWCb2faSiTk1WNgVhQbuuzB/C0OwEk5+3LNhmC48MGcQ
 OrtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=AguZPT09i2MW35dbWpY+fBOKGp/0MXMj2MJKZ8LdyJ8=;
 b=hnsi8F+lf9H+qVIBZVBmiELUeFVNH/6u6pqRUbZ3A/zrySwW8YGLxZuPUzrq48kCjt
 eedMQoHnMjf3JJjYQCE/06iU4vAb6AS0plD/QucbPzIcvyLokckGWN/R9dL7LaxAjUpy
 9d9XcNV/VEz+uhAB2FnCZBOz2FA+4oVCxgMH4pl422FV6NUvpOyG76oLog8lKb4lj1C/
 yyTAmqpVDG5fi0Cs3rFT3hEAJ+EOHzJ6J2m2dE9f+84xtc4bHVaO6DsW4SsWiphkGAUq
 FIZL7kHNmQbP9YqhE6wZ5hxg7ucBzJfRwK92XJHOZHNalwimcCOItYiDYeiEhdJ8LSbi
 z3XA==
X-Gm-Message-State: APjAAAVk8S0k14KlwNWnDvagPYURuDllILc5Dwh+G9ERiX8Q6qqx1slK
 YAAy4wRtcwikm7I5w+j5k5U=
X-Google-Smtp-Source: APXvYqztlYN0ZDJF90oIdvXI+2P9lqKmStMU6OPQj+evEMLtfg4OiL2LGHi4NayJqGLlwismBhjBbA==
X-Received: by 2002:a63:5c7:: with SMTP id 190mr3485618pgf.67.1567695963182;
 Thu, 05 Sep 2019 08:06:03 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id j18sm3524705pfh.70.2019.09.05.08.06.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 08:06:01 -0700 (PDT)
Date: Thu, 5 Sep 2019 08:06:00 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Oliver Graute <oliver.graute@kococonnector.com>
Subject: Re: [PATCH v1] watchdog: imx_sc: this patch just fixes whitespaces
Message-ID: <20190905150600.GA18080@roeck-us.net>
References: <20190905073730.22258-1-oliver.graute@kococonnector.com>
 <016e268c-f289-4127-a47e-3d8faa790ded@roeck-us.net>
 <20190905143525.GE23537@optiplex>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905143525.GE23537@optiplex>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_080603_835712_16455C63 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 02:35:37PM +0000, Oliver Graute wrote:
> On 05/09/19, Guenter Roeck wrote:
> > On 9/5/19 12:44 AM, Oliver Graute wrote:
> > > Fix only whitespace errors in imx_sc_wdt_probe()
> > > 
> > > Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> > 
> > This patch no longer applies due to commit "watchdog: imx_sc: Remove
> > unnecessary error log".
> > 
> 
> ok I'll rebase patch against linux-staging/watchdog-next
> 
I should have said "no longer necessary". The mentioned patch
makes the same change (and drops the error message).

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
