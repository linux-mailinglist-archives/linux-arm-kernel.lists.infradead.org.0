Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8027F96EE9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 03:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sab47sZTpQp5e+4PXWKI6yOGhe7pBGBT+a4ROvUUqwE=; b=K+Nmf78/n7zpz3
	7/krklUUbDGoGMwRwLHNzDEJUhubwjlOiqU4pK9VsxBOptUBoSqPa7DRpXwxeY8/gLRy4Lgkm/jw6
	I8LmVpcN9GD8eUa4Baqr2KKkxsCnkSHCGjUwCoeUh7ScWecS/fmyVgYKE687MYuaV/blEzdV4GoVv
	0ptYHTEgmbNPS+Pj/ISaKBpQSkgFgKpfUR9lGZCmHVtzTLngCh+kjuN5cHDjUQBiGygbX1R744ZHt
	HqEbIfgw3FtU4IaFT0uR5ck3f5oNYuBkqj1qfuRzgtL8mfgJzQkR3QmDtVwqTbKx26cbrHDm/QhTo
	UOfqw6EW+/kWwXyNSHtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0FSI-0004Og-PE; Wed, 21 Aug 2019 01:30:30 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0FSB-0004Nj-5C
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 01:30:24 +0000
Received: by mail-io1-xd41.google.com with SMTP id o9so1352318iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 18:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ql4bDp9akkC2eYEgVdQtfHfIcbcIz1+2SiZ0bqUwLUw=;
 b=OxTQsHEP0dDqmmVMCe3oBUxWQwvJO5G99idissr/h4II8KuDkg6jf/s1TRHFy83rhW
 EISzsvSYe/tpDyywmNyAKh6Nwb4saSN2QzJY3N4LIdaFx6mgmQDtLaGMqHGG7Yh6ROLN
 0AhDzhKVCt9I8083AFvCKaT4sNSq7W+44lync4/MFsF9+Yi4RwtLZbeTiaFr2tsEar0y
 T9mFcEo3kYf403ZrnU8psSaa3wIU50mKa7w/kMW7W8z7EitaqSLs1RfIhKmhbGAOqFoy
 rlLtgkdev+TEMMSw1uMkn2wdc7gwqRKua0oWcnY7EzoOlTooQj125wKlfe2MEy0G2l59
 CISA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ql4bDp9akkC2eYEgVdQtfHfIcbcIz1+2SiZ0bqUwLUw=;
 b=FuOU8N/4kAjvq9UXrljvQ2Azex1KpmtKKZxq41LShREkJ0yhPPhoqIDNjAq4I7dnOF
 +JOi3ZQk/FiQxKYOPVtOXC1vgTslf0MAxLsovZYdUSILBbuCy2PaYwvSWuS8UOHFHFJ2
 qDEFBGGsRNgxASoDLuYBuBAiLFGaCOoRqT9Nc15rQ1RjEuA3WwbP3ZSniWkvGagAHzBh
 1lpo2rIFrgv485uARkA1eQ/Vl0w0RAJEolsJ0pH5oE+6qxUHRDuo5730VQeJ0l6rw0l+
 FBiYszugb/MPR+jhGsfXYy1PHEsb0XMkMbifIHUTQuuNi46x1vu407GJPFhw9oeVRmVH
 45oA==
X-Gm-Message-State: APjAAAXjgOcUcmcu3SglOeEubqjO4S+bhRDQbk8A2LcdLCg90O9bVF3c
 yyhpHkzCi+pVaiWY3N++Ws9alLttB2iOElr9s1c=
X-Google-Smtp-Source: APXvYqxM7PuKzWWFvwyH4B0/s2RGGx7iGV2vBmZvO23sXqMNw+GwHtyU2euHgmpvq14IJTaYOpR+mUk769oZAdR6qAk=
X-Received: by 2002:a5d:9711:: with SMTP id h17mr2795781iol.280.1566351020454; 
 Tue, 20 Aug 2019 18:30:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190820030804.8892-1-andrew.smirnov@gmail.com>
 <d735e851-cddf-f069-37f1-d27b013f3213@free.fr>
In-Reply-To: <d735e851-cddf-f069-37f1-d27b013f3213@free.fr>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 20 Aug 2019 18:30:08 -0700
Message-ID: <CAHQ1cqFpZ9beTJHLfdveUuYKks52GRD7ccnXLXudxmnd5Dk7Dw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-cfu1: Slow I2C0 down to 100kHz
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_183023_202763_AC00A27A 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Chris Healy <cphealy@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 7:41 AM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
>
> On 20/08/2019 05:08, Andrey Smirnov wrote:
>
> > Fiber-optic module attached to the bus is only rated to work at
> > 100kHz, so drop the bus frequncy to accomodate that.
>
> s/100kHz/100 kHz
> s/frequncy/frequency
> s/accomodate/accommodate
>

Will fix in v2.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
