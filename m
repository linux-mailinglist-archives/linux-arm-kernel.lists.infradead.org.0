Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32E7DC857
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WrEpAnojq5InTVDufMmw2uESuRuZtfMihps6Bv4wdDE=; b=cnkCGVbhZPH4a7
	NThJQhIf8Uumr2c4ZFKmY2v3yvrk9unm769M22kjnwwkWx4Gthp4g+zh21zuHujXkHSZg9c29rzsK
	52OBG9GHUE5UQ6W/72RFovKPN24DbvTaY7OAO3sBVvH3Mqc4mnfX5xJM9am16CoZWumt6ogmsMnVp
	SnY0dYu3Lx9tGxaiDxtDpUFWqHqwdChvI856XgLIBnDWYPjbgzNQdc+YR+pR3bCQhA/ekK6oPMCeN
	w+xUZRh2qfOdcAQMM698+4zqKC+O7skB2hIdwmQhKhDBFF/OQ9VNa92uqKsgJPa8nsFjlHk9/YisG
	3pmGJ2i5TF4OirLoBVMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLU53-0007vw-Od; Fri, 18 Oct 2019 15:22:17 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLU4u-0007vD-GN; Fri, 18 Oct 2019 15:22:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id c25so7847957iot.12;
 Fri, 18 Oct 2019 08:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6aWYf2EJ6T3lEMsTnZ85l374tBYCs4qR6iBnDivBEd4=;
 b=TX7Lj4fpNaw+rPLdWCLGA+/mqMT0HXgsnWfnMBYLb8tnQvu8/szGyx5oR1ijczOcvR
 U4XFvHBasVLmxX7FVJ5xzubfHofrzKvdpQY0sWTOt1VtlRPmi4pOpGp+iVi2RQE4PquB
 eb+t4LcEDGC503ZWFBi/0chC8eGTK4DF2fdW8s8ip9JgNTwlAe0rjzujRC4TCIV60AT2
 VMHXqj9QceAAi+70kuzo1+5QIpJ7gw8aUZEGINUlPFtTv/kJiDaFeqKjKDPPWPr3dD94
 F5TjFwjSOS/l2lNRhCU1Lriyd5I3Iem5mt41D7bSZsEmZZBdXM2JhFExX+dTh5V+Vn1A
 DB9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6aWYf2EJ6T3lEMsTnZ85l374tBYCs4qR6iBnDivBEd4=;
 b=EWc9OkWwFyushBryjxvlJJlNGU6y3bimONQyO+X9UIsRwdWyoQcSYWUN9yVa+N6BU7
 Q9ORtBxcZT37J2FE5dlGMlSilAGMWa7T3gzzZNdSKipBPoVbPrLJVXz5ENP/6qvYVqwT
 WJqxwhLZEEmxyx9rLfifkfF+e5TKNcxeDZs6gqjiMGq8LJ9LVjVeqtpoX2UYFkwc/ORJ
 mFYAguDA68miUjqpyWhNu4ny0V/J7rtsuY8eMroy78JhMUlX6xhKgMoILjSEvxiazsoY
 EJcGTR0uHO5Kf6UgQTX3ExYFTiIjLjKynZa/ls6ZrsSy8Gx02zvRZHCenv7+HSlb0TD7
 eJZw==
X-Gm-Message-State: APjAAAUOPwMOiUVw0lkayophqZbDJ0yxWnFypSwzjBVZDhQqx084zw+v
 nuIZpRlwXldGGogzghdK+9w46uwUS8uic/P4KMM=
X-Google-Smtp-Source: APXvYqzKP3eWnLIodD8BQ96h1uueunpugA3ee1X9sSaev9gUaslu2v+ETYGgUTRIX0Wlj4SxjQBXVE0aOt1x9ISXt2Y=
X-Received: by 2002:a02:c646:: with SMTP id k6mr6271439jan.141.1571412123645; 
 Fri, 18 Oct 2019 08:22:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191007131649.1768-1-linux.amoon@gmail.com>
 <20191007131649.1768-6-linux.amoon@gmail.com>
 <CAFBinCAoJLZj9Kh+SfF4Q+0OCzac2+huon_BU=Q3yE7Fu38U3w@mail.gmail.com>
 <7hsgo4cgeg.fsf@baylibre.com>
 <CANAwSgRfcFa6uBNtpqz6y=9Uwsa4gcp_4tDD+Chhg4SynJCq0Q@mail.gmail.com>
 <CAFBinCA6ZoeR4m4bhj08HF1DqxY1qB5mygpaQCGbo3d8M+Wr9Q@mail.gmail.com>
 <CANAwSgSeYTnUkLnjw-RORw76Fyj3_WT0cdM9D0vFsY8g=9L94Q@mail.gmail.com>
 <1jwode9lba.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgSoK4X3_QbO3YpZRXNTpPJ+zVeid=w93f14Eyk8Dd32EQ@mail.gmail.com>
 <1496ed3e-e91b-3f09-d359-f36a8944e6b0@baylibre.com>
