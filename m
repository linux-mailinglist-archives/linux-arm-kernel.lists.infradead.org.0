Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 102871F3DD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OF38zy10nSCTOhyzIftfmYEHQGWAUts3RAPvrMRJfjk=; b=c9MaQ0tieh5SN3
	Lq2LNs+Zms/T/hWwYnla7E8TGhj5Q/B6hnMXWWjZCV/KmBFLtNaH6zd8ubbJbP6ViQOd6Moc6kuMm
	z6skpp0MxBEuxPCqtVROk2pBQUDQCE89UcmIg/54JLZehmdWnvnFPbNn3/1sRl0KjdujzeJ5GE18+
	ouhmNc+BwZWGVeAq3eYUMGtIjg7oG428E23lphqmqWfXMBV/8gbU8AGtUN/FvMO0Y25vrW9hsG/R5
	9oX7/uurtSfPSQQmUJ2Xmlkt5rw/IzVOg+Y+zF4USOHx11zXxA6x/XoWdz7n5cWFhe0NgEn+vBaNx
	7wcnuZLREs6GNAC2ZALg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jif6Y-000579-Qx; Tue, 09 Jun 2020 14:19:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jif6M-00055d-QZ
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:19:44 +0000
Received: by mail-pg1-x542.google.com with SMTP id e18so333795pgn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 07:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TBM8UzUFQRAFXnadODNP4SC5I3SYQdfsI182+mdN99I=;
 b=robkr4JeDjRuxira1Rr1HMwmepK/jy5iMNR4VO2+sugmN2Qfs9w/G4u6YHgpnsUuKx
 0xrsGSyercM6BnkS802AGU4qBDrHJ9OLVViubfUx1QX8eUZiLXWod5C9gLXDtugSCRIi
 50cOjHrJ9PyMN+kCjAT+QSovuPV8AiLQRPXTKq761mFEa6q5/EqJdDeF/SEYEJSE1BNE
 J3gPdDMZtMIrLLmlZaKzHC6fO5ywUCMDQ+3wqBNvXq3HpkovNmuMHp3u7/NqmQysnh9k
 UXoFFtjAk3dwxlC9bqbLHGz6D8a161Ju2xuxJFblfyv22KZckKiMqRjBPc7ScQg4V1E2
 9wwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TBM8UzUFQRAFXnadODNP4SC5I3SYQdfsI182+mdN99I=;
 b=Mi4KJZtzOO1UvOUF+LPwydLrKxygMXjgZrx3yYDf324aNH+xEkJoDBlxo1joAcIhqg
 iGjqm+fndrttTbQhFqLHLTjh2aJlOYO+7kT0KDAyGIAjzuXfMRlMDbXWMlsyc7A8A3ze
 q+GrOfSDzOnEn2/wY2g9vdDumW8CHspz4LSVM3/pSNxmiDF2Nbj0jjlmJKAnjrAfYZLh
 IyoEUxSkI5ZuD2jleholrJj0YPQHOll9l3HrU78Z6gUwyHCf0zvJyKFIWYIpPG2qtuq1
 WPTWp7ZmYBiqXnsbNXD+Q14QaTIVy48T8hwEOdrJHzvfHw796MMmrSjnPr5/2QxdXJxg
 GK+w==
X-Gm-Message-State: AOAM532mGxEk/0rfrIwk5k1Arnnd0hjILe9NGOxEx3fgWWgMnaeWpzZl
 1450PL5SoBWr07WlgB0htgRocjPUQJvyoID2y+0=
X-Google-Smtp-Source: ABdhPJxStCJ8sGascE2rC3EJCjWx/Wwyx7yNwiY+l2i+Fbip9MDjYWBd+z97hidMXyAQuBXbm4qYdEPklBp+cUjoXkk=
X-Received: by 2002:a62:3103:: with SMTP id x3mr9005809pfx.130.1591712381739; 
 Tue, 09 Jun 2020 07:19:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200609110136.GJ4106@dell>
