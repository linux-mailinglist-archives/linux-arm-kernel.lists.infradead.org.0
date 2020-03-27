Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DFD195324
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 09:43:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+A2pw4QKlH/DGMu9+O0aW2+R86tbIICjly3OOiWjrY=; b=p8pNpbiEW062ic
	4C3jnOEYbsjUBYQ1dZw88m3vX9MuGrGQ191G2OLylNXxduyffWl+wMLd4NOZATnHo35/kNOv3zrV1
	+WwmbR1BAinGUPLDDzUjCOdYIzUHuZKa92XRlEufXIxIk4jLjJBtwR3hTYHL6SSb1odvrLTTyNjJL
	3DVJvst1KzalWHmaK5M7Mzxj1ilD6Zo1PhEDf0m3d4wdBFpIcp25iTLco4MfjT0KWtjL2Vb35XzZx
	MMW7oPyyfwKyreGJXp9tavC98dHxeLv5XJnxjWVBJsqYs/UcTWnWv+urc26yy9O8ygH+1chxOVvUp
	P5sfvyqVI5spkL4wXI4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHkaE-0002pn-UY; Fri, 27 Mar 2020 08:43:18 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHka8-0002ov-7O
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 08:43:13 +0000
Received: by mail-vs1-xe43.google.com with SMTP id r7so2797102vsg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 01:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=92v3v9O6F1Q3whXiHw17g/dqUG5CfN1T3QTIoEEIQ7I=;
 b=p81juotZx1bUgpdZ8gT/wQT4KZ2KZ5jHpKcKYDqJLluurY2AkbcvlxofvjDUeK+Hm2
 uMijT84QxPlGZXhx5PD13awOZJtygx15wwcn8InHDNhwSdQPlt0iBVgM+7jC/tenVZWo
 i9CcAzd+UFgSbdUaCTNzqTrY09VXiVhT3OYMWgIsaAiey7ala7gN0Hu1IVHazDRRF/uL
 um2TPgUL9WxZhuKUKGNhYgYmfN4g+/5P1oqdCo6cF2oPAeEP2+FJLcNNOzKGXOxlsYZD
 rVuo840bAwmJsxoAqVTc0ZgZyQP/GKfUEzxUM5lunnkN0E+Cl4cglPhs1cus5PQH+0j0
 gfaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=92v3v9O6F1Q3whXiHw17g/dqUG5CfN1T3QTIoEEIQ7I=;
 b=k7CbpJkM8OYJcrsWDzkwOF91H0cVbUuyTJ2VVerzZFrOvI0hIUd14WBc8zCzIjx4Ml
 SP8hRBsUC3L2aM8qm0BVX0qM/UZ/NRjQkC5bfh3l62NmVMn3JLcnROVgFxY+a5rnCya6
 COLJ7HNRFDNcYaWOsiURk7IC8WP2Z4KiQpPapi1/XIQr/KhmFGQNeP8Podyob8FmvUMi
 f333XXWPOiYbouVpFut994v5i581enP7vVjm0tfaD7yaApfhSmVB3fbZjkqktoN4u3yz
 reTB3Yrp+FMADW/YcSPNPBizVobOJQgW/MXlY7L3TQbxaBRESVzdhqI6MtU0mSpBXjgf
 YMCw==
X-Gm-Message-State: ANhLgQ1aP7EIPsK5hv6bT+b7brelO/Cqe2eVsH1qVYjkJ8gXoUYm8PwI
 ltdYCr3CrbWq/nXfsrTb3AKPK6oj5BGIPn5Sxls=
X-Google-Smtp-Source: ADFU+vsaaXTxlvmi+j4L1dYa6RpljDs7DpBADmI8karwZkMAv/1NaPX5Jt9jmLZwtSpHb+EgRO9uuM5HEK8Fb1dVevc=
X-Received: by 2002:a67:2786:: with SMTP id n128mr11373783vsn.21.1585298587138; 
 Fri, 27 Mar 2020 01:43:07 -0700 (PDT)
MIME-Version: 1.0
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <105f17f25e90a9a58299a7ed644bdd0f36434c87.camel@marvell.com>
In-Reply-To: <105f17f25e90a9a58299a7ed644bdd0f36434c87.camel@marvell.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Fri, 27 Mar 2020 09:42:55 +0100
Message-ID: <CAApg2=ThxqOj8a2uZbRVgXZFjHWHk9g_xY3eseobQWwHLxiREg@mail.gmail.com>
Subject: Re: [PATCH v2 03/12] task_isolation: userspace hard isolation from
 kernel
To: Alex Belits <abelits@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_014312_266328_88DC4ADD 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rybczynska[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 8, 2020 at 4:48 AM Alex Belits <abelits@marvell.com> wrote:
> +/* Enable task_isolation mode for TASK_ISOLATION kernels. */
> +#define PR_TASK_ISOLATION              48
> +# define PR_TASK_ISOLATION_ENABLE      (1 << 0)
> +# define PR_TASK_ISOLATION_SET_SIG(sig)        (((sig) & 0x7f) << 8)
> +# define PR_TASK_ISOLATION_GET_SIG(bits) (((bits) >> 8) & 0x7f)
> +
Thank you for resurrecting this code!

I have a question on the UAPI: the example code is using
PR_TASK_ISOLATION_USERSIG and it seems to be removed from this
version.

To enable isolation with SIGUSR1 the task should run:
prctl(PR_SET_TASK_ISOLATION, PR_TASK_ISOLATION_ENABLE
    | PR_TASK_ISOLATION_SET_SIG(SIGUSR1), 0, 0, 0);

And to disable:
prctl(PR_SET_TASK_ISOLATION, 0, 0, 0, 0);

Is this correct?
Marta

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
