Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABBA1A6CC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 21:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56WEem7JgIKyB0RU+0Ba57KOjxexwCHOeOfGI41P7eQ=; b=ZdLhYJCt8aipwT
	zugNBFITid8H7scmFQ1NLmrW+JxmBZTwAjZ4IMWqHA+J/UNRDQjWGU0NeILMwzb/NYzJHLOjmx0d4
	211DLyOnXt6a4JKCLGujTGhyCoL3l74I4PACCIk4LZ3CZObsOfMzHi1rsveyyfHwMFMZpscMhYRQ9
	d8Ei+eT48clRAoCojjGRMiDLcOR97H7rLJSKyHDvNH1drkBz8PsOPb6Xk5qzRdNMx6ipnDtaCpfTm
	yemoeHFDBP/hyA2i1k8ngzlWIep/l1W4HpN61ZaFdUhqugwCQSeQpRO+227eIrd9Pjp+yT19LPRns
	SDmuWQfmFXdbgNm+D0TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO50r-0006Ci-Dr; Mon, 13 Apr 2020 19:44:57 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO50k-0006CG-76
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 19:44:51 +0000
Received: by mail-io1-xd2f.google.com with SMTP id b12so10665357ion.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 12:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=JEcU39+D9lSBe9lJJtTbIAKc/3CZky0NDKuy/rLFfYg=;
 b=AVPcSlClbN95GV3Nmfkl9Z1Eo3ovpEJaz9wqnwGq2HtBtQtcD+OO4HhJabEs84WoMt
 nM8DjmRJsmZU7tP7DssEORZoTIkLr2TqPHAOtOl2BD7J1l30u08seugxW7clQOXmO4EA
 cFgkxgNWsY5fWnA+VV6b4M8Ekgx+QuqwMtXIdTZJeGBYp0WA0LMBnKtP3Nsn+mIwoHdY
 xEHbgsiS8V3Fy7KKB9OvzixMmMqipxtPphxh+9hC5aKiXoBSAIVOdmLGsBUMsA3EV85r
 YXKxs5wSYAt75DIfue0h0274W/Fo07sNkJaGOelkCJF3I0CwYFJRjidWVVzRcvK4iWQ0
 plRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=JEcU39+D9lSBe9lJJtTbIAKc/3CZky0NDKuy/rLFfYg=;
 b=FJDZT9vYWLU26RyzAHbPRaVv8j5BqhKAg8qr8LqKA7P0X7PJHPUhSqvzS9yYjZNpbz
 cK8dHhMZBFAKx+66Taz7MMzHgg5ftbpOWAucAAGTqn/IePT11dzocMIFWe7XFWXcq+RJ
 wLtxZo40w92fG7VJpMsD0QvACVzZ4di+vfKNE4x/zIHh/W4gv0S4k+AE0GPT1btRtb6O
 D0bCE/Lb5OpD9qf2c/KQv59re89ro/RyTTKsznPySoo5IJ5jiy1zoTZqMINLKf/iuhUf
 JktoZPFTeHjowopjfYrv5prE/vCjHWBCk4yrCSJifZ2lW4Ym0jMOHlrAJchC723mquoX
 l3DA==
X-Gm-Message-State: AGi0Puasc1UpJauhWqiJWG20vQv4uqkW+U5YFQx4mHmCQX5AInMQMtPm
 LkXn8kqI0QcYW+TZmr3h0JQVTKEIzNsaKGfq0tc=
X-Google-Smtp-Source: APiQypJDx7ZGFiudlqJUTvAQBygs+5IKVXzfyNYktqeaxxslHqnCl96TXSd8NyAoHtXXOSy77GP3Et366nw/USDCPUk=
X-Received: by 2002:a6b:ba07:: with SMTP id k7mr17941859iof.24.1586807087479; 
 Mon, 13 Apr 2020 12:44:47 -0700 (PDT)
MIME-Version: 1.0
References: <202004140212.PdfY02eO%lkp@intel.com>
In-Reply-To: <202004140212.PdfY02eO%lkp@intel.com>
From: Bjorn Helgaas <bjorn.helgaas@gmail.com>
Date: Mon, 13 Apr 2020 14:44:35 -0500
Message-ID: <CABhMZUUEFK_b=3qx7O+puzfh6ioZbTcQHWCq9P=J-FV+d_r05w@mail.gmail.com>
Subject: Re: [xlnx:master 9789/9999] drivers/usb/dwc3/core.h:1462: multiple
 definition of `dwc3_simple_wakeup_capable';
 drivers/usb/dwc3/core.o:drivers/usb/dwc3/core.h:1462:
 first defined here
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_124450_281809_6F6AA4FD 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.helgaas[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: bjorn@helgaas.com
Cc: Bjorn Helgaas <helgaas@kernel.org>, Michal Simek <monstr@monstr.eu>,
 kbuild-all@lists.01.org, ARM <linux-arm-kernel@lists.infradead.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 1:42 PM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://github.com/Xilinx/linux-xlnx master
> head:   81566a0b82c7995ca879463e66573c76ba774ea2
> commit: 16e9a62655524541cb2f2c59fd5f1f167fbf73dc [9789/9999] asm-generic: Make msi.h a mandatory include/asm header

Why do I care about this?  I have no idea what the linux-xlnx tree
mentioned above is.  The 16e9a6265552 commit doesn't exist in
linux-xlnx or in Linus' tree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
