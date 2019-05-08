Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E5E17ED5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 19:06:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foTr7NSZwfEgwIxiJdd/c/1mA1YtfRi5T+P24cNiQoM=; b=gR/7jUwGCnUxr8
	zZtsFumy7yILHFNhU5DPDrknD+B7KQ8XqISDihx+i+xwtnAVnUPutlHeg6iNnmbsUp9SP8Rf+yAPs
	qvJHdkNr4tkABiL4xco5lgcUlfXgmDIuuI33sW+mCMbQ/XSp6xzuBlaVrSBLHHjUFJRf2QwJJBf41
	SWCL6pGUqDyFKz/o+IR+1WwmRwMr36y7k/gz8MoZOwR54hhxx2Xgg0iZX4y2X9p8C4rkl+wcI1CVD
	cXmZTn2G1O5N7X3Uk2yIreMu7k0lIDBM+x5ud/PuO2EUdfJPOTDjVCR7JG8i4UCIf7PPIKUDMGPlj
	TxfsoUEd9bri+jV6CimA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOQ1h-0007Qk-GK; Wed, 08 May 2019 17:06:41 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOQ1a-0007PP-2V
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 17:06:35 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so1198222plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 10:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=75HU3h4OsAx80C+4HKmkW9WgCjMZ+3MuLOv2/tSvsf8=;
 b=jQl6hDH30YowXP4QHSAKi9IE+6WlJEE9nvbFJQjRbUi7SHucchoX5QX0FEPCcs+kkL
 /jpbzu3fEJoqC4nfdct9P3686RvwnXltHnptuE6rWvUJqv6WrstRah+XYV+aRESaYFn3
 jFlNYGFTnsq7c6nSR/FxyByvG87taz9YhTSvI6cGnvoO5Qfl5OoZqQTuX8wBXJn+ss9d
 0U31LGy5ye/WnB3tucJRtX1bxu/FPDmIq6nqHk2nl515S9PzPdxO9m0clWWhIAvzSPyt
 mkqzEJ8W17t6yXjMve4NC7Px40RyKcqnY7HOmzaicZhAa/EtdMIsysIHDQJ6aZsARyIL
 N5EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=75HU3h4OsAx80C+4HKmkW9WgCjMZ+3MuLOv2/tSvsf8=;
 b=YzUQLMxRO3eTKJEjzmJWJbdFutKUel+flilWdh9NFn9z/+5NN/CU3ACl4jbwmb7jOP
 /Os335uhVMpKW+hGWstDAFR6Zez2TNuXdyYtDkHYS9gkJb2TJRMawjW/8YT2l23GbneR
 aT/ndB//DdCxmjv0uGYJ8HFx8thSMi50lAkrri/nthFKxDuwKXUB5vOUd9f4d/czDTyJ
 oCiyvYrh7gXwTXtxrjzhUgYuN8X7ZNwMnBOnZ5f7N8ApwlqvP1MN9VUhMi/3j1Irrs6R
 LEL+mFxVivbDaMzSes141H/dEy3oQebCPMf2NRHrITX/Y14JGG5DVX4Dy0HE34UaJxI3
 6z3g==
X-Gm-Message-State: APjAAAWDFU7ONy5LZqRlBC9pGXhtE0CYfs2lEVhScxdeu/B/3bZT2qvL
 D7g0xXhFnkeqsNoAfsOyNiE=
X-Google-Smtp-Source: APXvYqz2ig4LTc8BeA++POHhfq31FLeFbtUnhNuxJeCOWUwYOUw7UcTLduomkOhdm3P5hDWJB/4mKA==
X-Received: by 2002:a17:902:b489:: with SMTP id
 y9mr17545441plr.70.1557335193074; 
 Wed, 08 May 2019 10:06:33 -0700 (PDT)
Received: from localhost (c-73-222-71-142.hsd1.ca.comcast.net. [73.222.71.142])
 by smtp.gmail.com with ESMTPSA id o10sm26434215pfh.168.2019.05.08.10.06.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 10:06:32 -0700 (PDT)
Date: Wed, 8 May 2019 10:06:29 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Po Liu <po.liu@nxp.com>
Subject: Re: [EXT] Re: [PATCH v1] timer:clock:ptp: add support the dynamic
 posix clock alarm set for ptp
Message-ID: <20190508170629.me5smui6n7n62x2l@localhost>
References: <1557032106-28041-1-git-send-email-Po.Liu@nxp.com>
 <20190507134952.uqqxmhinv75actbh@localhost>
 <VI1PR04MB51359553C796D25765720FCC92320@VI1PR04MB5135.eurprd04.prod.outlook.com>
 <20190508143654.uj7266kcbhf744c3@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508143654.uj7266kcbhf744c3@localhost>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_100634_147986_D5F1CC2E 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On Wed, May 08, 2019 at 07:36:54AM -0700, Richard Cochran wrote:
> No the alarm functionality has been removed.  It will not be coming
> back, unless there are really strong arguments to support it.

Here is some more background:

    commit 3a06c7ac24f9f24ec059cd77c2dbdf7fbfd0aaaf
    Author: Thomas Gleixner <tglx@linutronix.de>
    Date:   Tue May 30 23:15:38 2017 +0200

    posix-clocks: Remove interval timer facility and mmap/fasync callbacks
    
    The only user of this facility is ptp_clock, which does not implement any of
    those functions.
    
    Remove them to prevent accidental users. Especially the interval timer
    interfaces are now more or less impossible to implement because the
    necessary infrastructure has been confined to the core code. Aside of that
    it's really complex to make these callbacks implemented according to spec
    as the alarm timer implementation demonstrates. If at all then a nanosleep
    callback might be a reasonable extension. For now keep just what ptp_clock
    needs.
 
> Here is the result of a study of a prototype alarm method.  It shows
> why the hrtimer method is better.
> 
>    https://sourceforge.net/p/linuxptp/mailman/message/35535965/

That test was with a PCIe card.  With a SoC that has a PHC as a built
in peripheral, the hardware solution might outperform hrtimers.

So you might consider adding clock_nanosleep() for dynamic posix
clocks.  But your code will have to support multiple users at the same
time.

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
