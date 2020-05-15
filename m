Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3D51D5AD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 22:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DaId3C47Bsl9DTfLQvHsVWA38DUUn9ED1k1jiRCw9ws=; b=feXiZBuBjb2xeJ
	YKY5HUs6LKbRJsBsn9JNxv+/3Qr2B7ux63ulHEJucqJSJp9X3dx0F1Vuxg6TqMgwyMA/VR7rDJYCa
	SKF3ftY+h23hFRIijdTIe5NCkiDfRzEnG321seajD9wCSdqWsrW3l9orpKIStop31B240ndA5avJL
	zakttSD1n/jItEULwjPE6RRrAotu5q9eDviqxgximiCre6Sg0iUXMs6ZOSJimhwk1iE4nu9rgLJC7
	yKmNRjF+8II8M1peDI7C2FWDE2SGXsQWj6r+NsK6EXsZizRpJEuCGBZ4l3oCgTlqQy8IhDlwS0NCT
	atJJ/7Xz468Tbj3BD/Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhCH-0003rw-Rn; Fri, 15 May 2020 20:44:45 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhC8-0003qy-It
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 20:44:38 +0000
Received: by mail-io1-xd35.google.com with SMTP id s10so4175649iog.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 13:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZTVysy0/5xwOZqQ9WQNRID/d39HXhyeJhmjEaIIRaN0=;
 b=EL/0ZmnD4zV1ZPVNKBHoMD1mSHsptMNDFEbmH7JnUu6LaQ4VfgO5knsXEh6MYEQeTP
 x6WwPmOekh+ZPaXQD8Z+xo3BOmxB1tO9oq7+xNZt4nHq9JzRRo/kB/noGdLRWBT72wr+
 P1ivq1K9uQcrV08TEjn7FnTOvnTXXcCdBMwtjmWlzmm3YoB2Sh/3c0hh1k1Gm23ytsuc
 SJIJKF34mbRnjxY5+8yXsBpuiVzmud5klBVFPi4jXlfSxuBwHl/v8Q4opiW2U+9CU6y0
 nsxRbWhfSRRSqmGxHBA5+ptLqA/e7cg2K57L3Mzg58XskmMH/ra72iuZKIV1KdVbcQ6x
 sfxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZTVysy0/5xwOZqQ9WQNRID/d39HXhyeJhmjEaIIRaN0=;
 b=tNj4PqKmSdmLP+nH2BVYO094uBxbcoLUqscArZdi57FcTrHBQmmgRtEdiu/mpIZ6Tp
 ss5U1NwuzgN2HW+G2wvalqisGSzY4b3bXq3fMHxYAIQMc7TUAfj1poiG6kuPziLalKav
 PTM/ldUuJhnnr47FkQn90/D7SRGSo09BrebVPiS6wVTmv//Op73u2X+uvdRYTMh+XRp9
 znyE3U3L6gYRrr8YbRWGlZfywSq/DogHTbJDssvdqqT64BAuR9bqbrhJ7FATS6kwJuV5
 m9AmlVxHoU6YalmVB8O1BdVWsbme4WQmgZaBbCilBHFU3D4mZOCcKWSh/yb/0QJMRVJ/
 bl1A==
X-Gm-Message-State: AOAM533D1dqaevsKQ3SX+TsG7cBDcwCx//SI6S4DYMGJJKo148eWyGNF
 2g7IgeNhSRyWa6pYT8hRLTgfaYHs8LkSoKxClcHSnA==
X-Google-Smtp-Source: ABdhPJxkMGRph1yex/EqbfiAYz3QnSvMLGz7CWyEAilbUvr8xbLyxEr5zonPDuT1C9W5C/VYQ3poNHkI9BP8hLpTbKc=
X-Received: by 2002:a02:7611:: with SMTP id z17mr4929634jab.143.1589575474548; 
 Fri, 15 May 2020 13:44:34 -0700 (PDT)
MIME-Version: 1.0
References: <CABV8kRyHrDMK4o=UZZZWJMuQNjPA8Xuoj-JFF-Lsx26fBTR0WA@mail.gmail.com>
 <20200515121346.GA22919@willie-the-truck>
In-Reply-To: <20200515121346.GA22919@willie-the-truck>
From: Keno Fischer <keno@juliacomputing.com>
Date: Fri, 15 May 2020 16:43:58 -0400
Message-ID: <CABV8kRxD3_zh_WJy0jWVpxxNG_NSwoTJXdLd8Ym9Bm7PbHhftQ@mail.gmail.com>
Subject: Re: PTRACE_SYSEMU behavior difference on arm64
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_134437_188120_101E3022 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d35 listed in]
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
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 8:13 AM Will Deacon <will@kernel.org> wrote:
> But it also
> means that nobody is using this on arm64, so we could also consider removing
> it entirely. Did you spot this because you are trying to use it for
> something or just by inspection/unit-testing?

No, I was trying to port a tool from x86 and nothing made sense for
many hours :). (it was quite a bit of debugging, because the
syscall that it was supposed to skip installed a seccomp filter,
which then later veto'd random syscalls making the
symptoms quite confusing). Having PTRACE_SYSEMU isn't
critical, but we might as well support it.
It makes things a bit more efficient and is probably safer
(if it works correctly ;). The patch is fairly small. Will validate
and then send it here for review.


Keno

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
