Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA92101A16
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 08:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypemfkPvxfsqZSs514/FsZR9aFA4HXnUwuvyq0gfZ3E=; b=BdHb7QCtjzyXVK
	29wptVAa1nEqBYdUcc31HcbklCffKqKD+jS2cTT72BFwUEV/E2l3A21CvXZ3StZmNlS0WH9CuOtYP
	YkfQVHIkyPYWA+XGv/eLR2tS70CKkYzIxs62fMoZB+uX/x6MjsF7H4y+zIAvvupj5elhdsdk9adx2
	HCSTvq5WPy+l3qZY8cwCpiffXO0gbQEnCdHrBqcE1/wVrp7GrYYq0IvWPSmSLBL0KmbUqICvhK1BJ
	r6kybERczkYjOz85oDWDSFs0iQtX2hyITB3o1zzJ8EnsA0shCHqp3C7We+OoikIu8aX8ngdRQf64f
	NCSS2pxXroSdFl6nwhbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWxh2-0000qL-5U; Tue, 19 Nov 2019 07:12:56 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWxgm-0000p8-VX
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 07:12:45 +0000
Received: by mail-pg1-x543.google.com with SMTP id z188so10924762pgb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 23:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SOkEaxvoeuRDKKO9iEeAXK3d8jDrm2+Y0YFp9RHvoAo=;
 b=nuNOMTdV6cqA5xhs04CNCftYPLjSdTjJ0ePCPMCc3uiZcs4YCBMy9ZamdEurSipKqb
 B7qbTtqSkuv+cFtd5XGfPFzEAOygMAUU6PfcUq9+XWmSNfghnDQd5F7MZO2RpEtgPBO4
 pY9GDSzO29EdOQ3rQOPPXttJfNyhL/qzEK/UbIBzD0EktqXFkIZukEz6uYOhqO/XpJSv
 CZVM33HewLSdQwXu5Sk//1CSz1ZkVkWtwDNAv2TM14cIkWzrIAXJHvymtQVGDfQtyKZ4
 Gy6ZtONETM6pOH2ZXJaQ3hbDHkgWZ1LaHoK8pE6aiIh13lYEHwfU8H2bnK85SCTR2yLA
 qJ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=SOkEaxvoeuRDKKO9iEeAXK3d8jDrm2+Y0YFp9RHvoAo=;
 b=lEYyBQj38JI+ulobzkiFEQFKE5YD5E401zuedCCrd7/6cNgu2PugYQ05sUbs+7kt3I
 xLKXSceZUD+dXYnqlsNc+wDiwYgu5jhPCcdVK9MUnUVRJ9qhuRosYz6Q0rgezTb/SFBy
 2Xb5+wcuuRyHmz2cMaNGM5UqPTI1Wq1xZJNHVefObxSeyaw6l8AQ04rJ6sHeYwnZO4Lh
 X0cjIwnYbszlKL4H4BlLLtA4KpbOmO+pLEOllmSN3kJff/pAIKSe7u5GUkoXszOJdyKC
 BBE2en5OpKhux6dy9iy/T1qzd+yXWFk2mpQwgIVadV58q6/kxRsMRfQakLxg6Hsz2cOn
 ZquQ==
X-Gm-Message-State: APjAAAXKHcrlUdKew2B2VXSfWGp30435tvXbEBsHTv3H9hpetrC80CpJ
 4e811QlYP7L6gaNBlAurKdnPSg==
X-Google-Smtp-Source: APXvYqwFnemtfhSeFTtXNTKp5S2y3O1/8DNvV3VlNu9ve+aPwic4dTdlBLzDttqWkR7TRM8xvN2dTQ==
X-Received: by 2002:a63:68c3:: with SMTP id d186mr3516436pgc.301.1574147559580; 
 Mon, 18 Nov 2019 23:12:39 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id j7sm1931994pjz.12.2019.11.18.23.12.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Nov 2019 23:12:38 -0800 (PST)
