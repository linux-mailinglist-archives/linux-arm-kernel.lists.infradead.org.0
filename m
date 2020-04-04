Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF4419E654
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 18:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxQqwPWGDtsEeLnpNDW4rDISj+H5ibGi+ZmJCFoxipM=; b=ZrpMYbiFSw2Iii
	+uTV+Lb0bSx0N4iyPtOrAbKwPycxVXdaizLReMzd/QzkNE11UwJaUc5QSNLjhiLOjk+TW2msP+QKd
	t2K8iPzA1jzHYaxC+io+VT3S6O7faYTV39TBT3wmmXqHehQUIOl5rT6eXQdVzHnllrKOGJHFYmUJf
	nAYp7UxAVux4X7GRDpcCCDL1VuToPoV/YMjH77gvJohpZKPxlnFJh9mqS22i17X6I9nVlcjkb65Gd
	tH9AzSgKX8xm6rCtnpzs5pCXWpBSlYcQ1jZx2vweRxpNvwAAJgVr+Ac9GGkCbKr36sRBDxxA8nZRO
	oR1/oRoNyMmoR23wMiaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKlGF-0002PH-Gy; Sat, 04 Apr 2020 16:03:07 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKlG7-0002OP-FL
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 16:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1586016122;
 bh=r4X94eSPqDz4zaqk6WfhY0MROH0tbEXYtTY3cehrUb0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=XBlp8Wm7HzMIEgPRdp/ZyJlb1ovXkKiNz/AxJuxnaf1r7OwRKQNy0Zi+ur451KN4+
 j1k/n9YHdOORXER/E14KGLcpymuwO08qHwAH1NGP6TIegAQCwK36++mhZ++F2T2sfV
 Uaayr/GTCrilNgwjSXLrAzRz3vnWda9KRCUuTKr4=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.132.181.229]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LcPSk-1ivpoS2PLy-00jnBT; Sat, 04
 Apr 2020 18:02:02 +0200
Subject: Re: [PATCH] ARM: pxa: ssp: Delete an error message in pxa_ssp_probe()
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-arm-kernel@lists.infradead.org
References: <524ae90a-a7cb-feee-6107-743c52c2b1e4@web.de>
 <CAHp75VcBKEJtEZg9wUVdqnSHWb3gaOx493GGWMtisdTAwxmGkA@mail.gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <c6790c2f-7b10-8d7f-5bc7-84d07fd96632@web.de>
Date: Sat, 4 Apr 2020 18:01:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VcBKEJtEZg9wUVdqnSHWb3gaOx493GGWMtisdTAwxmGkA@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:nJpCQSibrNMzwJMfL0Mcjcap0SbMujcWNieUcIIY1/yTFpR/JRR
 LHVb5DrIfT33MFR6haOgsnmdrWZ0CfVkLY3zBBmZ2sW6B2V3n2susoEcU3TmbvAzJQJT46o
 kVJdcdh8u3ouKs0tSyTzgHxge3a+ymV7XKm/lGSRp7WLK1qy5DEkmIbn/Y0ccAcvV9pmHzp
 TmDTTrEJUFsSows/xASAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wJAWe4TCpPg=:gKLgI7b/v/bLgW0ongDDKr
 4/WBAmPzeykbZzX5na/kQtoBY6wmstIDSRRyPfAZA88JSQCW9RNcgSebRl454eiNBhJQWvVqV
 DVB3izin4NEDSYSvfe9bFk8uQB4xpnnXiQnzeP2Eou1/r8XBJee4Q6iLMl4tZeXC6eamT0IUZ
 tWzENiTaiMyaBolHU7WpaT/e024j9Ia1KA9gWcoolDj7CqtdaBN6tc6uwVnQTO/X2y0r65Lob
 wPE+XmTzShW3V0pbm4pdQGYzcx3PaHwHV4BBt6qugWcCsq/kGpSJHPrZ1gIDdCNQeEOR6b2zt
 2ddFAWEK+E6tBXTvrcxJ4WIgDfbZ+AO9tUA5Bw6pKm8w7fPkKV7NaV6z/+9Bh0HOysTMOVibe
 mc6TNTq7qoxyYS0it4muHo9xSKpPWr9Cta94QHTJEex/crCIgpx9v4gNB4fZOQwcloXhhvcdw
 f3/gOxkEwlHbsQzY9AmagC1vhuiXo1LMsEQWcTR84i5Kh4kC/J6YTqzVMarmpov5eGaaCCbel
 qL0Lo8EI+hyNMkY/dcNp2vP/0o5RFbJYu51tiuJsr0GYMVTDjVfm64dtQAIT1xZtj9U45hZyX
 qvIzwO0fZeJymGpEwLlxppDJNQ4ESuHjlmhWDxn0OTdDt8tRtQB+TvtGPvrMb7dQpzA70GD5K
 cvxrNAV9Uf6M4gGNGA+NLD0M1cuPvWqdsUk2ldHB5e0pY4vbZE5cBVWHxOIq6qvQhtNzvt+ez
 HddMfEL1LR7FUWinD1XmaU7MlLwTeZNkWSs6Heax2K4AP0hUSrKf5Yex5831UxSSpc4wu7LMD
 jI8i5kNGtjpiCBhdJMIbB6QL8lAzuTUcSHprYxeZlFKDqwgyEzFSkiA8aKvElYIMdGwRN5czl
 BQIBfTWOjmWrqRDTIuKG0yf+5cz5PwwH9b5uASbS99TJMe0kKUIy0QHRXICk/OnaIwMWVjZ+v
 GE7fhaDZaIwenES98Z/LWoDFi4AmkbLQJ6ev6fcSL7uLzoParGGYqy11DBbrWt3JIH4rwMD8K
 OLtiVOLddc2oB7FxIXzodd5jl1ZiLier0DE7IzB+rQcsistBHcGJHS0fTgWAmF0G9STxErZSY
 PyrWqHnKhwTROrSKXYveG/AHJ60LkFnjWmfEjZE+d4GtLAiXtQYtunUEbltD1J0CXjq7BOioT
 qO7fQyo3u4tF24AdC1thplAgkCCKvMpCWNVrzRQG+w9+wwfbXiVYcUnSIEufVgwQ6sGUFHskb
 ZlZa9GVkVIWqqyxxI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_090259_812582_553A64D4 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Tang Bin <tangbin@cmss.chinamobile.com>, kernel-janitors@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>, Enrico Weigelt <lkml@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>>         ssp->irq = platform_get_irq(pdev, 0);
>> -       if (ssp->irq < 0) {
>> -               dev_err(dev, "no IRQ resource defined\n");
>> +       if (ssp->irq < 0)
>>                 return -ENODEV;
>> -       }
>
> At the same time we can unshadow the error code, i.e.
>   return ssp->irq;

Have you got any preferences for the order of possible change combinations?

Regards,
Markus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
