Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2551E98C4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 18:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aldmxIVrCeutEUzFzbdCZtAMBygZnO36RdaZTOcZIj0=; b=Z3fddIyxe4klIZ
	kcr9WfqKW1V6IdJk+XuRvRjDkPd7ZxfINJOkfRrVnUp04AowlumNwW3EtB3LppvmannHCYSq8P2Vy
	D8Il4sCZrhwLWgF4tXuG2chpXSAgBXl9qAKgVdRoWNGFHjNM77oyoLKyGm+46pmvkRCLyesiIezMT
	pmLzOaeOOgtmgr4lomS/QEO34rzcJHZA1C+jjnGsz2/hBO2coi5uSvW4ETrOcLH/LB6Gf1cDB7GZI
	poQapCYThK82GL/YeXUYAZ/ljVy/N+rl6/Pmqn0CbjyfG4v6hkWjfTUjgLE9I72yJzlSD4mKHt/mC
	Hr5wpp5OFa1cB+G1LDjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfQb9-000540-Eq; Sun, 31 May 2020 16:14:07 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfQaz-00053b-7m
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 16:13:58 +0000
Received: by mail-io1-xd29.google.com with SMTP id y18so4459176iow.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 31 May 2020 09:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qDcDX99D7ZANOd7Hfxd9CsLkN0llgnSPxO8kSVRHg5A=;
 b=0NrOYjs83qN/UOFMEjcddPRGfiWhC3QNA2KlKhk/2EaDJh0asjZoU9RUUIk3nnnkMj
 cGP/zgRQqDj1o9N406w+mZf7XGZ3fb7k4nGhEYMVXldcj3TfVrMyp/thU5snJvHeLQpF
 BZcDGDzxkJR71o+bx+Jzclz63EJ0NGpzAIDGIxuJ0xRxVKBzeHzVh8RpRlXzUMoGanP7
 OkAGs5UdPMsdp3yn1Km90QMWr/fKkLsnZa61FGazDrthn17N3Jbs1eTkH8YYxC18iSyC
 a2a9yL6yjSP7TQZY101dPf7st1N0wr+AzkyVL8Cb13yiQZvGbZuPQdHv5y8bfn8Ubs/R
 40Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qDcDX99D7ZANOd7Hfxd9CsLkN0llgnSPxO8kSVRHg5A=;
 b=Ri9QsqW/41VAS2gE0CkYUgbjuckmtR6fWXo/6cRJ1FtwMmS7DC1QEHfI2rIh7iNyTp
 WHPL8twRDTvbHYqjrIdEhJWZUE8lKFHTtkytg2UyJKOJQlhjcO+yGqi1w+VN97iwAiym
 sSKlYhCMdu5rKKiMzyoFiAXiNzr+2WlZScx0n60HcinkYZKm0PDbLiZjGnG2l1FriZdm
 sgGkXGtADSjlskkqfyNdhlpcTSCL0ixzQC87GjBD+F1TdL54gwvZM/qQB/7nr00peZsP
 pVnecL8bUaOOsBOkkaP/ePQeitcw82S7tv5KrZWL12KambVkkP9LZk4ECAWcdz4p5kvN
 wLXA==
X-Gm-Message-State: AOAM531jx8508gvoMu1ifoT4n29s7Enre8vKZb/UwCuq1fCEcRaAYEcU
 /HK+OcebG+EEpMcOmmbaIlBFZGYWg+5/LXkjjlvFXA==
X-Google-Smtp-Source: ABdhPJyE5v1llWMoFwhdQL/ba2iAnwmju7I539rDRBzkQsXwXkHb6dGdI+r21DnNhF4FonkVmHnG2iPG5GXcAjc6t+c=
X-Received: by 2002:a05:6602:80b:: with SMTP id
 z11mr15367394iow.109.1590941633982; 
 Sun, 31 May 2020 09:13:53 -0700 (PDT)
MIME-Version: 1.0
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
 <20200519081551.GA9980@willie-the-truck>
 <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
 <20200520174149.GB27629@willie-the-truck>
 <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
 <CABV8kRxfet2RXXNcUoTKwfVzFWEQfxAkXUX4M5XhkP3nc-0+rQ@mail.gmail.com>
 <20200527095528.GC11111@willie-the-truck> <20200527101929.GT5031@arm.com>
 <20200531093320.GA30204@willie-the-truck>
In-Reply-To: <20200531093320.GA30204@willie-the-truck>
From: Keno Fischer <keno@juliacomputing.com>
Date: Sun, 31 May 2020 12:13:18 -0400
Message-ID: <CABV8kRyHo+EAWaMUzGA220z=HJRBCpH6UWiYGb84uSL3h8HQHw@mail.gmail.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_091357_481909_7F689EDF 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d29 listed in]
 [list.dnswl.org]
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Keno -- are you planning to send out a patch? You previously spoke about
> implementing this using PTRACE_SETOPTIONS.

Yes, I'll have a patch for you. Though I've come to the conclusion
that introducing a new regset is probably a better way to solve it.
We can then also expose orig_x0 at the same time and give it sane semantics
(there's some problems with the way it works currently - I'll write it up
together with the patch).


Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
