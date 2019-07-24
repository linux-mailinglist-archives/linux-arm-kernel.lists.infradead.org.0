Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6B773919
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ab9n9kqwwhJorYptivjKbgqh9siSwtrkHAjfTGJddwo=; b=iO2EIRqr8ApRbLPFxJYYLHMMa
	F5EdBSrfUerMOo4eBiUuMQAzcHUO62YLS5Ul38WZoYMDqsbdyKoRMFvZM5WhzULSG7kyu110srO7D
	fAvw1oriCcWinOacaPm15M44kQzzRDIM5z7PxV6GR8PQECad9FYyxMDfYOudnx1q6YR6R3g73jTEC
	3uysUF1SIsGa1l9G6o2cbrN2e7aBj6r4bUtAjkTezRhp8I3RkKrFVFp2yZdNz9sOQ00LupE9++bjd
	qsz855mQyfO8K+LC+rsoOJehVH25vOcNyuHtdKzHByzQgnr7yFiV659PL+fe45K7ZYfZWAz39EQN0
	BHokv0Hcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqN4a-0003fH-Tj; Wed, 24 Jul 2019 19:37:13 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqN4O-0003es-Ce
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:37:02 +0000
Received: by mail-qt1-f196.google.com with SMTP id w17so2368809qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:36:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Z7pnaGuYc9LFLbT5aUxNfUlnE7ek1gcnJ4zW5L3HylM=;
 b=grjbPHERuWXs7YJk7WfbExR8QIqT96pledQ/rqyf2uyComzbFi6oUSsLD0It/d/RJ4
 oM0mBP9YEFaFKi4oUnxO0gYo6YbNtL/NFl63wkGw4QIPsd9hIvR77JnKJ1BBRi3RsDN6
 js8y4VJcH7zKUhzEPYyl70fhB3AXOsxxJnm1fpHWqjDkhoLTe1fOFQ4bnL1qG5EYkpUg
 4ddgpDD2bzG35bVzD8Bpm7FeOCK8adA/4rGcb4fKrC+RS9iESuUB1Z5o7dNETTpjN1+H
 EqYLDz2YpQtN52kSRWxHSkwyU7qDt1FXFH6S73BP81bzAXXkMVjnRHKeU/3RCRChDHoI
 SKuA==
X-Gm-Message-State: APjAAAWmpo6oA03W31ErRKWTC53XEoiIOoVQ2qdAjRdAo+1AVDRQjv+R
 UAnSEnMKpLrcH/cbJ6FJvPGYNw==
X-Google-Smtp-Source: APXvYqwNTwfZ7UhOrUsmMJREZDSG4r+F8zrpdIk7pUPLDp8e5SLJxmNngfBQGNr0NG9bBAHOHmh5zA==
X-Received: by 2002:ac8:1887:: with SMTP id s7mr59031081qtj.220.1563997018800; 
 Wed, 24 Jul 2019 12:36:58 -0700 (PDT)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id q17sm16672031qtl.13.2019.07.24.12.36.57
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 12:36:58 -0700 (PDT)
Subject: Re: Limits for ION Memory Allocator
To: alex.popov@linux.com, Sumit Semwal <sumit.semwal@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, arve@android.com,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>,
 Riley Andrews <riandrews@android.com>, devel@driverdev.osuosl.org,
 linaro-mm-sig@lists.linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 dri-devel@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 Brian Starkey <brian.starkey@arm.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Mark Brown <broonie@kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Linux-MM <linux-mm@kvack.org>, Dmitry Vyukov <dvyukov@google.com>,
 Andrey Konovalov <andreyknvl@google.com>, syzkaller@googlegroups.com,
 John Stultz <john.stultz@linaro.org>
References: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
Date: Wed, 24 Jul 2019 15:36:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_123700_434879_9688A59B 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/17/19 12:31 PM, Alexander Popov wrote:
> Hello!
> 
> The syzkaller [1] has a trouble with fuzzing the Linux kernel with ION Memory
> Allocator.
> 
> Syzkaller uses several methods [2] to limit memory consumption of the userspace
> processes calling the syscalls for testing the kernel:
>   - setrlimit(),
>   - cgroups,
>   - various sysctl.
> But these methods don't work for ION Memory Allocator, so any userspace process
> that has access to /dev/ion can bring the system to the out-of-memory state.
> 
> An example of a program doing that:
> 
> 
> #include <sys/types.h>
> #include <sys/stat.h>
> #include <fcntl.h>
> #include <stdio.h>
> #include <linux/types.h>
> #include <sys/ioctl.h>
> 
> #define ION_IOC_MAGIC		'I'
> #define ION_IOC_ALLOC		_IOWR(ION_IOC_MAGIC, 0, \
> 				      struct ion_allocation_data)
> 
> struct ion_allocation_data {
> 	__u64 len;
> 	__u32 heap_id_mask;
> 	__u32 flags;
> 	__u32 fd;
> 	__u32 unused;
> };
> 
> int main(void)
> {
> 	unsigned long i = 0;
> 	int fd = -1;
> 	struct ion_allocation_data data = {
> 		.len = 0x13f65d8c,
> 		.heap_id_mask = 1,
> 		.flags = 0,
> 		.fd = -1,
> 		.unused = 0
> 	};
> 
> 	fd = open("/dev/ion", 0);
> 	if (fd == -1) {
> 		perror("[-] open /dev/ion");
> 		return 1;
> 	}
> 
> 	while (1) {
> 		printf("iter %lu\n", i);
> 		ioctl(fd, ION_IOC_ALLOC, &data);
> 		i++;
> 	}
> 
> 	return 0;
> }
> 
> 
> I looked through the code of ion_alloc() and didn't find any limit checks.
> Is it currently possible to limit ION kernel allocations for some process?
> 
> If not, is it a right idea to do that?
> Thanks!
> 

Yes, I do think that's the right approach. We're working on moving Ion
out of staging and this is something I mentioned to John Stultz. I don't
think we've thought too hard about how to do the actual limiting so
suggestions are welcome.

Thanks,
Laura

> Best regards,
> Alexander
> 
> 
> [1]: https://github.com/google/syzkaller
> [2]: https://github.com/google/syzkaller/blob/master/executor/common_linux.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
