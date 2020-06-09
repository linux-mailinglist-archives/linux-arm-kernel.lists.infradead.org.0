Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1471E1F450D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jz0wNBkxpR4QhT9B4kILtXqkIP45h3E8QVojzBgt3XQ=; b=RmkzMdLUpbO0XM
	DufO9AXRUTr4k9hNH0nvgI0GI475UhlHRG0lVg97zruxzCNuUzXmUmT7ZjvaZK8HlZhFUnr3PBSvm
	K5fMAuMB17SFaDtShcCJsPdll5xSQ0Z6pPlXqGArkhHSCbc9T7/KRSEYdSFAOqDGPm+Hmq0Dpd60H
	2jopOH7RtZNOgQD85pgxZVPPGeHOc97u2IQn8UkJwLmJunFlCwftKTIp2afnZgdAw1abofLm70jLJ
	vQY4OB16r6yJsrNNEiAjCoqHgfDedoIcc6V7udA/LhGB3NF+v35BHydBs78QA4raE+gz3Z6mT6ZKx
	rl4r/aSQuk6omZWtQwWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiiig-0002wz-5p; Tue, 09 Jun 2020 18:11:30 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiiiY-0002wD-1A
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 18:11:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id x14so22379685wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 11:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qgCbHMP6AVsGQBCrGpsb15Exk7Vp+Gh9P4NumeRLi+Y=;
 b=qi5HMKbBPL1Bh6aQC3t5d2/Dp3Eie7JwKbgSTjHdzQFRybqrLqFuLGnTlRsQLSiERd
 p9FIccIt9Yvio8fbR/sn66MTqroj7M/PJ6vGTCoM/1ifBlTKGXJZzfxedzuo+XpkNSSE
 IFHYIuz0f//LFRc95jJDMFWGX3KEHu4NbEMcEyikMwZHMmjGkPsPANc3KTcysyCqsjb4
 A2TQ7k5KZqLbnTHC0ZDu4i9HuX0NBRmgD6DqVpDLA0mb93UOkM8lfeOam9wyy3NykEFj
 60bHhrMas0QEU6u6rxNWZPlX8I6begbQsWbkGqJC8vnQjoLzBbjAkZQRbx2tzQp6W847
 UzfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qgCbHMP6AVsGQBCrGpsb15Exk7Vp+Gh9P4NumeRLi+Y=;
 b=flk0cRb9Xo/+Jr1YTQrsezpNPJ68jOep4OerhaV39hbYAZz5txnTNZBRvgCRnHU1p8
 LbG6Dz5d1dmpb8/YVTeCbTb/ZRtBRF6fm2/uLelKalNR5HPPIaxDEGXSvhdZLKuT879W
 M1pjhLPBhBa2/dC2trsCl9uHXkQANjLOsr62LlkkSyr6mnJ4Mi6sd1jENwOEJFA0Gjxk
 WV9kunFg6Jl3PtKsxas+vVVg7t1aYXxvkGG2TL1Yl05WA2ZewvcLDyp+puXcTmWAbKQh
 r+NTuoBTGn+HzUF9cP+Hqwm9mJVzTJlc9d0vWc3jBa+WtGM6T/H8TvLdK1pNSsdrWJ2n
 HvMQ==
X-Gm-Message-State: AOAM530CnDl0gX6ZfUqnwOwpWbIjaXkYerHk4tA1NsKjR61UJQRsCPpK
 qKka8fF6/spy+pD5z/pCRNo=
X-Google-Smtp-Source: ABdhPJyRGm0pc16LQUVQ2F4WFKqMsY2eImNCDmlPz96bHf801beZrkCemV7u8X7ypYSStxjbDFNhhA==
X-Received: by 2002:a5d:6444:: with SMTP id d4mr6022286wrw.239.1591726280543; 
 Tue, 09 Jun 2020 11:11:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604?
 ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
 by smtp.gmail.com with ESMTPSA id b132sm3738724wmh.3.2020.06.09.11.11.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 11:11:19 -0700 (PDT)
Subject: Re: [PATCH v2 5/6] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
To: Dave Martin <Dave.Martin@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-6-git-send-email-Dave.Martin@arm.com>
 <1084d017-54f3-475c-be1b-aabc801d9a71@gmail.com>
 <20200609141620.GC25945@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0dce173d-25f9-fcce-cfa6-b4d8d96c906c@gmail.com>
Date: Tue, 9 Jun 2020 20:11:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200609141620.GC25945@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_111122_092817_2C609FF0 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> I applied the following change after your patch; is it okay?
>>
>>  .IP
>>  .B Warning:
>>  Because the compiler or run-time environment
>>  may be using some or all of the keys,
>>  a successful
> 
> Looks fine, execpt that I think you need to move the
> 
> 	.B PR_PAC_RESET_KEYS
> 
> line here also.

Thanks. Fixed. But, the fix will be in the 5.08 man-pages release,
I'm sorry. I cut 5.07 a few hours ago.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
