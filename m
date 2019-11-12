Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E415F9E30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 00:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ND11E/ihpC7wGiLqYpLghLSyZ0haGUx5e9AixHZmJTk=; b=avud1Yr9q5oFnQ
	qFF8rGQhovGrv/zdRHq7EchRC4Cwd4Ovlejv/dJYNbx3G6uQNAkMoQAnNC18ArTSeLa2lvZIm8409
	c98AF8+ajXyJAH6LuHhOe27JGcdirty8N2RKSUAolBtM+ql3woDy748E7MTIQZiacVVeY3cZvwwFl
	kWSOHFuj0pn5IEYsI5lzOxxlqnOrGc5vsXumS+YMwg2N3eOm/lP660x+p9Klsaq+n+YwmoYpC5l28
	pWi4txaSFeOtxRa/6SbOtROGqc3/CjHsnWVGo1BHRdc0tt4V9b009yIU6R+BR9JEbdfSeBQevr87q
	yVVO+1AdoYiCVjjJ/4kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUfak-0002Ke-Ne; Tue, 12 Nov 2019 23:28:58 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUfaT-0001qI-IF
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 23:28:43 +0000
Received: by mail-vs1-xe44.google.com with SMTP id a143so76805vsd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 15:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=02xsHcCGGrCqTBINHYUULhCTlYSZ/3t2PPe8mauRCac=;
 b=WHaU3k0ufsLn8BQwL/Gu2Dsgd33enKx8sTbvfkQYSQeswtHmPHvxVTcdL1p7kiHrN8
 GmWZLEnnEY18pte6Pu88Psmyub4lEibB+lKeJ5ZCFz66PKdbndvAmgdd3VQXhQtOVLv6
 iWfiEIfCb+z4tOjloqEaLYEhYhKkhGoqxUngUT403br7xV+jJjpzKTPsuMF80tOMaI81
 rJVRNdbMLsYfey4+HZvOSmZGj1tIbxgFO50a3gbYEKdomKsijeNJxveJ25WHYdz+gEEU
 2owfCutPAz86y/EoFGGVBzLeatkLSU2FZiqRIJV/RGpQwZHaxDKzC2yJdiMdmU0ElJv1
 G/Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=02xsHcCGGrCqTBINHYUULhCTlYSZ/3t2PPe8mauRCac=;
 b=ADbHvDXrV6jazJaToQoFzMIRjfpUp3H6gBqfxA1OCuzZBpGK5Rf9z/OQnmWAymxlsj
 Dbv3d/BtKNklzKRHqnNPLDs6toM9iERswIsODJ5zJdDykLLXZI0Yc6IE0EFRAETNHIAH
 7f2tK1PZkDB+LMFZiu41HmqctOI1U7P/Dh1EZuG6JgtnGTuIWmfhcanu2A+eeI2RNhBG
 q0ZaFDkSTKTTzjVTtRjhRh4SmGOn5WortddMRO26cDPJfVD5rZDcfZOyL3TEYh27jwj1
 qSKFp4nBiKnwZ6CtK2ygYS8ppcXmUYEJQXvQEqC7NIbzER3lHNA0X5f4FxqG4H3+QhV0
 ar8w==
X-Gm-Message-State: APjAAAWr0G/HbKITvsSQV1krOwHMFJjERWQtJrkybNQ3rALCAQnIwcD/
 kZTy1w7BB/QrEzffXxu/1ot9k7CjEyI=
X-Google-Smtp-Source: APXvYqyhq1OZOevFQ14ljaxa4/7e08hq2Z4fBsTqz+ZuzMeamcBsNdLnXaBL9fcdoSOS5fiuFPEcPA==
X-Received: by 2002:a0c:b91f:: with SMTP id u31mr163504qvf.190.1573600933095; 
 Tue, 12 Nov 2019 15:22:13 -0800 (PST)
Received: from [192.168.15.21] (201-43-11-103.dsl.telesp.net.br.
 [201.43.11.103])
 by smtp.gmail.com with ESMTPSA id a70sm80026qkb.86.2019.11.12.15.22.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 15:22:12 -0800 (PST)
To: linux-arm-kernel@lists.infradead.org, will@kernel.org
From: Luis Machado <luis.machado@linaro.org>
Subject: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
Message-ID: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
Date: Tue, 12 Nov 2019 20:22:10 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_152841_627956_B7C57A8E 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: 4.7 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 2.5 RCVD_IN_SORBS_HTTP     RBL: SORBS: sender is open HTTP proxy server
 [201.43.11.103 listed in dnsbl.sorbs.net]
 2.4 RCVD_IN_SORBS_SOCKS    RBL: SORBS: sender is open SOCKS proxy
 server
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I've noticed, under very specific conditions, that a PTRACE_SINGLESTEP 
request by GDB won't execute the underlying instruction. As a 
consequence, the PC doesn't move, but we return a SIGTRAP just like we 
would for a regular successful PTRACE_SINGLESTEP request.

Since there are no software breakpoints inserted at PC (we are actually 
stepping over a breakpoint, so GDB removes the breakpoint at PC before 
issuing a PTRACE_SINGLESTEP request), this is an odd behavior.