Date: Tue, 19 Nov 2019 16:13:42 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: [PATCH v4 0/3] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
Message-ID: <20191119071341.GW22427@linaro.org>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Prabhakar Kushwaha <prabhakar.pkin@gmail.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 Boris Petkov <bp@alien8.de>, Ingo Molnar <mingo@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Jonathan Corbet <corbet@lwn.net>, James Morse <james.morse@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Anderson <anderson@redhat.com>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>, x86@kernel.org,
 linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>
References: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
 <20191113063858.GE22427@linaro.org>
 <CACi5LpP54d9DKW63G5W6X4euBjAm2NwkHOiM01dB7g8d60s=4w@mail.gmail.com>
 <20191115015959.GI22427@linaro.org>
 <CAJ2QiJJOSspLKRh+jRB_o0o9nmeAsiFKzxGJ8R0pYPRM4iptmw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2QiJJOSspLKRh+jRB_o0o9nmeAsiFKzxGJ8R0pYPRM4iptmw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_231241_043604_FEEDC831 
X-CRM114-Status: GOOD (  24.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, Paul Mackerras <paulus@samba.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Boris Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Dave Anderson <anderson@redhat.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Tue, Nov 19, 2019 at 12:02:46PM +0530, Prabhakar Kushwaha wrote:
> Hi Akashi,
> 
> On Fri, Nov 15, 2019 at 7:29 AM AKASHI Takahiro
> <takahiro.akashi@linaro.org> wrote:
> >
> > Bhupesh,
> >
> > On Fri, Nov 15, 2019 at 01:24:17AM +0530, Bhupesh Sharma wrote:
> > > Hi Akashi,
> > >
> > > On Wed, Nov 13, 2019 at 12:11 PM AKASHI Takahiro
> > > <takahiro.akashi@linaro.org> wrote:
> > > >
> > > > Hi Bhupesh,
> > > >
> > > > Do you have a corresponding patch for userspace tools,
> > > > including crash util and/or makedumpfile?
> > > > Otherwise, we can't verify that a generated core file is
> > > > correctly handled.
> > >
> > > Sure. I am still working on the crash-utility related changes, but you
> > > can find the makedumpfile changes I posted a couple of days ago here
> > > (see [0]) and the github link for the makedumpfile changes can be seen
> > > via [1].
> > >
> > > I will post the crash-util changes shortly as well.
> > > Thanks for having a look at the same.
> >
> > Thank you.
> > I have tested my kdump patch with a hacked version of crash
> > where VA_BITS_ACTUAL is calculated from tcr_el1_t1sz in vmcoreinfo.
> >
> 
> I also did hack to calculate VA_BITS_ACTUAL is calculated from
> tcr_el1_t1sz in vmcoreinfo. Now i am getting error same as mentioned
> by you in other thread last month.
> https://www.mail-archive.com/crash-utility@redhat.com/msg07385.html
> 
> how this error was overcome?
> 
> I am using
>  - crashkernel: https://github.com/crash-utility/crash.git  commit:
> babd7ae62d4e8fd6f93fd30b88040d9376522aa3
> and
>  - Linux: git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> commit: af42d3466bdc8f39806b26f593604fdc54140bcb

# I am rather reluctant to cross-post non-kernel patch to lkml/lakml,

The only change I made to crash utility was:
===8<===
diff --git a/arm64.c b/arm64.c
index 5ee5f1a29a41..84e40aeb561b 100644
--- a/arm64.c
+++ b/arm64.c
@@ -3857,8 +3857,8 @@ arm64_calc_VA_BITS(void)
 		} else if (ACTIVE())
 			error(FATAL, "cannot determine VA_BITS_ACTUAL: please use /proc/kcore\n");
 		else {
-			if ((string = pc->read_vmcoreinfo("NUMBER(VA_BITS_ACTUAL)"))) {
-				value = atol(string);
+			if ((string = pc->read_vmcoreinfo("NUMBER(tcr_el1_t1sz)"))) {
+				value = 64 - strtoll(string, NULL, 0);
 				free(string);
 				machdep->machspec->VA_BITS_ACTUAL = value;
 				machdep->machspec->VA_BITS = value;
===>8===

Thanks,
-Takahiro Akashi

> --pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
