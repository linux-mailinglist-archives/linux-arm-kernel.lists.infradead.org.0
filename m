Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A57ABCC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgqxU6sWEqkrRURtaZE2EOMdQF8oXTIYsaMuTVzELos=; b=hoKdIDRFSaTe1F
	ZwuzjtYyb3CCobfgXXasLzpkZH3o4lxp2R0y3fZ2BLeLcWFWtQY97YdtTRi8Uodb5BptHwhrhvleD
	93x4FgDaw4JU8N+4Cu3u8AUOKU/4dGB2JnWqztrpjq9tBdUDcotuHbm0Cuu1uevNHPGAbxIcRGgbt
	zL3cS7RnQRvAdnYCICdyxJF76jdg5S6eq2yErFwQtOaU3uZoJmR7o6e2ihlAFbyZX7/VAOU1o1vqz
	gO285zqYYoXnTQS9/7JNRD13n2piVQpvK0N/9Z/6Vgo6becFwECaYPpmpFE6vEpXd4qExJK1IASLD
	yiblmQ/ySxKp61EdGhWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GLi-0005pl-8j; Fri, 06 Sep 2019 15:40:34 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GLK-0005gE-RN
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:40:12 +0000
Received: by mail-ed1-x543.google.com with SMTP id z9so6673857edq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 08:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CjF3fwI23SGTIbsZbebpupUjHvggvSShXHb+f7gohRg=;
 b=X+TZLFq+/8fiOOZaSxM4o7weyYJJYjKBVTcRCZfcxr2IxHAce/BmJfEXlo+kHisHhF
 mlpMhUTxWtcXV/LgdZFzuY7qNCrZaKMw8ItKcgilp5WTkQNFuCtZgPd4jGMxpgeusHKy
 +ahYXFtlTF+mSXTcvIEKTHM34JZSa4gUxMyQbY9ovXkeE1DqzeHziy0kVUOT9HDoGgh+
 86qEcJGuBwvEp64MJNk43vufsS6oXhTwJOTInG+rMeHXceUdYHOhY8j0CA+yEADsDreV
 fxhYTUKSD4lXhNC87Jhmdi20O2F9lotiaxFikDlzOtV2OTRHPhktK0wYcLrfjjdxvON+
 FoEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CjF3fwI23SGTIbsZbebpupUjHvggvSShXHb+f7gohRg=;
 b=qvI165GeFgasPwotK1nzaHpPMnV8Xx4gGit5MwvOP97I4dxI+aLQFsqHRAfE43wEq5
 O0Ep7f63Xqo82AGszBgteXJPD8+HkVvwkPMiUG63ol4S4D4vfmJfTe4AA41ZYqMlezOd
 mNtdoynfGbl7m92/kiGiWrkqpumi369kEOoPqDY8LKlg8dKYzsCdHEKBsgq/Vclr1N2E
 o5WHTk0vmKB5rmfaCoZl7Xqzf6xas/i3XZ5Zyr/hg9/Cnim+OTRkgyJYBrubUlHZdLvX
 V3JK2HmcmpcmbqXFOcdiQE8b/tpyZZtU0v0FKpwTD7w/8/+Orh2T7psW2988s/CVXgIg
 JqqQ==
X-Gm-Message-State: APjAAAVKYd/D9xhhm34W33qyowLeKlQ/NQwH43PVzXISrxOzMITN0BTd
 F3RKqb8KocDla6A0mm6M9U4ZoSKRFCFz8E8fiYofYg==
X-Google-Smtp-Source: APXvYqwgWEKdsXXZDKUgZfHTTS/3PBS/mpsvU7NBgD+cDEAZM2KkwC32Gcr7KkyJWBr9wuGwTdTO2+WUmBcm/dqbcb4=
X-Received: by 2002:aa7:dd17:: with SMTP id i23mr10239139edv.124.1567784409076; 
 Fri, 06 Sep 2019 08:40:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-3-pasha.tatashin@soleen.com>
 <dc6506a0-9b66-f633-8319-9c8a9dc93d4f@arm.com>
In-Reply-To: <dc6506a0-9b66-f633-8319-9c8a9dc93d4f@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 11:39:58 -0400
Message-ID: <CA+CK2bBgUH8v_bYEyJKPsLZFDxse6xYRwGR8KN=SzgHnrR9yhA@mail.gmail.com>
Subject: Re: [PATCH v3 02/17] arm64, hibernate: use get_safe_page directly
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_084011_104771_58FC9D53 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 11:17 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> Nit: The pattern for the subject prefix should be "arm64: hibernate:"..
> Its usually possible to spot the pattern from "git log --oneline $file".

Sure, I will change here and in other places to "arm64: hibernate:"

>
> On 21/08/2019 19:31, Pavel Tatashin wrote:
> > create_safe_exec_page is a local function that uses the
> > get_safe_page() to allocate page table and pages and one pages
> > that is getting mapped.
>
> I can't parse this.
>
> create_safe_exec_page() uses hibernate's allocator to create a set of page table to map a
> single page that will contain the relocation code.

Thanks I will rephrase it with your suggestion.

>
>
> > Remove the allocator related arguments, and use get_safe_page
> > directly, as it is done in other local functions in this
> > file.
> ... because kexec can't use this as it doesn't have a working allocator.
> Removing this function pointer makes it easier to refactor the code later.

Thanks, I will add it to the description.

>
> (this thing is only a function pointer so kexec could use it too ... It looks like you're
> creating extra work. Patch 7 moves these new calls out to a new file... presumably so
> another patch can remove them again)
>
> As stand-alone cleanup the patch looks fine, but you probably don't need to do this.

Without this clean-up moving to common code becomes messier. So, I
would like to keep this change.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
