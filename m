Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915306D3C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 20:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RgBC538EC/XRHxthx/2ksIjXBZNEglcLkvXAAa7JvM=; b=TkfH2oqHFo2IVi
	Wvd1mLJCh+QUrYLXShGoUlKJqXRklisDpyHK29dWNdllzd0KVbpywqAerfEovapj7KdOkMtLWwUox
	mEm4X9lDtpEV20zzI8vlKtN9JNQ7scgpQzql8+6JW+fTHfx+RhZkX3/E/5Y3E8WQig06AFHQ07IxA
	Qg7o0bJRKQWhThmIJpaDH6BYh0/Oa22R42Lace6yqQEQznPNZcdXhyanD/oA0yZ3KiA039Ba4D8+9
	CCblRY3hEWREDgiqK94Oo/nqMXWwnlg1bZxp0Ypala0rGNcLH/gbIURfU5g4AkNMuEIfhVNFmkVZ4
	rK/DsDbN/VBHzM83wBgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoB2l-0000ju-Jw; Thu, 18 Jul 2019 18:22:15 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoB2W-0000dA-Ci; Thu, 18 Jul 2019 18:22:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563474102;
 bh=LEb+QreJh0nhKeLgLrWCsyepc4FfQRzGAEBsJlBjezs=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=FE6gMsjxZVvDt32CJbzix65lH6BwOpQIiAQcz53GOmGtVwLHzd67qCbU9X4FiiXeJ
 7UlSbT8ming4vzrhRMA90rny/6mnfcYUrIU6nVQX1m5ZXUXBysWxAsPwHebhIU/pR7
 C+b2CqbmRDoXncgfx1tuhiQgTVaEx4hYhZEkcWz8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.117]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MQ2Tn-1hkaWr2vPn-005F2B; Thu, 18
 Jul 2019 20:21:42 +0200
Subject: Re: [PATCH RFC 15/18] spi: bcm2835: enable shared interrupt support
To: Florian Fainelli <f.fainelli@gmail.com>, Mark Brown <broonie@kernel.org>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-2-git-send-email-wahrenst@gmx.net>
 <20190718124205.GC5761@sirena.org.uk>
 <b23c7a5a-a432-5af6-a7dc-0a7dfbe57712@gmx.net>
 <fdbdbc92-e6fc-4e88-ea8f-bb0bc3224b90@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <28dd33bc-c1b5-b976-ad19-ebf681df8647@gmx.net>
Date: Thu, 18 Jul 2019 20:21:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <fdbdbc92-e6fc-4e88-ea8f-bb0bc3224b90@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:OMa7ss/FQ3gEvRCvujL0m2ZpsEsDrGKiMMy9r4AE/oiZKECsRXW
 swy0E0Ck11lrwH5Delw6+pPeE9AwIvFPcr9Y5ulqxeJZ4kQzbfZOAD2/Ta+PwEOPOsi5xKK
 eRh+YrKEQohuGFV3Ph19UGA2NMq1jhnz9dylQb9xgPH2nYAPMYNX8R5ZI/mU7L2R+VgK8C+
 2oz9SR6Brc6/4JdERXzeg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kcwmTVhPOkQ=:/2opJO7ezNBUMlmY5ZjZmP
 enEnAnPwJ9Wws7agK22p0HPh4On+cPZxgsLyqG5MBJTnpq1jQmUyir4mkjkjbtA9gipH+4WlO
 fbGoVmpXhNdUX/9sMJCyA/Tk/8qXmZW9wDLFhTiP3jMgiKihb16gCCiRnHrm9kkj0ffnRX3O0
 rK7BVGHEBDHX7MNS8YicfX+YO6joWL/9zERWvOuafMVE6lGeneKlfGkDmihhmzM+QS8TbSx4E
 9MHxN+fhAb4DSdFoA34A36v+4dPbNlnwyCEjsYUT2ev4cYdHxrPTR3zK55yHV5P9DBRcP+OBm
 TQbmhjrx1OlWAiUTJtegviMzICqEVQwyUKr7nMeSw++rKGAweZ9k9Gsud8RYhBPhZdekkQag8
 zr8yWaEzIjrVP4SIZD2nAZPT/jNMJByW59V8Bw7dlf6tGOHFr2fxtepXiljgkKQ+tHwJDCgw3
 8V/UHBY7KfVGi67CQumTVyByLyZUemOZQ9qGTgq0SOBMvuj+/Ws0ortZ5zuW0HtLw+XBCXemZ
 F5UHOrOpMfnBwmjd5DU5Lbq5rYNszKX1QUS+YIYKTuE/Do3aBJY0UkEHUYGcXtUwEZKukmyct
 0R5WviOx98d4XnjYmbDfK33PhAh8TIXs46cPbiFMvK2x7dgn6wf13+WO9bYAAkv/i5bwL/rXY
 o0KTh73NsdKF6iHYtp/5i5VQT5LqbfDLZyjsZEF0R6N5VrbovXzbCf/dewtOwUgjVi8H3jUbW
 szmev4LvdGuh0S+enGSsZ8WhJ2rxzQ2p5BWN1BrS4FRq7qwYTdUXSVFmZF7J+D/7TnpH920SX
 f3MA8riCwc58HL/LplD6A1hLV+FAR0Uoht0209H4BRn9hTgA3IgXdvyGFi3JRVP5bIlRNMWnK
 nSO9DAOZ+y2oMVMQr1CsV231ur6/KZeraAO0wjNc9PxGKdtdgU0jx4e9Qzx5tfK4mPT8MQUKH
 fIpE1HrzZmzbGa5qXT6/07ROq/9sJOdmVSaX22sI5rU4WdOk1PlxkgQQffQpj/WFaLZR9bL+4
 wLX6KA+Ex1v2E/fLPkuY9Y4VwhG/n2JxRdJalHrq5ZrGZcwEHK2OYn8icwXuYmlkXaXTEYjzX
 VGMrJPWDAmYk7s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_112200_729882_FE230C0D 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Scott Branden <sbranden@broadcom.com>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Martin Sperl <kernel@martin.sperl.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

Am 18.07.19 um 20:05 schrieb Florian Fainelli:
> On 7/18/19 10:53 AM, Stefan Wahren wrote:
>> Hi Mark,
>>
> I was about to submit a change to address that since we also have that
> shared interrupt on BCM7211:
>
> https://github.com/ffainelli/linux/commit/15d96d82bd42991dc71369128131312d5338f65c
>
> Martin's patch is more efficient in terms of amount of register
> accesses, but I am bit worried (based on the register description) that
> the INTR bit is only asserted with the read FIFO crossing a certain
> condition and that a TX only transfer may not be captured by that condition.
>
> Maybe we can just check spi_controller::idling to determine if that
> specific instance generated an interrupt?

sorry, i'm not that SPI expert. I suggest to drop this non-essential
patch from the series and discuss this separate.

Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
