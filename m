Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8188D7EC58
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 07:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpoZLJ9lzALyF+6jyNUBMGGlmfmKY8Ni7vYm/1bvDXI=; b=T78TmHTCZt0vDx
	yjI/TRwG1l6xNkF9OejdouZJq9soXX75bAY9gH7Qq2Hu+Q3bc2J03AshDueG8i3Rlvhclyi2On8Ps
	3h/3IsVifv9zR1yKJXl5piByeHvSmJH9G0oObDPkeUBCnywMgrJGhB47GXYrUuWDf8gVzwkHsl6oh
	jxmprwxJtCa1bxxysYg/apjbB1BR7yA6jo6X4VJMzuYdwqPRrj6xgPCI23PvJ9c0pMnLb2utchEGw
	1F9WY5uVo7M04nfnGFjV1Y5+Ph4xpoSX2QXZ4yFnJY8oqooZAd8let+OM9JtszZWtqA1smLZ5mS3s
	/IiSWe0kWWuiWfClsrBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htQTj-0006Xu-2G; Fri, 02 Aug 2019 05:51:47 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htQTX-0006XX-Uo
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 05:51:37 +0000
Received: by mail-qt1-x843.google.com with SMTP id d17so72656597qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 22:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5ITQyJRBl7ht1TYk00a4jNJ9PbzaX8Bwy7nVWaA9ibU=;
 b=ZlXyZ6ztAsHkWX/gNtW3rbHVMXIy8YlD4tZkfmEg2K2GZWwrJbhbsffFVc4OaXLrg9
 4tTqk4gATmYjzkZBvV6sH+07OauO8iQOl7F9IrPpZzBS6Z/6Juf2gv2baaqlQJdyWdqq
 U2PcA4vf7asSgaO+0RaIZUlir57+Jn+ToB2VE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5ITQyJRBl7ht1TYk00a4jNJ9PbzaX8Bwy7nVWaA9ibU=;
 b=NBqPR37OdgQ0cCW6Y+8akMOj5//RMkABvvUUBSMJExQf/9Y1H4p9ezWO8pumjABa6a
 6PpZbgWM5bXjP1kZcexDL0ILfyRtsz1UYfVUKdwMdyip8Wm0wzzdrI9/6IemoRr34ulJ
 KLXWcScpDMDNt+AJRmgWOs7mXd5ipbA1L5Z5tIexXmWyGtnVBfJyRNEq2b5dHqFV7gaV
 T47KZ400aJoWst05couT0tFqr6xQMGZrLycN3HWFxrTpgRJWYUlgSqKj/h83IfUA/1Tf
 mfCnkJrcKuFaaHl79EeUE1UCSs6xWERTPrj0/zsLRl3ogr5zzJet4TzPCPAfIv/6Zn1z
 5UqA==
X-Gm-Message-State: APjAAAUGCyLZNsNphzFRJ6/9slTDLh7qje/8H359ukIRAZpi64VOzkkQ
 rlCTu0+2vr9d4bp0p7zYkD++TCNEjnCs4PycOrU=
X-Google-Smtp-Source: APXvYqxO7iXCAjOTakLYUnlXhbQV3QpIiWAYTjbetNNaVVixnu8M5TKpFH8tA3QT0jtpa2v4Vzycy56QBDbI0RnB0tU=
X-Received: by 2002:a05:6214:1306:: with SMTP id
 a6mr97854130qvv.38.1564725094592; 
 Thu, 01 Aug 2019 22:51:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190726053959.2003-1-andrew@aj.id.au>
 <CAL_JsqJ+sFDG8eKbV3gvmqVHx+otWbki4dY213apzXgfhbXXEw@mail.gmail.com>
 <fd8e57f0-aee2-403e-b6fb-76d0c18fe306@www.fastmail.com>
In-Reply-To: <fd8e57f0-aee2-403e-b6fb-76d0c18fe306@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 2 Aug 2019 05:51:23 +0000
Message-ID: <CACPK8Xc4Vigeu1B1Su5392BSCSKfoEDqt_tiDtgKmNH5ucAvAg@mail.gmail.com>
Subject: Re: [RFC-ish PATCH 00/17] Clean up ASPEED devicetree warnings
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_225135_997571_3D58ECAB 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-aspeed@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>, Corey Minyard <minyard@acm.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>, Xo Wang <xow@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Ken Chen <chen.kenyy@inventec.com>,
 Adriana Kobylak <anoo@us.ibm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?B?WWFuZ0JyaWFuQy5XIOaliuWYieWBiSBUQU8=?= <yang.brianc.w@inventec.com>,
 openipmi-developer@lists.sourceforge.net,
 "Alexander A. Filippov" <a.filippov@yadro.com>, Tao Ren <taoren@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yao.yuan@linaro.org, Patrick Venture <venture@google.com>,
 John Wang <wangzqbj@inspur.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stefan M Schaeckeler <sschaeck@cisco.com>,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Jul 2019 at 01:09, Andrew Jeffery <andrew@aj.id.au> wrote:

> > > The bang-for-buck is in fixing up the KCS bindings which removes all-but-two of
> > > the remaining warnings (which we can't feasibly remove), but doing so forces
> > > code changes (which I'd avoided up until this point).
> > >
> > > Reflecting broadly on the fixes, I think I've made a mistake way back by using
> > > syscon/simple-mfds to expose the innards of the SCU and LPC controllers in the
> > > devicetree. This series cleans up what's currently there, but I have half a
> > > mind to rev the SCU and LPC bindings to not use simple-mfd and instead have a
> > > driver implementation that uses `platform_device_register_full()` or similar to
> > > deal with the mess.
> > >
> > > Rob - I'm looking for your thoughts here and on the series, I've never felt
> > > entirely comfortable with what I cooked up. Your advice would be appreciated.
> >
> > The series generally looks fine to me from a quick scan. As far as
> > dropping 'simple-mfd', having less fine grained description in DT is
> > generally my preference. It comes down to whether what you have
> > defined is maintainable. As most of it is just additions, I think what
> > you have is fine. Maybe keep all this in mind for the next chip
> > depending how the SCU and LPC change.
>
> Okay, I think the timing of that suggestion is good given where things are with
> the AST2600. I'll keep that in mind.
>
> Consensus so far seems to be that the series is fine. I'll split it up and send out
> the sub-series to the relevant lists with the acks accumulated here.

The series look good. I suggest posting the KCS bindings and driver
changes as their own series to go through the IPMI tree.

Please add my tag to all the patches except the OCC one, which I need
to do some investigation in to.

Reviewed-by: Joel Stanley <joel@jms.id.au>

The others can go via the aspeed tree. Perhaps post them as their own
series too so I don't get confused and apply the wrong ones. That way
if Rob wants to send his reviewed-by he can.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
