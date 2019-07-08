Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B209961DD7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 13:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCJnjStM32wFnwZZV6OChVRlGXs9Juq/0r0nb+3omNg=; b=GikOXOT2jO0iEO
	X0P/RHUdO+sSocdRyD/f0K9NdhWVpeVlWTGFNy/HbyjWbeymyAuJCGr5t/NLnp8HFMK0/BJwF6ZgN
	2Pz6dsKnlKnvRks5BO3r224WsUkphz3/MeLAlm7xiVDmbtuTup/Bl0Wz2l4NuVnT71GVXjuvkBxNE
	00SnOqITn26CtlsNP/u/gz1Y1thi/jWwVP/cYBv5IS9iVnJBvto2ODprLrAP5buVlWZaItcWewrwH
	8pyc5RD3eS4r3jpl98JrpLqLoO4aKeSJEgTyI/9Y4rRkyJ8zy7UQpurBaJfw76C/4DquFc08V6o9q
	TeaffvwWUmgHH5ECBmaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkS18-0007s2-7p; Mon, 08 Jul 2019 11:41:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkS0w-0007rT-Ai
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 11:40:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD0DE360;
 Mon,  8 Jul 2019 04:40:55 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3BEE03F738;
 Mon,  8 Jul 2019 04:40:55 -0700 (PDT)
Subject: Re: [PATCH v2 1/9] arm64: perf: avoid PMXEV* indirection
To: Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Mark Rutland <mark.rutland@arm.com>
References: <1553271844-49003-1-git-send-email-julien.thierry@arm.com>
 <1553271844-49003-2-git-send-email-julien.thierry@arm.com>
 <dd04db43-5c7d-667d-1506-fcaa1e1881bf@free.fr>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <7248ba10-70a0-ffcc-b23a-281544fddee2@arm.com>
Date: Mon, 8 Jul 2019 12:40:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <dd04db43-5c7d-667d-1506-fcaa1e1881bf@free.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_044058_417377_B656ADF2 
X-CRM114-Status: GOOD (  12.19  )
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

(Picking that series back after fixing NMIs, sorry for the late reply)

On 25/03/2019 13:01, Marc Gonzalez wrote:
> On 22/03/2019 17:23, Julien Thierry wrote:
> 
>> +/*
>> + * This code is really good
>> + */
> 
> IMHO, nothing involving preprocessor tom-foolery should qualify as "good".
> 
>> +
>> +#define PMEVN_CASE(__n, case_macro) \
>> +	case __n: case_macro(__n); break;
>> +
>> +#define PMEVN_SWITCH(__x, case_macro)				\
> 
> I've never understood: what's the point of prefixing macro parameters
> with underscores?
> 

I picked the patch like this, but I admit I agree with you. So unless
there is a reason to do otherwise, I'll remove those underscores.

> What does the PMEVN_CASE macro buy us?

Best I can think of is avoiding to make the mistake of:

	case 1: case_macro(10); break;


Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
