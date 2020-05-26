Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D291E1FDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RY6uUHFzqzbTjIqnD7sSLJ//nYILAuPHovL8YVvpjvQ=; b=jUsVUbiXIs9rG/
	v/IZMDZ32zaRp4kt1qTq9vH9I2Q3AXXnWw3FAl+wn+KsGVEFlhazR7MxlesgzCu/VEXd3PxKZ3ByZ
	tDuyO3oVs97hCEJRme1IdD2wPD5S3XGiyJu0L1GNTZ0SKMV9gF+//oBdux4EUASVRVErmQlKsd5e6
	dRwecUyaUMooK5Xnep/BgJ1pvyfX+hwGgii7y4MQ4uWlCj7/jVag9xzAcRt4AQhem663JPWzeXOo/
	LYlAT7Hx3Cs3C4W8OHwTpgyeP/0NPvcjPaMF9HBj3lbsjW32EgvVJs9G5EdOkYQ8LZtr9YYyI2+it
	zLdVjv5ubqQLrfjeuDSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdWyP-0002ez-Pu; Tue, 26 May 2020 10:38:17 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdWyF-0002eP-9f
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:38:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds201912;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DcCPTegeL4/9yo2vCU/JGoVKdudEoFYRZ1hgMcX0JO0=; b=qhIXUq65KKmkwLWRnRnI9CLOIS
 rD3r9RUkwcBrzCVqh8UlmI4LPMGuYe0mhot5T8qAOpfEpmpCQmJt5AMH+nKfagIPpkJRMleng1mxz
 OyTK+NFKACihHd75NOPNlfEPWMGrMNPGsC1CL0dV/C0BrRk4VRNMqcAb0Anc8TK6hbWNnDiue89PQ
 VT5+lRx38B/PrsaAuVranD0BLfTnG7SmrJxOOM7zDIHSsL7XlSdPJ4LJ5kMngek2ugR4+s3p7omsh
 BmQoIVwFO4bL2f0m9dY/lEGh6ygghp/tRCaOp54B/zfoU6JcRyRvvI0pYLHODI1ez2TMXOONr8GyV
 fwZhjEgQ==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:58843
 helo=[192.168.10.61])
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1jdWyA-00012X-Db; Tue, 26 May 2020 12:38:02 +0200
Subject: Re: [PATCH v5 6/8] drm/panel: Add ilitek ili9341 panel driver
To: dillon min <dillon.minfei@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
 <1590378348-8115-7-git-send-email-dillon.minfei@gmail.com>
 <CAHp75VebSZa6mwAETnM0t42RQCp4iM6_SNjmy3TB48ixsGKV8g@mail.gmail.com>
 <CAL9mu0+jmcivC6zAXxK0-oXy3n44pAU1QGD7BDq=CT2D7twROQ@mail.gmail.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <c085e8f5-f626-28a9-1d3f-a1c277ec5052@tronnes.org>
Date: Tue, 26 May 2020 12:38:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAL9mu0+jmcivC6zAXxK0-oXy3n44pAU1QGD7BDq=CT2D7twROQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_033808_055532_88B46867 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:3005:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Den 26.05.2020 11.08, skrev dillon min:
> Hi Andy,
> 
> Thanks for input.
> 
> On Tue, May 26, 2020 at 3:46 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
>>
>> On Mon, May 25, 2020 at 6:46 AM <dillon.minfei@gmail.com> wrote:
>>>
>>> From: dillon min <dillon.minfei@gmail.com>
>>>
>>>     This driver combine tiny/ili9341.c mipi_dbi_interface driver
>>>     with mipi_dpi_interface driver, can support ili9341 with serial
>>>     mode or parallel rgb interface mode by register configuration.
>>
>> Noralf told once that this driver should be unified with mi0283qt.c.
>>
>> So, what should we do here?
>>
>> --
>> With Best Regards,
>> Andy Shevchenko
> 
> from sam's suggestion, we can't setup two drivers to support one panel
> in the tree. so, i copy the mipi dbi part from tiny/ili9341.c. to this driver
> from register settings and dts binding is keep the same to tiny/ili9341.c.
> 
> so, in my opinion if tiny/ili9341.c is unified with mi0283qt.c, this
> driver should be
> too.
> 

There's a discussion about MIPI DBI panels here:

MIPI DSI, DBI, and tinydrm drivers
https://lists.freedesktop.org/archives/dri-devel/2020-May/267031.html

Noralf.

> thanks.
> 
> best regards,
> 
> Dillon,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
