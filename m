Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A083E494B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 00:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgHZ1hrBSC4F9oXCXSnw6NTY3pRkkoL04webD5/ujT4=; b=j/1dCzqvPD4jHx
	8IU9SLpG0q4I8vRHbcjZHKnM4ip8Solef192ZahcPhwDjVHmb4ffZBdav3H0a7t30+bzlZwS+DDL9
	VZW8NzPCbuLwWwxdJEFpIQCr2simxjvFvuuWN19ZTEF3pdoMvQHMmCPVU2XRLFnJB2XeyKWQXZhYk
	T1QC+y/DUKby5xY82jWMrYLT4zmns1XrXi9t6TT5+wLPgAZTfJIeZ4GhYNLk5mdmwu0f4DCHPxjgk
	JMFG898I0jtb9kYe6VXOfDEtKG4HYqoeANskoLaJTo1oGImHvVsRwT5Lubw0UnfRB+xb1PalAD7as
	psKmSYkBcq+gTKdQ4Baw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hczha-0006cQ-8i; Mon, 17 Jun 2019 22:02:10 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hczhO-0006c6-GZ
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 22:01:59 +0000
Received: by mail-ot1-f65.google.com with SMTP id s20so11391210otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 15:01:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N2PE7TOFccYt/EkA/7nc8NvN2+5v+roqzU7q5XwI6eA=;
 b=ifT7FpVIrSf18fn/RTCMvup0og9imxIFbSTLtkUSWOW99y8oQgHk85jbDI6oB8dlSp
 Fq1z3dgPybZxddWMIhDOTz2M5KKec7XLJ3BxFiFIE/lJ7DgG1oE4N5h5WaNlg4B+7n6O
 R4Cw8srb7zg124IJE5bbzL9PddChybYgiwhvL8Y3L2l1YGzM+I/50IS9eJA9lTQfynVd
 PhB1XqkwxEHiGV3uiXDRNuU+aYkOl4KxLhh+ruH4zLrvC7gfN/s9zwZmzr6MqpInPyhK
 w8aIc6MgOmDYBSPw5ROw5ucrKWYlv/IM4qT3bNwGKQRdQagKqUzxnBCNKonaQO2eChJR
 1+Zg==
X-Gm-Message-State: APjAAAV1cbOgAhBWx0f3ui6w7XIeH1GtF0lrwMTYC6mdUusAyjOnr+lO
 5ZZaAp1Hf6xHsYGXgeR5llpmVudDRogm7HpYifBSWQ==
X-Google-Smtp-Source: APXvYqwGGsw+ZQ+t2RcJlypM1e1rJbQQYtbUOEIDDzhSXlIRjPQ+mdTdLenVn40Qqc+ORNJn0Zk+xZahjBPnyMaKR/k=
X-Received: by 2002:a9d:6959:: with SMTP id p25mr37515822oto.118.1560808917168; 
 Mon, 17 Jun 2019 15:01:57 -0700 (PDT)
MIME-Version: 1.0
References: <1560769335-62944-1-git-send-email-guohanjun@huawei.com>
 <CAJZ5v0jyi-ZkcDU=+GJm5LxMGX36ce=a_j169A_7Ph2AG8_C+w@mail.gmail.com>
 <20190617173449.4vhgdvllwxo24ovj@willie-the-truck>
In-Reply-To: <20190617173449.4vhgdvllwxo24ovj@willie-the-truck>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 18 Jun 2019 00:01:45 +0200
Message-ID: <CAJZ5v0gKWAWRTBmFh+9Pdwc85p4B571w2qia7T6BgF5B6s_KcA@mail.gmail.com>
Subject: Re: [PATCH v2] MAINTAINERS: Update my email address
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_150158_554758_94B42897 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 7:34 PM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Jun 17, 2019 at 01:11:40PM +0200, Rafael J. Wysocki wrote:
> > On Mon, Jun 17, 2019 at 1:04 PM Hanjun Guo <guohanjun@huawei.com> wrote:
> > >
> > > The @linaro.org address is not working and bonucing, so update the
> > > references.
> > >
> > > Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> >
> > How do you want this to go it, via ARM or ACPI?
>
> I've already got a MAINTAINERS update queued to send out later this week, so
> I can easily pick this up if you're ok with it?

Sure, please do!

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
