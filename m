Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C2817E56D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:10:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEGbLzgFnK5JKuOQ0Qx3tqLPgRTJzRtaiV2Qm544Efw=; b=RX5/xVY4zxogeC
	PoY48ca/909O7e1vMMiU1DzLUyXU2Ha7JMISthHvPG93BF1XOM6wYI31mt6sQG67kUinqkjQA3Ny+
	AdYeBz2mLuTQR/Va0/wBXOXajdkj+HOONYBgHXSZfglnJzUfyKrg9H6C7xLcIr9spurp621+hZvKt
	sstG6fiECUS4milfWsvmbzmNKmh8zx62Zhp/E8FMWvvA4ZHZNnVRRbTo25Eu2+QAqg30kqcuBNPqC
	mrrtq5OGGEp3ONHeMWHi1dzF8Q+qHBb2sPa6HC9S9XHCYhgjIir2yO2DhovvBEYcdwX1DejQ1ql71
	j0iT9RWcdEtzZQul85Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLvG-0000ZT-DH; Mon, 09 Mar 2020 17:10:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLux-0000Uk-DG
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:10:16 +0000
Received: by mail-pf1-x444.google.com with SMTP id u68so4386169pfb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 10:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Al2h1TKzjElXxyKh+YkzrPKu9p09cB83uwPh3UYud7c=;
 b=NMZz5MsMd3OBckUoOvFxZ2Pg5drge6zfoiRvulGzqFKaFpXvhjE4hgjKmghazwuC5a
 O2gS54bNl4dSb29oUemufHlBmC6yOiwH/JI/JLOzr0QupydVU4ersjPgkpPTf1pTER0Y
 znH49FPr7b3NBlFPqcsOkhB3S5JPnszP7eNTa3NxdeWmBmF4lWUxH4nKmI6ivew7l9d8
 uZZoKOZhYWbaQZIwlkLtSoRadzCNMFDbfPZ4qxGxAvJrBLiQfWyPBJGEWCmRPEPmui83
 Br1tQKj8INp7mtLaSW1TC7zL6pJrbZ3eIibc3MDv56ojXUyegm/3wSKoDT6maLMEIBOy
 QxDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Al2h1TKzjElXxyKh+YkzrPKu9p09cB83uwPh3UYud7c=;
 b=gwqELYRsv6jpsu6BmyiBekDkBdmwV8JRCSSobSq0jONDwD9WtuXxwc/YmhLR+NGdBG
 MMhnSQe7YcJ0g+eDdCHgL0yltAQwHXOJNHUJJ0srkEANFX0fIb8tyJtIerbQZ751pIMN
 2VbI1PuFsNHOsn6e+mQTY3mFfzQSmTQBoxg/8pGsEGfCuRrpcWdGIAsRU9D6vIoVipYk
 w0BJEg7PkP72segmFNc1paOCcKrt5uV2GpOLsred3F/CRqcWPpGOzW1zoTS9XZCoQqSq
 SweWkSV/jeJQKN/S6DVFS6nO0vX2x0+pwPIWhmNwdYTxaqggqGHZ0eVBy4OZfOEFDS4o
 4EHQ==
X-Gm-Message-State: ANhLgQ3V0LivqHv+N1J1LqRIB4YhroROBOYNPytY6wycMEov3mO4lpE2
 PbfzXoANN9YmhxTwYcnvZc8=
X-Google-Smtp-Source: ADFU+vu/DbFBxHbJjGxd44Yk9bSm6Ml6DSBR4TJ03Rv8TwQJtR44YraTRUbY1rO1eLTjxJshjpK3fQ==
X-Received: by 2002:a63:30c2:: with SMTP id
 w185mr17913850pgw.307.1583773814751; 
 Mon, 09 Mar 2020 10:10:14 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id m68sm147089pjb.0.2020.03.09.10.10.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Mar 2020 10:10:13 -0700 (PDT)
Date: Mon, 9 Mar 2020 10:10:12 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH V3 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Message-ID: <20200309171012.GA24802@roeck-us.net>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
 <20200309110609.GE3563@piout.net>
 <1ad38cdb-bf0d-1c19-b233-15a5857bd6fa@roeck-us.net>
 <20200309164705.GG3563@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309164705.GG3563@piout.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_101015_517690_264DFCF1 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: m.felsch@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-rtc@vger.kernel.org, robh@kernel.org, amit.kucheria@verdurent.com,
 wim@linux-watchdog.org, Anson Huang <Anson.Huang@nxp.com>,
 daniel.lezcano@linaro.org, krzk@kernel.org, Linux-imx@nxp.com,
 linux-input@vger.kernel.org, rui.zhang@intel.com, ronald@innovation.ch,
 linux-watchdog@vger.kernel.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 s.hauer@pengutronix.de, tglx@linutronix.de, andriy.shevchenko@linux.intel.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, a.zummo@towertech.it, gregkh@linuxfoundation.org,
 dmitry.torokhov@gmail.com, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, kernel@pengutronix.de, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 05:47:05PM +0100, Alexandre Belloni wrote:
> On 09/03/2020 06:27:06-0700, Guenter Roeck wrote:
> > On 3/9/20 4:06 AM, Alexandre Belloni wrote:
> > > On 09/03/2020 08:38:14+0800, Anson Huang wrote:
> > >> Add stubs for those i.MX SCU APIs to make those modules depending
> > >> on IMX_SCU can pass build when COMPILE_TEST is enabled.
> > >>
> > >> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > >> ---
> > >> Changes since V2:
> > >> 	- return error for stubs.
> > > 
> > > I'm not sure why you are sending v3 with the stubs as we determined that
> > > 2/7 is enough to compile all the drivers with COMPILE_TEST.
> > > 
> > > 
> > 2/7 alone is not sufficient. With only 2/7, one can explicitly configure
> > IMX_SCU=n, COMPILE_TEST=y, and get lots of compile failures. Granted,
> > one should not do that, but 0day does (I don't know if that is the result
> > of RANDCONFIG), and I am not looking forward having to deal with the
> > fallout.
> > 
> 
> How would that be possible if the drivers all depend on IMX_SCU?
> 
That dependency is being changed to IMX_SCU || COMPILE_TEST
as part of the series.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
