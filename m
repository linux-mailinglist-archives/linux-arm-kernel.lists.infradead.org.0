Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87608F8A5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 09:17:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bweUUZISTiLoB8J2JUOUd5Sm/j/J6P9KyX5Ekemqd3I=; b=kUmiKam4c+Q90u
	2KTyHBjUO0XuDrVhGOfdQYoqcYRnqMoDH6W3Fg15Hj4BQxe4chRF82s/Lw8qV0UW+lStv0eri79xs
	cYxZOgXpNCZPL00UmWIDCVbGDUUWf0M4CDqHgEjRioypevizHasRlVar7M3/12BnVimC/ZZIrpRSG
	zYV4+EiEn/GuKH0f/26uHiHSXOmKayWZK7bnTGHsZ65gw72XTEHSy3MSDjaFpvT6V4w8LFnSp8Bfr
	Vf5de6hDybokKwEVEB5C4fdL6lOYInBgk/Izqb28igNQTs7DUDe8lQjzOImEAOaqr/uxCAldK9o7i
	QMrWoqoD1Y5nuYZALOCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURMm-0002O2-71; Tue, 12 Nov 2019 08:17:36 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURMb-0002N2-R0
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 08:17:27 +0000
Received: by mail-lj1-x242.google.com with SMTP id n5so16718059ljc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 00:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1UOrfE7eL3IqcRqo+GTUG4MyEyzZRkxeXy7A5k+rq7w=;
 b=BX3IR55pLCl6cXu5ECToHFRRet9jbkK5ccrkybPqkm9HryzEg+Vk1y587h9AeXIVNl
 hfxfeum8529o7h1XtQJZ0VtiGv4f4AjFzSyvTRbO8RczB2sYykTB2nw3/elVxka7pA/v
 BghNo/TL0TazYty8NYdFLKhrCgy/i7EqozlAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1UOrfE7eL3IqcRqo+GTUG4MyEyzZRkxeXy7A5k+rq7w=;
 b=XyA8jGyvjcykXOqPjeduV9z0G2hzC1IcsegCY55enqp/9gbTimCJrKG6vl1JHhEJo3
 WQr/ryPwlOdtmmGTjBSw5buZaZCgxDX+4x5h4PZdtZQBEOpIXRJ7IOFu05WbrT60x6T8
 g60spA7dEFSaZJJThZlpbEDaE3t7dwPsawq+TTsHK6hQdv4qZaiuNgCCU6esESfnZ1Um
 2N8bvrY5rgn6qh5oYKsj99/BG7eUh+NcD+Q1IMPuhShh/F7/PMOcGiI45frMHgU9RID3
 Rs2tbb7+3vOUUIoRuwmLiSBXb+rXdnNbfscazm/SFbsddLAvLc7pSm9mvlUm2oI7n7iV
 cE3A==
X-Gm-Message-State: APjAAAUvLW5Y7ngfWaHWCebmYxlhdVE5QSiborDwSzybf55UopzRYkMp
 SMMvo3LgPEjEwbCYRdSjieCD2n1a2eOZJJ9l
X-Google-Smtp-Source: APXvYqwnzpW96b39jBou0jnSlL/HS7I564u3+KsUO4+qOnY1pdOoDbEAhAuUMgbbOG4MEk38oTo25g==
X-Received: by 2002:a2e:8518:: with SMTP id j24mr8331198lji.13.1573546643476; 
 Tue, 12 Nov 2019 00:17:23 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id a22sm7966566ljn.58.2019.11.12.00.17.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 00:17:22 -0800 (PST)
Subject: Re: [PATCH v4 34/47] soc: fsl: qe: change return type of
 cpm_muram_alloc() to s32
To: Qiang Zhao <qiang.zhao@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-35-linux@rasmusvillemoes.dk>
 <VE1PR04MB6768D483426A2B6CC04E069D91770@VE1PR04MB6768.eurprd04.prod.outlook.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <75efc4ce-c6da-92c4-e3a5-5e37311b0f33@rasmusvillemoes.dk>
Date: Tue, 12 Nov 2019 09:17:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6768D483426A2B6CC04E069D91770@VE1PR04MB6768.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_001725_869831_47F96584 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/11/2019 09.01, Qiang Zhao wrote:
> On Fri, Nov 8, 2019 at 21:01 Rasmus Villemoes <linux@rasmusvillemoes.dk> wrote:
> 
>> -unsigned long cpm_muram_alloc_fixed(unsigned long offset, unsigned long
>> size)
>> +s32 cpm_muram_alloc_fixed(unsigned long offset, unsigned long size)
>>  {
>> -	unsigned long start;
>> +	long start;
>>  	unsigned long flags;
>>  	struct genpool_data_fixed muram_pool_data_fixed;
>  
> "start" should be s32 here too?

Yes, of course. Good catch.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
