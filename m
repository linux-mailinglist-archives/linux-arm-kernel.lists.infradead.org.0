Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 287BFD039F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 00:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DNKQGODjcrDUcP6c6cmTA4irln08OgaszU2dQPY2t0c=; b=cW/vf0kdAcyK18fi8/7UwyPSL
	eY1rRjIWawLMB18u7lQj8wiRRX0ltVAty98UBJj33GodLzk1YUq7Qea93yh5khYedc18j0X8JsYnP
	PRyRZhIMX23uufdnuFwJIgSa1TXEq2WhXVSxSxYMIomuOUfeFWsy+WUJJUZy7UiT/JD77oUJjYs3g
	KccuMeO5RJCiRigNbsc36CdHx/SOvCAI36VNzxexk3PRZI0A0Jpn7LndfSCiDkYPCFJFLfpnTyApD
	45A5wNoldNWhudGVTkp4tXhV/Adrp1ocUfP3oeOhDuVEv+lWkihbpXMr1dco5XXvJl4JxsJ68b/0S
	e9VLGf8WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyOF-0000vm-TO; Tue, 08 Oct 2019 22:55:35 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyO7-0000vO-BM
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 22:55:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 15:55:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,272,1566889200"; d="scan'208";a="187449670"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
 ([10.7.153.148])
 by orsmga008.jf.intel.com with ESMTP; 08 Oct 2019 15:55:25 -0700
Subject: Re: [PATCH 3/5] i2c: aspeed: fix master pending state handling
To: Brendan Higgins <brendanhiggins@google.com>, Joel Stanley
 <joel@jms.id.au>, Wolfram Sang <wsa@the-dreams.de>
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-4-jae.hyun.yoo@linux.intel.com>
 <20191008203157.GA184092@google.com>
 <ac256b3f-2a06-6fa5-72ab-d8f8014d253e@linux.intel.com>
 <CAFd5g47vLN6NyZR73+EqOqfOPnM7CkGGsCwEn3udnJt99d8KCg@mail.gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <8533c682-47ae-2861-6587-19f2501cb0c8@linux.intel.com>
Date: Tue, 8 Oct 2019 15:55:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAFd5g47vLN6NyZR73+EqOqfOPnM7CkGGsCwEn3udnJt99d8KCg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_155527_399153_112CA0FE 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, Tao Ren <taoren@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/8/2019 2:54 PM, Brendan Higgins wrote:
> On Tue, Oct 8, 2019 at 2:13 PM Jae Hyun Yoo
> <jae.hyun.yoo@linux.intel.com> wrote:
>>
>> On 10/8/2019 1:31 PM, Brendan Higgins wrote:
>>> On Mon, Oct 07, 2019 at 04:13:11PM -0700, Jae Hyun Yoo wrote:
>>>> In case of master pending state, it should not trigger the master
>>>> command because this H/W is sharing the same data buffer for slave
>>>> and master operations, so this commit fixes the issue with making
>>>> the master command triggering happen when the state goes to active
>>>> state.
>>>
>>> nit: Makes sense, but can you explain what might happen without your
>>> change?
>>
>> If we don't use this fix, a master command could corrupt data in the
>> shared buffer if H/W is still on processing slave operation at the
>> timing.
> 
> Right, can you add that to the commit message?

Sure, will do that.

> Is this trivially reproducible? We might want to submit this
> separately as a bugfix.

It's very rarely observed.

> Actually yeah, can you send this separately as a bugfix? I think we
> might want to include this in 5.4.

Why not. I can send it separately but this patch series should wait for
merging the bug fix to avoid context conflicts.

> Wolfram and Joel, what do you think?
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
