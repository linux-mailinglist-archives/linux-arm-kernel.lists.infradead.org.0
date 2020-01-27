Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E517414A25A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 11:57:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtXSBOIKyozN9d+Oma7Epci4r4LlUMgVxa1RGmJZTHE=; b=Yj2MpPKt5VYIN4
	MNooUNLpu2vdEkRttFzkRIgInpP5y5+PY2DvwnxyOCPKju0FJU1C2Afr7e2ica//rd5K+WRKxTY6I
	U3XA4GLRoRAjbpSnoOCF4joo7oHZBi2baOj+e67UBg8GnwS1YQtxfy3R0PI60hMZmycIBEfIQhHox
	L9I8DReztTT/K9c+UsMLprfn2B7+U9xIo83UjXyv3esaNva5MJ+pWBPwUbe7Z/Ki0FPptUcpJOIKa
	FrSQ3GDu04HJdpI5sf5GHGwdIyL8jwCyT/EO8guApMnbnzG1EbCAmc9adMtDabVF6hM96ZkrSJWRS
	HWoHQ1wjua6B1JPVp6Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw24z-00016J-AX; Mon, 27 Jan 2020 10:57:17 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw24l-0008Dx-4i
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 10:57:05 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 125492013C;
 Mon, 27 Jan 2020 11:54:51 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id F098C20014;
 Mon, 27 Jan 2020 11:54:50 +0100 (CET)
Subject: Re: Writing a robust core-dump handling script (wrt PID namespaces)
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
To: Eric Biederman <ebiederm@xmission.com>,
 Stephane Graber <stgraber@ubuntu.com>, Eric Dumazet <edumazet@google.com>,
 Al Viro <viro@zeniv.linux.org.uk>
References: <4309685e-476c-7505-4fd4-fec7095c581d@free.fr>
Message-ID: <bb897307-b5fc-eb1c-5fa6-2be92bb0fc9d@free.fr>
Date: Mon, 27 Jan 2020 11:54:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <4309685e-476c-7505-4fd4-fec7095c581d@free.fr>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon Jan 27 11:54:51 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_025703_330615_C9E58136 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marc.w.gonzalez[at]free.fr]
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
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/01/2020 14:39, Marc Gonzalez wrote:

> I'm trying to write a robust core-dump handling script -- which eventually
> sends minidumps remotely for analysis, like Mozilla Socorro[1] but for any
> crashing process in the system.
> 
> I read 'man 5 core' several times, but I'm confused about "PID namespaces".
> 
>            %p  PID of dumped process, as seen in the PID namespace in which
>                the process resides
>            %P  PID of dumped process, as seen in the initial PID namespace
>                (since Linux 3.12)
> 
> For now, I've set up :
> 
>     echo 5 > /proc/sys/kernel/core_pipe_limit
>     echo "|/usr/sbin/coredump %P" > /proc/sys/kernel/core_pattern
> 
> I used %P but I'm not sure why.
> (I used 5 somewhat at random too.)
> 
> The coredump script is supposed to access /proc/$PID
> 
> Should I use %P or %p or something else?

I /think/ %P is the proper option, because the /usr/sbin/coredump process
should (??) be created in the initial PID namespace.

Tangent: if a process is created in a different PID namespace, does it also
have a "global" PID, or is it "invisible" in the "root" PID namespace?

http://man7.org/linux/man-pages/man7/pid_namespaces.7.html

>        A process is visible to other processes in its PID namespace, and to
>        the processes in each direct ancestor PID namespace going back to the
>        root PID namespace.  In this context, "visible" means that one
>        process can be the target of operations by another process using
>        system calls that specify a process ID.  Conversely, the processes in
>        a child PID namespace can't see processes in the parent and further
>        removed ancestor namespaces.  More succinctly: a process can see
>        (e.g., send signals with kill(2), set nice values with
>        setpriority(2), etc.) only processes contained in its own PID
>        namespace and in descendants of that namespace.

What about /proc/[pid] ? (breakpad needs these bits)

I'm still not 100% sure about how to access the /proc/[pid] directory of
a process that crashed in a new PID namespace FROM a coredump analyzer
in the root PID namespace.

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
