Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143FD2CDD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 19:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hsRpBGxEoM0XEr7kPQt6KBz43xoNoc+/lcXbOkQ7qSI=; b=twQpGzS468Uv5huiEGMXyWIay
	XF+bWI+98qi5oGMKweda7jOTWBvvz5Q/K09sb1iGN7B/NbX8+Ddfk934PfVo6yn26u51I1PyCRDB+
	AM8psLiGMUdFoxP/HpPHRFvLYgZFsUeqjOaPZxFMjBz8mQitRUqMKAkehnw/QT4HVh4i/Wce8neia
	3kkbVKVG46p/0nu5DDMzqO7C6TBzU01JOWOwjn7k3+2oF6Iz88jz7tZN2vhgItu+x8XZJFyzFaVaR
	Cs175rhAV+lQNAv+11pJdEADvkghHgTggNnGgFIquPmViq9n9MJhqRSqo6u7lmhheQYci8ln+C8Ju
	UU5UfHWUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVg5w-00026k-QA; Tue, 28 May 2019 17:41:04 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVg5o-00025V-HK
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 17:41:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9AE780D;
 Tue, 28 May 2019 10:40:30 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0C1B53F59C;
 Tue, 28 May 2019 10:40:29 -0700 (PDT)
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
To: mathieu.poirier@linaro.org
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
 <CANLsYkzRXXB1EFpWHn6JN_6pfOm-1TvVgiJY2MKExhifiBakBQ@mail.gmail.com>
 <CANLsYkzK7N9Bt6E6f187LaDydeC5afMp=LjMuvhFYKbij_SyjA@mail.gmail.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <24558133-c66a-018d-3ef6-1cd963302109@arm.com>
Date: Tue, 28 May 2019 18:40:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CANLsYkzK7N9Bt6E6f187LaDydeC5afMp=LjMuvhFYKbij_SyjA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_104056_616471_CCC8491F 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 28/05/2019 18:36, Mathieu Poirier wrote:
> On Tue, 28 May 2019 at 11:32, Mathieu Poirier
> <mathieu.poirier@linaro.org> wrote:
>>

...

>>
>> I have applied this set.

Thanks.

> 
> As Leo pointed out it would be interesting to update the documentation
> in "Documentation/trace/coresight.txt".

I am on it, will send it out soon.

Cheers
Suzuki



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
