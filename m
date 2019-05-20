Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFB62404C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:
	MIME-Version:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oA5VId6k0VS4rhLgZPM/HBbHIuwVoTBck0oRezeXQxI=; b=s+LTDzR7jbM41e
	O3aheobS/QHZYYzmTLfwj3d6CaCJ8o7Y1HtbRtblny+bGaAwgDEePhouN8n2fw6JIDRzGOg/DdN18
	TqtjMlQZbhHpboJg0LtIrWb9pFuhoSLPiTXn0l7YdpLRoJxCT2TzZEe69lB2ZUXCoCucduS+jYUy7
	GhcccwwfAHJyCHCmw34vEYja4z3RYz8NoEKY49R5k37rsgWw0+ILspd/5mHmf9GNEUWhF/BH+tX7f
	ceJDJKZJ2Hea3o/w0goKX8wBptLakzBLptGp+coR6EvT5c+XbuIxDKPJsXMR1tEMBZ1HKCzOXIU5h
	hfrG12EiFu40Yz8sKbIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmz2-0006Zc-Em; Mon, 20 May 2019 18:26:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmyu-0006YT-9O
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 18:25:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id f10so292214wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 11:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=sdtwsXgqa/NDq4JZO/qTIK4aUEyBtvxUvqlGly1nriI=;
 b=NdQOnzKz6heoK6zaciWzqf3ePB2ECiG3nRuCSbEsXZu76sa2AL2Ldo+j/m6TP3/JHA
 36eF8VzFXeFWRa74x2Z6KsjgEDTyxSPRbHm6Z5FxSBhEwsOjLDj8OhcwHg49SPBdhYTU
 Jpzy0aZ+floKjG2FR4g9i7rFFQ8nlulhSX1e29HrELIhby0knGJWen/07yz8jtQL03b3
 HtNlPO3AQnmgFaHZGqFCt4Hx0QvEaSY1EzKQR3AZfhNRyHdDb0CxitDCXs8GSkmcgPNP
 SB4V8z/Eja5I0pVC9c6IhdT9RYTk1cyRDCkYqAbgVNL2L4n5RFPVTOTphS+INj+7srT7
 Abiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=sdtwsXgqa/NDq4JZO/qTIK4aUEyBtvxUvqlGly1nriI=;
 b=DGy59VaIat+dIRlddmpDu1G+Ua/q/Ib7gmU9jD4VlL2Ilk5FOZ+f6Wbz7TtKKbBLa9
 flN+inPV4lkvRAMVpYXzNYrIit5ZpacAREQwDVQH8o6DydugS0EwvprB9zIBWT9ZjTU6
 s3uwsd4ZS/RWldwXEEV1PDmFIPYpI9NkwaptMkO4e/Z6GAP53CVqukBXPl3zrUZt7xTd
 lVrQy6XvXjnvDocrAexNmAOb9kMFjv/uW+wqe7QCcKWvzmSrUvETQN2lU0XTWFCBxGW0
 ex2lMw3o3sWSchOZpz7/KhFTTjrjmitAwmgrPfxrX2CsS5QvKcEhxSI2jzbg6iE9Mt+R
 9YXQ==
X-Gm-Message-State: APjAAAUXUkV31PWq9ps1Ue5Ra/gpNNfds5ZdXgV+gFwnZG/c48ZlzpVZ
 /S9O0YCKeUD/9d0cfMh4iO9zJX70bHki/g==
X-Google-Smtp-Source: APXvYqzF2++lQ5ZuxocUnfANpanLa7uAQ0+FDIAeGsP5M2LB9AUNt0qLR81E1CVhrpDpPpXwwrLa0A==
X-Received: by 2002:a5d:4647:: with SMTP id j7mr11774775wrs.280.1558376750654; 
 Mon, 20 May 2019 11:25:50 -0700 (PDT)
Received: from [192.168.1.77] (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id j28sm28737171wrd.64.2019.05.20.11.25.49
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 11:25:50 -0700 (PDT)
Message-ID: <5CE2F12D.3040303@baylibre.com>
Date: Mon, 20 May 2019 20:25:49 +0200
From: Neil Armstrong <narmstrong@baylibre.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13;
 rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH] irqchip: irq-meson-gpio: update with SPDX Licence
 identifier
References: <20190520140310.29635-1-narmstrong@baylibre.com>
 <alpine.DEB.2.21.1905202001270.1635@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1905202001270.1635@nanos.tec.linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_112552_331018_AF046F41 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: marc.zyngier@arm.com, linux-amlogic@lists.infradead.org,
 jason@lakedaemon.net, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Le 20/05/2019 20:02, Thomas Gleixner a =E9crit :
> On Mon, 20 May 2019, Neil Armstrong wrote:
> =

>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  drivers/irqchip/irq-meson-gpio.c | 15 +--------------
>>  1 file changed, 1 insertion(+), 14 deletions(-)
>>
>> diff --git a/drivers/irqchip/irq-meson-gpio.c b/drivers/irqchip/irq-meso=
n-gpio.c
>> index 7b531fd075b8..d83244ea0959 100644
>> --- a/drivers/irqchip/irq-meson-gpio.c
>> +++ b/drivers/irqchip/irq-meson-gpio.c
>> @@ -1,22 +1,9 @@
>> +// SPDX-License-Identifier: GPL-2.0+
> =

> + ????
> =

>>  /*
>>   * Copyright (c) 2015 Endless Mobile, Inc.
>>   * Author: Carlo Caione <carlo@endlessm.com>
>>   * Copyright (c) 2016 BayLibre, SAS.
>>   * Author: Jerome Brunet <jbrunet@baylibre.com>
>> - *
>> - * This program is free software; you can redistribute it and/or modify
>> - * it under the terms of version 2 of the GNU General Public License as
>> - * published by the Free Software Foundation.
> =

> I really can't spot a 'or any later version' text here ....

Exact, will re-spin, thanks for reviewing !

It was all blurry after 54 SPDX updates !

Neil

> =

>> - * This program is distributed in the hope that it will be useful, but
>> - * WITHOUT ANY WARRANTY; without even the implied warranty of
>> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
>> - * General Public License for more details.
>> - *
>> - * You should have received a copy of the GNU General Public License
>> - * along with this program; if not, see <http://www.gnu.org/licenses/>.
>> - * The full GNU General Public License is included in this distribution
>> - * in the file called COPYING.
>>   */
>>  =

>>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>> -- =

>> 2.21.0
>>
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
