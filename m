Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D756181DF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:33:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ri77Cf0Xp7N+WsTzKoarXiykN2rGTiYg5EtABv/FEI4=; b=Ah+WybCQTNLT+C
	38Wmt7u6pDNTaxRTpuUO8Wnei+s4iWen+0vzYuyPenBZcJ5SuM7hllIPl+6QFfFh+7Co4DzEPrwiU
	xxfvXVkOyKd5FyKaI4c6JHKpdUC0/BH4gN94CsiJIqh4+Vc8dpOzn/1K+7Y4pu+tu+XzV4RxSxVhE
	8suK2kAwqj3883qignspe6Y8nQLWXyM1r189GJDC5Hmyx8bvfkVsnc0qwrOib0fovuy6pplAtdVms
	2QVNbJ1HDZfPBjZiUIOKkRjwy2OFjvM9Oidky4nsxN5JC7w0JTVn7rIDQosEL9/89+mDE5BYVZFPK
	By5SaRcW5ShkCte5P6Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4I2-0002zh-Rl; Wed, 11 Mar 2020 16:33:02 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4Hs-0002zL-Jj
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:32:54 +0000
Received: by mail-pj1-x1043.google.com with SMTP id l36so1236081pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 09:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zmUBvFmNMYqAgE4hUh5PxorZyEbBCYGzea7UV2DPByM=;
 b=okn3wxoxdRHK59h+9WIq7oUfCZKvj8jYSlljDW2vEtjcLJX7mgYZASlfNT2PSYE6Ew
 hTxbbboBZjfEQPOaLaDTKkp2kAaVqZVROy0sVYOndeFLtoC7w9dk7d90z8EtJQq0Vx0R
 vy9cgKIwOxAWv5BdqTYwtuiYYyguWrlCbqRIYcLTabjY59Uz+WnOAb8XXE+r/5G2b4FS
 0hKP4XWaegGUW05mM/tuyOjn8lu6DjLqOKDzuzDjE1W3KtsqetyMjI5B1hTR1nJumbKu
 vF4IfBaBzIIt5RZA++Mg8wN3WcVTwUS5m/euqks2Ta8zJGfFhw2KCVKjQnHaLV+MY2Wg
 tbuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zmUBvFmNMYqAgE4hUh5PxorZyEbBCYGzea7UV2DPByM=;
 b=QU9cuLZW9Ts+eFapGsagR6Kovfqp9OkNWChE60LBXWvaoHfsajbD4y0/BaJI0B4uY5
 piaFe/051Y+Vg3+vTAjJgNFR8OcKu73xHb1AhIK7TuHjnA5asqyEQoNOcKcCPRv9cq+8
 vxj4X4Pj6evkyDPAwaypfjFEYozlmoBBQZijJGiv5n8ejUem126EOTpy+5lDIEOo5Vw3
 d0KPROaSyuMZ9bATDihvEwAa5th4jdk5y4huh3w77zG3A7Tm36WdbIZYMheN9iHuVRSI
 oSAZv0VNSJst8SvKrYCCGGubLqthQ/+p8H7tDyom/NNbmK06cECRR67aEpm/HJJqkrSx
 dPbQ==
X-Gm-Message-State: ANhLgQ3IhcNeJqG1e7G2cY8RmOeqcjSCqn023zZ8DDlPUco52lTRxAca
 vk2a2OU7d1H8LLXi5RRWmr8=
X-Google-Smtp-Source: ADFU+vtseRHn4vAz5dlT4WliTsDFscNXLHw6uylAKsWiiB6pM6JEaG1187JNfqDIKnTVPdUgOiyByg==
X-Received: by 2002:a17:90a:4487:: with SMTP id
 t7mr4170485pjg.104.1583944371770; 
 Wed, 11 Mar 2020 09:32:51 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id q12sm51720409pfh.158.2020.03.11.09.32.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Mar 2020 09:32:50 -0700 (PDT)
Date: Wed, 11 Mar 2020 22:02:49 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200311163249.GA4984@afzalpc>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
 <20200311090308.GA5060@afzalpc>
 <20200311104217.GA10615@alpha.franken.de>
 <20200311131210.GA5115@afzalpc>
 <20200311160307.GA15464@alpha.franken.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311160307.GA15464@alpha.franken.de>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_093252_696540_816867D8 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Mar 11, 2020 at 05:03:07PM +0100, Thomas Bogendoerfer wrote:
> On Wed, Mar 11, 2020 at 06:42:10PM +0530, afzal mohammed wrote:

> > If IRQF_SHARED is passed, it exepcts a non-NULL dev_id, here it is
> > NULL, setup_irq() doesn't have any check like that.
> 
> so request_irq() is not a 1:1 replacement for our current setup_irq().
> Or put it the another way our setup_irq() might be buggy, when used for
> shared interrupts.

AFAIU, this causes problems only while freeing irq, but not sure. Seems
it is not happening with any of the cases in the diff.

> > So i think proper solution is to add a non NULL dev_id, as removing
> > IRQF_SHARED might affect some platforms that might be using that
> > interrupt line shared.
> > 
> > Patch with non-NULL dev_id below, it works w/ Nathan's test case.
> 
> I'm not sure, I like the adding of string pointers as dev_id arguments
> in your patch. How can we make sure they are unique enough for the use
> case ? I guess using handler as dev_id does a better job here.

There was one prior similar usage using string pointers, another way i
have seen is using irq no. itself, but then it has to be typecasted,
in file arch/mips/txx9/generic/pci.c,

        request_irq(irq, &i8259_interrupt, IRQF_SHARED,
                "cascade(i8259)", (void *)(long)irq);

[ but i think that double casting is not required, only (void *) might
suffice ]

If you prefer handler function pointer, i will use that.

> And before doing that, lets clean up some of the IRQF_SHARED usage first.
> All sni IRQF_SHARED can go away, the interrupt lines are exclusive there. 
> 
> loongson2ef/lemote-2f/irq.c: looks like the only user of
> LOONGSON_NORTH_BRIDGE_IRQ, so IRQF_SHARED could go as well.
> Could someone confirm that ?
> 
> All other need to stay, IMHO.

Okay, i am venturing into MIPS the first time as part of this patch
series, so no MIPS specific knowledge, just let me know
loongson2ef/lemote-2f case as well, i will prepare patch accordingly. 

> And v4 is already in mips-next, so I need an incremental patch please.

Okay, i already sent a patch, it crossed your mail, i will make a new
patch based on the outcome of the discusson here.

Since there is some issue w/ lore.kernel.org, i send it again, but
both are not seen in archives.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
