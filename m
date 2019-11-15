Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F74FD781
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 09:01:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+m+nmyjPx9UxaooCGkVPGtWFUl1g7h/n4Npl+R75OvE=; b=OKVl+aq+d429mf
	nCqRSWIBRRSxrXLId1Px35sjQUlSmk2NJHQuocM77gGL3VPfV/iz6I1vSvg+RPaQTeyZLV9tSoPN2
	xW4YFQw4UZ4fmYwm7tj49R1jZcTH01ckIur/+VGf0UK8wAN0+/FvloF0O2hCv6QePwdJSX9sxdXV7
	s3XF+e9z+bCihgGiZBa1d3imMYineLgsJ3NgLNh3nrNbKDXGkyMNAkPkoU4SFfDOioqLoivsNaSF2
	Se1Vcma31WKEhG0M21cVorKixlo2GQY8U7xbZ3iTvEs6TczLl1MBUl+mLMTS7nCRn5pdA1YBt0jbR
	hmW2GG8V5zhxyxeBbVGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVWXk-0008Nh-Hw; Fri, 15 Nov 2019 08:01:24 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWXX-0008NJ-Rk
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 08:01:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id d5so9663836ljl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 00:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=K7AVtvzUjcO1cH7HI4QDDaRMFMqYOvK9VjNlChoFy28=;
 b=WvPEQM25nYZqJtCFviyiD5ljzM/UmkIClduWS5T64tJiWhNJmgokv03NvNrxgyQS+y
 +5ABXTxPcvc7NSKvwma9diqktx6g7QSNjbcBVdIQbuLjNfOH8c/sfbAmpgxGbu3j8NvN
 SWQP/Ey72K1GHGzEJeMzAkIbyO7FCT+amG3Kw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K7AVtvzUjcO1cH7HI4QDDaRMFMqYOvK9VjNlChoFy28=;
 b=QZ8z42Rb5uPhTnHP9wOgFIgRkYC/zHaCSHZaVS3q0Bs8tWdFgtRy1gsE77xc8b0CQS
 /mZoQPUimVVxNfB/32MUfGwmdW5Gntr4bAP/YC6noao0gwWOWtwcrRuty/ZLIMNnmM+t
 y/dqDJ+I1WIjqOBWh2c4suL9LccUDj4KGQZMT8GqzkVf7iMH4MbasS8QOV6Ep10a3d/u
 auulTSxDBBTXEdZk8CEe+2NniYVJSlur/SM9DuRyEB7PHknbMTt8HDoiXfQHVaT0g0Ki
 ah1k5RjUnH18PU/IlNQoqQSxiruFSScIfNVRIz2NpZy/HRpUMbcGy/j+pD+ZY9l/3CIW
 CHYA==
X-Gm-Message-State: APjAAAUgNWKYZSdHArn7SP1wdBoCABvgP8Z712pQvmXeNhQvYy7wdaVR
 j6IyjwncJmv3LTazvAvaJ+8GtA==
X-Google-Smtp-Source: APXvYqzc04JNvBuLcN/d5H0lWI5kqLrC+8YRwhm+xzIsLHtvpNLGSz16bdRnRpDrrXnxVQ4J/enZ6Q==
X-Received: by 2002:a2e:9ecf:: with SMTP id h15mr10034052ljk.173.1573804870160; 
 Fri, 15 Nov 2019 00:01:10 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id a11sm3426309ljm.60.2019.11.15.00.01.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Nov 2019 00:01:09 -0800 (PST)
Subject: Re: [PATCH v4 32/47] serial: ucc_uart: use of_property_read_u32() in
 ucc_uart_probe()
To: Timur Tabi <timur@kernel.org>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-33-linux@rasmusvillemoes.dk>
 <CAOZdJXU1ELqQh7TitAJW7bsmnj89wq3opJGVizC2B19nL_3_rQ@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <9f1a846b-c303-92fa-9620-f492ef940de7@rasmusvillemoes.dk>
Date: Fri, 15 Nov 2019 09:01:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOZdJXU1ELqQh7TitAJW7bsmnj89wq3opJGVizC2B19nL_3_rQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_000111_897389_315346C3 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linux-serial@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/11/2019 14.57, Timur Tabi wrote:
> On Fri, Nov 8, 2019 at 7:03 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
>>
>> -       if (*iprop)
>> -               qe_port->port.uartclk = *iprop;
>> +       if (val)
>> +               qe_port->port.uartclk = val;
>>         else {
>>                 /*
>>                  * Older versions of U-Boot do not initialize the brg-frequency
>>                  * property, so in this case we assume the BRG frequency is
>>                  * half the QE bus frequency.
>>                  */
> 
> This bug in older U-Boots is definitely PowerPC-specific, so could you
> change this so that it reports an error on ARM if brg-frequency is
> zero, and displays a warning on PowerPC?
> 

That would be a separate patch, this patch is only concerned with
eliminating the implicit assumption of the host being big-endian. And
there's already been some pushback to adding arch-specific ifdefs (which
I agree with, but as I responded there see as the lesser evil), so
unless there's a very good reason to add that complexity, I'd rather not.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
