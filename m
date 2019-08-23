Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9B39A71C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 07:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdp034EgXBM1fU4ppibGx/JUZrGZRAgx33mPu5mITzc=; b=bfkfJnHwiPSu4W
	CwINwmp3YZLPe2g9GJAkCtqj4bdC+Q7yYarjX9CmvmkAUNSAfbszUsqNwF5Q5UWWk0KWmms6Yq8KB
	iRhB/OYNidhQRw2AL6NYdUmGxHc+0aRYbcuTvQ1+RZ6Kp7t72cP+PzmauZZ3GqNCRUaOx2faOtUkz
	AopM9hjHI1H1NkwF7Bz9CXUodrBRlcfwbs5rooSfO8HjRFiSPAzoG4qzbAno2sZ3pSyRlgNICr4EP
	jcHD2+ehCgilYLZnmAon6niLWTKnyPoLY4dao3SVV1xfN6koI8qPizWsnlky0FN38Abs7QalJsgDm
	G0PgGkSlydxKau7TuRvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i128X-00058g-9b; Fri, 23 Aug 2019 05:29:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1283-00057w-3n
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 05:28:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id z11so7428732wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 22:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0jZOuGomjvqGYTjnoHRQnEezUC30S/yYktb2hSFP7WE=;
 b=ZsZhZA5toWhhCMR8ORZnkeX18nS/RQ2ih4MGR5PbRXW4fGxvgYg41L5YkbhqfuMXAg
 mkAKeh3DAtZHZr2Hy8m1ZZEyMd0RYkpIVNOinUsUm9LSyeaZL5xjE5mDmFb6hBOgPoP4
 x3XX/VTD9ZCimPxO3iHOWmMSWKM9ozmfQpa5ODTu03PSPfBQAxVrqHRR4i7tCTvrEuvD
 8S4CM2B8GSezAVMEVwuJrKF8O2JJxynlNW2q3whLIqL8iKIymONrlRfa354T15nmpb9t
 YQQLUdqtjyw97shJg5StkamMN1OCVetEtqsQEjw5m9+DxyojtsUay/oeJ2Pz6F1jVb2r
 84zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0jZOuGomjvqGYTjnoHRQnEezUC30S/yYktb2hSFP7WE=;
 b=V0h0EnhVlcIvYhPeXwc/Jc/59Z0cnfrXwpwh4lUaPg8DDt/0FPeUHbP1nfC4OtCQNI
 2X2AzplLKL8loYeQi0EBDjVorVl7gNlwEdNUEq/F/kUOT7NH6iyy3jR0JUE+yM4+MttC
 xft8rYLAPJthRbJgNqosN63TX8hprUUwonlAFiQyMH8H+uDyxuNRlPPRLEHuQou6xlkw
 3zw6vfKfIodYWWiKcD8U5Gz2HQREPDLYdj38dAxV7qATiZ+eEUroybeYe9Xylo5Yclrp
 BV+DGD5EF5hhIwnnZZctF0aB8nUCKlPSTGN+aMT59MYi+w0WMDI+AISB5nlckmFX6wFK
 5WHw==
X-Gm-Message-State: APjAAAXTorvZI3sbhqpO2NE0XOaspBNPkYWUc2lEVWR2asd22bXfBGpH
 Lbl+h4u3gBpp7hpzrPrxoP4=
X-Google-Smtp-Source: APXvYqz0Z2vhDlK0hJlhKifI62Nz2sFkvKxwoKaEwtT65rtUxiNhzfI4E7Wt5QqqMivW9WMKUI00cg==
X-Received: by 2002:a5d:50cb:: with SMTP id f11mr2663367wrt.277.1566538127201; 
 Thu, 22 Aug 2019 22:28:47 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id w5sm2377262wmm.43.2019.08.22.22.28.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 22:28:46 -0700 (PDT)
Date: Thu, 22 Aug 2019 22:28:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v3] ARM: UNWINDER_FRAME_POINTER implementation for Clang
Message-ID: <20190823052844.GA70417@archlinux-threadripper>
References: <CAKwvOd=wKUhnWr4UhVvgn6NYh+=zQOpMmKG9d_zEqaKLa4_9FA@mail.gmail.com>
 <20190822183022.130790-1-nhuck@google.com>
 <CAKwvOdn6av8bX4xUtuuKeJQdiQU+_Ty2aM8wtjP9+teU0Gt6Yg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdn6av8bX4xUtuuKeJQdiQU+_Ty2aM8wtjP9+teU0Gt6Yg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_222851_183827_DE0531B3 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
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
Cc: Tri Vo <trong@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
 Nathan Huckleberry <nhuck@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 01:02:05PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Thu, Aug 22, 2019 at 11:30 AM Nathan Huckleberry <nhuck@google.com> wrote:
> >
> > The stackframe setup when compiled with clang is different.
> > Since the stack unwinder expects the gcc stackframe setup it
> > fails to print backtraces. This patch adds support for the
> > clang stackframe setup.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/35
> > Cc: clang-built-linux@googlegroups.com
> > Suggested-by: Tri Vo <trong@google.com>
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> Great, thanks for following up on the suggestions from code review.
> Since this is going to go up via the arm tree, which has its own
> process, please add my:
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> to the commit message, then submit the patch to the maintainer's patch
> tracking system:
> https://www.armlinux.org.uk/developer/patches/info.php
> (create a login, sign in, then visit:
> https://www.armlinux.org.uk/developer/patches/add.php . I think the
> correct thing is to put the first line of the commit in the summary
> field, next/master as the kernel version (I applied/tested off of
> -next), then the rest of the commit message body in the Patch Notes
> field.  Make sure to attach the patch file.  Finally, it should appear
> at https://www.armlinux.org.uk/developer/patches/section.php?section=0
> I think within 24hrs).

Also for the record, I came across this a couple of months ago, Catalin
Marinas had a git config alias that could be used for sending one patch
to the patches email address so that you don't have to muck around the
web interface:

https://lore.kernel.org/lkml/20190624144924.GE29120@arrakis.emea.arm.com/

Web interface works fine but I prefer everything via the command line :)

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
