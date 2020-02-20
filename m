Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAE41656F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 06:30:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+fjuZoRzp0e4dRC1RGkSpwYkTPqVzdMf66OFkLIgo5Q=; b=miMLnGAgk8HdZGBVuQFH0mgDk5
	kRhMYYSSShSqjXk8KBkuVDtipc7As6WTfe/V/GoTa/uiMjBijdbZwlkt21UcexmPXsqH9rs/z46SF
	w3VDZLCiuplj48cfERT2uUwD/Pf7LPK+F8VHG2HD4wPLrO4j5zaVJIAG5e5bHSJRVHwf6bSPKHWTO
	r1exdXLDM9ApqzNYBlQLmzz7Y8ZfigAgEbbKeIeHN6ucZ1ejBDhEazprctr+epjBu59O44mEow7PL
	IP7HkEzLl+k9iuQuPa9YE+LyoXkvbyW3FDs+SunfX84mG8L8YA/KnIw0nBzr3bZhrsyH3d5zhMqTI
	EDQHD9Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ePp-0003ke-9Y; Thu, 20 Feb 2020 05:30:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eOj-0002rh-U5
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 05:29:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id n7so1339181pfn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 21:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EjE4Cf7VSGmXDtiO9wfyAofjvoP2FRT6B4UQ7hLR5AY=;
 b=Ub0zzd8dWNfTsDTewN1jODEFnVsMOTPD5316AMePvfM0o+2Um4n9L/wKg+jmamqCXq
 8XJPquqFIDrrkvHZluYuz/9foLpjkiu1cwtAW+C6ixGT2XEtt1997AUR+VbqkhkTZdzl
 o5Mvsf40nekLYIMcM3FQU1MgEUFl7BiExQQPPXuxeVKXp8HfH+JhvF2wo4AC3khFtn3M
 SXAy+mVO5lNQeWedTjZgBj4OTWbmRklis6gQDEcVDjVAOWHLBjuDP8m2jXw0slsHtjfW
 oqRmzzpv94v3l2QQrjT0rFWu7CnwcuidgwMR+onqK+HtBbaZRXFThQpJGkT0KXKOYy47
 zlkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EjE4Cf7VSGmXDtiO9wfyAofjvoP2FRT6B4UQ7hLR5AY=;
 b=mdojLhdMIje2Vn9F3zp2d3kxW/mW/nGSdeuOQSiEDcUaSw6rCkB6CfOgKcEZQiEI8d
 TAAtQxkGiYElqMBhhv6py2fVRzJ4Ik98iDiog3ygpfby97gAs43nxmg1sXY+LXZESVbH
 Ah8tBAUy3IoWCRNCMNW7lfEGhSX1qh5guKqKyGY8XHOHHvxzQTNv5JBVvdHsJxmuCNm8
 ArmgsCOXGg1V0rpr2kOBBJDBBYGkRHpa03K5QWh6oGihZy0kEdin0zv0gmr6Gdbh/c7P
 Z1tiU84qkYn1xlWvn4dmr0YEFNLA2Snb+cRWPr4w5dUN3HcieqfvTao2t6qj+0igSUP6
 kreA==
X-Gm-Message-State: APjAAAXmcuCMuQ5JwakNxzu/ygcGzBl2azfPy5mdgrvMr1Ti9lIoBzKo
 kt5PEEervzer7NWbhMq6waw0pQ==
X-Google-Smtp-Source: APXvYqzXGCJ8KKqo2Ke8Te55VXSZTK7rRAQmCpM2W+Cmx3hGbcok220pWXGhNqhw2DaGZEJJib1fwg==
X-Received: by 2002:a62:1456:: with SMTP id 83mr30897343pfu.186.1582176557002; 
 Wed, 19 Feb 2020 21:29:17 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id l69sm1535663pgd.1.2020.02.19.21.29.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 21:29:16 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Mike Leach <mike.leach@linaro.org>,
 Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v5 9/9] perf cs-etm: Fixup exception exit for thread stack
Date: Thu, 20 Feb 2020 13:27:01 +0800
Message-Id: <20200220052701.7754-10-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220052701.7754-1-leo.yan@linaro.org>
References: <20200220052701.7754-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_212917_985018_E4BE37BB 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For instruction emulation or other cases (like ptrace), the program will
be trapped into kernel and the kernel executes the instruction with
single step, so the exception return address will be one instruction
ahead than the recorded address 'ret_addr' in the thread stack.
Finally, it's impossible to pop up the thread stack due to the mismatch
between the return address and 'ret_addr'.

