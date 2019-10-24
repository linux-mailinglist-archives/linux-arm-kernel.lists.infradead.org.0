Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87384E2C40
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 10:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2dZReV+BmCR034TXsiI3z1N4G3JwulXk6mFlSvBLE0=; b=cvA20ZRQP7HXo+
	LjmBeRGSns4I73uQEUgJHhCQrqssXzop5CmngE1l9hUkfRLUkfA/XdLsQpUm6oZm/D23B9+aZAcwR
	teC0iVNNxCgPGQ/Bk5nJIp8trzQYNXoViK/2u4gIGCyfQVM7CX2Zxx4xfa2vk74lHxgfVzIpCLcca
	H3L0LdW6PLH3xwl9xafAMsroGKFUq8HQlqOErJTsbkuJh6coa8uvjdbK78BGHsjEij2UAJLl9mo5M
	Vj5DaKuknLBDSuSqr3n/UnUwwtxM0aCl54K+/ITzzYqfOctyx0wyuklOWJHNdJDvb/EH4oWTZIDvV
	LvV6f0bmg7s4YIy5Ez1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNYYT-0000pl-1n; Thu, 24 Oct 2019 08:33:13 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNYYH-0000od-E9
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 08:33:02 +0000
Received: by mail-lf1-x143.google.com with SMTP id f5so10673783lfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 01:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+75bXYmJLWTFE3320pYIpgc0DqJcYlwjBZB7EAmPS10=;
 b=gClEFeCU+g0DoMciGkXeW9Z7OGI79blTyZ9lLfcjrBKqg5p80UlmyeFFLuXc5KT5hH
 Q3wWVhydm7bwX2DiG3ftfR8cTTAs24mFH15R4Q4mAz2paRSJ//b3ENgS7RgbKaBPM+Ji
 khtnY1Yt0+YLyd0ZBxlay/rj9Am64z/A1bYGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+75bXYmJLWTFE3320pYIpgc0DqJcYlwjBZB7EAmPS10=;
 b=apW1b+EhItivngOgl9mDh/tGvH9FIZ0hvIWATfE3ZRL/CeucZo5Ml/wyeJXyRYD0Qj
 ITpX1s7OL39zVW58pSZznvLxkZbaf5vXLCzYyuNtpIPUR3nXi3Hw4Y5Ft/kBcE4+slrI
 FxjHxabTYU/tLDnO7ldGN4ZW/ZXMie6JASIMGpAh2/oSNw6cII8bLnYvUMD0bRv80i2S
 WTsq62aVHnlpHDWepMtYT29A32CI8E1A5711MgbtoJdwIVmGEQPhyilZO8zO+JyQHLgI
 WqZsRM8kc0VZKBQUbo/HKDWX0INTnJWYflujfSiF8fdyG/PUutkD/a9fTTTO474Li/WX
 g0ww==
X-Gm-Message-State: APjAAAXCvE1cxO9znn9u9D0CUehYbuIxUmG9s0CSlucf9Aq7/KCjesAC
 KYTIBJBpI1PdroXIaylbu+cqYxJCQfUwHkpR
X-Google-Smtp-Source: APXvYqzGW/Z8ZcO24MLlZ7Q5TGMTH80egPpH3CSH8TEMirFgblCVOGKAPMvCu448esyNvmcxQil8nA==
X-Received: by 2002:ac2:5f0a:: with SMTP id 10mr1989441lfq.57.1571905977834;
 Thu, 24 Oct 2019 01:32:57 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id p18sm12995854lfh.24.2019.10.24.01.32.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Oct 2019 01:32:57 -0700 (PDT)
Subject: Re: [PATCH 4/7] soc: fsl: qe: replace spin_event_timeout by
 readx_poll_timeout_atomic
To: Christoph Hellwig <hch@infradead.org>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191018125234.21825-5-linux@rasmusvillemoes.dk>
 <20191018160852.GA13036@infradead.org>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <a11aaeaa-7075-4ad0-aa26-d8d7eafa72f5@rasmusvillemoes.dk>
Date: Thu, 24 Oct 2019 10:32:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191018160852.GA13036@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_013301_626660_ED4A5667 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Li Yang <leoyang.li@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/10/2019 18.08, Christoph Hellwig wrote:
> On Fri, Oct 18, 2019 at 02:52:31PM +0200, Rasmus Villemoes wrote:
>>  	/* wait for the QE_CR_FLG to clear */
>> -	ret = spin_event_timeout((ioread32be(&qe_immr->cp.cecr) & QE_CR_FLG) == 0,
>> -				 100, 0);
>> -	/* On timeout (e.g. failure), the expression will be false (ret == 0),
>> -	   otherwise it will be true (ret == 1). */
>> +	ret = readx_poll_timeout_atomic(ioread32be, &qe_immr->cp.cecr, val, (val & QE_CR_FLG) == 0,
> 
> This creates an overly long line.

Yeah, readx_poll_timeout_atomic is a mouthful, and then one also has to
put in the name of the accessor... I'll wrap it when I respin the
series, thanks.

> Btw, given how few users of spin_event_timeout we have it might be good
> idea to just kill it entirely.

Maybe. That's for the ppc folks to comment on; the iopoll.h helpers are
not completely equivalent (because obviously they don't read tbl
directly). Maybe the generic versions should be taught
spin_begin/spin_end/spin_cpu_relax so at least that part would be
drop-in replacement.

Rasmus



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
