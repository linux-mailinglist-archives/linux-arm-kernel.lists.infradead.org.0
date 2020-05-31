Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 079011E98CC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 18:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQQTSTNPXJyKFPXUz9qbyrHN50B8YnoJYbfRths8gak=; b=uXmnf2T3MOcSeb
	4uisT54o4uYKRy3Gn0eTNI5c4ZaXDXoBwXvm760BLvqUbUUMF1nmHyI3F95dMQVKA7n+c2049gEhO
	FxqNikS9rj7nmpZ9zvaCzqOr96RZYZ6FKMiddRa8NnphPR10+FwBMf8LLgRfq49SlWdEnTDJnYld+
	346DU6cXgbFJOpy4XKuJI99/3tCVOwGrPzybfM/LVvHVuRF+8r1kprd41FPujUGly93VAGAiUStm7
	VWKfIRDducE1GAQC0+Mpo3E5ccdL1BM3oFSQZ9zhmY0tElysrSVZfDirvCs16EQf6ZAHxwCIpIsph
	+5NY9mNogwLpLR9bQovw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfQiR-0002BJ-Jo; Sun, 31 May 2020 16:21:39 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfQiI-0002Az-Us
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 16:21:32 +0000
Received: by mail-io1-xd2f.google.com with SMTP id r2so4482096ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 31 May 2020 09:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PsvCGiYLLjaAspJB0Irl4XXJZpB4TLmB11Af7nODiZ4=;
 b=DZBEz0VQQYg8+MCuCPbFV+AxKIpnYpT7cQIziNyRP6k47qxPaYqEP/do+GxY9FzsWj
 OdHG9XF8XGaPSWIH3Y9TSoFK8UK9NcmP3M+138AII1HQtBcUUC80hOJgOjr/OQUle0zw
 7RCP57cmKOYzvFyRCGXNQIOXoIPpO9qqn/A6hyDuvuANk+h+PV/LiLhAkvWguduTZpYN
 uR+LSbgHzgv6cJOVUrafqAUB5pn09n6mUt+baeAvz/NqB4oa/YkCr37AkyW8EsRvTuVZ
 CVXRTfTNQ1cbZdJo1UjYA+vUaBzi/mkUAHlDQJXV+1alRxAZusjouPK+n1d27N7bKNEj
 +tvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PsvCGiYLLjaAspJB0Irl4XXJZpB4TLmB11Af7nODiZ4=;
 b=SqKnVdnTcdf70ZjhzfT31SqVaCbBNlf6h3hKgoZj2CxFLVo1bvt+zk8yCRNqPL02M+
 rmU0KVR4A0lc65ag0aS+VQjl1YxfcJOY0nlnuRnKoPoOdlixQ1HSNSrTWQxPj4kgYJbD
 Ef4lyyRc+dq5dSTcSyzTAL8sjmk+2HjGZ7UbcjBZPIwzpwuaCY/Oo/Xfd1UWxCVj6ClE
 1j5X3VCF6WncADQhtA/NXB09FdEqaeVLhOF5zrU0IUVTa2fw5mw9UHinvZQpbWRD2lIN
 m9A90TdWdzorH7GXsOcH/7IoKMre5d22g5mJNEIeYEtFYFKUqWw26FTjrXfURxi8Rzqn
 GcOQ==
X-Gm-Message-State: AOAM533hwPmdxnjVM/l0YuJXO7nGm4qdI1svwD13Q1NpjW/a50FT+5T/
 pQNesMSpz2/Li55mx2YXfqu9TXGmWfSWudv94u21BA==
X-Google-Smtp-Source: ABdhPJwlFVWf1KyILpr3E8+f5WbaYijh3ZVdvVTtmOMxgPjP10RHJPOwTwGYihQXRe5FlOki++Lno4KBjmQqnGh6fUY=
X-Received: by 2002:a05:6602:1647:: with SMTP id
 y7mr15517153iow.75.1590942087760; 
 Sun, 31 May 2020 09:21:27 -0700 (PDT)
MIME-Version: 1.0
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
 <20200519081551.GA9980@willie-the-truck>
 <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
 <20200520174149.GB27629@willie-the-truck>
 <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
 <CABV8kRxfet2RXXNcUoTKwfVzFWEQfxAkXUX4M5XhkP3nc-0+rQ@mail.gmail.com>
 <20200527095528.GC11111@willie-the-truck> <20200527101929.GT5031@arm.com>
In-Reply-To: <20200527101929.GT5031@arm.com>
From: Keno Fischer <keno@juliacomputing.com>
Date: Sun, 31 May 2020 12:20:51 -0400
Message-ID: <CABV8kRwhsPhhqUXS46Rwh-xDEDY2q=KSd-xz1W-pu4Gy4KVp8Q@mail.gmail.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_092130_993707_5A81E1C8 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
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
Cc: Kyle Huey <khuey@pernos.co>, Catalin Marinas <catalin.marinas@arm.com>,
 Oleg Nesterov <oleg@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Can't PTRACE_SYSEMU be emulated by using PTRACE_SYSCALL, cancelling the
> syscall at the syscall enter stop, then modifying the regs at the
> syscall exit stop?

Yes, it can. The idea behind SYSEMU is to be able to save half the
ptrace traps that would require, in theory making the ptracer
a decent amount faster. That said, the x7 issue is orthogonal to
SYSEMU, you'd have the same issues if you used PTRACE_SYSCALL.


Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