Though not too harmful, i see this manifesting in the GDB testsuite 
(gdb.reverse/insn-reverse.exp), which throws the test off by making GDB 
think it is further in the instruction stream than it really is. In 
fact, we get lucky here and no FAIL's show up, only many more spurious 
PASSes.

Since the reproduction steps involve GDB and the testcase, I'll report 
my findings here for convenience. But it can be reproduced with a 
top-of-tree kernel (what i used) or an Ubuntu one (4.12.13), it doesn't 
make a difference. I've also reproduced this in real hardware and under 
QEMU.

I did some rudimentary debugging to confirm GDB wasn't doing anything 
wrong, and placed some debugging output on the arm64 ptrace-related 
functions in the kernel. I also added some debugging output to the 
function that handles software breakpoint traps, to make sure no 
breakpoints were being inadvertently left behind.

At the point where GDB issues PTRACE_SINGLESTEP, we see this:

<case 1>
<before execution>
[  524.329276] >>>> Start 
user_enable_single_step,/repos/linux/arch/arm64/kernel/debug-monitors.c:450 
<<<<
[  524.329314] >>>> PC is 400574 <<<<
[  524.329329] >>>> End 
user_enable_single_step,/repos/linux/arch/arm64/kernel/debug-monitors.c:459 
<<<<
<after execution>
[  524.329679] >>>> Start 
single_step_handler,/repos/linux/arch/arm64/kernel/debug-monitors.c:249 <<<<
[  524.329707] >>>> PC is 400574 <<<<
[  524.329725] >>>> Start 
send_user_sigtrap,/repos/linux/arch/arm64/kernel/debug-monitors.c:228 <<<<
[  524.329733] >>>> PC is 400574 <<<<
[  524.329783] >>>> End 
send_user_sigtrap,/repos/linux/arch/arm64/kernel/debug-monitors.c:241 <<<<
[  524.329794] >>>> End 
single_step_handler,/repos/linux/arch/arm64/kernel/debug-monitors.c:280 <<<<

A regular successful PTRACE_SINGLESTEP should look like this instead:

<case 2>
<before execution>
[  981.042942] >>>> Start 
user_enable_single_step,/repos/linux/arch/arm64/kernel/debug-monitors.c:450 
<<<<
[  981.042982] >>>> PC is 400574 <<<<
[  981.042997] >>>> End 
user_enable_single_step,/repos/linux/arch/arm64/kernel/debug-monitors.c:459 
<<<<
<after execution>
[  981.043411] >>>> Start 
single_step_handler,/repos/linux/arch/arm64/kernel/debug-monitors.c:249 <<<<
[  981.043453] >>>> PC is 400578 <<<<
[  981.043472] >>>> Start 
send_user_sigtrap,/repos/linux/arch/arm64/kernel/debug-monitors.c:228 <<<<
[  981.043481] >>>> PC is 400578 <<<<
[  981.043540] >>>> End 
send_user_sigtrap,/repos/linux/arch/arm64/kernel/debug-monitors.c:241 <<<<
[  981.043553] >>>> End 
single_step_handler,/repos/linux/arch/arm64/kernel/debug-monitors.c:280 <<<<

As a guess, i decided to revert commit 
3a402a709500c5a3faca2111668c33d96555e35a (arm64: debug: avoid resetting 
stepping state machine when TIF_SINGLESTEP) to see its effect on this 
particular case. Then the output looks like <case 2> above, which is 
correct.

So this is at least partially caused by commit 
3a402a709500c5a3faca2111668c33d96555e35a, but i don't understand the 
full picture (involving the kernel) here. I know said commit is needed 
for other problematic cases in GDB (fork/vfork for example), but it 
might be having undesirable side effects here.

Here's how to reproduce. Make sure you have a reasonably new GDB (I 
reproduced it with Ubuntu's GDB 7.11.1-0ubuntu1~16.5). You can also 
build GDB from the git tree if you want. A standard aarch64-linux-gnu 
GDB will do.

Grab both of these source files for the testcase:

https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=blob_plain;f=gdb/testsuite/gdb.reverse/insn-reverse.c;hb=HEAD
https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=blob_plain;f=gdb/testsuite/gdb.reverse/insn-reverse-aarch64.c;hb=HEAD

Build the testcase with: gcc -O0 -g3 -lm insn-reverse.c -o insn-reverse

Execute gdb like so:

gdb -ex "set displaced-stepping off" -ex "b load" -ex "run" -ex "record" 
-ex "si" -ex "rsi" -ex "record stop" insn-reverse

What the above does is put a breakpoint in "load", run to it, enable 
reversible debugging, step one instruction forward, step back one 
instruction (essentially coming back to the same PC) and then shutting 
down reversible debugging.

Now, giving gdb the "si" command will cause it to execute the 
PTRACE_SINGLESTEP i pointed out above, in my explanation of the bug.

display/x $pc
stepi

You'll see, if it reproduces, the PC has not changed and the instruction 
has not executed. GDB will indicate a breakpoint hit, but this is bogus. 
It is due to the fact the PC didn't move, and GDB still has a breakpoint 
listed in this PC.

Please let me know if i can help with any other information in case any 
of the steps is not clear.

Thanks,
Luis

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
