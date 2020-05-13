Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8FB1D114E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p10gX59mhJbkrMKffj9QTAYDR12O0j6sdwv6D4z3pkg=; b=EeejH7rrB1G1I1
	+Ce1u39L16qabvOpK19qcuuQs6bTNYkiCZP92W0VBJdzKYigkJmPdU6QRY09enSUV0xx7MKIdWEDJ
	jwENy5RqHpX9UG/CTD/+ZoYVEhnaDxb47g3dgIdx8d4ft2qUI9vngBQOZ7R4/pr2fERrgithc7oGY
	RNPApqXAbOQCLneKwS6c1D+slIzuAzhDrkSjbT1Q0oJ1u7IxxuPm1Nr7ZKAu/KwE/J9i37/0ctQEO
	v8KrmSsIW/vE68H9xXAUg4wVI8ZUe6aqnNuet5sG9dd0P9d/5OlIpre+S2EtvGuzKGTxBZBtLdpYv
	HwfmNe4tlBEcZANsxeag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpYw-0007U6-NC; Wed, 13 May 2020 11:28:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpYn-0007TI-UP
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:28:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id l18so20414516wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 04:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=umGv6fGxsWryLw9NkuknLx6F4a8s0iVFY2+FuwePS84=;
 b=OfUWDIM9m7FIQ6koJKsYLqgDmwiyBWA+0K8phN3KfRTjHfFEA2rpy/cZ/85mCF3FuK
 9dm5BtwNSvkGyTZXeZHmZMHx1uhMViO7o0Bs8LDz2Nc59rctl0FGCJVI3lxFIYKY7RJo
 Az791hdUQ8TvdQHwlOePfOKxtXHPli/MFwxd0iE/MvP1kaRgvoZPW1kOXiPCJX6Soc+T
 DkhyESW95zsMQl3zLGaZJAUaSBARiT78Gzz7IXwN2Cu/ib7gkb9pDUW4+IvbsJe3Y5UX
 jkjbn7Z1PHgK27c/pq0aakhEW5azZb61zyuAFb59EdXuCl3CeqF0aMjxX6Xh+oCa8L4U
 tG2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=umGv6fGxsWryLw9NkuknLx6F4a8s0iVFY2+FuwePS84=;
 b=tmfNwySb+CbN7lgUTIVTm05leZPLzpiWjSc2nI4+DT7sGTSpyMPXHC2BPwAcEMeT29
 Z0ttpiMUt7nXOyzNi74ZYTG9SI+nEbmNjcDDOT9l9KYzhVdQfWgiqfmKUmv87IDHIFr5
 ER4c+TbPV8WFE5AK6lz/43qcVsVR+KTeDEgq4QXy+V9O5y27zYHDd5WCY0sjmiyGTWyS
 vsT/SrsuuJdptagnbOOKKUXC4BNtZWDegzhA0WB+u3+WKjkJD9ZmI6gxjEnrnPgMMRgR
 4PzV111etVI6jeASO0IiBdZNLlkqvOwQqDP374/+b7pEj9nLZdJZgRhAtcnUB3zwIBzZ
 G4Ug==
X-Gm-Message-State: AGi0PuZZdm6riEmkrvBa4Gr5VJAEqiEGixdEdQaLL+YsOzVHNprpy5Zw
 cP+gi7GV9Y5vQDowbIemEyE=
X-Google-Smtp-Source: APiQypLKV2kRCLV0sXQ+nz+gAx8i0jDBHLjTjuZgG89d3qYjUxg8ACuzVplsbAVp6QBB2M9TL7vGPQ==
X-Received: by 2002:adf:afdb:: with SMTP id y27mr29180414wrd.323.1589369304662; 
 Wed, 13 May 2020 04:28:24 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id 32sm27509151wrg.19.2020.05.13.04.28.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 04:28:24 -0700 (PDT)
Subject: Re: [PATCH 00/14] prctl.2 man page updates for Linux 5.6
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <29a02b16-dd61-6186-1340-fcc7d5225ad0@gmail.com>
Date: Wed, 13 May 2020 13:28:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_042826_606637_F1359D16 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, mtk.manpages@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Waiman Long <longman@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>, Tim Chen <tim.c.chen@linux.intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 5/12/20 6:36 PM, Dave Martin wrote:
> A bunch of updates to the prctl(2) man page to fill in the missing
> prctls (mostly) up to Linux 5.6 (along with a few other tweaks fixes).
> 
> People not Cc'd on the whole series can find the whole series at
> https://lore.kernel.org/linux-man/ .
> 
> Patches:
> 
>  * Patches 1-6 and 8-9 are rather trivial optional tweaks and fixes
>    that don't make substantive changes.  I can live with some of these
>    being dropped.
> 
>  * Patch 7 (removal of the MPX prctls) could use an Ack, but should be
>    uncontroversial.
> 
>  * Patches 10-11 cover recent extensions to the speculation control
>    prctls.
> 
>  * Patch 12 adds one particular case Errors for EINVAL, applicable to
>    all arch-specific prctls.  I've not tried too hard to be 100%
>    comprehensive with the error conditions, since the list in its
>    current form looks in need of a major overhaul.
> 
>  * Patches 13-14 add the new arm64-specific prctls.
>    (PR_SET_TAGGED_ADDR_CTRL requires a bit more discussion and will be
>    posted separately.)

Thanks. This is great!

> Maintainer notes:
> 
>  * I'm *asssuming* that the datestamps in .TH are automatically
>    updated by maintainer scripts, since maintaining them by hand would
>    interact very badly with rebase.  If needed I can go update them by
>    hand though.
> 
>  * Similarly, in the days of git (and because I see no recent entries)
>    I'm assuming that in-file changelogs no longer need to be updated.

Correct.

>    Again, I'm happy to do that if needed.

(No need.)

Except as noted below, patches have been applied:

> Dave Martin (14):
>   prctl.2: tfix clarify that prctl can apply to threads
>   prctl.2: Add health warning
>   prctl.2: tfix mis-description of thread ID values in procfs
>   prctl.2: srcfix add comments for navigation
>   prctl.2: tfix listing order of prctls
>   prctl.2: ffix quotation mark tweaks
>   prctl.2: Document removal of Intel MPX prctls
>   prctl.2: Work around bogus constant "maxsig" in PR_SET_PDEATHSIG
>   prctl.2: tfix minor punctuation in SPECULATION_CTRL prctls
>   prctl.2: Add PR_SPEC_INDIRECT_BRANCH for SPECULATION_CTRL prctls

Applied, but not yet pushed.

>   prctl.2: Add PR_SPEC_DISABLE_NOEXEC for SPECULATION_CTRL prctls

Applied, but not yet pushed.

>   prctl.2: Clarify the unsupported hardware case of EINVAL
>   prctl.2: Add SVE prctls (arm64)

Will had comments. I'm presuming there will be a v2 of this patch.

>   prctl.2: Add PR_PAC_RESET_KEYS (arm64)

Will had comments. I'm presuming there will be a v2 of this patch.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
