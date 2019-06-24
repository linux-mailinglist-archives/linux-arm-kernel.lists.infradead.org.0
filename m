Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3471C5187B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qh48IHqDv3NxWmJNNQDou+2xMd89GJAOaDCuNBzfXE0=; b=N4CGtZHocv1Lld
	UVl10O9/USr4UFuxdgsYJeH1QmociStpqlWY92zTZBsUWUS91eU3GLSQcNnN5zohF99IILYzqgDk3
	VZIw0XKLUsqvEjjUBlthoJW3xS6BPXVlVl/SePvTvjLwNzsMaZs2eH7icoCd8AMU2TkUoBdGmXL0L
	14VqQ+7xo/ewn6k4LEuuY13TAUaIDD6UOHrOiTrw5I4SSVjYh/sYdmRV4MHo8P14GR3Xk2szan1ZK
	nkOE2JPtNQyxh87XUonQKBT2ystPxryZTzMEtCRYOSstS6zy/Z/WUw5SQGUlav16mtC48TmAgkRto
	VkU4ZHcpkqu/wriq+RKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRl5-0003Ng-Ux; Mon, 24 Jun 2019 16:23:56 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRj7-0002Jm-1S
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:21:54 +0000
Received: by mail-io1-xd44.google.com with SMTP id k8so315361iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 09:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EO8eeZ48f6EoVfLk0+Ia7DkcWqdLXYNwWud7QgwjUxA=;
 b=j/ELAhg2UmVVT/WszfKjP0eVP6XomPXTVwyKZdSvtL+ZfxzgYeaOtX9ahKvHpdamwH
 yVYSC/sOcvC8M2NmLy8DvQG5D7Z/9PyPVOM9lRo7OPF78WmueHL0Jgp1zGC2hWPlPP4l
 hTKVN++WoXD0aVpQikgglS80GZqpeLwsNlRnC3v8TH9LiWO6KIVVwG513TZgIvq6yUod
 bz50kbawIi6oofsSlwp9FymUCenj4mpFg7X7Uv9wYKx04iWTbcLMvqdhMU/A6/BaGxR+
 Uv4bT5iOViDyTKoOUWZaxUnDw0W0DlptJe0+0yKvAjAmhuuHpCDLUYaCza9GBCGYL7XJ
 R2aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EO8eeZ48f6EoVfLk0+Ia7DkcWqdLXYNwWud7QgwjUxA=;
 b=ufTKdFEKijdyKvshdqwbg9SeE9bgGNYSP2WxpA7bT1S8CusdhND6+nj841DBuSsT5V
 2lOfZqZRAjwEcMz2zAE6cQeq5qGRfgzmmhg8IjXB7H7NcGVLB0l8Gy4eaEgGDtvOxFyK
 g+cqQmQItaj8LTsZh1e0ukPiNIXIAZPwcJ9CkdPsmHGOIT2Sn6FCfw9iGzEF4UdvVhBh
 kfcHkEvh3oAXkdhQtRbP5hBIiWnyIlJrDGSrywZNG7lRjVxSzeSuSc/IKNmPIRqSjueC
 chR5vhoCBAZx3bXFvBCeIBrNgxxyxvnNKlXBJQkbBZ254d1/Ok0I2jKrTkeRzgKX1um9
 4xJQ==
X-Gm-Message-State: APjAAAXgVJNSuzNusSWdAgeCylFYV5pdCFUgQ6TKZfVXWiUnn9EqMHRG
 mxAfyViW2yd/6MRsXGLPHNsLbA==
X-Google-Smtp-Source: APXvYqxz3FaFhWw2FnWfg4aUKQQZ6vaEckamt/BYnOdzvhusMwszWyk5+OepCRBdKbupvmmVwjgR3w==
X-Received: by 2002:a5e:9308:: with SMTP id k8mr266555iom.143.1561393312086;
 Mon, 24 Jun 2019 09:21:52 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id l11sm14545587ioj.32.2019.06.24.09.21.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 09:21:51 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>, Arnd Bergmann <arnd@arndb.de>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <583907409fad854bd3c18be688ec2724ad7a60e9.camel@sipsolutions.net>
 <31c2c94c-c6d3-595b-c138-faa54d0bfc00@linaro.org>
 <b90977f94df020986c6bb490e7fd0262603726b0.camel@sipsolutions.net>
From: Alex Elder <elder@linaro.org>
Message-ID: <5ffbcce1-f93d-5746-5037-9dcc03cd73f0@linaro.org>
Date: Mon, 24 Jun 2019 11:21:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <b90977f94df020986c6bb490e7fd0262603726b0.camel@sipsolutions.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_092153_113951_D4ED1F2B 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, Dan Williams <dcbw@redhat.com>,
 linux-arm-msm@vger.kernel.org, abhishek.esse@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, David Miller <davem@davemloft.net>,
 cpratapa@codeaurora.org, Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/18/19 2:22 PM, Johannes Berg wrote:
> On Tue, 2019-06-18 at 09:00 -0500, Alex Elder wrote:

. . .

> Anyway, I think for now we could probably live with not having this
> configurable for the IPA driver, and if it *does* need to be
> configurable, it seems like it should be a driver configuration, not a
> channel configuration - so something like a debugfs hook if you really
> just need to play with it for performance testing, or a module
> parameter, or something else?
> 
> Or even, in the WWAN framework, a knob that we provide there for the
> WWAN device, rather than for the (newly created) channel.

Agreed.  I think a knob is appropriate, it's just a question of how
that control exposed.  Same answer to your question below.

					-Alex

>> The hardware is capable of aggregating QMAP packets
>> arriving on a connection into a single buffer, so this provides
>> a way of requesting it do that.
>>
>>>> #define RMNET_FLAGS_INGRESS_MAP_COMMANDS          (1U << 1)
>>>
>>> Similar here? If you have flow control you probably want to use it?
>>
>> I agree with that, though perhaps there are cases where it
>> is pointless, or can't be supported, so one might want to
>> simply *not* implement/advertise the feature.  I don't know.
> 
> Sure, but then that's likely something the driver would need to know,
> not necessarily userspace?
> 
> johannes
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
