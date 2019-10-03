Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37919CA08F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 16:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHaqJ68zHKaqOg3woe65lu+XByD1VGAeCGOzMg09scQ=; b=modAzt6UzCHfjE
	ARnubatJxm1l+KoZEPxwQd256IOYGrwiWa5z14OIa6L/y94wCM2xsKnCqx1oNabKhFXoJwhRLdfQL
	OhBSj+6kjmcAMInHQf4Txv6oCeiJR8kx7qHcO+VFWbKJL9k10w5oXYt1Bb9w0jJmtI77jFtAf7R6F
	0JIpoO71rsT/ciDXy/z2Rkt50jRuP0tB0RFW8Cv61CkjfPBaF4QBuI2szFG/5blwB80S01WJTFCXV
	KR4I9SEQ+r14Kh/Gr7UtuSLKhur6CDHIRQVtfzZkpbvx67Hm9I7pKkYBj4GLKvQX2aRX0xXm3ToU3
	ko/wrbTyRQgIhFUGaLog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG2N8-0006Wi-Tb; Thu, 03 Oct 2019 14:46:26 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG2N2-0006Vn-HS
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 14:46:21 +0000
Received: by mail-io1-xd42.google.com with SMTP id q1so6198604ion.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 07:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TdbwXuh5bV4qEcKvgZf01HKoOU3JMuTQzHSwqy4Er+0=;
 b=e7rKLSrBU31at0uyKHw4kyJZiHmcMTUe49QEUNESNUa9syxwp7qu4QKioB50Y7wCq8
 e5KlDYUq4dpgJ5kLM3dl/hfh2fX3F1j4aboffPUX7GAPW5zl92o09lYa891tzm2BpX4I
 yEdnK53WgNclgiJsvIDzGw4ENp33KQmOuvIYv/sHKTdZMIcjpIwFEVFTLEqZ6P6SDMGa
 w+xxvKyISxBiP1u/gKUnZNfqKHtm59VHZyTJymIAuL3jEJToUpr6dgh8WBjN9BlPLixL
 uo6ymwGL1x3mZ5xz6xA6bT2ZKN+Vh40je10c1uE2aD9aP0x4mJQ3luKQO48VbvmM+igE
 0PqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TdbwXuh5bV4qEcKvgZf01HKoOU3JMuTQzHSwqy4Er+0=;
 b=B4luYPlsUffMXZPfiEYNTdNQOS/ssjcqzvnRsGkk34OMZAuQBYNeJ5k+3W5UWoy1Lh
 OljUTLI76tY2sW+NUbqocLC6o94ng9/+f1o10bAoB8Hr3yBhjMCWZT5dn17lL8l7xc5K
 QO9xa5hG78/FjE3CPlBKPjijomM2lfgxmhs/lI0S6BcEjAGVRGrbWeSTHZ1kuFPSCsu9
 5Gqt/twu5l918c5EYBT0f8quT2b+Lzczl5oHns2bHsylODeEUUc7D0kQrReqe5Wyk9xI
 7ahan+xyv54wx2/ISKOxh7/WQxSAND8rLsU/Bd8jYS+ITgospfElQ/H4ENs4sy9wa469
 ARWA==
X-Gm-Message-State: APjAAAVcOa0byklptd+7KbxFWhMlW9Jm6woF7qkkMC6kZ4EB+M3CLsgU
 hl5bikMmmBGY7YSLnENfPG+kkfTJluzP+P6cZDY=
X-Google-Smtp-Source: APXvYqxLMMgyZmfknk/IaEbgrSuiiQdukVSe/Iyrfs/A49rS7Vf3MxtQ6d9wEfSV7Z7KPhphxtCUN0yer77GhWPg8DM=
X-Received: by 2002:a6b:8f4b:: with SMTP id r72mr8544912iod.43.1570113978710; 
 Thu, 03 Oct 2019 07:46:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAOMZO5D2uzR6Sz1QnX3G-Ce_juxU-0PO_vBZX+nR1mpQB8s8-w@mail.gmail.com>
 <CAHCN7xJ32BYZu-DVTVLSzv222U50JDb8F0A_tLDERbb8kPdRxg@mail.gmail.com>
 <20190926160433.GD32311@linux.ibm.com>
 <CAHCN7xL1sFXDhKUpj04d3eDZNgLA1yGAOqwEeCxedy1Qm-JOfQ@mail.gmail.com>
 <20190928073331.GA5269@linux.ibm.com>
 <CAHCN7xJEvS2Si=M+BYtz+kY0M4NxmqDjiX9Nwq6_3GGBh3yg=w@mail.gmail.com>
 <CAHCN7xKLhWw4P9-sZKXQcfSfh2r3J_+rLxuxACW0UVgimCzyVw@mail.gmail.com>
 <20191002073605.GA30433@linux.ibm.com>
 <CAHCN7xL1MkJh44N3W_1+08DHmX__SqnfH6dqUzYzr2Wpg0kQyQ@mail.gmail.com>
 <20191003053451.GA23397@linux.ibm.com>
 <20191003084914.GV25745@shell.armlinux.org.uk>
In-Reply-To: <20191003084914.GV25745@shell.armlinux.org.uk>
From: Chris Healy <cphealy@gmail.com>
Date: Thu, 3 Oct 2019 07:46:06 -0700
Message-ID: <CAFXsbZrLkjsda8oM4SG6LOpfu7a=vwJ7eGM-FL8dzCKb0yzy5w@mail.gmail.com>
Subject: Re: [PATCH v2 00/21] Refine memblock API
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_074620_603812_2B84F5E7 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Fabio Estevam <festevam@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Adam Ford <aford173@gmail.com>,
 Christoph Hellwig <hch@lst.de>, arm-soc <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>
> The iMX6 does not have MMUv2 hardware, it has MMUv1.  With MMUv1
> hardware requires command buffers within the first 2GiB of physical
> RAM.
>
I thought that the i.MX6q has the MMUv1 and GC2000 GPU while the
i.MX6qp has the MMUv2 and GC3000?  Meaning the i.MX6 has both MMUv1
and MMUv2 depending on which i.MX6 part we are talking about.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
