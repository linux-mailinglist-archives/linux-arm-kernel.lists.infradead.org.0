Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79C3110177
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 16:43:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cpGlPdKQZ+I5TeA1HXuColgB58z0KSGdNIoSACjOtbs=; b=taOPL8P9N5SjuX
	84yns5Wj/3IkG3IxN2x13W0Rq7tB55YODos4oLBrAJYMdV9eS4fNCm3C2jEUxcvOckUHvbeKqD0Kz
	0+wZa3dz+j9Dd1A5j/UhztnAfPFIo7KbvCFfgrYqCwZQOYDw/4HvDS8z6UW4R9tzabTGZ6OEZf9j+
	I9J8GdVGENLsavcNbH5bD+SOGZit5arYsGnFAKfPW/9qkdUcCHhi0RFtK7mAMB0u/HzMHxUkwdC6u
	UZshmKZKCl7aY62evt3iaA9w/l3BI2HzD2b6pPZaVi5xb2m2LgUZG6h9djTSnr0cBOx5rOXAlZFcw
	ZWBX3wIw6wG7rmdQnZRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icAKy-00064k-Op; Tue, 03 Dec 2019 15:43:40 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icAKq-00063T-7w
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 15:43:33 +0000
Received: by mail-wr1-x433.google.com with SMTP id y17so4254339wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 07:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=9xkHiei+HV58aINokb7oTqowLoIkLcyzfZboil/9RTE=;
 b=EzCcz4yW0ZIse4bIJCe1jCfAPuKqtiTlBbBpMLKJjLuHQOhslBDvJu3VYIIGSYMyOg
 rs+xn0yew92sVTosedPRhODxvToi0w1+/nAnL1M/s1Nd+LqZvBGsdyWywfZ82G6CVy6I
 3/YCMuFT8c41uwIHjw+XkKfbf8xuGqFoJDkz1PCY8FJk+Yn39aWO2fcqIBKqQ3MUIbb8
 bx6IJvxZHzqsFZbwJLK3hInn7BRYwX8F05rjLBPHYAyZGKULeWlB/2VbnwCyPcAwWvs/
 uS7+d/vcYq3PWU5eG21NQru8NVWJbeuYjGGfMqFcY8JPSHSdnm/Hplbo8wBurc5Miuye
 iIuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=9xkHiei+HV58aINokb7oTqowLoIkLcyzfZboil/9RTE=;
 b=t1/w9C1lLXctK1DLtmA2GYKkIUebBJOFD7bi0ctKjproAZMjnSjZ61RIYPU5HREiaU
 iY8o7T6YZ86UXZkeXzM49fa4UXcRct/qJqO/XRS343AtBYLpdSsJcUR2zFMofKFBiV08
 XJO3pGAs878XkEhEz2zzhugB/kglAPN/7YM6grlfgM5iYzVmZz3dUAj6QHYP6Tb2plRr
 BF0Yp5sdklRLxLn9rCmZlDm8ClL1fOOgVRyNU0Wjoj+eQVwbqc/keqsf3+YAi0DATsLV
 Y8QzxhIVXixRQ32Br2ghgFjeY4FWVYlKLXp5hTWMlSHPMbQcMd80T00TKQTEV8CS0Rho
 Kukw==
X-Gm-Message-State: APjAAAXT6dg79XN9JtjtIM5DtyfK+8eXR/3qGP7UaWwbWscIGJHj5OyQ
 o+/iE6HY0cL6DWloRi+SAJLumUcv4cZeEA==
X-Google-Smtp-Source: APXvYqxGLxe26tJV4n1w4+f04r5TVc6f/ezJZSGFQ7lo4F8XssxAJ8Nkq41mw2Nu95BZP5RGOG0LNA==
X-Received: by 2002:adf:9c8a:: with SMTP id d10mr5867573wre.156.1575387809797; 
 Tue, 03 Dec 2019 07:43:29 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id d14sm4316369wru.9.2019.12.03.07.43.28
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Dec 2019 07:43:28 -0800 (PST)
From: Jerome Forissier <jerome@forissier.org>
Subject: Kernel v5.2+ on HiKey960?
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Message-ID: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
Date: Tue, 3 Dec 2019 16:43:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_074332_332750_AFC8D0AA 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Has anyone successfully run kernel v5.2 or later on a HiKey960 board?

For some reason, anything past v5.1 doesn't work for me and I could not
figure out why. The symptom is it never gets to the login prompt. The
root FS is a Buildroot-generated one, and prior to reaching the kernel
the board runs TF-A, OP-TEE, UEFI (edk2) and Grub.

I tried replacing /init with a shell, in which case I can type a command
but whatever it is (even a simple "ls"), the command hangs on exit and I
never get back to the prompt.

Then I started bisecting, that was quite painful but I found several
problematic commits. I ended up reverting the following (in this order)
to be able to boot v5.4:

1. "arm64: vdso: Substitute gettimeofday() with C implementation"
2. "arm64: vdso: Explicitly add build-id option"
3. "arm64: arch_timer: Ensure counter register reads occur with seqlock
    held"
4. "arm64: vdso: Remove stale files from old assembly implementation"

So the main thing appears to be the VDSO stuff, but if I do not also
revert the arch_timer commit I get a kernel panic:

[    4.657118] Run /init as init process
[    4.662380] Kernel panic - not syncing: Attempted to kill init!
               exitcode=0x00000004
[    4.670035] CPU: 7 PID: 1 Comm: init Not tainted 5.4.0-00003-
               g223b12c033fb #258
[    4.677338] Hardware name: HiKey960 (DT)
[    4.681253] Call trace:
[    4.683700]  dump_backtrace+0x0/0x148
[    4.687355]  show_stack+0x24/0x30
[    4.690664]  dump_stack+0xbc/0x100
[    4.694058]  panic+0x168/0x368
[    4.697105]  do_exit+0xa10/0xa28
[    4.700323]  do_group_exit+0x48/0xa8
[    4.703892]  get_signal+0xec/0x848
[    4.707287]  do_notify_resume+0x21c/0x480
[    4.711290]  work_pending+0x8/0x10
[    4.714689] SMP: stopping secondary CPUs
[    4.718607] Kernel Offset: disabled
[    4.722089] CPU features: 0x0002,21082004
[    4.726090] Memory Limit: none
[    4.729145] ---[ end Kernel panic - not syncing: Attempted to kill
               init! exitcode=0x00000004 ]---

Any idea what could be wrong with my setup?

Thanks,
-- 
Jerome

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
