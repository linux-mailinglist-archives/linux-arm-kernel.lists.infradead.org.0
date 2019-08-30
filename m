Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BC6A3A3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEoYfLEILu6K0U7bOnjEWU911+q7vnfVEr1ohea4bUE=; b=U/WV0E51WpnKaE
	1mlVFAa00AFcS2JFaNy6un9TKWb3bzcdvtFbvlQhQ7g4OjwAE846QBs5UkSu/I2YcDdy2yz5hcMfy
	G+hI+foCdfhvtZCj8biaCv7WezJ01lnrrv3VbPrExYjDSmj2Wy8N+k66NfOWzYcOpLnapKgE7obRm
	zY5ZXrNxQUcDxu6KHLOraBSCv5n5gZTrhJFO+6UbtchGWOGx+osJ1N+jSlcPoD0mJysj/HP2JbAv7
	COb/QPzsFqgZ+ZdV9f4xU0YazwM2DgM4g1uRh9xrhEkjv0Qq2NGL+yQh4LRl5cLL8k0lvkg/nYK5c
	Mo7jdW0qDwispVM9c27g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ijX-0002xM-Me; Fri, 30 Aug 2019 15:22:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ijF-0002ws-Tg
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:22:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B1E6344;
 Fri, 30 Aug 2019 08:22:21 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 090633F703;
 Fri, 30 Aug 2019 08:22:20 -0700 (PDT)
Subject: Re: [PATCH v3 11/11] kselftest: arm64: fake_sigreturn_misaligned_sp
To: Dave Martin <Dave.Martin@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-12-cristian.marussi@arm.com>
 <8811be0d-efb3-b6da-9f6b-acaeb3edce7d@arm.com>
 <20190813162806.GJ10425@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <02ffb560-5100-6fc0-2633-ac76e3c404e6@arm.com>
Date: Fri, 30 Aug 2019 16:22:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813162806.GJ10425@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_082221_998274_76CD7302 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/08/2019 17:28, Dave Martin wrote:
> On Wed, Aug 07, 2019 at 05:04:13PM +0100, Cristian Marussi wrote:
>> On 02/08/2019 18:03, Cristian Marussi wrote:
>>> Added a simple fake_sigreturn testcase which places a valid
>>> sigframe on a non-16 bytes aligned SP.
>>> fake_sigretrun() helper function has been patched accordingly
>>> to support placing a sigframe on a non-16 bytes aligned address.
>>> Expects a SIGSEGV on test PASS.
>>>
>>> Adds also a test TODO lists holding some further test ideas.
>>>
>>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>>> ---
>>> Re-added this text after fixing the forced misaglinment procedure in
>>> fake_sigreturn() itself: require a ZERO alignment and you'll get
>>> your sigframe placed on a misaligned SP (2-bytes off the 16-align)
>>> ---
>>>  .../testing/selftests/arm64/signal/signals.S  | 21 +++++++++----
>>>  .../arm64/signal/testcases/TODO.readme        |  8 +++++
>>>  .../testcases/fake_sigreturn_misaligned_sp.c  | 30 +++++++++++++++++++
>>>  3 files changed, 53 insertions(+), 6 deletions(-)
>>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/TODO.readme
>>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c
>>>
>>
>> When this test was re-added in V3, the related .gitignore was missed.
>> It will go in V4
> 
> Ack, or otherwise try switching to using wildcards in .gitignore as
> suggested in my reply to patch 4.

Used wildcard in .gitignore as advised.
> 

> [...]
> 
> Cheers
> ---Dave
> 
Cheers

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
