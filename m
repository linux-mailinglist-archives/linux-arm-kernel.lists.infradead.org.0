Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6279E117368
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N0Cami/jntCKAP5QHF4SHE9QRzN/ka7Qoi+Ugyfzxrc=; b=eyU3+ILKrCOP6ugFaYRtCjP7+
	9tmXTaz4f/mmm2nb4Kji8GAlnhlSjEtyvQ9ptbnJC9LdSeNtdT928zFzbIUplyRePE3PKIIcmgpoR
	uIh11HpeY/XVWmROrQbcR5pDKiFM+g6H/g9XumyyOuICJ8y5++TvzBOkJq70KrsVj8KnqAVrbUtwL
	3mnG3oAGUEOQedb7vwI+w16dt9qhcph5PB/GS3KFm0CBCshixObA/4Iiw76i1kgjP8OQ9IFeN+kMr
	PVsQAYTuSwaY9LnG5a/w+ORAP4kjXCEbk/N+EdNWZpTiPG8K7iknHTbvzjJdoyTnBRpxIVkrr9uS5
	2H0SSKyXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNND-00006G-Nl; Mon, 09 Dec 2019 18:03:07 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNN5-00005i-GF
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:03:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so6110063plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:02:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0YsPAtOD2B97kYz+aPx1oxns46408201TPj5O/tIazQ=;
 b=Sz+/fCjqYOiJDd/7AcP5OSR6UajygLGcCbKT5Stg6Oz8XAY2WmjrCBd/m1SYfnEEnQ
 Luf4Qn4e2hwf+WkdL15QyOYY1iVTaWzz1KevnrW4qtzYHKf6a4LyKSwXUu4niXhRVQmh
 sjoLhkzMwb2ozNPJAIJsygJ6dLZ8T+Peg0Xb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0YsPAtOD2B97kYz+aPx1oxns46408201TPj5O/tIazQ=;
 b=U4HAvh6orzuRlCCIahlv7dNmDvVI6NO0yOtbpLyX7NnrWExwmqPBTwCokJldHLvUeL
 e3foCckO71xq4YK2b/6DIxsVcSRlT0WVAFSi3WjWZtBBFdYzBiCQUYyCepQWQ09AmgDx
 HXqGhZL4wmGAKcyOOWlxSHQ8jVQ9A2Yh9zkc4Zg3Xgjl4ajfKWONIvfineer6sebBO8m
 FZpTS6iR3C6aLrv5sOHFbYE6U8Sz93UW8334Mm2tY5YmhDFpKF3Dqn4F6TMJutE3oPpj
 1Qce9F49s4IxtHAscsWa0rR7vRlZIvGJz0NOIMlkaQu+27GqxJVmtvw9dygdlBI7N0A6
 NblA==
X-Gm-Message-State: APjAAAVY1oDqteGI3x7OQXenataW+D1bUPHwvX64okuuUvhuj6mGdWxF
 5Z4l1+CcqtizaJzSR3jwGuHipQ+AADAx6YJ7o3tGWzQxbSR3iKjSAR5Hz/FECAunmcueKDEzko5
 6PYcnDK6T59P3lsoPIKHOxgWxcOk2BndR6hBprkHGupLjP0SFgpxZvNWtx2Wcsqr3jbYhrJKXx7
 RYazA6ib35EBg=
X-Google-Smtp-Source: APXvYqxsvzB6CFv06nZv5X+fP4cX+FzYXhiKJAS60N31poBuk0qfyxhmyAij3weEl98sWCL57RWQFg==
X-Received: by 2002:a17:902:9f98:: with SMTP id
 g24mr31305945plq.325.1575914577974; 
 Mon, 09 Dec 2019 10:02:57 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id h128sm114062pfe.172.2019.12.09.10.02.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 10:02:56 -0800 (PST)
Subject: Re: [PATCH 0/2] Add iProc IDM device support
To: Marc Zyngier <maz@kernel.org>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191207173914.353f768d@why>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <bd90ba80-9aac-e406-9066-64e975e5b10b@broadcom.com>
Date: Mon, 9 Dec 2019 10:02:53 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191207173914.353f768d@why>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_100259_538889_AF5EDFD7 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/7/19 9:39 AM, Marc Zyngier wrote:
> On Mon,  2 Dec 2019 15:31:25 -0800
> Ray Jui <ray.jui@broadcom.com> wrote:
> 
>> The Broadcom iProc IDM device allows control and monitoring of ASIC internal
>> bus transactions. Most importantly, it can be configured to detect bus
>> transaction timeout. In such case, critical information such as transaction
>> address that caused the error, bus master ID of the transaction that caused
>> the error, and etc., are made available from the IDM device.
> 
> This seems to have many of the features of an EDAC device reporting
> uncorrectable errors.
> 
> Is there any reason why it is not implemented as such?
> 
> Thanks,
> 
> 	M.
> 

I thought EDAC errors (in fact, in our case, that's fatal rather than 
uncorrectable) are mostly for DDR. Is my understanding incorrect?

Thanks,

Ray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
