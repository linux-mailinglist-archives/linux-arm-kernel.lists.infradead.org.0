Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D08D9CFDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 14:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEZyRS+s96XwoKEDwnoUkCrFOwQCTtzrk9/DSWJj+AM=; b=IKlBE4ejvRtzHz
	K8S17BJlnj1+h4MW7BfK+sSgN/XIbVnYHAmOnp28tBhlzqzq7T+DDWvu78qXuWuw1RNugw3HwOi6b
	1letdhJ3TI6tW60Ti+YVZpep+0L0RQ17VwvsA4uC2RqeTnMbQiUFAfCbm7qmCar+881FETt2ZWLZj
	MXtXnWTfMrMpPgfvvCY2FQoW+fJGE83wQBJEjQLhlcixEZZbXFxKE6qTeZkkYHr6sPnVBkV4PNrTU
	bheCGnCHi/zQbWPvi80vjPlcZGYTChQ+LZ9XHMuN4+0yA8qBOSVw47BX6EIdJhoebxlffPQYiEJsE
	tpizo5YspT5l8WbQ45xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ET7-0002qk-UJ; Mon, 26 Aug 2019 12:51:33 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ESz-0002fK-4p
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 12:51:26 +0000
Received: by mail-yw1-xc43.google.com with SMTP id n69so6564982ywd.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 05:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tI6zYJOHpKSlhKSWsr8RRDLcFrzabmESL6aWfvKu/S0=;
 b=Dz9BLZxn384spg68xO8S+7nMiKogNXf84Qs7yW4eF41VDHIn+gECV8LiakvGqi0x0M
 s8/UTA5fmyEcXNelXKR4uJLjh0Pgf/ZJoGeXz3fxdq5EwCxfS0931RZM8pl72YUBY6UK
 nphFn9BJDsv+wIrokqt6SWs5POngskGB/mDrdQUc2lRYuufTW7738WDzouUIRWiKDFWF
 zTZomngbsv6bKCriM1M+mRRDnkpBZNGXWSpneOyeTvQPRd/FBfiRHuCIb9Tutq2TK4t5
 cXjTQDHwT2DDYnfXhMK8XXPsB8e+mzq//W+itt2275TUBKq2yvSUv8hTQxYMAhkJ8A0p
 169g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tI6zYJOHpKSlhKSWsr8RRDLcFrzabmESL6aWfvKu/S0=;
 b=SYxidGrPUcVGyQgaRoTDUrwpRmbD45mCbKx320y473QPZ4snJN207zvmaZgEIGImWh
 gip6IDnjSW3JNOnCji3ciuxbgYayB0OyufIvyfamtwNSp5j/wPX2LPTsnqMHCSM/2u60
 YJgHt6GETGkFuG2QcJyt3ALldJCV3nVKCQ/mhNbUQd63RxFRSHZN6vvNQ391Rz5bC8rL
 bLSFvEmaXrJrxW6MrEbBpbKvCjOR/AacQR5IJj1kpI+/H45iY8Bzsb4BkBbIQfqE8VMS
 xTgcOEtCyoB1iQU2x+TqEBCCTPMebh4IPhmqTCJn9KoX9jPRBHQl7HaS/9cR/7MzLGPy
 dP6w==
X-Gm-Message-State: APjAAAXsp0ndIzBMuBJCNIYjtV7EWAg0XusjKQFyewXGCK9RJSfMJ/68
 cXAe1JPt3tqvq97vAsiNgReyEA==
X-Google-Smtp-Source: APXvYqxw60HAOjGCLQXsMEIiBtWXkpn2X3Bgi0XfDdpZOktnPUYQ+2PF/IjDbbTE8J4f7+pKIXxg0A==
X-Received: by 2002:a81:7dc3:: with SMTP id
 y186mr12362090ywc.223.1566823880025; 
 Mon, 26 Aug 2019 05:51:20 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id z6sm2438113ywg.40.2019.08.26.05.51.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 26 Aug 2019 05:51:19 -0700 (PDT)
Date: Mon, 26 Aug 2019 20:51:05 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
Message-ID: <20190826125105.GA3288@leoy-ThinkPad-X240s>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
 <20190815113242.GA28881@leoy-ThinkPad-X240s>
 <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
 <20190816014541.GA17960@leoy-ThinkPad-X240s>
 <363577f1-097e-eddd-a6ca-b23f644dd8ce@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <363577f1-097e-eddd-a6ca-b23f644dd8ce@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_055125_192749_9F572FC0 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 netdev@vger.kernel.org, coresight@lists.linaro.org,
 Alexei Starovoitov <ast@kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Peter Zijlstra <peterz@infradead.org>,
 Yonghong Song <yhs@fb.com>, Namhyung Kim <namhyung@kernel.org>,
 bpf@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

