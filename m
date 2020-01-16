Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3D413DC36
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:39:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LNlTpmm9TegT91smF+zN2vHc+TErHtKPEyCpBnYlwqU=; b=cbQh9T8G6pIyR0
	GsWKugds5uNdWjEX8M5pZZt60GwjOunEOE8i1PTQVfDEOE04JWmjqVu9dLoWGqo8kzbkDJpjGCe4z
	ZH9QYVdTKfqwUCnR+qj9QM3ytSkaFoNJDmb88F7CMsyChIGe7q/D+sqeY5HY80j/lCRm0QgTNwx6U
	8175pmK0vtyzq0m4gFSQRCj/l3wlvDKJ6LkjlAEvQWVWI74Uho/F3v9Eu68ikzz2zxEyEqF0wr0J3
	rVuzg9If96L2Xdwc5xP8ioUk+5EbWxxiIxWuDBsQaWN9P7x0yhwJeuWB1wyBxzbO6fK5cwo5/yR+D
	FAQdxyP5CivkAHsKO1vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5Mr-0003OW-8b; Thu, 16 Jan 2020 13:39:25 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5Mg-0003NS-E3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:39:18 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 4331C201FB;
 Thu, 16 Jan 2020 14:39:09 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 2D6D1200B9;
 Thu, 16 Jan 2020 14:39:09 +0100 (CET)
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Writing a robust core-dump handling script (wrt PID namespaces)
To: Eric Biederman <ebiederm@xmission.com>,
 Stephane Graber <stgraber@ubuntu.com>, Eric Dumazet <edumazet@google.com>,
 Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <4309685e-476c-7505-4fd4-fec7095c581d@free.fr>
Date: Thu, 16 Jan 2020 14:39:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jan 16 14:39:09 2020 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_053914_619459_9A9EA1C9 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 2.0 SPOOFED_FREEMAIL       No description available.
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

Hello,

I'm trying to write a robust core-dump handling script -- which eventually
sends minidumps remotely for analysis, like Mozilla Socorro[1] but for any
crashing process in the system.

I read 'man 5 core' several times, but I'm confused about "PID namespaces".

           %p  PID of dumped process, as seen in the PID namespace in which
               the process resides
           %P  PID of dumped process, as seen in the initial PID namespace
               (since Linux 3.12)

For now, I've set up :

    echo 5 > /proc/sys/kernel/core_pipe_limit
    echo "|/usr/sbin/coredump %P" > /proc/sys/kernel/core_pattern

I used %P but I'm not sure why.
(I used 5 somewhat at random too.)

The coredump script is supposed to access /proc/$PID

Should I use %P or %p or something else?

For my own reference:
commit 65aafb1e7484b7434a0c1d4c593191ebe5776a2f

Regards.


[1] https://crash-stats.mozilla.com/
[2] http://man7.org/linux/man-pages/man5/core.5.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
