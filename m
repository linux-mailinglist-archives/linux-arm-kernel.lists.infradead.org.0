Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9488F88F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 03:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DWjFtkbhi7dWWHdktBXG0MdndD1lm88JpGPg0GXLag=; b=jyqFfmQvZDsTMf
	orrA91/qxKr8MAYSzHdvZrtrDHL0qK3byNKY3D9uxGN0ExRBWM8mahUuPyFBkFn+ION9T2WyEy2sK
	gbA8x9KHFQ8XU/9Mi+gxypAnIFmCV7rLCqso1ntV8ofIL9GN1JYwLyV0ceIXh5XsjmOTuxpbtCR/N
	XGq+yE9CBxxd/GL0W3I8mxBeo/P2g07zrIAyE0epHFE5brmBQ3vftdrrzbn6OtVR5ytdZKYiT+AWt
	YgcQA5BZaGt8qED+7P+hxl4YuvZppinzUv68px5m8zqdnbTtnS3s3jmXey+bDuHSNDWhVOt/TXtAS
	IAnW4aIwtHfsRjou3b5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyRJa-0005ld-IC; Fri, 16 Aug 2019 01:46:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyRJO-0005kv-CN
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 01:45:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id w16so2261710pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 18:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1/p96Axpw0rHsxKvgAnkX2TPQwGbqpRMoy2NJLiILjI=;
 b=Gg18FaJL00NzcRt4W/j4JgqHWrONHfBYA9r8BcsQbvriweFSoDnIzZ9HTDaq3j1sN3
 mdQwP3as5jSogC4XkurlHBh3eFk+CIQlTMe2tXGsAtu+zpX3zw4gsVoYRQ9/GiQBslKN
 pl94B3b02xKzLyxX6FbcVfZ3BYOgY0eGyvUWyymYGxVzO2r7B7J/7xWHlzFUk6V5s2mf
 a5NQsBxgsivAID73l7snH0MFpHauCIYNvGVPxFUu+W7hdKn/1zw0NoK3c3YuONnjhUbd
 UgbFN5XGhNPK0u7BI0IRLwlpz4TxLie/tJ5zsdUiTcZIiNdHxRPhwU1YR10xky4HxKBJ
 cqzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1/p96Axpw0rHsxKvgAnkX2TPQwGbqpRMoy2NJLiILjI=;
 b=l7RXunIoOCCnw5bamjAQrPu2SaqiwSs0Ob3/SG6/Wl696h9e8Omldb0QKOQNDG5Y7u
 oULX5qE1A91TxHHlCE05xUwcTnu7BBND4RGSTG2Lv8DUY0fCknIjwb1X+EaLOqNIJfPe
 3xmDl2FKkQwsPetNRmcfrvIEPaWpy51Hm371A3Ozx3eDvatzHMV2bcoYpJiLmErkVk5e
 QzDG5PZUD2hzJxp8aXVAhOLactQl8G8uMjVZ8RyzeepieL4R2+klD6CxhExZ6W4GCiIJ
 ggAaeVMCZ6pAUJq4ufpVbTy5EQtrigwr23Od61JknJrMMHj6a6/sXBQ/X8G1Hmhbdqvg
 JynA==
X-Gm-Message-State: APjAAAVG3p/EIHlTWPEYiEv4VxejO2W9c5AErFthWRG4yNBPl13ZsZjt
 ICY9O387N6FMj9ZFAAcZUwpxCA==
X-Google-Smtp-Source: APXvYqy9TJYA/qdyaDQ7CLxObzKev6Jt6rMN43trN1gJEs6x9PV+CgMrh/p36YHRUcLgQom71CizHg==
X-Received: by 2002:a65:430a:: with SMTP id j10mr5932866pgq.374.1565919949052; 
 Thu, 15 Aug 2019 18:45:49 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li456-16.members.linode.com.
 [50.116.10.16])
 by smtp.gmail.com with ESMTPSA id v15sm3255539pfn.69.2019.08.15.18.45.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 15 Aug 2019 18:45:48 -0700 (PDT)
Date: Fri, 16 Aug 2019 09:45:41 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
Message-ID: <20190816014541.GA17960@leoy-ThinkPad-X240s>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
 <20190815113242.GA28881@leoy-ThinkPad-X240s>
 <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_184550_452871_98C90D8D 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, Aug 15, 2019 at 02:45:57PM +0300, Adrian Hunter wrote:

[...]

> >> How come you cannot use kallsyms to get the information?
> > 
> > Thanks for pointing out this.  Sorry I skipped your comment "I don't
> > know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
> > the patch v3, I should use that chance to elaborate the detailed idea
> > and so can get more feedback/guidance before procceed.
> > 
> > Actually, I have considered to use kallsyms when worked on the previous
> > patch set.
> > 
> > As mentioned in patch set v4's cover letter, I tried to implement
> > machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
> > parse kallsyms so can find more kernel maps and thus also can fixup
> > the kernel start address.  But I found the 'perf script' tool directly
> > calls machine__get_kernel_start() instead of running into the flow for
> > machine__create_extra_kernel_maps();
> 
> Doesn't it just need to loop through each kernel map to find the lowest
> start address?

Based on your suggestion, I worked out below change and verified it
can work well on arm64 for fixing up start address; please let me know
if the change works for you?

diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
index f6ee7fbad3e4..51d78313dca1 100644
--- a/tools/perf/util/machine.c
+++ b/tools/perf/util/machine.c
@@ -2671,9 +2671,26 @@ int machine__nr_cpus_avail(struct machine *machine)
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
@@ -2687,6 +2704,7 @@ int machine__get_kernel_start(struct machine *machine)
 	machine->kernel_start = 1ULL << 63;
 	if (map) {
 		err = map__load(map);
 		/*
 		 * On x86_64, PTI entry trampolines are less than the
 		 * start of kernel text, but still above 2^63. So leave
@@ -2695,6 +2713,16 @@ int machine__get_kernel_start(struct machine *machine)
 		if (!err && !machine__is(machine, "x86_64"))
 			machine->kernel_start = map->start;
 	}
+
+	machine__get_kallsyms_filename(machine, filename, PATH_MAX);
+
+	if (symbol__restricted_filename(filename, "/proc/kallsyms"))
+		goto out;
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
