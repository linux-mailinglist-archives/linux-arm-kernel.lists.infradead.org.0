Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5F171DF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lRv8lbJI7HU9Aw7uwBzybZqCbeSSI/EiRiOY/wa9BF8=; b=gczom8MaXtqPuTWdttxrrtRPw
	FM4+qAau3U/Fg1YFnyPqdBG7lnrn/ZBx8Dn+ER6mFHOpshwXnOpJ9J9pMqOzi10tpKLQtT33XNy0c
	JRFK7GoWdN9L2CqBfUsBy0pXAlw6CeSMGn2q3lszrUecCwkMY3SkfhOU29IwBuUVRGHqR/jt+MPNC
	C04VxlCqPfcyW27zxZypvHuzDYHwbMLQ1c5IT9Zi42tyZYOl4qy/oHdgXVjg9EXhcG5FV2ENU8qXd
	5aG2mPRNfjESS3SyD/RhAV8btkKG/orPOczyIKKGiVNN/7UZJI21xdmITP+1W9lYQhxMT1WlLWnZm
	33sMSHvyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpyuS-0000Ga-EH; Tue, 23 Jul 2019 17:49:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpyuD-0000Fk-E7
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:48:54 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so19044438wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lw64+rRIlfN9llW/JDiD/kh+iAbtqzU9FtUm2AviLUY=;
 b=Ke3RPY0nRkGmJqorFON4W7UvAFnkA1mTmK8gK+LxqpYaD0WyDD4gpEOy9WsiKfyMAF
 ckDHJKdnFRzE9HTqkBBdOaYhlR5E/tb2JQV5L+QmIyzLEeetcUt041iAxRTcIXJSssDL
 xFcEbyhOSfvP6/WUTcANQZ2cxsbzehXZpQnWoAK5tWbQ5+zgaoAXS2v1UG0SPhDIsv2E
 +sCFF9b2EcSE/6YySPLIpwiCJYhxkvkMNdD5uCxyTokdTkPN6kjFKvkoM3dpGNBCMAr9
 88nNP/eTPYMxt28eJph8/yqDKWHTZUuZowGAwm0op/JW6H8FBGEAFbFPC0Hl7SD9Q5vv
 0aug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lw64+rRIlfN9llW/JDiD/kh+iAbtqzU9FtUm2AviLUY=;
 b=TrS/p62BoVrji5nao1LVnXnEo7qBdzlVZ/NZIani1wvHdoE87vuL72NavicEK0hc21
 hcVq6m7n5yLgObURfOT1yjBD4gX87h8E7K52y2IkbDEvwzgnFFESG2IHcRqDzT6J5+uB
 33n6QHlgs6JSxlJm7StVORKJZO+P74w2d7jSq68+1wKlmL03mb7ptl4SUdoq4Y5zZhWv
 cwCz4SNZjPV1OYgnpOOe+nBHCTs/3uwv+h5KZORgMsmMD/jpeIkxF2BIZu+HbZchQK96
 rtdAsHJTFJsSojUoCVNpyb4Bpm5jzCpaRPANHgzGJaH4TrLtYeP9ohfAyuQPyt5qLpcD
 59jQ==
X-Gm-Message-State: APjAAAXrM+qsIDjFyEm+auOeEG3xtPzPZKdntY5Ddfp3ltL1MgeY5BGP
 aTGRAxV6JRt6h4XPK0wnv9w=
X-Google-Smtp-Source: APXvYqxdFMbhlyWIB3rurr1U5IoeuLXQYUOJJbXjUXp92CDnV3P5Zl4OeajfZDbeHqLTFBexZfqAgQ==
X-Received: by 2002:a5d:4284:: with SMTP id k4mr79701010wrq.194.1563904131910; 
 Tue, 23 Jul 2019 10:48:51 -0700 (PDT)
Received: from [192.168.8.14] (nat-113.starnet.cz. [178.255.168.113])
 by smtp.gmail.com with ESMTPSA id r123sm39419602wme.7.2019.07.23.10.48.50
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 10:48:50 -0700 (PDT)
From: Evgeny Kolesnikov <evgenyz@gmail.com>
Subject: Re: [PATCH 0/5] Add support for WD MyCloud EX2 Ultra (+ versatile
 UART-based restart/poweroff drivers)
To: Andrew Lunn <andrew@lunn.ch>
References: <cover.1563822216.git.evgenyz@gmail.com>
 <20190723015631.GI8972@lunn.ch>
Message-ID: <c2ffe662-6975-351b-87b8-af760984ef4d@gmail.com>
Date: Tue, 23 Jul 2019 19:48:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723015631.GI8972@lunn.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_104853_503553_8F4BCD10 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (evgenyz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jason Cooper <jason@lakedaemon.net>, linux-pm@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/07/2019 03:56, Andrew Lunn wrote:
> On Mon, Jul 22, 2019 at 09:53:00PM +0200, Evgeny Kolesnikov wrote:
>>
>> The difference between uart-poweroff and qnap-poweroff is small, but important:
>> uart-poweroff is able to send to an MCU a command of arbitrary length, and the command
>> itself is defined in a DTS file for a specific device/board, thus making this driver
>> applicable to wider range of devices.
> 
> There is a lot of replicated code here, and in the original
> qnap-poweroff.c driver. Please consolidate it by extending the current
> driver. It should be easy to add a new compatible string, and turn
> power_off_cfg.cmd into an array.

Hi, Andrew.

I've considered extending qnap driver, but I have some doubts about this 
approach.

First of all there is only a poweroff counterpart. As there is no
qnap-restart driver, what should I do with uart-restart? Is it OK to 
have xxx-restart-poweroff driver (never saw anything like that)?

While I can add cmd as a parameter to qnap driver (having it converted
into an array) it should be optional as original qnap relies on two 
hardcoded values for its devices. And having a non-qnap device with this 
driver in DT without defined cmd would not make any sense. It feels 
kinda ugly.

Wouldn't it be more fitting to have these two generic drivers and then 
retire old qnap driver while moving everything that uses it to the new one?

Thanks for the review.

EK.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
