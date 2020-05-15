Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFF81D4C3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=azwZfugf/4M0ddDdS7OWdZnwPCjBC0h2zv8PhcKQhsM=; b=aFBXfhS9QVjni6
	SIq34Pd3EEwrfG3c6MjYpU0jXoC/GKRpS8cgEf8MMzQ7+ReYvN9BHfvSCBXCVP9Jd/KVjP4fW3b33
	W620YbfMC3HOyZL0uykpWR/CmkG3jkm8ixoQxqnrlKZyrfYrBI9JYcda/zTHbk8KqwzmkCNVUKbpS
	69EwlBKzeIXc0umQcwKv+PqJn61tLIQq1vwSbPSlyftDlF/4T3BXx5DBOPs8FrrXgi2tdHrcf89xm
	Xf8ZfTlgqMYhQK9PxJaCqGJ8d/RAKGBaa8lx7Zolx81TDPs2akNsaBK/nYWjQr6Ik7kCMZqqSjnmZ
	n/khHsH2rX5TdlvC3Obg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYKC-00052W-B2; Fri, 15 May 2020 11:16:20 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYK4-00051x-Dz
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:16:13 +0000
Received: by mail-io1-xd2e.google.com with SMTP id x5so2269645ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 04:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=fG9RJAdiQR3KRVbi1EfJRtogMSIdgoMp1F7l88z9wa0=;
 b=jUWlX02LSQ11rfJ6ZVLTgF5Vcv9IS6E6Er1PynDV1jN57S0PWqVwaItvlozJwFC7wq
 I2o04DU+ury1VNLTs5zv+Ojcq9fbllDEIydDEIFkKjMIll8OOfhn6joxrSIL+BDPCQNM
 Tunz7m5SspKk55ADs3bHcuDmxn7r8iTgNBionwhxuI3qrF6lWkOvO52UKwcJ6pmxDm/E
 JufS8YmlONgtbkXVWAgOEjLwvE71LJhxj6GpRzlROlLnB4+oCHHNZQficBhwSWRMJ5Kb
 OH7Fymgk27yDeRVLkLBuHkJjEi7pO265hEen8YlNPfnA/mLpjkDAFsv0Tr+BM4s/B1AR
 h0ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=fG9RJAdiQR3KRVbi1EfJRtogMSIdgoMp1F7l88z9wa0=;
 b=B6WRf5f86f1v5PAF2aGqxKvrRHVNDeaidpJzX/3K0Ee2b7ehHBysRtKkxjsAQILO5d
 5tnRRGcmi60uYVUz54hguqFSjdMwMWjPA7uESGZEAIq5asF7+fp88W4z7M2yJQf4JX3D
 OXk7xddoTTznYsJc86gi8iMYjROmYvf6ZUzgUSlyE6l9wwHs0eNlyIwA+lz4cnsHElIB
 E2mHftUV56SfXOXtRwLJ2w85mArnHiS8eEnAKvG7GZfce7w9fTJwSFi1ru6qTWJVlaUN
 cuOTHf9syXEXDFvO11G8N50sQnmHDfAYlGxTXsosKhG2GGk+pv4AlZPY8nuGKQXD5hHa
 wh4w==
X-Gm-Message-State: AOAM530+E1ygtYnnvJ48O00Q6fFRtIXpBolbT/G8XgRXJ5p1/m96vSz0
 837f4FeWlVTxC4LL1G09d+fnaWKGWG7Bm8XeEUz4nQ==
X-Google-Smtp-Source: ABdhPJzR/BBg4yP9FlNiURi9PB43aqjraWAe8Mz6QOFhgtAH6GTFC0g6gOxZ0lmTiMqJgATJ2Mv6yW+UA4qIm8QKf5Q=
X-Received: by 2002:a6b:6b04:: with SMTP id g4mr2398603ioc.75.1589541371180;
 Fri, 15 May 2020 04:16:11 -0700 (PDT)
MIME-Version: 1.0
From: Keno Fischer <keno@juliacomputing.com>
Date: Fri, 15 May 2020 07:15:35 -0400
Message-ID: <CABV8kRyHrDMK4o=UZZZWJMuQNjPA8Xuoj-JFF-Lsx26fBTR0WA@mail.gmail.com>
Subject: PTRACE_SYSEMU behavior difference on arm64
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_041612_541219_0A335D05 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2e listed in]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Oleg Nesterov <oleg@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The behavior of PTRACE_SYSEMU on arm64
appears to differ substantially from that of x86 and powerpc
(the other two architectures on which this feature is implemented).
In particular, after PTRACE_SYSEMU the syscall will always
be skipped on x86 and powerpc, but executed on arm64 unless
the syscall-entry stop was again continued using PTRACE_SYSEMU.
The skipping behavior is also documented in the manpage,
so I suspect this may just be a bug (the skipping behavior
makes sense to me and is what I would expect).
The reason this happens is that `syscall_trace_enter`
re-checks TIF_SYSCALL_EMU after the ptrace stop, but at that
point it may have already been superseded by a new ptrace
request. x86 and power save the original value of the flag,
rather than acting on the new value. I can submit a patch to
fix this, but wanted to check first whether this was intentional.
If it is, I can fix the man page instead.

Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
