Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E9912E837
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 16:43:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lXgmY5iBAhgPTjTuVNUVwANif6qRt/Oq2jRbXgg5pHI=; b=JUHbp84Udnxa2p
	KZuaHsN/Fi8WMAA6mNE+GbfbeUBRWKNMMbihjYCKL2Kpl7DvpQvgfu+7EOeawgeNAxV1/qWyQJkoT
	RI4aOSx6ARGg0xPXfX5HKusJYvipA1GweJ5fuWg1uVmGYPiiizs+5vnp+4hrg6amjJR5GcqYKAB7f
	9I5P4P93O3jtzf3OV1rgE8BxvFVKo1TjtThVQPGJSZM7ac4lpDXR04nuvWthPpvJxIl31Zn/O/mg+
	zuTlRIfI+28fsXh8df3454HeRLsemQ+08efSWp8Sdo6brweTPE0itDyVw10nzO2j2l0S3bRvn51Wq
	/h2dg8+BMEjZ5RQ8fmPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in2cr-0002C4-8Q; Thu, 02 Jan 2020 15:43:05 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in2ci-0002BK-1E
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 15:42:57 +0000
Received: by mail-qv1-xf41.google.com with SMTP id y8so15137833qvk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 07:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=/GofTnRieVo7Se55xZXvosCoW678rKKW+UyvSeUYxZw=;
 b=p+86rH9k6Cjlc/Aysp01slC1VScUWBEjtKJopY4HO2egElyWa3mf9mzS2iO39k7B9R
 U2T310sMDgeRsHTQbl6aNAsnAZZU4t0t1gKOBqaB0nkvt3mgZ9GEMr++D9KOIvM4RVGd
 KOs717TJk7DzDx+XNgf5GagiVeRfbHK0PSlPw+cxPuobx+he95TKbFwurUDr/v32S1MD
 AEbfI9uMYlBn7SEDhsbtdUQmnyMjoWaWUlsJz5gCoEUCjfpyYSosmxX0HitoOOBeh093
 w5bEbpBs03c2bTYNT+NHGJbIjlgPR2wDga9/rEdwRYkZvIHtLdQw9ignrw/NOjMitTkW
 r+TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=/GofTnRieVo7Se55xZXvosCoW678rKKW+UyvSeUYxZw=;
 b=C2bwNk/DVqz9IyqgFWEbQroyR0OnI8g4jgrtxeMnUAjz0uy8o+hbKuBSUTeaCiR6xN
 HpOpCYMO1o7bAKQAgk163EWK/8WuEW9Q5mIoybh5+IxV1PKtZAVH5UOcjOrcB1UT9d+M
 Yy/qm27JsO2CkZR3LSHiK4I6DW9bZ6nlZnV7nz7ACFuCQs3cTkSMQxkKOB9/zCZqYqMW
 y32FzDOwbSmIEllsv/t0U1qkEA2zKRvSuADqquH1FLDv25i4P+R3tZQT7tApNHN2cobN
 nqc1s3QcAT87dPRlXtayV5LADd+eJs04QkkX8gtVqHY/waEcrFGoatXt8WaoReI7izBv
 Xuvg==
X-Gm-Message-State: APjAAAUhUK9O4Us/SmxS0t452A+FfdAOriq/tMoSlLaHz6rj6r9bnC6H
 mRkrhnih581c5BaSVrCH+zfoDQ==
X-Google-Smtp-Source: APXvYqxUP9jY3pW3f0vEZHK4X4fxOCufKe3EA8A+xLXLeSvr6QXOhuy0LOfgASlFcyOSfvxfyZx36g==
X-Received: by 2002:ad4:4d91:: with SMTP id
 cv17mr54284401qvb.101.1577979774191; 
 Thu, 02 Jan 2020 07:42:54 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id z4sm15110820qkz.62.2020.01.02.07.42.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Jan 2020 07:42:53 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [PATCH] char/random: silence a lockdep splat with printk()
From: Qian Cai <cai@lca.pw>
In-Reply-To: <4F9E9335-334B-4600-8BC3-4AF91510D113@lca.pw>
Date: Thu, 2 Jan 2020 10:42:51 -0500
Message-Id: <1CA39814-DE67-4112-8F97-D62B9F47FF9D@lca.pw>
References: <20191205010055.GO93017@google.com>
 <4F9E9335-334B-4600-8BC3-4AF91510D113@lca.pw>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_074256_215783_A2E188A7 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: pmladek@suse.com, tytso@mit.edu, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Linux-MM <linux-mm@kvack.org>, gregkh@linuxfoundation.org, longman@redhat.com,
 dan.j.williams@intel.com, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Dec 16, 2019, at 8:52 PM, Qian Cai <cai@lca.pw> wrote:
> 
> 
> 
>> On Dec 4, 2019, at 8:00 PM, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
>> 
>> A 'Reviewed-by' will suffice.
>> 
>> Reviewed-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
> 
> Ted, could you take a look at this trivial patch?

Not sure if Ted is still interested in maintaining this file as he had no feedback for more
than a month. The problem is that this will render the lockdep useless for a general
debugging tool as it will disable the lockdep early in the process.

Could Andrew (since the free page shuffle will call get_random) or Linus pick this up
directly with the approval from one of the printk() maintainers above?

https://lore.kernel.org/lkml/1573679785-21068-1-git-send-email-cai@lca.pw/
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