On Fri, Aug 16, 2019 at 04:00:02PM +0300, Adrian Hunter wrote:
> On 16/08/19 4:45 AM, Leo Yan wrote:
> > Hi Adrian,
> > 
> > On Thu, Aug 15, 2019 at 02:45:57PM +0300, Adrian Hunter wrote:
> > 
> > [...]
> > 
> >>>> How come you cannot use kallsyms to get the information?
> >>>
> >>> Thanks for pointing out this.  Sorry I skipped your comment "I don't
> >>> know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
> >>> the patch v3, I should use that chance to elaborate the detailed idea
> >>> and so can get more feedback/guidance before procceed.
> >>>
> >>> Actually, I have considered to use kallsyms when worked on the previous
> >>> patch set.
> >>>
> >>> As mentioned in patch set v4's cover letter, I tried to implement
> >>> machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
> >>> parse kallsyms so can find more kernel maps and thus also can fixup
> >>> the kernel start address.  But I found the 'perf script' tool directly
> >>> calls machine__get_kernel_start() instead of running into the flow for
> >>> machine__create_extra_kernel_maps();
> >>
> >> Doesn't it just need to loop through each kernel map to find the lowest
> >> start address?
> > 
> > Based on your suggestion, I worked out below change and verified it
> > can work well on arm64 for fixing up start address; please let me know
> > if the change works for you?
> 
> How does that work if take a perf.data file to a machine with a different
> architecture?

Sorry I delayed so long to respond to your question; I didn't have
confidence to give out very reasonale answer and this is the main reason
for delaying.

For your question for taking a perf.data file to a machine with a
different architecture, we can firstly use command 'perf buildid-list'
to print out the buildid for kallsyms, based on the dumped buildid we
can find out the location for the saved kallsyms file; then we can use
option '--kallsyms' to specify the offline kallsyms file and use the
offline kallsyms to fixup kernel start address.  The detailed commands
are listed as below:

root@debian:~# perf buildid-list
7b36dfca8317ef74974ebd7ee5ec0a8b35c97640 [kernel.kallsyms]
56b84aa88a1bcfe222a97a53698b92723a3977ca /usr/lib/systemd/systemd
0956b952e9cd673d48ff2cfeb1a9dbd0c853e686 /usr/lib/aarch64-linux-gnu/libm-2.28.so
[...]

root@debian:~# perf script --kallsyms ~/.debug/\[kernel.kallsyms\]/7b36dfca8317ef74974ebd7ee5ec0a8b35c97640/kallsyms

The amended patch is as below, please review and always welcome
any suggestions or comments!

diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
index 5734460fc89e..593f05cc453f 100644
--- a/tools/perf/util/machine.c
+++ b/tools/perf/util/machine.c
@@ -2672,9 +2672,26 @@ int machine__nr_cpus_avail(struct machine *machine)
 	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
 }
 
+static int machine__fixup_kernel_start(void *arg,
+				       const char *name __maybe_unused,
+				       char type,
+				       u64 start)
+{
+	struct machine *machine = arg;
+
+	type = toupper(type);
+
+	/* Fixup for text, weak, data and bss sections. */
+	if (type == 'T' || type == 'W' || type == 'D' || type == 'B')
+		machine->kernel_start = min(machine->kernel_start, start);
+
+	return 0;
+}
+
 int machine__get_kernel_start(struct machine *machine)
 {
 	struct map *map = machine__kernel_map(machine);
+	char filename[PATH_MAX];
 	int err = 0;
 
 	/*
@@ -2696,6 +2713,22 @@ int machine__get_kernel_start(struct machine *machine)
 		if (!err && !machine__is(machine, "x86_64"))
 			machine->kernel_start = map->start;
 	}
+
+	if (symbol_conf.kallsyms_name != NULL) {
+		strncpy(filename, symbol_conf.kallsyms_name, PATH_MAX);
+	} else {
+		machine__get_kallsyms_filename(machine, filename, PATH_MAX);
+
+		if (symbol__restricted_filename(filename, "/proc/kallsyms"))
+			goto out;
+	}
+
+	if (kallsyms__parse(filename, machine, machine__fixup_kernel_start))
+		pr_warning("Fail to fixup kernel start address. skipping...\n");
+
+out:
 	return err;
 }
 

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
