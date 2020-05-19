Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099B01D9D44
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lo4Ho9HPA/uQmM+7K0aUw9YOOP71w3i7Dwj+Dg6AJG4=; b=E94izrr2CMgK5V
	CTc/PqtDxzpVs+5UEERsm4QfQzeForW8tK1updmzzIsYsefJj4d36gSIDK/nSF322oJFQ8ZpWf1Eb
	mRycW2kRYs9j6GgKRxfyapt1lBIyzAGgS9zwhDAznll/Acd+rgEQEz+2cbmdDH49/8THlJIr4lFxC
	mQi/kJbLq9JokyU+NYJTqo9g3znLTO1duE9QwipjCUCLtWOil2jb4foTNDWP0Xf1bGcroYt0FXtjR
	Cm9yOEt//BR3Y3Shj2r+JFKy0lgU9SFSiq2wc/iV05mh70pwdZXSPThHnz+ti8wrE/WeWDFjhhq10
	67LtIP2tb9QhJx6QcSRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5Vi-0005zE-Uj; Tue, 19 May 2020 16:54:34 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5VZ-0005y0-5y; Tue, 19 May 2020 16:54:26 +0000
Received: by mail-pf1-x442.google.com with SMTP id y198so189511pfb.4;
 Tue, 19 May 2020 09:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xmBBbLK3vjWE/EyjvUc68p3tw/EXGXu0OK+6vpkbzqQ=;
 b=US3KTRvNcsr1JQ3EhzPolHH5YLTbLmBZ8QACOxRX4DSdLWVJ77w+ufdLjru2exOJj5
 cGgDdNSpGJSLCToXHOYtummYRYMikc607MQTtZw3CIAeMX52xLfkzXJFnqV++/4JZPBX
 TkfA6bA2OQ/tBu0verEpOr/8yTMghh7JOJnq8blVosibdSwn9t4VGf6TTFO3jl9Ku+S6
 us7ewjcIE1yEdgRycst8zGi/M73AaWLcbuldE63QokhOzCU4Lv6vQlzl3U74bTRQpiDW
 76aVV76mP+yZNV5Arg3qVa0f6SZeHYOumZT/8SZvPzqHfkPYn2L9uFwTaop85+0WCxz9
 dP/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=xmBBbLK3vjWE/EyjvUc68p3tw/EXGXu0OK+6vpkbzqQ=;
 b=TG4ROQeGgGXYqYz9V9rWAKNWxpyxmYUtGttGOqm+O9V29H1aWc+QRiPFIrf9CpDllN
 e9Z78ldRum3JofOV+iRj0W7/DKc9LO9yGXuNJqxJ7yQqQ0TXM2BYZw/wnqdYGrvT0Epy
 fOJP0eNmWVoi684BSvaEa0yIFa7o+9nHSPRQny0j8YaxhwJ3Q1pntGdspM2c6bWl2GRb
 cBrEfJHmqIylsHCVmiMFaUxpbxrv7JDap8RmKKf5EJWzNQfoHlw03zV+WBn2SmFLgRdk
 N0X2gWyE5EANbX7EO4A7z4o/ccfzIV4wEh4Yf0xxSCsJJVeUZXeAbx8PfyOu9Fq3WJgP
 v7vg==
X-Gm-Message-State: AOAM530MAWhBO7pxJ7VQws23MAsHng0R2rFexlRCSHRqzQgbOY9rCZ1P
 QIfY8H2Z4dFQPLdylcXlFSI=
X-Google-Smtp-Source: ABdhPJyjXg6Tl4Trqy/ovTHZ7agsZDG2QZ23n+CG2Df9YrHRxk8WNFN4fKgw/J0SX04nl9fKvZEDwg==
X-Received: by 2002:aa7:9297:: with SMTP id j23mr36511pfa.15.1589907263910;
 Tue, 19 May 2020 09:54:23 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id go14sm111069pjb.42.2020.05.19.09.54.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 19 May 2020 09:54:23 -0700 (PDT)
Date: Tue, 19 May 2020 09:54:22 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: ira.weiny@intel.com
Subject: Re: [PATCH] arch/{mips,sparc,microblaze,powerpc}: Don't enable
 pagefault/preempt twice
Message-ID: <20200519165422.GA5838@roeck-us.net>
References: <20200507150004.1423069-8-ira.weiny@intel.com>
 <20200518184843.3029640-1-ira.weiny@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518184843.3029640-1-ira.weiny@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_095425_240096_1FAFC3FB 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.1 DKIMWL_BL              DKIMwl.org - Blacklisted sender
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-csky@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 11:48:43AM -0700, ira.weiny@intel.com wrote:
> From: Ira Weiny <ira.weiny@intel.com>
> 
> The kunmap_atomic clean up failed to remove one set of pagefault/preempt
> enables when vaddr is not in the fixmap.
> 
> Fixes: bee2128a09e6 ("arch/kunmap_atomic: consolidate duplicate code")
> Signed-off-by: Ira Weiny <ira.weiny@intel.com>

microblazeel works with this patch, as do the nosmp sparc32 boot tests,
but sparc32 boot tests with SMP enabled still fail with lots of messages
such as:

BUG: Bad page state in process swapper/0  pfn:006a1
page:f0933420 refcount:0 mapcount:1 mapping:(ptrval) index:0x1
flags: 0x0()
raw: 00000000 00000100 00000122 00000000 00000001 00000000 00000000 00000000
page dumped because: nonzero mapcount
Modules linked in:
CPU: 0 PID: 1 Comm: swapper/0 Tainted: G    B             5.7.0-rc6-next-20200518-00002-gb178d2d56f29 #1
[f00e7ab8 :
bad_page+0xa8/0x108 ]
[f00e8b54 :
free_pcppages_bulk+0x154/0x52c ]
[f00ea024 :
free_unref_page+0x54/0x6c ]
[f00ed864 :
free_reserved_area+0x58/0xec ]
[f0527104 :
kernel_init+0x14/0x110 ]
[f000b77c :
ret_from_kernel_thread+0xc/0x38 ]
[00000000 :
0x0 ]

Code path leading to that message is different but always the same
from free_unref_page().

Still testing ppc images.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
