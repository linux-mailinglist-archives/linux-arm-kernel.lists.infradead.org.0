Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A35517B9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 16:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0EPKDIa7oW5dMU1BNkb76927YRZQATDqiydgKUcsdg=; b=Qh0iciZchjEZ5W
	uEmEvMNpr7K/5VmnJQeDNZdGBseFLSPoDon86mVqBM8D7xhGCs5WL99YQc2eKU6ou6JAn9nF9cAUi
	+sS9O6RdHSnW2SIiTSChH4dnFGASP3hhlNkt7X08csJMEX7kd87RhQwxpCxE0z2k/s0ISz/BDzxko
	BzKv/8CTZsz26kwJBbqKDCWNZal4Fkoi3UMLJgQ2VMX/d5QHvMrYkPXgghX+GY1dGoy0Bv/3ayWrU
	ON9Nztbo/T1badve9nkHiJACxjgpgcIUNeZyNIynXoJpV/bIfGqVOZu/IVCZoFZ+3bRG5p3j9iaSu
	KttO1jgoSss2+X593rAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hONgx-0001Wm-NP; Wed, 08 May 2019 14:37:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hONgq-0001S5-1t
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 14:37:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id t22so10189931pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 07:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ftxd/yGo/xg+LooGM3ZD/VdN0H7EkQxNojOlbdPB8hk=;
 b=GFOAMN4G1WRghAnlNyjXeaqSsonA/53S0DSqWPf54QwuNQDT1NbIYLzp9w3fhZJFtN
 aiSKheRl2EusqiUpf3wsoy3fr5QmJu1rSfg7kWe0o/uADF8HeDLcbksODBQwBwlmizbz
 8XE1Cb7/QP0JCLcxO6ebcvY7JlWjixRPUtMymB2ehb9bUFpAAwJKTN2pvQ0A+dib+RCT
 SGekeXxhObb5v1F6knvIdK+gQPPbU5Yy/oJwAIO2vXK2hVb78feJqIh2E0lghsfK6QgE
 jktmdNu03tVA+o+IS/rc4DicflXeoMssjytPTXhMO9HCDWJsir2kCt5jeSX/yqcF5Uj7
 LG+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ftxd/yGo/xg+LooGM3ZD/VdN0H7EkQxNojOlbdPB8hk=;
 b=SE+7Uq7YX3hOo4AvJQK0h9vQurniOLh1ZpDOujNo5jJRyaRDGajbU57My7h7rpebKX
 bNAO8w2/0TW5O4YIc9uIcQHinByohal1xhWU8mAr5VXKCGYhqM3kUKaky5yz5agFYbg/
 Uj8ioYW7CXs2B6mgE4UmtsHhQqF1f5+U1N8q168PEOA6CC5+6w3g40hwD7eQURKPbJQO
 GVF19XBJ31PfdFg8dsrnGyHkk5xiqSuMtp15e5CNbg7U5LUW0NLFa6saEyXZLevQIHGM
 XEy4adAdnmLi1CVc9wjouN7Iav2EfeFMlzAoj+qkiciSaKSwwI2hPYoC3aL6+NiRT4Do
 a3Ig==
X-Gm-Message-State: APjAAAUqpShtVnJ9qt6G47f0Kb1mCLRtqrxYkZn7kK2YYhFKiH7sh+U0
 ALGhoPeByQoyCcPuecaFlrs=
X-Google-Smtp-Source: APXvYqwFTky+u99b+yN1sIumvpHzai76th7uvSwoCwE6E1F3oFzkKw34NCWTmOtkhi1n2S8pol/jMQ==
X-Received: by 2002:a63:465b:: with SMTP id v27mr6811806pgk.38.1557326218322; 
 Wed, 08 May 2019 07:36:58 -0700 (PDT)
Received: from localhost (c-73-222-71-142.hsd1.ca.comcast.net. [73.222.71.142])
 by smtp.gmail.com with ESMTPSA id t26sm10739342pgk.62.2019.05.08.07.36.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 07:36:57 -0700 (PDT)
Date: Wed, 8 May 2019 07:36:54 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Po Liu <po.liu@nxp.com>
Subject: Re: [EXT] Re: [PATCH v1] timer:clock:ptp: add support the dynamic
 posix clock alarm set for ptp
Message-ID: <20190508143654.uj7266kcbhf744c3@localhost>
References: <1557032106-28041-1-git-send-email-Po.Liu@nxp.com>
 <20190507134952.uqqxmhinv75actbh@localhost>
 <VI1PR04MB51359553C796D25765720FCC92320@VI1PR04MB5135.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB51359553C796D25765720FCC92320@VI1PR04MB5135.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_073700_102153_08913958 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Roy Zang <roy.zang@nxp.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Mingkai Hu <mingkai.hu@nxp.com>, "Y.b. Lu" <yangbo.lu@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "deepa.kernel@gmail.com" <deepa.kernel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 03:30:01AM +0000, Po Liu wrote:
> > Sorry, NAK, since we decided some time ago not to support timer_* operations
> > on dynamic clocks.  You get much better application level timer performance
> > by synchronizing CLOCK_REALTIME to your PHC and using clock_nanosleep()
> > with CLOCK_REALTIME or CLOCK_MONOTONIC.
> 
> The code intend to get alarm by interrupt of ptp hardware. The code
> to fix ptp not support to application layer to get the alarm
> interrupt.  Do you mean the synchronizing at application layer by
> PHC (using clock_nanosleep()) to the CLOCK_REALTIME source? Then the
> kernel could using the hrtimer with CLOCK_REALTIME?

Yes, or with CLOCK_MONOTONIC.

> > > This won't change the user space system call code. Normally the user
> > > space set alarm by timer_create() and timer_settime(). Reference code
> > > are tools/testing/selftests/ptp/testptp.c.
> > 
> > That program still has misleading examples.  Sorry about that.  I'll submit a
> > patch to remove them.
> 
> Is there any replace method for an application code to get alarm interrupt by the ptp source?

No the alarm functionality has been removed.  It will not be coming
back, unless there are really strong arguments to support it.

Here is the result of a study of a prototype alarm method.  It shows
why the hrtimer method is better.

   https://sourceforge.net/p/linuxptp/mailman/message/35535965/

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