In-Reply-To: <20200609110136.GJ4106@dell>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 9 Jun 2020 17:19:30 +0300
Message-ID: <CAHp75Vfy2siUikK7bN3iM=pj3B8XYWzszkKAFgBt0SFh26s+Sw@mail.gmail.com>
Subject: Re: [RFC] MFD's relationship with Device Tree (OF)
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_071942_880604_0046A569 
X-CRM114-Status: GOOD (  30.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 GregKroah-Hartmangregkh@linuxfoundation.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 2:01 PM Lee Jones <lee.jones@linaro.org> wrote:
>
> Good morning,
>
> After a number of reports/queries surrounding a known long-term issue
> in the MFD core, including the submission of a couple of attempted
> solutions, I've decided to finally tackle this one myself.
>
> Currently, when a child platform device (sometimes referred to as a
> sub-device) is registered via the Multi-Functional Device (MFD) API,
> the framework attempts to match the newly registered platform device
> with its associated Device Tree (OF) node.  Until now, the device has
> been allocated the first node found with an identical OF compatible
> string.  Unfortunately, if there are, say for example '3' devices
> which are to be handled by the same driver and therefore have the same
> compatible string, each of them will be allocated a pointer to the
> *first* node.
>
> Let me give you an example.
>
> I have knocked up an example 'parent' and 'child' device driver.  The
> parent utilises the MFD API to register 3 identical children, each
> controlled by the same driver.  This happens a lot.  Fortunately, in
> the majority of cases, the OF nodes are also totally identical, but
> what if you wish to configure one of the child devices with different
> attributes or resources supplied via Device Tree, like a clock?  This
> is currently impossible.
>
> Here is the Device Tree representation for the 1 parent and the 3
> child (sub) devices described above:
>
>         parent {
>                 compatible = "mfd,of-test-parent";
>
>                 child@0 {
>                         compatible = "mfd,of-test-child";
>                         clocks = <&clock 0>;
>                 };
>
>                 child@1 {
>                         compatible = "mfd,of-test-child";
>                         clocks = <&clock 1>;
>                 };
>
>                 child@2 {
>                         compatible = "mfd,of-test-child";
>                         clocks = <&clock 2>;
>                 };
>         };
>
> This is how we register those devices from MFD:
>
> static const struct mfd_cell mfd_of_test_cell[] = {
>         OF_MFD_CELL("mfd_of_test_child", NULL, NULL, 0, 0, "mfd,of-test-child"),
>         OF_MFD_CELL("mfd_of_test_child", NULL, NULL, 0, 1, "mfd,of-test-child"),
>         OF_MFD_CELL("mfd_of_test_child", NULL, NULL, 0, 2, "mfd,of-test-child")
> };
>
> ... which we pass into mfd_add_devices() for processing.
>
> In an ideal world.  The devices with the platform_id; 0, 1 and 2 would
> be matched up to Device Tree nodes; child@0, child@1 and child@2
> respectively.  Instead all 3 devices will be allocated a pointer to
> child@0's OF node, which is obviously not correct.
>
> This is how it looks when each of the child devices are probed:
>
>  [0.708287] mfd-of-test-parent mfd_of_test: Registering 3 devices
>  [...]
>  [0.712511] mfd-of-test-child mfd_of_test_child.0: Probing platform device: 0
>  [0.712710] mfd-of-test-child mfd_of_test_child.0: Using OF node: child@0
>  [0.713033] mfd-of-test-child mfd_of_test_child.1: Probing platform device: 1
>  [0.713381] mfd-of-test-child mfd_of_test_child.1: Using OF node: child@0
>  [0.713691] mfd-of-test-child mfd_of_test_child.2: Probing platform device: 2
>  [0.713889] mfd-of-test-child mfd_of_test_child.2: Using OF node: child@0
>
> "Why is it when I change child 2's clock rate, it also changes 0's?"
>
> Whoops!
>
> So in order to fix this, we need to make MFD more-cleverer!
>
> However, this is not so simple.  There are some rules we should abide
> by (I use "should" intentionally here, as something might just have to
> give):
>
>  a) Since Device Tree is designed to describe hardware, inserting
>     arbitrary properties into DT is forbidden.  This precludes things
>     we would ordinarily be able to match on, like 'id' or 'name'.
>  b) As an extension to a) DTs should also be OS agnostic, so
>     properties like 'mfd-device', 'mfd-order' etc are also not
>     not suitable for inclusion.
>  c) The final solution should ideally be capable of supporting both
>     newly defined and current trees (without retroactive edits)
>     alike.
>  d) Existing properties could be used, but not abused.  For example,
>     one of my suggestions (see below) is to use the 'reg' property.
>     This is fine in principle but loading 'reg' with arbitrary values
>     (such as; 0, 1, 2 ... x) which 1) clearly do not have anything to
>     do with registers and 2) would be meaningless in other OSes/
>     implementations, just to serve our purpose, is to be interpreted
>     as an abuse.
>
> Proposal 1:
>
> As mentioned above, my initial thoughts were to use the 'reg' property
> to match an MFD cell entry with the correct DT node.  However, not
> all Device Tree nodes have 'reg' properties.  Particularly true in the
> case of MFD, where memory resources are usually shared with the parent
> via Regmap, or (as in the case of the ab8500) the MFD handles all
> register transactions via its own API.
>
> Proposal 2:
>
> If we can't guarantee that all DT nodes will have at least one
> property in common to be used for matching and we're prevented from
> supplying additional, potentially bespoke properties, then we must
> seek an alternative procedure.
>
> It should be possible to match based on order.  However, the developer
> would have to guarantee that the order in which the child devices are
> presented to the MFD API are in exactly the same order as they are
> represented in the Device Tree.  The obvious draw-back to this
> strategy is that it's potentially very fragile.
>
> Current Proposal:
>
> How about a collection of Proposal 1 and Proposal 2?  First we could
> attempt a match on the 'reg' property.  Then, if that fails, we would
> use the fragile-but-its-all-we-have Proposal 2 as the fall-back.
>
> Thoughts?

Just a side note, have you considered software nodes on the picture?
You can add properties or additional references to the existing
(firmware) nodes.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
