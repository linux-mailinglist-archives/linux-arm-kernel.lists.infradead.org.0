Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EB1AB9F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:55:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LE9B0Cq1UZbkB144LkNJqShvCmks9CVM4Cewr80FC/M=; b=WH6n2hMcg9z7PW
	iQmGyIKyWi17rerZu+wWSYMUkRjm6rIvSLOO4M3fezFGPi62SLHslHN/fukyAJb00uV1YVfDWX2pj
	0N90HifN/SL5GX6xDsfVKHMpt53o/um/XuwGpXrXQx2k4TfGuLkHnneeuGWnM3nSV8MtFOBcLpajv
	phEZ2jhpMLis7WE5+HX6P7bK8VxxtJ1B8ZMd+bOpKmhRW0Q1g4j0Wg+n68oaHQAjlFTVbYwA5yYRX
	wEmE4wUDoyCAflo5bbA5EMXOd+RgqxHXbV984R/s4bVSXocGbg8v1z3ygQeG/hUjWtKaBvZI0ZO3l
	LLhvrnaWtfwwe5K5CK+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6EiF-0000Gs-RF; Fri, 06 Sep 2019 13:55:43 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Ei9-0000Fo-HT
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:55:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id y72so4510550pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 06:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OGrgHLmTZM3PM2l0Ts23dBPdy3ALk/x2NZy1I9A04dg=;
 b=QtD3nkmCeb2RsfD+3LyHKbHhgVgUoh6hdmKB5jg0UCWf067bT4Aw3MMoRr2YNYZq3e
 tLtBvIcaUgMtnuanAnbghaCCmdEDN9uggDvPbipIICZxrTsH9nXyTF2u7BA1s3vNXQVc
 ENyQO7dvr1ejkU0Z/QKfoI80gDsJPDa+eLxNPz4JHX/xzBJCQWaiSCBws+Rnq1AKN1/3
 z+RWbUH5LdaJFfihSnoYpHC+Z4X6BQup0IoEeGVcqVOUnQOEPMQt5ZBwIQxWv6+j7w8f
 6gvRCFCrjqb/6XGMGv2knFSiHyA4Meufj3E5UCFJa3YhPX/RI0+ZlELTTwebzN6OPJ57
 UpHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OGrgHLmTZM3PM2l0Ts23dBPdy3ALk/x2NZy1I9A04dg=;
 b=B5IRfKAmB1SWMlDAVLgoy6TTn/9tGKJr5YGHKzZo57lQ48y7OYSZl3DAGYZyWrb0QG
 +6lm0/jsIR3uozJEHyJON9rC0IigutHTMlJXFcqukVvrGdLEI8K3QZNb2C8P4uS7HycT
 GXwymCzKrDrcxNDitir6SGwEJc29B/em+rFOwkYmE/2Suoj7WQDApajZV7rTPYzY/5j4
 t+XOiIdUG11JkJlH8nCremm1KJ+tVvXzPnNGrRMvL7+nYWEBGQOxZEC/YM9NgCTEm7uk
 nn0h8TfttFP0XcLQ7HT7VekX8XB5nQ/b9SxrrGRGBBVZwpSxlfYKjyYJfLyqZKnJzoJy
 6Luw==
X-Gm-Message-State: APjAAAX6hhqAKf9XfxNXuzhB/Y2O+2MClOASb/bZp0tEi3wayuCDN7Kp
 4OEofQ2uqoLjv8SNyZho+IS3bJEMvdV339DXaVUOvg==
X-Google-Smtp-Source: APXvYqxu5mPai3FTuY6dqBaDeUimrPXqNkeU1cOQKCkXjsUhoXkRD9aHM0I81dhiBmWxbt7Cra6QV/wSHBvajSi5pqw=
X-Received: by 2002:a63:c442:: with SMTP id m2mr8218161pgg.286.1567778133668; 
 Fri, 06 Sep 2019 06:55:33 -0700 (PDT)
MIME-Version: 1.0
References: <c28135c82eaf6d6e2c7e02c1ebc2b99a607d8116.1567615235.git.andreyknvl@google.com>
 <20190906135151.d74nq3qzjmhe4mb5@willie-the-truck>
In-Reply-To: <20190906135151.d74nq3qzjmhe4mb5@willie-the-truck>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Fri, 6 Sep 2019 15:55:22 +0200
Message-ID: <CAAeHK+zDZo6oaSDnJfiD_S1WYqAT13yEFP7hbehZ62C-BBp3rQ@mail.gmail.com>
Subject: Re: [PATCH ARM64] selftests,
 arm64: add kernel headers path for tags_test
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_065537_583672_43CF7FE0 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Kostya Serebryany <kcc@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Evgeniy Stepanov <eugenis@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Amit Kachhap <Amit.Kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 3:51 PM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Sep 04, 2019 at 06:41:00PM +0200, Andrey Konovalov wrote:
> > tags_test.c relies on PR_SET_TAGGED_ADDR_CTRL/PR_TAGGED_ADDR_ENABLE being
> > present in system headers. When this is not the case the build of this
> > test fails with undeclared identifier errors.
> >
> > Fix by providing the path to the KSFT installed kernel headers in CFLAGS.
> >
> > Reported-by: Cristian Marussi <cristian.marussi@arm.com>
> > Suggested-by: Cristian Marussi <cristian.marussi@arm.com>
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >  tools/testing/selftests/arm64/Makefile | 1 +
> >  1 file changed, 1 insertion(+)
>
> Damn, I just tagged the arm64 queue for 5.4 and didn't spot this patch.
>
> I'll queue it at -rc1 instead, if that's ok? It doesn't look urgent.

Sorry, I guess I should have pinged you directly.

I think it should be fine to leave it for rc1. It might cause a build
error in some kernel CI systems if they run kselftests though.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