In-Reply-To: <1496ed3e-e91b-3f09-d359-f36a8944e6b0@baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 18 Oct 2019 20:51:50 +0530
Message-ID: <CANAwSgRwLp02u1_u6oX_dXAueb2nASL_iiMmAt1Q3t9JfxiDPg@mail.gmail.com>
Subject: Re: [RFCv1 5/5] arm64/ARM: configs: Change CONFIG_PWM_MESON from m to
 y
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_082208_542936_4B4173DE 
X-CRM114-Status: GOOD (  22.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Fri, 18 Oct 2019 at 19:43, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 18/10/2019 16:04, Anand Moon wrote:
> > Hi Jerome / Neil / Martin,
> >
> > On Wed, 9 Oct 2019 at 17:34, Jerome Brunet <jbrunet@baylibre.com> wrote:
> >>
> >>
> >> On Wed 09 Oct 2019 at 10:48, Anand Moon <linux.amoon@gmail.com> wrote:
> >>>
> >>> Kernel command line: console=ttyAML0,115200n8
> >>> root=PARTUUID=45d7d61e-01 rw rootwait
> >>> earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
> >>>
> >>> [0] https://pastebin.com/eBgJrSKe
> >>>
> >>>> you can also try the command line parameter "clk_ignore_unused" (it's
> >>>> just a gut feeling: maybe a "critical" clock is being disabled because
> >>>> it's not wired up correctly).
> >>>>
> >>>
> >>> It look like some clk issue after I added the *clk_ignore_unused* to
> >>> kernel command line
> >>> it booted further to login prompt and cpufreq DVFS seem to be loaded.
> >>> So I could conclude this is clk issue.below is the boot log
> >>>
> >>> Kernel command line: console=ttyAML0,115200n8
> >>> root=PARTUUID=45d7d61e-01 rw rootwait
> >>> earlyprintk=serial,ttyAML0,115200 initcall_debug printk.time=y
> >>> clk_ignore_unused
> >>>
> >>> [1] https://pastebin.com/Nsk0wZQJ
> >>>
> >>
> >> Next step it to try narrow down the clock causing the issue.
> >> Remove clk_ignore_unused from the command line and add CLK_INGORE_UNUSED
> >> to the flag of some clocks your clock controller (g12a I think) until
> >>
> >> The peripheral clock gates already have this flag (something we should
> >> fix someday) so don't bother looking there.
> >>
> >> Most likely the source of the pwm is getting disabled between the
> >> late_init call and the probe of the PWM module. Since the pwm is already
> >> active (w/o a driver), gating the clock source shuts dowm the power to
> >> the cores.
> >>
> >> Looking a the possible inputs in pwm driver, I'd bet on fdiv4.
> >>
> >
> > I had give this above steps a try but with little success.
> > I am still looking into this much close.
> >
> > Well I am not the expert in clk or bus configuration.
> > but after looking into the datasheet of for clk configuration
> > I found some bus are not configured correctly.
> >
> > As per Amlogic's kernel S922X (Hardkernel)
> > below link share the bus controller.
> >
> > [0] https://github.com/hardkernel/linux/blob/odroidn2-4.9.y/arch/arm64/boot/dts/amlogic/mesong12b.dtsi#L295-L315
> >
> > looking in to current dts changes it looks bit wrong to me.
> >
> > *As per 6.1 Memory Map*
> > apb_efuse: bus@30000  --> apb_efuse: bus@ff630000
> > periphs: bus@34400    --> periphs: bus@ff634400
> > dmc: bus@38000        --> dmc: bus@ff638000
> > hiu: bus@3c000        --> hiu: bus@ff63c0000
>
> If these was wrong, the drivers simply won't work, at all
>
> >
> > Also the order of these is not correct.
>
> The order is correct, actually
>
> >
> > Down the line in the datasheet some of the interrupt GIC bit are not
> > mapped correctly for example.
> >
> > *As per 6.9.2 Interrupt Control Source*
> > 223 SD_EMMC_C
> > 222 SD_EMMC_B
> > 221 SD_EMMC_A
>
> There is an offset between the doc and the actual GIC_SPI line,
> they start the datasheet numbers from the GIC_PPI numbers (+32).
>
Ok. Thanks.

> Neil
>
Thanks for answering my query.

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
