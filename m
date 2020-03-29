Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE5819707D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 23:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhvVLSs48BHRE7gWkaFbQJnRWbNfts7B3K3uiFuCvhQ=; b=KUZaZuFjITvKnE
	f+QPq5fXhq713eaSM7p8KgcbPcGLinmaL8nRwdm089TyRfnntol65g9GuhhVz3B4eyA+LVKW5kcaX
	hX2Wc9evinEBjSAo6Di0CeTU7hpGaIX7c2myIitdgCF6BCUDZcmt/hZYq0AqN3mBswLVkg2p4YWAZ
	DpBcxGbzohypyfZjvR7qs6zL7szgzbqmsFAd47c8Am7u2OQZY7hh/3ddomZL009p/a3fGN2xh/siF
	a9ZLY6vb25J7whdKSHxmRPpjUXMsnlmr9E7oA4xPfx9um7fxdwycES12SSqPCIK4ON4v2XQrD8KEZ
	k0xg1LSJwyVNaixZyCTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfJW-0001AT-9B; Sun, 29 Mar 2020 21:17:50 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfJI-00019i-LV
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 21:17:38 +0000
Received: by mail-ua1-x943.google.com with SMTP id r47so5548521uad.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Mar 2020 14:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PlAsMJa4Ap4Bu6zfW50JonjjDBj+TTytLskw+4DE0eE=;
 b=kpkCaXt2+Nl7ioWQEwi3llXPbAASFJ3ojg/l8gaqgXvpXKsqMh6nONMh1Yc8z9mAal
 unFgZH2mj9DaMvoWiKmonO10acBajrv0HiRZgydY2mQgFfwqVpwBKbXUhzu3uUGvZVdB
 U42FLdYU3SOMmx4PP9bbI0aRLis9AboC1xQ6F7e8Vho7MfjbgsAEYPqG0wcFgHkXKRwl
 tZ/aFUe/KxbNJa71VocRZJu47Pl9qgMZZo0pgkzvZRqSvVN0dPl9iI+BPy02IsjrDqxc
 MemwmL1yGpBQPID0FIrKZBMNvEioEMafCud5HWUWfzLcnWvmKi+kVhQUFoHGQZsA7CUh
 hzCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PlAsMJa4Ap4Bu6zfW50JonjjDBj+TTytLskw+4DE0eE=;
 b=DEVCPGmw4+G3B4zO0ZOv4L8eyd3BYV1NfO1JPtQjWEFtDGejzRQjhQAldOHzzG+8Ld
 +LBxkzR09TLti0dpQIQDW+HGARXQWgugqtWSMn96qE95PMF47VjwPVMa2UPF0f5V4lq7
 bh/avNW8dyvsKiGuieZEoj6vH6Ub2yzTHYM+6ZekKx6gIjNVmpdcNrEAQI6vjFYH0Dix
 FF2UVw0IA9gVKjGU+HqxfzTy57dyVynDI7XIouq99nwr3aYnC4JLdiDV1p3gbTZzX+mL
 /uvXS/JbCZpOwI8GwOLq5Sc8R8Wu7QYbDkBXqAJUW0QNZ1BDluoyCurV71mR/R+0J5GJ
 c2yA==
X-Gm-Message-State: AGi0PubxI+luSCnmUXmk45Dxafl1OZMrHJnYZm9YhfReHEQP3wYR+zN+
 on4PheNXBo46Utq/YOqJTr9Id1Op1Kzojzn7ZQ01Mw==
X-Google-Smtp-Source: APiQypI5UyPceZaqS4xPEyKZJ+1QsToAhF0AamS+JTJQoRAG+CuN4Z8gCIgVDlEuDjF9cmMKZjq9V//u5kOMJTG958s=
X-Received: by 2002:a9f:2a88:: with SMTP id z8mr5926056uai.17.1585516654164;
 Sun, 29 Mar 2020 14:17:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200106135715.1159420-1-robert.marko@sartura.hr>
 <CA+HBbNHEetusFNH-8Qmva=2-_HQRRJ33qfBRSudZBVW+vK0tnw@mail.gmail.com>
 <20200327220545.GC5063@builder>
 <CAK8P3a1_eyVSTgKDk+qph6CCKswWFWhPfX=yi3=jAeUf4uWC6w@mail.gmail.com>
In-Reply-To: <CAK8P3a1_eyVSTgKDk+qph6CCKswWFWhPfX=yi3=jAeUf4uWC6w@mail.gmail.com>
From: Luka Perkov <luka.perkov@sartura.hr>
Date: Sun, 29 Mar 2020 23:17:23 +0200
Message-ID: <CAKQ-crgF6ebubzi2Kim7fNp4BJFSjffnmMsaN6ghnfSXaXbCVQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: qcom: Add support for IPQ40xx
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_141736_765382_77979CFC 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christian Lamparter <chunkeey@gmail.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 John Crispin <john@phrozen.org>, Robert Marko <robert.marko@sartura.hr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Arnd,

On Sat, Mar 28, 2020 at 10:15 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Mar 27, 2020 at 11:05 PM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > On Wed 25 Mar 03:25 PDT 2020, Robert Marko wrote:
> >
> > > On Mon, Jan 6, 2020 at 2:57 PM Robert Marko <robert.marko@sartura.hr> wrote:
> > > >
> > > > From: Christian Lamparter <chunkeey@gmail.com>
> > > >
> > > > Add support for the Qualcomm IPQ40xx SoC in Kconfig.
> > > > Also add its appropriate textofs.
> > > Any blockers on this patch?
> > >
> >
> > No, I must have missed it in the past. I've picked it up for 5.8.
> >
>
> If we only need these few lines, I can still squeeze it in for v5.7 last minute,
> just forward that patch to soc@kernel.org. If other things are still needed,
> let's wait until v5.8.

These few lines is all that is needed. I'd appreciate if we could land
this in v5.7 rather then wait for v5.8.

Thanks,
Luka

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
