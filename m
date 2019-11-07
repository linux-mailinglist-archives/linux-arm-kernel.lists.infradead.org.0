Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D1BF2898
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:00:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9fVQplaClwhxAAGy2TF3F4gABz+5gTO+nv/T9q7d7s=; b=Qvft5QxWebqqM7
	MgmYUY2z8nSZpDsdcrzQO9CwSQhlUfYqYQlu0Am1drwrObb9IbnskxRgzLFDG6Kak9x4NX9RAChpi
	x9x5Mohf/fFOd/h8DjsWuRlC0LZmrRzJMRKV8ToG+ESpM5j+UjnmpLf9iWdzmDjWVIo4JCShWGLB6
	wSROieOjwdCT9b8GwO/wpHGE0aOVlh9JcAMUWPiS4G10Fy4bZR3WBxut/rjEA4c+4ux6BjN1nk56B
	kSN6Q7c2kIoXL7GRu9gNfzWPMs801cFabx5LhCYtCc/r/nR7Yn9h4MYv6vjQltnhhKSRW6NjD6zzo
	wI5ha8LVI60ItHPM2Hpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iScik-000095-SQ; Thu, 07 Nov 2019 08:00:46 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iScic-0008U8-F1
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:00:39 +0000
Received: by mail-lj1-x244.google.com with SMTP id 139so1175114ljf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 00:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MhaY0ugk8kwsxq3FKugkspL2MYGqh9zusrvzrZWI37A=;
 b=I14DfnkJr2s5xHB5Em9zNk3CnxEv+KsQd0RLv0S2M8Zbd+JBPrWQJLyDLI7UsFnUyU
 jewSW9KGU/5Mj9rdaNo/E2CyOlWqdkGPzV0FKD8pzXnXD3OmuC/TsBCYNhSg17P6FrJ5
 yO/9vByIOBxYr8lAEcOkeM/NE1hghWfDpsgq3uX5OL8n451FtpVVRIhZkjqCAZ7uX944
 lPTNCMOLpkf4y0CWt1TIVJuYzQfJ5LVPfLv4/nI9ZLCt88eZu1rYn+LQ/rUHDWf9xG3A
 PTkIKjTPMdR856l4uTDdUmyGArjXOYE5n9URj12P9bxKJYTmmXrwUZqQ+7tFtbtsxz5R
 tAag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MhaY0ugk8kwsxq3FKugkspL2MYGqh9zusrvzrZWI37A=;
 b=Pny7AMZvruQIGp/Vy5RMk2qg9Y+4dU7pCPVYGWufwJ/jYPSNhHZcxpnv0eOehOGJwM
 Jfs6WyoPImARW8lPOrkUWxQPiREpFt/pry7lWkAHK5+PSPmqkW9rH43TFkEcM+ivpBao
 HtX6bCr62gttWuJFKEEDltjAlrvko5I3bznYDr2LL8E4fPSZCmdFPBEFw/3qMpBCu+EC
 PkQkcbDvEirTmRCMqVl1l8sZrHcH8pWZLdVqspxrBUR/f+s9fT8mXKOHQDE++MXqM4eK
 CL7yn1Roypsmg+QZbsg+c3bsiST2AAojFKE3ugUaHNrpA1fZUNU/6x+fTc5nEeqmUhUd
 qIJg==
X-Gm-Message-State: APjAAAVc6Z7hvP2sBZEH25vnON19rHH44VlGi5lO1PPc2gormiyu+DWL
 N+dM742G4CPI2RyBUspcxe1p2rPuZoVFx3abJgPafcnZDow=
X-Google-Smtp-Source: APXvYqzRSNCULNUNJVqaJNgU2Aq5iaQhDKeZCxYwvKxqVktkZ0uhZzJPx1LEXl2tE4KbyibfhtzJ5OdCkeugYriABVE=
X-Received: by 2002:a2e:5c46:: with SMTP id q67mr1273474ljb.42.1573113636714; 
 Thu, 07 Nov 2019 00:00:36 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYvm_QEq+9e+dni1Y+bJswr9bU5=shJcC+wKjjOyiPsXXQ@mail.gmail.com>
 <bfced8c8-c64f-982e-8797-d48b5ec65291@arm.com>
 <20191106161705.GA11849@sirena.co.uk>
In-Reply-To: <20191106161705.GA11849@sirena.co.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 7 Nov 2019 09:00:25 +0100
Message-ID: <CACRpkdY5JObOobs7VW043QYGd_xufwnQDBJseKp+_QWv4kdzaQ@mail.gmail.com>
Subject: Re: Linux-next-20191106 : arm64: Internal error: Oops: 96000007
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_000038_505798_9AE96AF7 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>,
 open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 John Stultz <john.stultz@linaro.org>, Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 5:17 PM Mark Brown <broonie@kernel.org> wrote:
> On Wed, Nov 06, 2019 at 04:07:52PM +0000, Robin Murphy wrote:
>
> > FWIW this smells like a builtin driver had its of_device_id table marked
> > __init, leaving drv->of_match_table as a dangling pointer to freed memory by
> > this point.
>
> Indeed, in fact I sent a fix for this to Linus Walleij yesterday having
> seen the relevant build warning when testing -next.  Someone already
> reported that it fixed the boot issues.  Hopefully Linus will pick it up
> soon :/

Yeah picked it up and pushed out now. I wish I'd been quicker with
it but the patch spot activity has been high. (Bad signal-to-noise
ratio on the mailing lists.)

I wonder if it's worth to look at the static checkers like checkpatch
to warn for this?

There is always a bit of delicate balance between just fixing some
weird one-off problems and making sure they never happen again.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
