Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BA9E932F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 23:51:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNho7fV2VBhCQIPct8mYq9gzTd4sxtSVugVkbK+TevY=; b=nwu9MeVu7UDb2M
	PCCRnF3LbNEf24rMb6gf63X9ZYOAL8A5mNQkfxLf8kjM0L3O8JgQa1uHeGJp5X/FtiLeiiPQVS2JY
	CFdAcCU6Q5uPdt7K0hWgAEsin6MYgRJqPiI6SVK16/36n6z69zppvzyTE1nXjefvrz4y3/qgLTQ/P
	9hmPWPB9AhbRtcf3mddApGT8pKfzn46DK6Kr64VskxH/ZabVEY9tWkGUoj+hcrj6wFaEP0i5rUECd
	Znr7ZITMr1bHuOeF+sEbnNzCgI2Ja+U4iTsCuiECmFy17lAxNvNBKkFRZhB8kGn4Ty8CfbQcn8wVE
	PAKUI6GDDCTfRSvnIzOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPaKG-00064S-IH; Tue, 29 Oct 2019 22:50:56 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPaK5-0005vp-Vp
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 22:50:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id q130so87002wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 15:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=btcO2kbQzjWCRPlDPp2ih4Wwes8/F4qc3tgqqhv/xx8=;
 b=IpOq05N4KjE4zg1oC5O7H20w97yojnP1buo5WYqtlFfYFF3MNAXbfZtKUaRR23Hev5
 MfdWZAUKaGTCTo5ws7T0XlnPU1wZZYu25+voj37P/E9iHJQjeESf9QY7McgoJIrMwVSn
 +V5iqH6DXsiTXkyN/6pPQ5/cnKEegZm2BKZzI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=btcO2kbQzjWCRPlDPp2ih4Wwes8/F4qc3tgqqhv/xx8=;
 b=NiHz5Mg/HypZBr2G2UM5JeVGs3WDwmrjaLQ1ngrjGipR7N6vYHCeE3pg+IHrJvrDrp
 nUjLOt44i1J8JEHAbueZy/WOYQjNT+kfOU84wBm2GNarnzFQ49kWvPQc2D71/jKBnPxq
 Zn9ZHfiQ9gKHdIb7f/++dde6FHxVYnKSsbYB8sJcfTJobMSOeScU1nqi0YOu4CK8Mifr
 6Eb1D7AfC2KeDDfyjdOT7JoVTyML22Y8VeGWJbpBFJIZjdvKgIbNwVdqV/T7Rj3GJX0+
 40qOHDgmiP1qL50n9DQEr6MtTt17eEUXho+iNu+Ik7+9OaIBkWwYVUXaakMswR2uzXDk
 xUjw==
X-Gm-Message-State: APjAAAVWUoGtDSDbTZbRgQig+6RP3a0NEBana4CJTZGrm8CITFe0816b
 BVkX95u46RbTrREZGRwA4nzlkQ==
X-Google-Smtp-Source: APXvYqwvFUOZBquoDvuOipQqVhVeJTxzpP1yQP9WQ69QCPwyrvLFWnlerZKyvn/QDEJrMiW4edqnQA==
X-Received: by 2002:a05:600c:350:: with SMTP id
 u16mr5802601wmd.160.1572389444332; 
 Tue, 29 Oct 2019 15:50:44 -0700 (PDT)
Received: from [192.168.1.149] (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id x7sm903106wrg.63.2019.10.29.15.50.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 15:50:43 -0700 (PDT)
Subject: Re: [PATCH v2 20/23] serial: make SERIAL_QE depend on PPC32
To: Leo Li <leoyang.li@nxp.com>, Qiang Zhao <qiang.zhao@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-21-linux@rasmusvillemoes.dk>
 <VE1PR04MB6687CA599C89D46076C9B3518F610@VE1PR04MB6687.eurprd04.prod.outlook.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <42d151c0-bbf9-62a5-5930-70d62418bb84@rasmusvillemoes.dk>
Date: Tue, 29 Oct 2019 23:50:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6687CA599C89D46076C9B3518F610@VE1PR04MB6687.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_155046_050457_8ACB5539 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/10/2019 23.44, Leo Li wrote:
> 
> 
>> -----Original Message-----
>> From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
>> Sent: Friday, October 25, 2019 7:41 AM
>> To: Qiang Zhao <qiang.zhao@nxp.com>; Leo Li <leoyang.li@nxp.com>;
>> Christophe Leroy <christophe.leroy@c-s.fr>
>> Cc: linuxppc-dev@lists.ozlabs.org; linux-arm-kernel@lists.infradead.org;
>> linux-kernel@vger.kernel.org; Scott Wood <oss@buserror.net>; Valentin
>> Longchamp <valentin.longchamp@keymile.com>; Rasmus Villemoes
>> <linux@rasmusvillemoes.dk>; linux-serial@vger.kernel.org
>> Subject: [PATCH v2 20/23] serial: make SERIAL_QE depend on PPC32
>>
>> Currently SERIAL_QE depends on QUICC_ENGINE, which in turn depends on
>> PPC32, so this doesn't add any extra dependency. However, the QUICC
>> Engine IP block also exists on some arm boards, so this serves as preparation
>> for removing the PPC32 dependency from QUICC_ENGINE and build the QE
>> support in drivers/soc/fsl/qe, while preventing allmodconfig/randconfig
>> failures due to SERIAL_QE not being supported yet.
>>
>> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> 
> I think your purpose of this series is to make the QE UART not depending on PPC32.  If it does accomplish that then we don't need this change.

Yeah, as I've said in private, I now have the patches to make this work,
so this patch (and the later one removing it again) are both gone from
my current dev branch. I'll still wait a day or two to allow the ppc
people to respond to the inline/OOL iowrite32be issue, but after that
I'll resend the whole series.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
