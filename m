Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15016462A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 14:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrFzxLtZwIILSWogw2ekMGK1oDsxGf6eq86HDgTlqq8=; b=ulnFrrm9moxXsc
	cnjMgfH0RoYcgFa9bSijNk2zFP+qpgS08ueG0ftbRbxCEPJ8+RTRQRrj+1lnkzuRL38vXS0CVvsCK
	J1Mw6EImO0VPkAE7S7uvmRTNfW3mLAvDpwj9yAHkb8qwR6FWRyfm/AjQu8YOsXLthipiCJh9UfnRt
	0zWG3ySdh8PpHQwG452LvgHPrZObKjz5Kg8UOWuthO4ijs9T2UDqhfHgIsyRl+Btq8PmJuLiB2OOC
	knjKrZYjG7gQI661sYd+bGFA2OqjeTNREBh3npOUI89EmAc1sH6Buk19VSijpvkVieu1OVzgmSkgi
	4w4e2w5FYmS57OM0ypDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlBhy-0006Fy-2n; Wed, 10 Jul 2019 12:28:26 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlBhk-0006F6-EO
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 12:28:15 +0000
Received: by mail-ot1-x344.google.com with SMTP id r6so1942359oti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 05:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9FNqx+M2R51JE04Z34tCRtE1I2zuoMlX/VVUP9urQ/g=;
 b=cRN+1ygji015bntIuNNMqDL5Hhvz9UEFPR3wPkgOd9pZ0sb8Pp6JS2cxZ/6Ck9aJZ6
 slcqy2QAylFSWD4AZkxn5Bpfo9f3TuRqaNv1y8ffzX6ubNCA+Udge0FdoXinLWh+NVsS
 VCnGASm/tVS8oWXMoqO9ufoKto1DbMJGmEZfUyai1gHAVkJYHxZjBQq02gLm9aN4oZcL
 zuPGYJsuDgJO1+gJexcT2ymPZob4d6bKWcPLuIsqByOSS5+oq1iYO66/C7rE+oIKCYQ4
 Oe+nVSxEfPTEuYVebEkSW4FfE2PGDL+uov5nucedyg1dhivtPIfCXoUyz9U+Yn8wbvzo
 ToUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9FNqx+M2R51JE04Z34tCRtE1I2zuoMlX/VVUP9urQ/g=;
 b=W95da+6mOxuyEWXmBIirU1q3M4W1JPXZdSO46dY83BjyU38/esRs+Z5/mYd78UjeCK
 sIpGwE00P4v2ui3tzRyX4tsTBMbquKCzp1+YdcM204f1aHPNlZzg+/XedJt6ijKSMOmI
 7bSb1xDVp6qFwgk5Bp5WepzUOcVgmZIid2VtQX/g745XGEQVEDtJX44Fvc++d7iDzA/V
 4Cmz2QgrLTE26SBOJXkb7RcwweaJ5luZUQ07bf8BqG9L8pGFIIyGohDlwCx5QUjHtNrv
 rN5B/CvfRRgiF9uWJq2/2LrYcRzrQ4umr8PFFkp/RPJ+LpXZOEitQMcq1dIY74oNQnIe
 nyew==
X-Gm-Message-State: APjAAAUhz47jPOefHFFO/D6SaVftf+iFUwgpcsnUld9nKJDH6Cj6vVE4
 lstXdGCV0xMVC2PrI8Jf6zTCAlmHDZFGBY2nTTg=
X-Google-Smtp-Source: APXvYqzEWNBdZe9q7RPZCtKpqe0c0GbIay/OZ2Z1mJrHeMez83o2JTAzAdGZ3NJ3TfKDfeJ7z6jA9RE3ZCouyFwvx6s=
X-Received: by 2002:a9d:6194:: with SMTP id g20mr2471325otk.149.1562761689474; 
 Wed, 10 Jul 2019 05:28:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190208150826.44EBC68DD2@newverein.lst.de>
 <0f8d2e77-7e51-fba8-b179-102318d9ff84@arm.com>
 <20190311114945.GA5625@lst.de>
 <20190408153628.GL6139@lakrids.cambridge.arm.com>
 <20190409175238.GE9255@fuggles.cambridge.arm.com>
In-Reply-To: <20190409175238.GE9255@fuggles.cambridge.arm.com>
From: Ruslan Bilovol <ruslan.bilovol@gmail.com>
Date: Wed, 10 Jul 2019 15:27:58 +0300
Message-ID: <CAB=otbRXuDHSmh9NrGYoep=hxOKkXVsy6R84ACZ9xELwNr=4AA@mail.gmail.com>
Subject: Re: [PATCH v8 0/5] arm64: ftrace with regs
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_052813_798856_359DD4D0 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ruslan.bilovol[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ingo Molnar <mingo@redhat.com>,
 Torsten Duwe <duwe@lst.de>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, live-patching@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 9, 2019 at 8:52 PM Will Deacon <will.deacon@arm.com> wrote:
>
> On Mon, Apr 08, 2019 at 04:36:28PM +0100, Mark Rutland wrote:
> > On Mon, Mar 11, 2019 at 12:49:46PM +0100, Torsten Duwe wrote:
> > > On Wed, Feb 13, 2019 at 11:11:04AM +0000, Julien Thierry wrote:
> > > > Hi Torsten,
> > > >
> > > > On 08/02/2019 15:08, Torsten Duwe wrote:
> > > > > Patch series v8, as discussed.
> > > > > The whole series applies cleanly on 5.0-rc5
> > >
> > > So what's the status now? Besides debatable minor style
> > > issues there were no more objections to v8. Would this
> > > go through the ARM repo or via the ftrace repo?
> >
> > Sorry agains for the delay on this. I'm now back in the office and in
> > front of a computer daily, so I can spend a bit more time on this.
> >
> > Regardless of anything else, I think that we should queue the first
> > three patches now. I've poked the relevant maintainers for their acks so
> > that those can be taken via the arm64 tree.
> >
> > I'm happy to do the trivial cleanups on the last couple of patches (e.g.
> > s/lr/x30), and I'm actively looking at the API rework I requested.
>
> Ok, I've picked up patches 1-3 and I'll wait for you to spin updates to the
> last two.

Ok, I see that patches 1-3 are picked up and are already present in recent
kernels.

Is there any progress on remaining two patches?
Any help required?

Thanks,
Ruslan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
