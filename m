Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 675AD1D71A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZWkiRtpyVxvtWfMzU4bmMCpj2RwiQbTMfIz9GTKI1I=; b=Bt8QdmXgHYtfSb
	2V8TiB5ilGh6FbRK9r3jNqOtVtULV04CvREF0LNYcGZzr2IYw8zLFmLq2/6l/rZ5xURO5dx0bzWww
	BhoEH/ikLfuRT5ZzJRxNlJiySt9WH4Pwr7H2s6VFNbBPq72guTfhgVstVsEGu/+NEKBvyLuQPYnnK
	1yTYsuEhA74hlu5+KtVPW6Xt62RRlMDTut/xTK7UYcBKkjcq+5x08RM51UungwbUiNbJQAU5Yw7wg
	cunSnC48e76JfojrwKb7ZSKWAfxdtUDmNtSQUH82Y//Q17aJzZ2VV15by4Um1IaYPiCZpgoFko3FF
	PK6MhVschyoU4UCiP3QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaa53-0003GM-TZ; Mon, 18 May 2020 07:20:57 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaa4r-0003Ex-Mq
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:20:46 +0000
Received: by mail-lf1-x141.google.com with SMTP id a4so7075413lfh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 00:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=srjDyr9S0oB/6VDYDy70mCau/zVOnj84hKg9e/vKVUc=;
 b=UmO/e8bHlXbOw6t5litf5UhEV90GLZNKTvruCwSC9H28yYSU/xOoYiclTIFgm3pdnO
 G2mJQ3KyMOKPyxPHdDN0tPhEj22mLv03EN6NEHH+nuquSeVze0Ec3cxhipC/zAyQBbvi
 fNOIkvZANckbPP2uhRAYt7O9BSVI/SbbzeYgycvK4gtnAV+iC6Q0nzy96a5/JGg8E/Ve
 /rtn1LovXJiq6BnEV32NdI6aqSsAOskxgHGNSwF3BdMJLlsPqH2SZfaJ8TJ+2e9pNE7R
 ts0J69gQDaEeKH3Q/j7cgPk+y8d2ApLd5urmJ+WiPGV+0UM70Twzx0MwclzzJc0DIJch
 Hycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=srjDyr9S0oB/6VDYDy70mCau/zVOnj84hKg9e/vKVUc=;
 b=sGxBzaOH8MymQ4DEyGaGcbA9kKBTwlhSRq6/ihSDAmgDF6wAjDUyWkmkXQSAAJiRmq
 asgee/t98k9YmisWE1CuJwjp2thAPHL6DoNW3EzLUpLDkvIJS0QMEDWugx23OxnTuK+P
 TmhDI5xj1DMrF8gP8U1te5CCAO1rNF1fmxjksxyb7nLuCeaj6S6u5quzrRDP78G7oYEX
 /vyMYqeVjCmKSn2iPvGBfGBZH6TWo0S9UwSSWsoWf02XsXXHKs6zAvgc/3f+TgaYULvc
 aN3zRe2erUD1a5k0d5kTPiSAq1H1LaC2+qyxj4F0lqjBU1WoHWPAo5KgU+mddRi2FeBV
 KTXw==
X-Gm-Message-State: AOAM533iiDrkLv2ot4sj5z9U4UGTvqIYkQ15tduLGZLJFLJswF8iysfC
 jXywtk6HdAFGw9if3MzbpeJFAhL1QJeGbFIsHHi3ow==
X-Google-Smtp-Source: ABdhPJzRfqaofRPumXvphn7M6BnSMfYofnElhrI84EAZ3W5otCYBNBiXOugxiFN46j+QphGtW23HA+cXFzEqTcDNw+s=
X-Received: by 2002:ac2:4823:: with SMTP id 3mr10546757lft.194.1589786443287; 
 Mon, 18 May 2020 00:20:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200512203524.7317-1-jbx6244@gmail.com>
 <20200512203524.7317-2-jbx6244@gmail.com>
In-Reply-To: <20200512203524.7317-2-jbx6244@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 May 2020 09:20:32 +0200
Message-ID: <CACRpkdYrDHNp7esSYw9y7CQoZ1aZojWkhAU_MG4uvmk7nVJbOQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: rockchip: update example
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_002045_748785_059B512D 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 10:35 PM Johan Jonker <jbx6244@gmail.com> wrote:

> The Rockchip dtsi and dts files have been bulk-converted for the
> remaining raw gpio numbers into their descriptive counterparts and
> also got rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
> mappings, so update the example as well.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

This patch applied to the pinctrl tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