To fix this issue, this patch reads out the 'ret_addr' from the top of
thread stack, and if detects the exception return address is one
instruction ahead than 'ret_addr', it implies the kernel has executed
single step.  For this case, calibrate 'to_ip' to 'ret_addr' so can
allow the thread stack to pop up.

Before:

  main  3258        100      instructions:
          ffff800010095f48 do_emulate_mrs+0x48 ([kernel.kallsyms])
          ffff800010096060 emulate_mrs+0x48 ([kernel.kallsyms])
          ffff8000100904ec do_undefinstr+0x1f4 ([kernel.kallsyms])
          ffff80001008788c el0_sync_handler+0x124 ([kernel.kallsyms])
          ffff800010082d00 el0_sync+0x140 ([kernel.kallsyms])
              ffffad8137d8 _dl_sysdep_start+0x2f8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800884 _dl_start_final+0xac (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

  main  3258        100      instructions:
          ffff8000100835fc finish_ret_to_user+0xbc ([kernel.kallsyms])
              ffffad8137d8 _dl_sysdep_start+0x2f8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800884 _dl_start_final+0xac (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

  main  3258        100      instructions:
              ffffad801138 dl_main+0x70 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad81384c _dl_sysdep_start+0x36c (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad8137d8 _dl_sysdep_start+0x2f8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800884 _dl_start_final+0xac (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

Note: after return back from instruction emulation with emulate_mrs(),
_dl_sysdep_start+0x2f8 cannot be popped up.

After:

  main  3258        100      instructions:
          ffff800010095f48 do_emulate_mrs+0x48 ([kernel.kallsyms])
          ffff800010096060 emulate_mrs+0x48 ([kernel.kallsyms])
          ffff8000100904ec do_undefinstr+0x1f4 ([kernel.kallsyms])
          ffff80001008788c el0_sync_handler+0x124 ([kernel.kallsyms])
          ffff800010082d00 el0_sync+0x140 ([kernel.kallsyms])
              ffffad8137d8 _dl_sysdep_start+0x2f8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800884 _dl_start_final+0xac (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

  main  3258        100      instructions:
          ffff8000100835fc finish_ret_to_user+0xbc ([kernel.kallsyms])
              ffffad8137d8 _dl_sysdep_start+0x2f8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800884 _dl_start_final+0xac (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

  main  3258        100      instructions:
              ffffad801138 dl_main+0x70 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad81384c _dl_sysdep_start+0x36c (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800884 _dl_start_final+0xac (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 4800daf0dc3d..7ff55704de5c 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1190,6 +1190,34 @@ static void cs_etm__add_stack_event(struct cs_etm_queue *etmq,
 		    tidq->prev_packet->end_addr)
 			insn_len = 0;
 
+		/*
+		 * Fixup the exception exit.
+		 *
+		 * For instruction emulation or single step cases, when return
+		 * from exception, since an extra instruction has been executed
+		 * in kernel, the exception return address 'top_ip' is an
+		 * instruction ahead than the expected address 'ret_addr' in
+		 * thread stack.
+		 *
+		 * When detects this case, calibrate 'to_ip' to 'ret_addr' so
+		 * can pop up thread stack.
+		 */
+		flags = PERF_IP_FLAG_BRANCH | PERF_IP_FLAG_RETURN |
+			PERF_IP_FLAG_INTERRUPT;
+		if (tidq->prev_packet->flags == flags) {
+			u64 ret_addr;
+			int ret_insn_len;
+
+			ret_addr = thread_stack__get_top_ret_addr(tidq->thread,
+						tidq->prev_packet->cpu);
+			ret_insn_len = cs_etm__instr_size(etmq,
+							  trace_chan_id,
+							  tidq->packet->isa,
+							  ret_addr);
+			if (to_ip == ret_addr + ret_insn_len)
+				to_ip = ret_addr;
+		}
+
 		/*
 		 * Create thread stacks by keeping track of calls and returns;
 		 * any call pushes thread stack, return pops the stack, and
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
