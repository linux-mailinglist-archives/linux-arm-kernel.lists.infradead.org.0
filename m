Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12185F451
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCTL0gfoOLZCgepZmLtdAN5gzL/O+TyeFddn70tOdiQ=; b=H0CPx4tjs3PLSE
	Ys7Ve5KYr3NgAFw1vCtK1KeRO/b1WgtynDRE8zJbMd4l5+D3XwGM6iO/Uh4kkkX3SMDGOrZyhDFi/
	IXbm4YjMDvZksfe7vzxRJA/+9TFTyzzXiWiAG/Ih7zlYWpMkdk/+8gJCD2IfyujyujUyInFUcY5Rc
	nDZR+qyiuUWD1A+eUeXhWPpBu8wgzPoQmQuyYBRzn8JDaTr6Y6rrJuZXr1KANztbzqkU664ZXappe
	wJA7aJBGN6XWqLD0kZO6bNzU7nZkdRJvt9hOpYp1mWxJtjnOevGTFDNTA1ntPGkbNrRcG137sQihc
	rAaHAKGf5VaZHKHZla7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiwnN-0006MZ-FY; Thu, 04 Jul 2019 08:08:45 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiwn5-0006M3-Qt
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:08:29 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 1E46320AC3;
 Thu,  4 Jul 2019 10:08:25 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 04561206B9;
 Thu,  4 Jul 2019 10:08:25 +0200 (CEST)
Subject: Re: [PATCHv5 1/2] dt-bindings: coresight: Change CPU phandle to
 required property
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <CANLsYkxvh+qUDvqG45o7qh61Noq=a=BJ4-p68ipdzxYt6n5bNA@mail.gmail.com>
 <8fb5947e-acf8-faff-5594-2a32151ebee7@codeaurora.org>
 <20190704070239.GB32707@kroah.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <72dff807-7172-7882-83fc-d7ff4cafe39f@free.fr>
Date: Thu, 4 Jul 2019 10:08:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190704070239.GB32707@kroah.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jul  4 10:08:25 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_010828_017054_EDE54847 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Trimming recipients list ]

On 04/07/2019 09:02, Greg Kroah-Hartman wrote:

> On Thu, Jul 04, 2019 at 12:13:40PM +0530, Sai Prakash Ranjan wrote:
>
>> On 7/4/2019 1:32 AM, Mathieu Poirier wrote:
>>
>>> Hi Greg,
>>>
>>> On Thu, 27 Jun 2019 at 12:15, Sai Prakash Ranjan wrote:
>>>>
>>>> Do not assume the affinity to CPU0 if cpu phandle is omitted.
>>>> Update the DT binding rules to reflect the same by changing it
>>>> to a required property.
>>>>
>>>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>>>> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>>>
>>> I'm all good with this patch - can you pick this up for the coming
>>> merge window?  If not I'll simply keep it in my tree for 5.4.
>>>
>>> Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>>> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>>
>> I think you missed adding Greg, adding him now ;)
> 
> I don't see any patch here for me to actually take :(

I see what you're doing here ^_^

https://lore.kernel.org/patchwork/patch/1094935/

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
