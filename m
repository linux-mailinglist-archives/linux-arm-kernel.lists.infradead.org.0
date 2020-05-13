Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8DF1D1197
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3H/ei8fC05XHDF3jhzOAU1QeUcB0OOvIeXfJdAW8/tQ=; b=JfS9NgzdrpyTZz
	6BAqRVtVKa/wUXOrocWsSjNHoco7v5rDWYGbcS+L2Pu609nerTQ5PH9uD3kBUPpun+vf8JmPIXw7d
	HxedUY7rNZQILFW8z6m3sedmIQJMElZgXXfmBZHqQCWVPLC4nul0rcI8xQB3dSnspSHQ0Qg9hmP0Y
	Sxnaiabhsr2+AuvcXLGzDPEe3iWCwG+tkM872YY7CVcZiTQYFeirW6AhNo7BkDTkIf0Kc0jX8aVLM
	OxtrCJrUrYqAlogzlicuyWHBGIH7nUqolDobfeIgWXo7qHiEFIWnqBXYqB1QDsInW+awgDGU5Gkf2
	hbhvt/EbOrvBy6vnXq2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpkc-0000Q3-5J; Wed, 13 May 2020 11:40:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpkT-0000Os-Bd
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:40:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id f134so14021347wmf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 04:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rfyw3NlSdwutDK55XdZhqFB7ooI2hBWzMGPrj0wrzi8=;
 b=RcPGNTa59dxw7yNkVopnmgsI6okiD7qbnC+6mYgAav9UL342duwmwHlX1SSq8+1gkI
 E0YdmBrX/bI1NsXbZPQLJkMWU+Dc7V/ZVxZr7RhNKV+N3F1FRa1Euh4CxSBSifhOJNzS
 GalZFJdH0I2QggIJjxljrtlHPtKF7V/ngSfA+uIkrG0PFkpVKKygD1ESr+T9oruA9kmY
 yZT6O0iAivdbo4v2FwTFRCmv6QcXmyEJfrd+1m5V4IIQs+iIrgUTdFVlLkiz578LAH+j
 jH630RH3nI/ON+I+oruJbyBmSOQEQYpx9YfrdvMs9Y2Rzhu/uCXiWVxch+/eKxDyH5DC
 G6jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rfyw3NlSdwutDK55XdZhqFB7ooI2hBWzMGPrj0wrzi8=;
 b=Ghoe59ytgmqVEe85EkJeEHoOs9fm5P2TUcJEZAk2u7dio0sRXWRjfWobvta9NBfisu
 EbU1AVNB2hUzbtLdP7Qz6j6aB/Jgcpjhwy3zaXMvE/Uus1vdY2Bn3BNIT8vIYFYtskqY
 JoJ/lkMr5MLAdV1jhEkV98SKeuGXOmoxuZWCmYmb8bQV6IYP4XQM4tKh/IIhq+2O4VRf
 W/rAq9iohm4POwrb8jZOFsmhZMfT2RjxB2TIrZkGL435Y+F2DmhTXehFarcEp5U1OFQg
 GmokscRFJTOq149g7vm92RfDpqr7WDaDowySSWThMEMRsnt8DCxADb+ENj9t9xQUlt3y
 PHXg==
X-Gm-Message-State: AGi0Pua4usFeMhqaDZMAlbZnmp/9ZBf1x2Q4bBekoCckpubb/810cAOM
 FsQOqCjJE7yUm/hRE/pV1FKtUKRw
X-Google-Smtp-Source: APiQypKMoHsnXyywqSy1TeY4yWvVIIa0HHPHYI7E8H+MRLiLq0SimZ++ZtVgQ6d2ULyTQTl5g5FmJw==
X-Received: by 2002:a1c:25c4:: with SMTP id l187mr39585522wml.89.1589370027478; 
 Wed, 13 May 2020 04:40:27 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id g10sm25632802wrx.4.2020.05.13.04.40.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 04:40:27 -0700 (PDT)
Subject: Re: [PATCH 02/14] prctl.2: Add health warning
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-3-git-send-email-Dave.Martin@arm.com>
 <93c5bfe6-fbbe-93ca-ef9c-91228c99d31b@gmail.com>
 <20200513111340.GF21779@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7218089f-20df-52b3-e1d4-ac63e0215efc@gmail.com>
Date: Wed, 13 May 2020 13:40:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513111340.GF21779@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_044029_399723_225A93F3 
X-CRM114-Status: GOOD (  23.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 mtk.manpages@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 5/13/20 1:13 PM, Dave Martin wrote:
> On Wed, May 13, 2020 at 12:10:25PM +0200, Michael Kerrisk (man-pages) wrote:
>> Hi Dave,
>>
>> On 5/12/20 6:36 PM, Dave Martin wrote:
>>> In reality, almost every prctl interferes with assumptions that the
>>> compiler and C library / runtime rely on.  prctl() can therefore
>>> make userspace explode in a variety ways that are likely to be hard
>>> to debug.
>>>
>>> This is not obvious to the uninitiated, so add a warning.
>>
>> Patch applied. But see my comments on patch 04. I may want to 
>> circle back on this patch later, since the wording feels a 
>> little strong to me (we simply must use prctl for some things, 
>> and not all of those things break user-space/runtime as far 
>> as I know). If you have some thoughts on softening the warning,
>> let me know.
> 
> Certainly the "if at all" can go -- this was just a suggestion
> really.

Yes. Gone.

> Maybe the whole thing is superfluous.  In C anything can screw up the
> runtime if you try hard enough.

I think it's at least worth alerting the reader to this issue.

> The background to this patch is that things like the new
> PR_PAC_RESET_KEYS and PR_SVE_SET_VL are likely to crash the program, or
> place a timebomb that will explode later when someone upgrades their
> toolchain or links with a new version of some library.  Many existing
> prctls that look equally unfriendly...
> 
> I didn't want to say nothing at all, but I didn't want to get into the
> gory details either.

(Okay.)

> Doing the digging to document the safety requirements of each prctl
> would be a lot of work, and probably an exercise in futility anyway --
> how to use a lot of prctls safely depends on the run-time environment as
> much as it does on the kernel.
> 
> 
> If you want to drop this, I'm happy to add explicit notes to just the
> new arm64 prctls instead for now.

I just softened the warning a little; see below. Explicit notes for
the new arm64 prctls would certainly be welcome.

Cheers,

Michael

diff --git a/man2/prctl.2 b/man2/prctl.2
index 7e78fc3c1..4e2d67345 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -66,10 +66,10 @@ prctl \- operations on a process or thread
 manipulates various aspects of the behavior
 of the calling thread or process.
 .PP
-Note that careless use of
+Note that careless use of some
 .BR prctl ()
-can confuse the user-space run-time environment,
-so these operations should be used with care (if at all).
+operations can confuse the user-space run-time environment,
+so these operations should be used with care.
 .PP
 .BR prctl ()
 is called with a first argument describing what to do



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
