Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78817E3D71
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oz5yA6hAceSYYrEXsb4adWY0jGEVFDE02LZd7yPzEc=; b=WQfwdLxHrSYTm5
	1EOnnjzfVuD6Z10yf/pwwtJEx0iWJ+efScmtm5nIMguNU9XryKk4Z2r1ivBGM8rX4ZCLMBHYC5pWR
	SORViyhTzu8EeOGETdAddU8+FiIF8Ms1NWt3TclsIaOpx8slDxD9XQdNGNrezoovCU4jGM75EfbRL
	ZriChqi1lo8frCqX6jrNPsCABPoUVYKpSvJMWQ/Hf9pcOaTa3FyBFZoOBYeelNHtYXA5Wb+nAyufq
	1JtEBM1UduOHxKbUwzBizaiPglcbeRR/Q5hGU5y2zw26/t/JaZbf53QNIv2WNjMGMaqd5FaGll5Js
	YnGpy20k6nlzy90y0baQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjtk-0004SV-6r; Thu, 24 Oct 2019 20:39:56 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjtX-0004Qj-DJ
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:39:44 +0000
Received: by mail-il1-x142.google.com with SMTP id y5so23683278ilb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tgj5mFJJlxLCDIbRYcFCYlWFe6stYdijRRC9FGrHxdI=;
 b=F64VJxOipVr4Sm8yUf8Y1xuWaCfzK2k3LAvmIUo6KldRq0gFl6SpgDnjEKHmt2kLwW
 80vfNGVwnnkP2yYmKLNZW84pCVF4pqgSSRJ6Guychac0+GVzhkW/lbrDop5vmrZyl02K
 0AgRVVl2mynYNo21geu4OKi72MRI1sMcByShUcMxbEpez/ao6pCds8jXBo/aKMuRJMt9
 PniidlkD8Qzdrs5mI16HqZ6wzOdgSVON9kqGnUE5lngYx/jetSlHP+EFAFyMDY4ZBhSC
 0Ckn6BpYTm/jYTooWYd5XOL9WvU/PnhxMv2/mcL9YHuSBOSP/ymDjaXSpfnPgk9ohGup
 HpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tgj5mFJJlxLCDIbRYcFCYlWFe6stYdijRRC9FGrHxdI=;
 b=NggCEPkoSlUQz4ze/Fb5QLmd0N0v/QCyYf9qLGmJ2++vo0aQ0DNJS/dc7HtrwHqUWY
 RiXf+uAyuQ2OlHIk3dfTfKr4Au5zrMD4l4zLT7TbIQzsEq61Hnvmyl94bMhcHQrsmf91
 qbVfWB9mboso3vsby+ZYJuS+pAASdP54p7d+rmWTfW7fcOKNTMgTJkVViA1F84VTsDnj
 t6w6wZg3VbRf8/4JpINRFUpKQmLkdPF4zqF2lDZP14RpCjhGZlk3uaOswdgtFY+jFSjC
 6znP7RwZRJHbJfdipTHKNRHGnEDTUIt3ibD5ZTBeEa1nM09Cm+Jr5vuEysXg/DlcX+2i
 udQA==
X-Gm-Message-State: APjAAAW72eXsJk7uJBPyEw2Lz+W5t8p5Ihi29mEmstXMfLmQ6niK54/J
 QalfnMH7Rha4ScTpQVR7FDVIEoUhoRyiYuFscGwXZg==
X-Google-Smtp-Source: APXvYqxULDhuG5ACyKYB8t65s2MsMwU3BlNEE7BnitEhFpl+W+aVcdmSmMTwUNedyeY0xJdOhrTu4YM2oI0R0PJqI1c=
X-Received: by 2002:a92:1b4c:: with SMTP id b73mr28803378ilb.207.1571949580089; 
 Thu, 24 Oct 2019 13:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <pull-1571934890-285615@atomide.com>
 <pull-1571934890-285615@atomide.com-3>
In-Reply-To: <pull-1571934890-285615@atomide.com-3>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 24 Oct 2019 13:39:28 -0700
Message-ID: <CAOesGMgjG-DGjSJT4AB9D7ZQFsYorNmMyzLCHoD=UzjBLF7MvA@mail.gmail.com>
Subject: Re: [GIT PULL 3/3] drop legacy platform data for omaps for v5.5
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_133943_503960_5213D376 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: SoC Team <soc@kernel.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-omap <linux-omap@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 9:37 AM Tony Lindgren <tony@atomide.com> wrote:
>
> From: "Tony Lindgren" <tony@atomide.com>
>
> The following changes since commit 1819ef2e2d12d5b1a6ee54ac1c2afe35cffc677c:
>
>   bus: ti-sysc: Use swsup quirks also for am335x musb (2019-10-21 14:15:55 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/ti-sysc-drop-pdata-v2-signed-take2
>
> for you to fetch changes up to b08a0c577518a02ea08673f68881223a3ed35cc6:
>
>   ARM: OMAP2+: Drop legacy platform data for am335x musb (2019-10-23 07:46:32 -0700)
>
> ----------------------------------------------------------------
> Drop legacy platform data for omaps for v5.5
>
> This series of changes continues dropping legacy platform data for
> omaps. With the proper device tree configuration in place in the dts
> files for ti-sysc interconnect target module driver, we can drop the
> related platform data and legacy ti,hwmods custom property.
>
> Most of the patches in this series drop platform data and custom dts
> property one device class and one SoC at time. This way we can easily
> revert one patch at a time in case of unexpected issues if the fix is
> not trivial.
>
> For am335x musb, we need to first update the device tree to probe with
> ti-sysc interconnect target module driver. And then the following
> patches drop the legacy platform data.
>
> Note that this series depends on earlier ti-sysc related driver changes

Couldn't quite tell where to land this, but I picked arm/dt mostly to
avoid possible toplevel conflicts with other branches that touch
device trees.


Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
