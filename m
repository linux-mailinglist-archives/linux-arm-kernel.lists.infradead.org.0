Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F30BC246F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAH10gguVdpZ0oizZ/kKSGrbLiHMs7sKmgscOSkTvuc=; b=Hm2x4nDMkPZWMw
	ELax0uwMvQvEbSvgNOQDoXef5MdeOW70ZK+tkvB0SHrq9rUSvIGbSimWcglc3WlpvR7X4THEL3Ezq
	N7PV41W8bgxz3gH3WcQI5EOEedhpUBQqG7ZoYtNR9/yGqFcCusNSvvXZdtErs90zDAUuHNmTRA/LB
	Zhcp0qTRrBV/K3P7dP3oXU5rFJdVDRlK3y+1nfT6fhe/soP4uo0TRNUbVED6HemvO7xUmsAjebRBS
	/tL4zQm5phgtYHLAg73glmMJBTk9xlhsm31PKdjUM+gJW6ofoJbya59k6NKNSW1SQkR1xsRmJtitP
	hG0GGFhDrHCYOnAljJag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExl8-0000si-S3; Mon, 30 Sep 2019 15:38:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExkx-0000sE-Uv
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:38:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id o18so11854763wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 08:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UKXLz9Q+LLB6BiMrKWPLQcSp+EA3Iu1euCxCi3Xv3c0=;
 b=n9sASN4UUOQPMdZuPwJozxZDdv83KL9DUcPizbcn2bvZxDQqLtYacXWM+0rzQd/iGl
 axWN+Xz3U8OgVrRGcEsgYLx81wnqMa1IoClrYmwTji0SPt0W7CRVEPsIhhY4lMNMFO5J
 rvjVPdlA9pZe+NVWgksF+ZW6iZ+WkCUSX1Y8iRHEb3Dly6TnhLkrwfzj+3C3Ju/6diQJ
 wrrBQ0K307e4QvincJsK2CUlfvBwNic9MR+oVXAruC21MwEhiiTIIKHuPiQfUNhGxzsu
 Z31LYorgUhJuEBwlilPNFYQmRii/uKas8+Tpu87L+JNxqC/0m9FGO/wlpn6isaabt1SP
 Sl8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UKXLz9Q+LLB6BiMrKWPLQcSp+EA3Iu1euCxCi3Xv3c0=;
 b=iqlKQQauyiHbFW30YrkGldZqqS+niufHd4NqrUulj9Nznv/D1bYdWfRZZ+aCSso4AA
 NDcMk/hoHOWPzvAzFJNRR3w18JDVyc5+ZCCVwJwwOff9fyaCawmcFGCB1rTr+9OkBxtP
 fxr1EY6R+2mxXv+DBM3UjKbYh5um6r5vEkytL8RrhhNNV1/ro5hVSPuDVlkDyP7uxHim
 j0/8H6/61SLo5kKxJv6Jn1tKyMW8SQa88Nd2IZG40WbQFjSyq6U6pHbkzFEcadqoFeDF
 aqgsTNcbLBz0e+U1EZ6X3orjdaybNLvZYI2+rzc/oRjWcytmAO8CFOLzXwKjGqXBJBfH
 9zRw==
X-Gm-Message-State: APjAAAUz/7Z9z41Qu3EORXgCujQ5Jbo581Y8Vapd3HFkBACYgCX59dVy
 bKgdlVSlaNv8Ww8NkrJ8Ds7XvPgk
X-Google-Smtp-Source: APXvYqzXeJsrBM05FF+CVOvVK9sssFUl+QHnshJfoiqGgKytLD4M4wEBeY+S6RBEqTKx0ZahcItYZA==
X-Received: by 2002:adf:f287:: with SMTP id k7mr14564862wro.206.1569857914153; 
 Mon, 30 Sep 2019 08:38:34 -0700 (PDT)
Received: from [192.168.1.4] (ip-86-49-35-8.net.upcbroadband.cz. [86.49.35.8])
 by smtp.gmail.com with ESMTPSA id
 w12sm21332914wrg.47.2019.09.30.08.38.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2019 08:38:33 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: Rob Herring <robh@kernel.org>
References: <20190907161634.27378-1-marek.vasut@gmail.com>
 <CAL_JsqL47dQT-P78j4Ph61fsgA45Ha0AJjDajiMk52yFj++s+g@mail.gmail.com>
 <CAL_JsqK+SwX8Lu+-4UgpLVxL05yTcs8Af9mPVHqzbf6+HF9v3A@mail.gmail.com>
 <0bf7c8c8-d03e-c08e-4879-3d3a2fb90ca7@gmail.com>
 <CAL_JsqJf-TGE-SWWj=6AVbpfuN1AsEdDTSOCOk+iUzTT3yZSgw@mail.gmail.com>
From: Marek Vasut <marek.vasut@gmail.com>
Message-ID: <9ff6eb72-a01d-37de-8aa1-671406f3d7ac@gmail.com>
Date: Mon, 30 Sep 2019 17:38:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJf-TGE-SWWj=6AVbpfuN1AsEdDTSOCOk+iUzTT3yZSgw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_083837_223131_52084386 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marek.vasut[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/30/19 5:08 PM, Rob Herring wrote:
> On Mon, Sep 30, 2019 at 7:45 AM Marek Vasut wrote:
>>
>> On 9/24/19 12:33 AM, Rob Herring wrote:
>>> On Fri, Sep 13, 2019 at 10:14 AM Rob Herring wrote:
>>>>
>>>> On Sat, Sep 7, 2019 at 5:16 PM wrote:
>>>>>
>>>>> From: Marek Vasut
>>>>>
>>>>> Add dma-ranges property into /soc node to describe the DMA capabilities
>>>>> of the bus. This is currently needed to translate PCI DMA ranges, which
>>>>> are limited to 32bit addresses.
>>>>
>>>> FYI, I've started working on this problem and issues around
>>>> dma-ranges/dma_mask. Hopefully I'll get some patches out next week.
>>>
>>> I've pushed out a branch here:
>>>
>>> git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git dma-masks
>>>
>>> Can you test it on Renesas. I don't have a real platform having the issue.
>>
>>
>> With the following patches applied:
>>       https://patchwork.ozlabs.org/patch/1144870/
> 
> I'd rather not have yet another instance of {dma-}ranges parsing code.
> With this series[1], dma-ranges gets parsed into resource list for
> you.
> 
>>       https://patchwork.ozlabs.org/patch/1144871/
> 
> How can this one be applied? It would conflict horribly. Plus I think
> it duplicates what's in my series.

I fixed it up real quick, but apparently these are not needed indeed.

[...]

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
