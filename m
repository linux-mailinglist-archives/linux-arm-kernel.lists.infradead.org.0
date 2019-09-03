Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBD0A7755
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 00:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVao4nngS+L0WMzn2w1w/rWU5Jd4H75GO6WdPgIe9Bc=; b=Q7N3ucVvJw1/0i
	O2cGBeGkzVAzc2UebD9ogdz8EoOsta/AGUQ9cNLIIleLvv+kJiDaXLsc4LpAaDid7KkQv2kzxMAu2
	oyF4EDsKasLhvTgwtYZfAM+0QrOd3rMDlF292MIC4rvPOk6D9x3B9TfyRTcznMBD0RMLT3HKx7Nfl
	CF66hcwKx9sJv9cylRTW1Ekob258aDKYsW7rZLr5yH9rVgsqHyvqLBi+fVee14ymBtjLvN/oqss4K
	0crMzWZ/1uuEXlgNRD9czNbv2OX0XZAr9lrnqlCgQAoZZ871Oy0ZZwU0ASy+VKDIK/yUg8y7t8W+K
	JtCV7sthYAokoVU4do5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5HgY-0006Yh-5L; Tue, 03 Sep 2019 22:54:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5HgJ-0006YF-Hy
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 22:53:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id n4so10047569pgv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 15:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1jPA6KXV1MWpQhJ0RpwxTFGyMw+K5hoRLdelZTNad1k=;
 b=uPxH8lOPpYR0TGc8n1stwg8yRqWKj2JBr7SGfVONw3bD/GtVsC8KYqR0T/hr5WlNBL
 E7NwQXoB1pswZ2unzi4jIKiv9519LU2faIaObkkFt0167J7BFW28L7PAKRNqxZYNu4Ap
 neQAEAiohuJT0HmZJYAx9c1FQllLNhds3Fgrb5jSd489ayznfYjc1Ib4Dx/hP1Uk2vkJ
 W7CC7fJE3qNIfU+hd5TI6BX7fB+OGRdGTa8ZUKR23jJWVOhZAvIDy5y44kI3pD38NLo4
 M4Kehjm0FNk3a5esCR65FNsYZdlmtuiTYbRvm/6TVVRJgSX/fDkhV3ww/3/s2fBgF+B+
 PuSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1jPA6KXV1MWpQhJ0RpwxTFGyMw+K5hoRLdelZTNad1k=;
 b=kr6srROQ8ivPWz2S3s/9NGaWGA3keBb9M10w35WgHVcTRDN1IOy7EUnkQD9joIRZDx
 LYXu5Wq6olnmHclmRY1MTsiTWmvvvlEyssJx7MpKgGXfbYzBjDYKJKDuzY5dAfIJ6E18
 uYS/f+ZSMr+A1+ngkNbtB9gmfByNQqR7tuk5GgfuML/EmbjaBgDrRExPyVea82gmpEST
 3V8hdvEI/+TcQUehLMHWB94aXAJgYARoWwETdB3Lftk1pK+kwiV8eUhYOpIutPBjhMnx
 pNK8KAVqSg+SlzipKfkLJis1gim4igWFDwnjtK7loJSVFedjlME3jyTZ0vK1/Erjbb9j
 dJrA==
X-Gm-Message-State: APjAAAUaR2YrZckzMghX2XKuFzNcsUii6APRAnBXIxmr3IfCgXFhW4UI
 UMHGZI/wQC+mXZH6/zog2s7vAQMLTbeWRQxT+/GQYQ==
X-Google-Smtp-Source: APXvYqxJvUOUHPF1EuGYBS1IW6apjdfHw5MwEqiPY0KmR5Jz0/icX563626dzP4ee/Clz9LLpEr4vpRjRJmg8boVEOk=
X-Received: by 2002:a17:90a:ac13:: with SMTP id
 o19mr1784783pjq.134.1567551226201; 
 Tue, 03 Sep 2019 15:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-4-will@kernel.org>
 <20190903060011.GA60737@archlinux-threadripper>
 <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
 <20190903144534.h2rp3cyd3ryohhgj@willie-the-truck>
 <20190903151544.GS9720@e119886-lin.cambridge.arm.com>
 <20190903153120.GT9720@e119886-lin.cambridge.arm.com>
 <20190903163753.huk5sjg4m27qu2zu@willie-the-truck>
 <20190903220412.GU9720@e119886-lin.cambridge.arm.com>
 <CAKwvOdnoZQMCc9rWEtQm1PVxUU8bJqaZHO9jcfdODL7mhvRtQQ@mail.gmail.com>
 <CANW9uyuRFtNKMnSwmHWt_RebJA1ADXdZfeDHc6=yaaFH2NsyWg@mail.gmail.com>
In-Reply-To: <CANW9uyuRFtNKMnSwmHWt_RebJA1ADXdZfeDHc6=yaaFH2NsyWg@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 3 Sep 2019 15:53:34 -0700
Message-ID: <CAKwvOd=QDeKeOnn8Hw-p5mdhT3JPfwwLVnf7=xZ1wyc=v54AEQ@mail.gmail.com>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
To: Itaru Kitayama <itaru.kitayama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_155347_624896_96177365 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard.Biesheuvel@arm.com,
 Andrew Murray <andrew.murray@arm.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> On Wed, Sep 4, 2019 at 7:35 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>> Thanks for the report.  We squashed many bugs related to asm goto, but
>> it's difficult to say with 100% certainty that the current
>> implementation is bug free.  Simply throwing more exotic forms of
>> control flow at it often shake out corner cases.  Thank you very much
>> for the reduced test case, and I'll look into getting a fix ready
>> hopefully in time to make the clang-9 release train.

On Tue, Sep 3, 2019 at 3:49 PM Itaru Kitayama <itaru.kitayama@gmail.com> wrote:
>
> Do you mean that you'd do a backport to Clang 9 as well as the trunk contribution?

Yes; I think the window for merging things in the 9.0 release is still
open, though they are late in the -rc cycle.  If not 9.1 bugfix is
possible.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
