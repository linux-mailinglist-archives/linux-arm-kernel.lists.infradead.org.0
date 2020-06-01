Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A3F1EA116
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRO1kb8kwdXWE4dHqE4mkUbbWs6FmPfvAZAfPY9IeJk=; b=KzgirQM6J4wVHA
	y4oVYxvodhJA2kVDyTXDYUtk4jgYmlunXVOgYU23X05JLZ2Z7x9h0cqAgMuu2+JbCc3MQPKiGz2WJ
	LdZwAwY66/OxxVLgHukBmut3UX2jclWoQ2xsU0wLnoLU9OUDHI0TGlhxZd0BqACgS7IUAsFfn7MON
	iZGdQHw6NVEu4aLfM1LCKuH9qN72mIW4veaPN5+DcS3eDGUqvoSxTYjN7ad5p8zTz2FHOAOyO+rOC
	cZ+iZsyxs+Q2KJX7njKNgzuzgACTb3M/tar1+hW9AWOeaI2MVmJF38St6gdACseMdz6piX2Sj2URG
	nmEEbIYIr0LHDEG9vmeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgwQ-0007yw-T9; Mon, 01 Jun 2020 09:41:10 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgwL-0007yV-Ah
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 09:41:06 +0000
Received: by mail-il1-x142.google.com with SMTP id p5so7655193ile.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 02:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nO7elIn75rXMDTmbGX5CwrU6GxaesMXHLlCbJsq5rEQ=;
 b=cLgpUZDiWZDwAN2vx/sytkpCsMzPnswW25yhXlVOp7mvVpeRlJOUcL6ONESsHq4N5X
 HH2yxwDti5i1GdDd4YCHAfPTiWSoyXWJxirYGBbpZDuEGo9JLmODxeuxOXEeKzLCB9+C
 l7vGuRn6j6t3VTQiJVZq5T2MzB9ClqZ6VP+bNNVn8ZUM4GYX9hNpIDTbFVB/Jjh/UT/l
 /7o7vY5W2BcCYbuGhcjIItQQeq6n7o6igNnkuw3WivgXrRHJoIRI8dDzPGEKi9pDWVXi
 9om6exEDZE16d0x4y+jjS1v1SxPgLbzLu1EyvD2GvI+iRK8xDBnMidpRDhiCnt2pEJX/
 RUWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nO7elIn75rXMDTmbGX5CwrU6GxaesMXHLlCbJsq5rEQ=;
 b=RCGcO4C+4oR/+dpW3nXBywEui6lO1oPFMyxJ3Y9p9CKwA3t1XXo3IIotmDRIEEoOLV
 DYHrQ4R4X6evFl6TvtEyH0AnV5fudkT1Y8xnkn2kWze8JBm/L2U5rKm03MkvpyHTj+1t
 OW0y0XVZM+VnoUtL5CuhPWBZ/pLNUnqeIdFhfaQFnfvVya8fPO2GPpL92ENlaUC8IaSl
 g1wfxsM/RaYt/yCEYMeg3wI78fXKbU6IG/ziYaTqBzywWc+spqf/MXqucddppLmiFS7z
 ScLL2mvLpkllJBmWwP1TyTszA0dMqral4pPreHOFFtp82evwCV3f0atTbUfgzeb+UyCx
 K/yw==
X-Gm-Message-State: AOAM533Vs7fqIxYR+K03UDk1fX1xQzlpSSVo8IPe2mhi3p78BXupBvam
 TeV5KHmpdQP6COYxNcU/YM62vuvjjPNXK4L/i98I5g==
X-Google-Smtp-Source: ABdhPJzVdyKeWuJzEbxe7Sc+FKz1NHQru8HQk5OZpdLtuY1JD367wXLiZfSvV0eqC82O90IqonbPfcZ/GoTr0iSLTy4=
X-Received: by 2002:a92:c04d:: with SMTP id o13mr7724607ilf.201.1591004464341; 
 Mon, 01 Jun 2020 02:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
 <20200519081551.GA9980@willie-the-truck>
 <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
 <20200520174149.GB27629@willie-the-truck>
 <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
 <CABV8kRxfet2RXXNcUoTKwfVzFWEQfxAkXUX4M5XhkP3nc-0+rQ@mail.gmail.com>
 <20200527095528.GC11111@willie-the-truck> <20200527101929.GT5031@arm.com>
 <CABV8kRwhsPhhqUXS46Rwh-xDEDY2q=KSd-xz1W-pu4Gy4KVp8Q@mail.gmail.com>
 <20200601092329.GX5031@arm.com>
In-Reply-To: <20200601092329.GX5031@arm.com>
From: Keno Fischer <keno@juliacomputing.com>
Date: Mon, 1 Jun 2020 05:40:28 -0400
Message-ID: <CABV8kRzkLiVuqxT3+8c1o8m_OuROtXgfowQcrMVnrxu=CiGB=w@mail.gmail.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_024105_365198_E0DF44F2 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Kyle Huey <khuey@pernos.co>, Catalin Marinas <catalin.marinas@arm.com>,
 Oleg Nesterov <oleg@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 5:23 AM Dave Martin <Dave.Martin@arm.com> wrote:
> > > Can't PTRACE_SYSEMU be emulated by using PTRACE_SYSCALL, cancelling the
> > > syscall at the syscall enter stop, then modifying the regs at the
> > > syscall exit stop?
> >
> > Yes, it can. The idea behind SYSEMU is to be able to save half the
> > ptrace traps that would require, in theory making the ptracer
> > a decent amount faster. That said, the x7 issue is orthogonal to
> > SYSEMU, you'd have the same issues if you used PTRACE_SYSCALL.
>
> Right, I just wondered whether there was some deeper difference between
> the two approaches.

You're asking about a new regset vs trying to do it via ptrace option?
I don't think there's anything a ptrace option can do that a new regset
that replicates the same registers (I'm gonna propose adding orig_x0,
while we're at it and changing the x0 semantics a bit, will have
those details with the patch) wouldn't be able to do . The reason I
originally thought it might have to be a ptrace option is because
the register modification currently gets applied in the syscall entry
code to the actual regs struct, so I thought you might have to know
to preserve those registers. However, then I realized that you could
just change the regset accessors to emulate the old behavior, since
we do already store all the required information (what kind of stop
we're currently at) in order to be able to answer the ptrace
informational queries. So doing that it probably just all around
easier. I guess NT_PRSTATUS might also rot, but I guess strace
doesn't really have to stop using it, since it doesn't care about
the x7 value nor does it need to modify it.

Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
