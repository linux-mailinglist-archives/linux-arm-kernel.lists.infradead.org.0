Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3D323A09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QHrYMrvaJD+vRxNLsEqd7M3ZIOQ057XbvQequmUJEkk=; b=mybXBLGAPxpJW3mWux25QBbW9
	ykwcEvQicwO4OsJIC3lWMiNiWfBNeXrYrpc0oHBeQnPmwMeRP/ZRBps5PeZSd412agugmwKCJavU7
	Iew+NE3eBF7EDsuSQ8kd6GOx6lBsN0gn5x1N1HmDDdhG5hTDPJPCo3Bk9+4dIWfXuZTPHCvd5ncw+
	4xPH0DjLarETP+V+7nO/dPreF9reULx88emPAjmQI/EBQIu/yKNdX5M2TPDLPZzTU1v6xbU1zBv+2
	6i5oyuy5ljMAzoF9Zy0Xy6gvI6dwJxp22Zbxv/1MfpyQPdzo2GgM7Pie/lQz4LtWSnbatgYRV7zFh
	XIgXZqctA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjId-0007Rt-Cf; Mon, 20 May 2019 14:29:59 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjIS-0007IN-RV
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:29:50 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so6805889plm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=tby8uXDZkwSZbAWO8fG57ZL2jX80Dve7pfkOGdmauFg=;
 b=JNAeBWNmgdatEhdfiKcx9Sg8mUpFZQ4xl1dyiceY9tj3D71kDu9tSjdW1TtuzViITP
 cd9K1+rzDR5r1qXns0bj/MRRdZx6252XB5KUG1hM+p7Ehyp02Tv9+e/Vp4nj/jNMv1+R
 agFTHEoSOUbBGr9YuvNIrk4td7lpKiE0QBtDxvarjgr4L31IyjG9NUu8YJM2uaXT0sF9
 j7IQ+rwLqcAN+gP+BeLpywnLy2AnoutN2ZJJD0STyOFgJyFu+YMlzoPY6r/Jj5zYeGAj
 VY6YvSGGyHYlNdkyBuhQ6aptTqcAIxo1BSZOSvTmSO3fBqT9nVmVLaaAzsjTiD++/F+c
 ba1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=tby8uXDZkwSZbAWO8fG57ZL2jX80Dve7pfkOGdmauFg=;
 b=XVgYYsmCSb/L1+m++vAnJhzZTTjQ+3auFxgF4WPXp0J3HjqjGzFrKl0wuweoN8NtXw
 TBccHlzwxlv2693OUTqneXZcpKLQ2qIfHDwPGDkp6CVyNfgC+7lQ+9A4qhff82ivE+2V
 ho1PPadv43jVvrkJm3YOZKxq9Tr0XPcEDLuLq6octIhoeqGEA1XLHNKmLOq7K1BJRvwG
 Ka7h6vtu6+dRTIbi869vqm1SHSoy6wklETIY16wlnaHMLnLjQaZy5d0o2cIcpKXmbm2a
 L/NiJT0gt8MamIKL9cOXJms0MpkjAcwlNBCVukoC49D9K/r8nKbKQh3I17ERS+fM8I+Q
 0s/A==
X-Gm-Message-State: APjAAAV0Rzny2zHP93M1KQehremvStsLNAdVhKMnW6a79NS4jhQ7wFzM
 vajtC9aGoCHinpV8Xne3fNUrZbf9Ntyijg==
X-Google-Smtp-Source: APXvYqw3svrAsUwlajh8jgiqdVOAxl9UhhGQm15QXltkEN3f57/pm04uu9pJZeNxZjoXR2tFDPd8pA==
X-Received: by 2002:a17:902:8214:: with SMTP id
 x20mr53756900pln.308.1558362587237; 
 Mon, 20 May 2019 07:29:47 -0700 (PDT)
Received: from nebulus.mtv.corp.google.com
 ([2620:0:1000:1612:b4fb:6752:f21f:3502])
 by smtp.googlemail.com with ESMTPSA id z14sm22799268pfk.73.2019.05.20.07.29.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 07:29:46 -0700 (PDT)
Subject: Re: [PATCH] arch64: export __flush_dcache_area
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190517200012.136519-1-salyzyn@android.com>
 <20190517215303.3daebi7o66we2cjh@mbp>
From: Mark Salyzyn <salyzyn@android.com>
Message-ID: <735fc46d-69a4-6b65-f0f7-a09c2be438a8@android.com>
Date: Mon, 20 May 2019 07:29:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190517215303.3daebi7o66we2cjh@mbp>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_072949_058438_2BE7EA32 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Will Deacon <will.deacon@arm.com>, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/17/2019 02:53 PM, Catalin Marinas wrote:
> On Fri, May 17, 2019 at 12:59:56PM -0700, Mark Salyzyn wrote:
>> Some (out of tree modular) drivers feel a need to ensure
>> data is flushed to the DDR before continuing flow.
>>
>> Signed-off-by: Mark Salyzyn <salyzyn@android.com>
>> Cc: linux-kernel@vger.kernel.org
>> Cc: kernel-team@android.com
>> ---
>>   arch/arm64/mm/cache.S | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
>> index a194fd0e837f..70d7cb5c0bd2 100644
>> --- a/arch/arm64/mm/cache.S
>> +++ b/arch/arm64/mm/cache.S
>> @@ -120,6 +120,7 @@ ENTRY(__flush_dcache_area)
>>   	dcache_by_line_op civac, sy, x0, x1, x2, x3
>>   	ret
>>   ENDPIPROC(__flush_dcache_area)
>> +EXPORT_SYMBOL_GPL(__flush_dcache_area)
>>   
>>   /*
>>    *	__clean_dcache_area_pou(kaddr, size)
> NAK. Such drivers are doing something wrong, there is a dedicated
> in-kernel API for that handles kernel maintenance (hint: DMA).
Thanks!

-- Mark



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
