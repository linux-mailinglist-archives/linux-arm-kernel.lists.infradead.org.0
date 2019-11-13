Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B571FAF45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 12:05:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kp60nQOhcPnWm65OVYHG+JmVLrXa7FAh+ahHpzNMI9M=; b=BwusdNzghrI+gl
	jmtrYL+UnQ5uZcmiMjRS/4vyUmRU+uQ6gNjR4V8ezb56jJTdpqg37lAiG4qJY4TpxcVY2Te+pyhgB
	b845bOeMiXJBWKi7kI+QLdZ85VNCa0FkgCafrwKjBnTTWdQ572TbUJDp9lYLCi5OdjMXxorEpDkW8
	bDG2FOw5ysj8fImzqL5OAKmIe+NblScG1Lx9+Y9MwhAKOD0Iek+CGjkh3tQpQ1grxB/8ntyc3UOqx
	c4pU+EKh5quYvcXvSQLnhUQSfdAys1icXGm3Qqd/ehSQkrJIsWsO2bbB/iavfK1WUGyKNXTWKN0iY
	CCMlYL5pliI/d1IDSxiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUqSQ-0005DQ-On; Wed, 13 Nov 2019 11:05:06 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUqSF-0005Cy-RX
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 11:04:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id z26so1510849wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 03:04:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=message-id:subject:from:reply-to:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FrqiGopUeVZbFND4MUbJPMnKP4bwlqCYYOKkzF9KaCQ=;
 b=CsnHYgabyTK5y/IO00xSfm3B0zWW+dFDY3DCb3aDIH10LLdQYu1cJJnoABZfQ2WAbI
 sadxqNg0ZU+t++/ckl9QKgCJSpxqAIkgXpXPrglHB2aBVLs0X9knQTDOoxlUGC+8iq41
 Fy1DwtDVrF7+onprTU6eCHptntnA5YtxS4e7eyvAnGeso+EKkMYcgxM7pNKqq642NOzv
 wHPr5iFmHHETf7goLqXGkckqQjfPGJ2GjJ6kbwa5SIODCzhBjQgR66oo+v2N0p4CHOU7
 nkhjKcaoNKQk3yOTcLM9CJF3sCLUso4DUB9SK+OGWiGydDFShOtAGm/CKMaasMHlqtHz
 O6Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=FrqiGopUeVZbFND4MUbJPMnKP4bwlqCYYOKkzF9KaCQ=;
 b=mRXH2vzdb+uQy8U2EX5sKbp6JxMA+4kSJe++7OwJ+2xmgiew9VeGpJx83FSZpOwSCI
 Z2B0zpl1IEQJN6fSOq2UWY24Q94afneVaP1TaxSPcKmb8wau8mFcEC+jogfwGcAj/Oej
 2jyPa/jS2Va/1XT3HYjRGzbZHg5Xd8peJp0kTjtBGc5Q3ClZ3AnKbfTD1H7Es8Ea/q0r
 627UUCZuSyNzIQU2QEzb1NenCma9FOBThTRqUBbCVmoTsnpf+F7X+nKYeY3Tumlc35eK
 g7x/UajQbj61ARSNUxHtZNFjA4C4wkLWA7J7VdNIIYQvqNA8onDe6gheNv6uFo8n9BsR
 +EFQ==
X-Gm-Message-State: APjAAAXbmzIr+Ayl5VddooIFYNyuOPuebEfvaNZhQu3KeY38AnQyyQLy
 7J00MvhyH2zcukdVF6T2jJ0=
X-Google-Smtp-Source: APXvYqyaVmDFe2joHJUcP4UczTU+4dkJmObU6YyhJ5AEZR8lr/5bjth4QunTNCdrafOeZKCfhO15Sg==
X-Received: by 2002:a7b:c748:: with SMTP id w8mr2323453wmk.114.1573643093367; 
 Wed, 13 Nov 2019 03:04:53 -0800 (PST)
Received: from [192.168.0.87]
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.gmail.com with ESMTPSA id a8sm1796941wme.11.2019.11.13.03.04.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 Nov 2019 03:04:52 -0800 (PST)
Message-ID: <1573643091.2357.5.camel@googlemail.com>
Subject: Re: [PATCH 1/4] regulator: da9062: refactor buck modes into header
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
Date: Wed, 13 Nov 2019 12:04:51 +0100
In-Reply-To: <AM5PR1001MB099402F860196D82601BC264807B0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
References: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
 <1573121050-4728-2-git-send-email-chf.fritz@googlemail.com>
 <AM5PR1001MB099402F860196D82601BC264807B0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_030455_919348_6DE08874 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Reply-To: chf.fritz@googlemail.com
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Support Opensource <Support.Opensource@diasemi.com>,
 Lee Jones <lee.jones@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adam

On Fri, 2019-11-08 at 10:37 +0000, Adam Thomson wrote:
> > --- a/drivers/regulator/da9062-regulator.c
> > +++ b/drivers/regulator/da9062-regulator.c
> > @@ -16,6 +16,7 @@
> >  #include <linux/regulator/of_regulator.h>
> >  #include <linux/mfd/da9062/core.h>
> >  #include <linux/mfd/da9062/registers.h>
> > +#include <dt-bindings/regulator/dlg,da906x-regulator.h>
> 
> Can we please rename this file to use da9063 instead of da906x
[..]

sure

> > @@ -145,15 +138,14 @@ static unsigned da9062_buck_get_mode(struct
> > regulator_dev *rdev)
> > 
> >  	switch (val) {
> >  	default:
> > -	case BUCK_MODE_MANUAL:
> >  		mode = REGULATOR_MODE_FAST |
> > REGULATOR_MODE_STANDBY;
> >  		/* Sleep flag bit decides the mode */
> >  		break;
> 
> I'm not sure your code is based on the latest regulator updates as I believe
> Axel Lin made some improvements to this bit of code. Checkout Mark's regulator
> fork of the kernel.

yes, the line

 mode = REGULATOR_MODE_FAST | REGULATOR_MODE_STANDBY;

is now gone by commit

 be446f183ae35a8c76
 regulator: da9062: Simplify da9062_buck_set_mode for BUCK_MODE_MANUAL case

it's already in linux-next, I'll rebase this patchset


> > diff --git a/include/dt-bindings/regulator/dlg,da906x-regulator.h b/include/dt-
> > bindings/regulator/dlg,da906x-regulator.h
> > new file mode 100644
> > index 00000000..848a4df
> > --- /dev/null
> > +++ b/include/dt-bindings/regulator/dlg,da906x-regulator.h
> > @@ -0,0 +1,16 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +
> > +#ifndef __DLG_DA906X_REGULATOR_H
> > +#define __DLG_DA906X_REGULATOR_H
> 
> Just to echo previous comment, rename from DA906X to DA9063

ok



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
