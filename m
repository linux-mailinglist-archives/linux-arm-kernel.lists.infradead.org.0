Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03A11CB6C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 20:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r42hhuCMxvjsv/i/m9cAMXmc9C8ZaxkN/3Vblp8T+pU=; b=uBCvrC057HBM8E
	cVVSLBJiGE91FliXbS7YN8AMb3/hIf8C7iohhlQQ6ctdPcgJXp+syDb+GTlzfPPlf2KasBA0CYVJQ
	hBm1fi9z/r3LnpLtHo1yqI67+v1bLEyPI1SJPzjb8Ujn1KZvlODxksbSEW5N1STMkFj3YbDibq+Dz
	Sv386annA+sr4IUFyV9htdIlV8kzpOTq2w/qYjYTdzDIm2lDerYJdJq8oYmLuItiYymS4vyudciD+
	wRvtgUGpSrSIJih3PqqAYwdKLhLHa+AL3zbyx3WFP8SK/Qf04Jj8jB3ydAOfhwqwdCnmEDd7nZg26
	scNdYrDe+R1/94sFi5KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX7U9-0003uf-Id; Fri, 08 May 2020 18:12:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX7U2-0003uE-7Z
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 18:12:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id l18so2950165wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 11:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wEg6363KALMCBQBSLOKuoUfGPXNIfqB9uH8JLDVOLn8=;
 b=jiGw8gA/+KtDlxEler0Ln+sRm7LZ0ILtePjxlryhRiAgy+Hn1zPTOXFwwA455LXmq5
 thSrJhUKnJQBcAYl3wzWZn+6B8ok+d37y+CZbsV47VN3uzanc+KEwvaz9So+sDWrYyPJ
 z+FfYIzGvDOOQxGCx0O8u5hV1g/S7u0/kWQy/+m4wiGKcECubtCEdnHyzS947HDf+PYh
 URXcx5SCg1ypxIfGnKD0wHDvo60V6ks30VsZ1JExOfmMrd+nBzyt7lGTFgDLzUwfzfEm
 e8nkEJr1NgWM/VFqatr4n4e++zyDatXKOIRvVqIyvHCW5rUjWs9raS+lxg4TQm4b4O0G
 PqGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wEg6363KALMCBQBSLOKuoUfGPXNIfqB9uH8JLDVOLn8=;
 b=PwaJbejF3eTzoq5bvv8ccd4wYXc13htK6HpcU++YVxvIfaogcnDEBxP5JkcVexbpLs
 NJ2Q7Y5tGa7dFIAB42oHNnHfBUpjTGYjlPvsjjiuoC75SUOHI9CVbzhoY7O+5YS3QAaR
 PiVyYfFlx6NLiO+Rbe8rYwNkBhNoPFuGp960IOsd+adb94nQ5+VR/GzEN8dMGSPZ8xfH
 H2bCdJi7BeLMjLYePm/8T56DLCckf/fO/PlY6/wi/v2KpNC5e/XlQvBtjsD9puoJzF9p
 Mrha+3CT42m3UZKN3b6z1mW8xWp8lKcEHoNIUW1+rxjqJezs9PHGeKC2h3K0tlcB0WyT
 1IHQ==
X-Gm-Message-State: AGi0PuZrO4IEGtXaVOSNC9Uz5xqmimN0hO1kIy48SIOGVTKFFMZKajva
 dFeJkc4epptG35HEidxPIjgD4d1MIygTXl7DCNQ=
X-Google-Smtp-Source: APiQypJ1418d0usqdIDaEoMJ9S+Dht8dlCaR0LS0UZ1UTm9QxdH2D6YM5JrcYaXtjH+tKEvB0V0bS+J5tYCvdGie2SI=
X-Received: by 2002:adf:8401:: with SMTP id 1mr4356440wrf.241.1588961543855;
 Fri, 08 May 2020 11:12:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
 <20200507010504.26352-2-luke.r.nels@gmail.com>
 <20200507082934.GA28215@willie-the-truck> <20200507101224.33a44d71@why>
 <CAB-e3NRCJ_4+vkFPkMN67DwBBtO=sJwR-oL4-AozVw2bBJHOzg@mail.gmail.com>
 <20200508114709.GB16247@willie-the-truck>
In-Reply-To: <20200508114709.GB16247@willie-the-truck>
From: Luke Nelson <luke.r.nels@gmail.com>
Date: Fri, 8 May 2020 11:12:12 -0700
Message-ID: <CAB-e3NQLuaHLxNB3Zpgy8EqyiZBqEYGzh1TSzXQe++nqPu2oLg@mail.gmail.com>
Subject: Re: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding
 32-bit logical immediates
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_111226_296830_0B0565DC 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luke.r.nels[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 clang-built-linux@googlegroups.com, Daniel Borkmann <daniel@iogearbox.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Marc Zyngier <maz@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
 KP Singh <kpsingh@chromium.org>, Luke Nelson <lukenels@cs.washington.edu>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Zi Shen Lim <zlim.lnx@gmail.com>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Fri, May 8, 2020 at 4:47 AM Will Deacon <will@kernel.org> wrote:
>
> Yes, please! And please include Daniel's acks on the BPF changes too. It's a
> public holiday here in the UK today, but I can pick this up next week.

Thanks!

> Nice! Two things:
>
> (1) I really think you should give a talk on this at a Linux conference

That would be great, I'd be happy to give a talk on our verification
work some time in the future :)

> (2) Did you look at any instruction generation functions other than the
>     logical immediate encoding function?

Other instruction generation functions are on our todo list, but we
haven't got a chance to spend more time on them yet.

Thanks again,

- Luke

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
