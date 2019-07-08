Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AF462109
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qxgioBQB9hB6SJGwoYFZKpguQxP+93PIktaKxifpMso=; b=EKZ5YQoDesVvp4
	8jcI2utHWvg1tLBRnrF8GvZtKd/4HZPOFojcV4pGkCfjVsO5lcEcDKOo13D46dlrrWivgo9JEodKf
	giZW3VMmKmffrGR2zgcdcvt5u3c+YYLrsed3MQ1LPruhULFITZlF0mhK+4BRISl4acyPjT1GdKAv3
	iWDrniDcWc1pXQZLgV7MovAUfn3z1VuGoJsYlzNsh0AjiAMS4ylYE4chOwegwDnSAuGSxfhPwx6Ok
	2D0DoR5fkskCUWac9Th3rTvGLgR2SWHmtDPxFLkK8f3UN3sjGXZo3tef8wp+o8qwHYwMJ5zQ+kMG7
	4ZPmQvOvfdtblZgYJRTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkV90-0007HK-NV; Mon, 08 Jul 2019 15:01:30 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkV8R-00073T-2f
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:00:56 +0000
Received: by mail-lj1-x243.google.com with SMTP id v18so16240202ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 08:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=iAKzsaR3iuxO4zA014yfkJZC/e1MvRqZX+rJd4aMTnw=;
 b=muDIQhw7g4Nb/xbCo0YGsfqXpi/XpbmNV3ec56+y12BJXT4IQbIk3S8BZwXzHoeHd3
 6UVuH8YSRVkVVc7MZtL5Ij9VsRssTsWmsMRkJ+5xb3RjUDPqkR7QCVFCr9bpCujHPR+K
 kyjqIajqPiyd5WKLq3ObtJCJFRG+Kvt9F3yjCYvAcefyvmN19A0u+H0ynf03DUqwJj7V
 mM7GKA44kx36BqTGV9GvsUq22RgD/1CeA2brjmr61Q5IGsNFSHqMPcXi5xK8lbXKm5uq
 mbMb/MSg6HD0PViRiAIInq1fEyOTWu7Qr9R7fjZ2jZwCa7uP9hnJ+Qucq6RQ6mKg5x7/
 yY/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=iAKzsaR3iuxO4zA014yfkJZC/e1MvRqZX+rJd4aMTnw=;
 b=aVpCZMKarOAsfDlFydWujEfn+Wu8B91YnH5JgiGZPmwjAhy5OPBCm4PpGLKxdmBP+U
 SS7Xf9xzIUhzG1Qt/FCaMDqzlqsRWQPkpFdbtMuUw6AikfGFd00gdi8vovwS/VDMBqbr
 tOSn1WiU3jBFNIk2o/vjCufinpTwKEFQthk28PzV6HmiZEbZoW/JnqDi9aK6VfitiZGn
 nxYKZk7p1DAlZFHa75f6Uv8g7uJ8XX+OB4doNHepo0ibjWGTq+4wfwUVmn5RIYWyCNjl
 IVMptdTXwcE/ZhfZG6JH1OJp9pRacBEOFERR94pMh9yquW6PvNrrEWkhnXRSfWpdAbUG
 le1A==
X-Gm-Message-State: APjAAAVxETVmxoAHOA9ZQKzhxta/uPjKA0z8VGg7JIbmvx+L5H1zpdLF
 8g6NW5SRKl87PiXbeoda88vBUA==
X-Google-Smtp-Source: APXvYqzSLwvoFEdtCYexhEG3MKpeeQ6VThuwY5UzRN/WS0u19Q3eef7DzDKCicSdcVwAJ/nw/cmghA==
X-Received: by 2002:a2e:9758:: with SMTP id f24mr10879714ljj.58.1562598052994; 
 Mon, 08 Jul 2019 08:00:52 -0700 (PDT)
Received: from localhost.localdomain
 (c-243c70d5.07-21-73746f28.bbcust.telenor.se. [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id t63sm3693363lje.65.2019.07.08.08.00.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 08:00:52 -0700 (PDT)
Date: Mon, 8 Jul 2019 16:11:36 +0200
From: Anders Roxell <anders.roxell@linaro.org>
To: naveen.n.rao@linux.ibm.com, anil.s.keshavamurthy@intel.com,
 davem@davemloft.net, mhiramat@kernel.org
Subject: kprobes sanity test fails on next-20190708
Message-ID: <20190708141136.GA3239@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_080055_130868_778443E1 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

argh... resending, with plaintext... Sorry =/

I tried to build a next-201908 defconfig + CONFIG_KPROBES=y and
CONFIG_KPROBES_SANITY_TEST=y

I get the following Call trace, any ideas?
I've tried tags back to next-20190525 and they also failes... I haven't
found a commit that works yet.

[    0.098694] Kprobe smoke test: started
[    0.102001] audit: type=2000 audit(0.088:1): state=initialized
audit_enabled=0 res=1
[    0.104753] Internal error: aarch64 BRK: f2000004 [#1] PREEMPT SMP
[    0.106845] Modules linked in:
[    0.107897] CPU: 0 PID: 1 Comm: swapper/0 Not tainted
5.2.0-next-20190708 #1
[    0.110403] Hardware name: linux,dummy-virt (DT)
[    0.112104] pstate: 60000005 (nZCv daif -PAN -UAO)
[    0.113852] pc : kprobe_target+0x0/0x18
[    0.115268] lr : init_test_probes+0x1ac/0x3a0
[    0.116890] sp : ffff00001000bd40
[    0.118122] x29: ffff00001000bd40 x28: 0000000000000000 
[    0.120049] x27: 0000000000000000 x26: ffff000011190518 
[    0.122029] x25: ffff00001117e7d8 x24: ffff000011261078 
[    0.123977] x23: 0000000000000000 x22: ffff00001169bb70 
[    0.125930] x21: ffff00001186c000 x20: ffff0000116796c8 
[    0.127886] x19: ffff00001186cf10 x18: 0000000000000010 
[    0.129836] x17: 0000000000000000 x16: ffff80007b078000 
[    0.131829] x15: ffffffffffffffff x14: ffff0000116796c8 
[    0.133759] x13: 0000000000000000 x12: 0000000000000000 
[    0.135736] x11: 0000000000000000 x10: 0000000000000990 
[    0.137693] x9 : ffff00001000ba10 x8 : ffff80007b0789f0 
[    0.139659] x7 : ffff80007dbe1dc0 x6 : ffff80007dbe1d40 
[    0.141615] x5 : 0000000000000237 x4 : 00000000000021f2 
[    0.143599] x3 : ffff00001169bfb8 x2 : 0000000000000000 
[    0.145582] x1 : ffff000010184e40 x0 : 0000000040a0d76d 
[    0.147556] Call trace:
[    0.148459]  kprobe_target+0x0/0x18
[    0.149754]  init_kprobes+0x120/0x134
[    0.151103]  do_one_initcall+0x74/0x1b0
[    0.152511]  kernel_init_freeable+0x194/0x22c
[    0.154133]  kernel_init+0x10/0x100
[    0.155411]  ret_from_fork+0x10/0x1c
[    0.156717] Code: a8c97bfd d65f03c0 d4210000 97fd5cdd (d4200080) 
[    0.158949] ---[ end trace 823556350f0e2d55 ]---
[    0.160681] Kernel panic - not syncing: Attempted to kill init!
exitcode=0x0000000b
[    0.163247] ---[ end Kernel panic - not syncing: Attempted to kill
init! exitcode=0x0000000b ]---


Cheers,
Anders

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
