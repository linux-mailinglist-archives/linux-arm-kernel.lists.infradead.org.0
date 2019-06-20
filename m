Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3D54D470
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 19:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uxfRYtk1AJofkbsZzXlD89Wz9bIywbiXXpdOKpUU+lk=; b=L+1IfCIdsqx75FHBH6/vORr22
	zhFIzWpc8Rk1tvJS5pa9gz5eCg7NKD+ors0L9UBwck+ANT/xQ8MzTgtopnS2H2Hp3uDpYRKYNFBuc
	VeYsmX0+RqudsWtakXJigqgemSK+h7ww/S7Nrcnhd/oevSre/c7hD+yVs/lU1AtNIPWxwY+kDGaLA
	5rhB2o1IPiHNZ2uR4xdVQK+JMozoQaGz9PxxValvMlpEn8EOlCIpzQdtysZcJJGE05nCMXIr4R50B
	K6z0cAwcRwi2SvrTT15vFs2Dodbw9krswtCeSOc3TlEZBFBr7JcdWZNWc2N3WGsvI8A6+GuWI9Rwm
	uRnPS9y7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0Qv-0007bp-6y; Thu, 20 Jun 2019 17:01:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1he0Qe-0007bL-Ty
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 17:00:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 266F92B;
 Thu, 20 Jun 2019 10:00:51 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 151683F246;
 Thu, 20 Jun 2019 10:00:49 -0700 (PDT)
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: andrew.murray@arm.com, mathieu.poirier@linaro.org
References: <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
 <20190620154154.GB25273@e107155-lin>
 <CANLsYkxSBuqKJZQLqR238TGe1p5y7QPyLHSZTAOF++=uzGUJjg@mail.gmail.com>
 <20190620163426.GC25273@e107155-lin>
 <CANLsYkymTnxRX61StUGvKGeiQV6P6YbCg81PSYeBpXLsX5tpiw@mail.gmail.com>
 <20190620165427.GH20984@e119886-lin.cambridge.arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <9adb65af-a898-462b-ecbc-af972d9331a6@arm.com>
Date: Thu, 20 Jun 2019 18:00:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190620165427.GH20984@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_100053_010425_770AF917 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexander.shishkin@linux.intel.com, mike.leach@linaro.org, Al.Grant@arm.com,
 linux-arm-kernel@lists.infradead.org, Sudeep.Holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 20/06/2019 17:54, Andrew Murray wrote:
> On Thu, Jun 20, 2019 at 10:47:38AM -0600, Mathieu Poirier wrote:
>> On Thu, 20 Jun 2019 at 10:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
>>>
>>> On Thu, Jun 20, 2019 at 10:14:04AM -0600, Mathieu Poirier wrote:
>>>> On Thu, 20 Jun 2019 at 09:41, Sudeep Holla <sudeep.holla@arm.com> wrote:

...

>> Then all we have to do is make the ACPI/DT property that indicate the
>> method used to deal with tracer idling mandatory.  That way people are
>> conscious of the choice they are making.  To be backward compatible
>> with current systems we default to the TRCPDCR.PU method but print a
>> warning message, just like we do for obsolete DT bindings.
> 
> I'll respin the series based on this approach. I'll also flip the
> 'disable_pm_save' module option to 'enable_pm_save' - thus allowing any
> one to use software save/restore if they wish.

If you are going to add a firmware property, please get a consensus on the
name here, before respinning to avoid another churn :-). How about one of :

"arm,coresight-etm-looses-state"
"arm,coresight-etm-needs-save-restore"

or something better long the line.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
