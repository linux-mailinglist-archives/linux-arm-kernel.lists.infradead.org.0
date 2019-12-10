Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48D3117C48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 01:19:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X4ZU46zeT/EVBuxl9ux42rqjtip7N3ytbJLGpRD1VvU=; b=DMYGYM9MoKYusK/bJnsJnlBzt
	PyHnQbWROi/YBmyr0/22Ika7RD4qc6rGTQsJUr3rjWVvMAf4p9lFrIHRKUkJ/5DpkJfOmK7efO7Yv
	8aNBO5jKQtSO81nqbhn1rBbNG8EGA8lb/GiYNp5NavP+M4jmg2drY0HHEKRmylm52Jm1ozNzk+J9b
	EA7Ln4BqkMQ2SK0yCEL0W5pS4GnEgx7e5QH9VkMzf12YsVa3yHXk/IJmBHNFZRzNp4cOpO4aGqq9L
	0A4NCUxLOEzCXJDM1epB9qup1IftXfpVg4QZl9PfZabKwxUh6STWXbCLkUCr9FKaEUPGh7SLdU3iN
	AhRANddNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieTFK-0005Es-JP; Tue, 10 Dec 2019 00:19:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieTFA-0005EX-8z
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 00:19:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id c20so1229596wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 16:19:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7SQNMrH3FWLOHx8P5+nc/Y/vfFqnbuXwKn95w6eAgao=;
 b=SwCeGizoute6aM8WBuWO5aqLXZvlBE9LQkiA01eogphBriUxjYU5BxsC+cYroUmZE8
 tqi0jLBqvVR7I87fm/QGOxMkRFn8sICZntbBTvgffbv8ooc6M63WJ+CKxFd+/tP/SSSK
 UQucOxuaOq96ykIy8qxsmP526hqGxid+/SVSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7SQNMrH3FWLOHx8P5+nc/Y/vfFqnbuXwKn95w6eAgao=;
 b=r9EgwO5o4+MLzror/FTrnYjacWP/0ihsxuoMcgYnoItPIWKzWx/4bXpur10GVf/c41
 ejoX22uSXD+9ZeMSLkt3ysjeYT7vteN+RU7HZOMGCJXlm1UO0uI50Xil9B+MqVHsdxOw
 AnQEDhDRytLoyvgoBAZptoI3kEa6Cduh/BuiMrPy5UtHPgUB8PmWoi76u90BUNVDbg4t
 LIdRC31B08HElp5M/jl9tEqxTVC/yltIqPE83eLS33Ld220X+KrpQhw3wY1wp+vMwauZ
 2/dNqcFlSwwKbSyYcF9L8n5QQO5yvl7ekopBo/mp2QWrnFA8H0Q6wqvRcZzmC4Lb94WI
 vjzA==
X-Gm-Message-State: APjAAAVpo52HBjBy9KTxzoWl56f/OhgfHsfAdHYi9v26IvsTLMasOEjM
 tljbRVP4R0OGyV7NSENPkbQA/cri4knW6N/N65Jkh0UQYXqZZhOXwATvvmnPe/RIFcwTBSlJt88
 K56Ji3y6pCcHgto5QKqOpFWZ5QQUMgzp8E8BE454EbKoxKwRB9JFoVcM9W0q4rJLd06k6idUTrZ
 3D8umNp2dms64=
X-Google-Smtp-Source: APXvYqxzOk0JdZlf+46jK9Xp8GhKR0K8LVhI3QZ5He8BwBXVH+OKWm/me7LNc/zlPupDn98PkoD4/Q==
X-Received: by 2002:a1c:a750:: with SMTP id q77mr1645652wme.76.1575937149108; 
 Mon, 09 Dec 2019 16:19:09 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id b17sm1229259wrp.49.2019.12.09.16.19.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 16:19:07 -0800 (PST)
Subject: Re: [PATCH 0/2] Add iProc IDM device support
To: Marc Zyngier <maz@kernel.org>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191207173914.353f768d@why>
 <bd90ba80-9aac-e406-9066-64e975e5b10b@broadcom.com>
 <20191209183636.6d708bfd@why>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <69ff3b8a-e99e-7128-a02a-1cac1da3eb66@broadcom.com>
Date: Mon, 9 Dec 2019 16:19:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191209183636.6d708bfd@why>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_161912_319795_250B21D1 
X-CRM114-Status: GOOD (  16.15  )
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



On 12/9/19 10:36 AM, Marc Zyngier wrote:
> On Mon, 9 Dec 2019 10:02:53 -0800
> Ray Jui <ray.jui@broadcom.com> wrote:
> 
>> On 12/7/19 9:39 AM, Marc Zyngier wrote:
>>> On Mon,  2 Dec 2019 15:31:25 -0800
>>> Ray Jui <ray.jui@broadcom.com> wrote:
>>>    
>>>> The Broadcom iProc IDM device allows control and monitoring of ASIC internal
>>>> bus transactions. Most importantly, it can be configured to detect bus
>>>> transaction timeout. In such case, critical information such as transaction
>>>> address that caused the error, bus master ID of the transaction that caused
>>>> the error, and etc., are made available from the IDM device.
>>>
>>> This seems to have many of the features of an EDAC device reporting
>>> uncorrectable errors.
>>>
>>> Is there any reason why it is not implemented as such?
>>>
>>> Thanks,
>>>
>>> 	M.
>>>    
>>
>> I thought EDAC errors (in fact, in our case, that's fatal rather than
>> uncorrectable) are mostly for DDR. Is my understanding incorrect?
> 
> No, they are for HW errors in general. There is no real limitation of
> scope, as far as I understand. Recently, the Annapurna guys came up
> with a similar HW block, and were convinced to make it an EDAC device.
> 
> See [1] for details.
> 
> Thanks,
> 
> 	M.
> 
> [1] https://lore.kernel.org/linux-devicetree/1570707681-865-1-git-send-email-talel@amazon.com/
> 

Ah I see. It looks like memory controllers are the primary devices 
supported by EDAC. In addition to that, EDAC also does seem to provide a 
generic data structure to support other types of HW devices and error 
events. I'll look into this and get back.

Thanks,

Ray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
