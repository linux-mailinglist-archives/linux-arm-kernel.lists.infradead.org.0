Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522B7FD768
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 08:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSTFcQALSV2+dprEGoUOJZW1V9hc6dhB1huJ77FIDEI=; b=C5fHspKUezEnQd
	WoywesEVtMTluQu4s3ha3Anv388oPqPSTizQQgTer0ZZs/Yqu10//ANZRrv9IB058sP+05HRGqNma
	ctTzgfoV1sE0gIchXbsgvW9V9Cr2AhicX7qrg1o020nbBr3BQbh0yniidqV6CV0oQM9t2Uc1rWnDX
	Uqbq4d7HD11o98lhyrSYKQ8kG9MzdM7w02ZSZokFWwCsPxVQlglZcUVbaWDzWrUMJ+Egv6x7zeZQk
	0skto+bJLlTb6WSz5zhA2qJqgmk7kHHpctyNHM6ZlBL5a3MkTey05L4wtSoBOehQV5hokvGNlaidk
	VuTelU5BzTIlLXWX5nRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVWRB-0004qk-Tv; Fri, 15 Nov 2019 07:54:37 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWR1-0004qO-Uu
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 07:54:29 +0000
Received: by mail-lj1-x241.google.com with SMTP id p18so9654147ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 23:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+C6UFetkkOkabjlrx29bRj2f/pHq6ZunDxUzZ7B8oJI=;
 b=Tj7gXOnqtuG0wJhNZbvfhuhFF7Ajj+d/fkSs7BOhJuk6zYcUK3pqsPz4KlpJ5C6cZu
 CQ9MRWf2wM06ny9O2bnOKcTBNvY1ewmlHc0/L/nIx34DK3gZJOIMBOt6MJMcRJUnM6lj
 Sty8aREsnWc3bR9ednCLj5/uDLng1EyPh4j+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+C6UFetkkOkabjlrx29bRj2f/pHq6ZunDxUzZ7B8oJI=;
 b=daBgmkjyoDti0lwDKxO35CC/qtFq5YwKLY9Fq197vH82Lomiyg9uir1Aq8ikZI8xWE
 GMcC0JDzatipDfruK98qyliiftyaYr7GyR6hMu8ixQ71GYbcRVmbWtlZKTWXgFjwor+A
 gbCc02/WL8oohNeg/OfCGqHds4IS3+Fgn7e4kJ75Z5I3G5w9zlWywHji71TfgjqeoufJ
 ifGggy2CrBPYTo8xVbLe/CWaFJ6tkURW5aOu/6fvh9uPjZRa6i5kbaGvBIm3iaaCU3RO
 CpRo2naMHi3xV3HgacEktohITzvrrO3XfGcmjh9cz6Yxm6OeVvPhcfNaPDAzChsV0pXl
 DFGA==
X-Gm-Message-State: APjAAAWc3W4YE+Z58Qyk/fAYF6oqjxnBGA4LDFM57gYvH8NrWJrtmprf
 zPGFXghM5DscQ4Tqfdc9dj32cg==
X-Google-Smtp-Source: APXvYqwtca4V1MXOZa/BxeDe/jqUfjT4UHa/rribPRAykBqSAV8Y1dWumBHX7aG8dBwq5CyNgx3uLQ==
X-Received: by 2002:a2e:8809:: with SMTP id x9mr9979158ljh.82.1573804466324;
 Thu, 14 Nov 2019 23:54:26 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id w11sm4254332lji.45.2019.11.14.23.54.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Nov 2019 23:54:25 -0800 (PST)
Subject: Re: [PATCH v4 46/47] net: ethernet: freescale: make UCC_GETH
 explicitly depend on PPC32
To: Li Yang <leoyang.li@nxp.com>, Timur Tabi <timur@kernel.org>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-47-linux@rasmusvillemoes.dk>
 <CAOZdJXUX2cZfaQTkBdNrwD=jT2399rZzRFtDj6vNa==9Bmkh5A@mail.gmail.com>
 <CADRPPNS00uU+f6ap9D-pYQUFo_T-o2bgtnYaE9qAXOwck86-OQ@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <29b45e76-f384-fe16-0891-cc51cfecefd4@rasmusvillemoes.dk>
Date: Fri, 15 Nov 2019 08:54:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CADRPPNS00uU+f6ap9D-pYQUFo_T-o2bgtnYaE9qAXOwck86-OQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_235428_000853_293BECF1 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, netdev <netdev@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Scott Wood <oss@buserror.net>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/11/2019 06.44, Li Yang wrote:
> On Thu, Nov 14, 2019 at 10:37 PM Timur Tabi <timur@kernel.org> wrote:
>>
>> On Fri, Nov 8, 2019 at 7:04 AM Rasmus Villemoes
>> <linux@rasmusvillemoes.dk> wrote:
>>>
>>> Currently, QUICC_ENGINE depends on PPC32, so this in itself does not
>>> change anything. In order to allow removing the PPC32 dependency from
>>> QUICC_ENGINE and avoid allmodconfig build failures, add this explicit
>>> dependency.
>>
>> Can you add an explanation why we don't want ucc_geth on non-PowerPC platforms?

It's not that "we" don't want to allow building this on non-PPC per se,
but making it build requires some surgery that I think should be done by
whoever might eventually want it. So _my_ reason for lowering this
dependency from QUICC_ENGINE to UCC_GETH is exactly what it says above.

> I think it is because the QE Ethernet was never integrated in any
> non-PowerPC SoC and most likely will not be in the future. 

Well, that kind of thing is impossible to know for outsiders like me.
Maybe one can amend the commit log with that info:

"Also, the QE Ethernet has never been integrated on any non-PowerPC SoC
and most likely will not be in the future."

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
