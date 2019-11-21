Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354EF105B80
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 22:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmWfz0zsHhZM3OyS+rLans8LugJLdL4HsHd14GEQWMw=; b=n2Jj3aKFSBez+N
	hqUjhUMVms1htvzSD4KHJxq6iFS601b9BYpxHSsDAdbR+L9943dVukXx3CHjN6PIsvGwyVOh9rSwv
	ZpHfPDetM5BSddv0fCT+XnQT7R4pxinLZfltTZypR/AEs/St2Ur0asY/FFjLs53A8ld0He3xjKjUU
	7WhTQMHHwrG9DJ1FUUThiNN3BsuyFmHL3cbc+zl0TqyOA47tzM9Gx3F3/14rRebgo61tNIoh3eivO
	fy9KLrvCrNTyo7jqUPnnrEz3eI8VaYMONLvUBo3qEyKXf0k0h6UcuVm0QCilCHkELJkve67ieEJPE
	esDU00QOpMlkmyuFxKQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXtYq-0001Py-0h; Thu, 21 Nov 2019 21:00:20 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXtYj-0001PR-In
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 21:00:14 +0000
Received: by mail-oi1-f194.google.com with SMTP id a14so4535086oid.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 13:00:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SxSot6EgZMv6I/ipPn5GJ1W17H/FceWiJqLiGTJUw7A=;
 b=Ui9W8CgU4mhz1r3SEUbS86aeLjvbOzdF4VjX0S2YWvqj3mldOS7wW8EncH9vbZCM10
 YEracEJJkxf2Ug/p3s6U9yjuvphAGRCnlTs+YdIAIjAwpkYwb4ScPFf4RlUob9CpQ+Xd
 KPxD27lMzfK3+Y+IOzxbKcoLLsXjPJFm3TF/pmMK8tNnh+wN26WraceR1Bl6WsaYm7dZ
 FahqHnlhYgqWwz9uC0hCQD3GgBLMC/yP0lYdxzUKRSV1tlXj4Ocw9aSynZUj5rk5fopN
 Ygsayn8U+1MujtVmfZJUTDStxuYUiNQO2CPFL42C+VYCGiU/yqqR2vShqBNONcTzTnyb
 BuDg==
X-Gm-Message-State: APjAAAXb0WNHM+QtY+F33nkhx85qhqq5WWyre5AkIEaIXG1R+y/y0yf6
 m/QPe8kUhFZi6gMUApPJOg==
X-Google-Smtp-Source: APXvYqzZRrFiuYK7K/Obo8SgGAjOF7Ow3hwd08fXejCVDmPvcemJ1lgWEhImSfx8sFpl48Lx+9CNfA==
X-Received: by 2002:a05:6808:117:: with SMTP id
 b23mr8902981oie.151.1574370011370; 
 Thu, 21 Nov 2019 13:00:11 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p3sm1377017oti.22.2019.11.21.13.00.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 13:00:09 -0800 (PST)
Date: Thu, 21 Nov 2019 15:00:08 -0600
From: Rob Herring <robh@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v6 3/5] dt-bindings: memory: Add bindings for imx8m ddr
 controller
Message-ID: <20191121210008.GA20656@bogus>
References: <cover.1573756360.git.leonard.crestez@nxp.com>
 <58f3aea574bf3a38a42075e313fc2a5592c96ed2.1573756360.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58f3aea574bf3a38a42075e313fc2a5592c96ed2.1573756360.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_130013_621142_72C24FA3 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 20:33:20 +0200, Leonard Crestez wrote:
> Add devicetree bindings for the i.MX DDR Controller on imx8m series
> chips. It supports dynamic frequency switching between multiple data
> rates and this is exposed to Linux via the devfreq subsystem.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  .../memory-controllers/fsl/imx8m-ddrc.yaml    | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
