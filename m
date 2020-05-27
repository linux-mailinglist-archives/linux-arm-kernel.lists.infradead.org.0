Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD4A1E5084
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/4hj6cBmcfSAiZIQfFjmXo2QdKGu6MXRImZUqco5kk=; b=CgDqBRwoJnQmRr
	mWbBY71WKpoFwJkJBOOnzPV4Q9GsYlNXOmLCqcqrMKNWSnQL5QoMzlVZidxE5qHTnAlD9VDW8tp3/
	GzJhpHozkqVxi5a2Vp5FIdp2UiS8n/mCBTNyX8yZdNEUpcJXywyAhNSe2Yh9e6rFulrGLtaF36qYf
	qZVVEmmps0gFhS6o8HYGlVGkB2uCOxP2kKDdmgrJ5BOImZhYOvDLRLvmBVDiC0Wbo3Lgh8BpYG5Wy
	+yVnlFvYDxLTQYsV9MAXfUFM+Ym+PC+aq4dO2iF8NrC8GffRgzZjv2SG2qcq65/AYkYmtfMoNRiML
	GfGEjXTNLENy/djlfZGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3ae-000152-V4; Wed, 27 May 2020 21:27:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3aT-000149-Pd
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:27:47 +0000
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BB422078C;
 Wed, 27 May 2020 21:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590614864;
 bh=HUaCb3PCCc2Pw/hRjP9hPvQCIfIdC6bqDipqt+IXdOU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=e27RQsyjYiPcLJYK/eWYlxTA6Bn/y9CgNn3E+9GG9h7m/a5G1frb/+wAOfPx/3NE5
 gAW7R0FZcXgWATLm2Kr9E7RUabkNwvrP/VCkwQjepQzJGb/QKMmOyRYKTiSGdUTuRr
 2S31ZwxZjPaH1lEr34iVlwoqokOeCs+hilL79l5o=
Date: Wed, 27 May 2020 14:27:41 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [PATCH v3 0/7] Statsfs: a new ram-based file system for Linux
 kernel statistics
Message-ID: <20200527142741.77e7de37@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <af2ba926-73bc-26c3-7ce7-bd45f657fd85@redhat.com>
References: <20200526110318.69006-1-eesposit@redhat.com>
 <20200526153128.448bfb43@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <6a754b40-b148-867d-071d-8f31c5c0d172@redhat.com>
 <20200527132321.54bcdf04@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <af2ba926-73bc-26c3-7ce7-bd45f657fd85@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_142745_850565_4F754FCA 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Emanuele Giuseppe Esposito <eesposit@redhat.com>,
 linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org,
 Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>,
 linux-kernel@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Jonathan Adams <jwadams@google.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Rientjes <rientjes@google.com>,
 linux-fsdevel@vger.kernel.org, linux-mips@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 27 May 2020 23:07:53 +0200 Paolo Bonzini wrote:
> > Again, I have little KVM knowledge, but BPF also uses a fd-based API,
> > and carries stats over the same syscall interface.  
> 
> Can BPF stats (for BPF scripts created by whatever process is running in
> the system) be collected by an external daemon that does not have access
> to the file descriptor?  For KVM it's of secondary importance to gather
> stats in the program; it can be nice to have and we are thinking of a
> way to export the stats over the fd-based API, but it's less useful than
> system-wide monitoring.  Perhaps this is a difference between the two.

Yes, check out bpftool prog list (bpftool code is under tools/bpf/ in
the kernel tree). BPF statistics are under a static key, so you may not
see any on your system. My system shows e.g.:

81: kprobe  name abc  tag cefaa9376bdaae75  gpl run_time_ns 80941 run_cnt 152
	loaded_at 2020-05-26T13:00:24-0700  uid 0
	xlated 512B  jited 307B  memlock 4096B  map_ids 66,64
	btf_id 16

In this example run_time_ns and run_cnt are stats.

The first number on the left is the program ID. BPF has an IDA, and
each object gets an integer id. So admin (or CAP_BPF, I think) can
iterate over the ids and open fds to objects of interest.

> Another case where stats and configuration are separate is CPUs, where
> CPU enumeration is done in sysfs but statistics are exposed in various
> procfs files such as /proc/interrupts and /proc/stats.

True, but I'm guessing everyone is just okay living with the legacy
procfs format there. Otherwise I'd guess the stats would had been added
to sysfs. I'd be curious to hear the full story there.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
