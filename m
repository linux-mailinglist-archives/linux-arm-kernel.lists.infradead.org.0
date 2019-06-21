Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8EA4EC0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVrukrf5yi/vSq+/Ziaf896VPcojyblcvV1g8xMpbpk=; b=p3N6qM+KY2SYJ9
	1g6M92sD3AgucfM6soHn1XNY7uL442fWb/HSu8amhXYWX8nOPCPooQGASsfU4FgDHdck7hDKhI/eG
	Ihem+B1d+WLXNudx1hdFc/gBNu+NaP3TD5vKiCSHT7uJRWySkaSGEgf8txpI5XrsrPBtSSaAuaOXc
	MOIuelbuo4OuVhm2cOygXpTnOFK5rMeoxYDDzAU+AvgeHrGcyefnbE0k8aEdHs+6RtJc8yI+wBfsv
	nB4/5z46njwybf0LZE02OmG6xC38e9vOEvhCFYCzMOL5AinZ7ByI5J0xTq9c23Ox0LpmJI1ESoBn9
	TqDDiuEgH+kWBDR+TjRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLVK-0007uw-6Z; Fri, 21 Jun 2019 15:31:06 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLV6-0007qh-89
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:30:54 +0000
Received: by mail-io1-xd42.google.com with SMTP id n5so1535037ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 08:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5reo/FkJCaKI88wBWCxoesXIuZwpRrc8d2tKWW2mi5c=;
 b=YhuK6sjqPyXFx/Ebd+GMh7HjafYBAAQhWBu6owT0jG18jvfdc6+Cb+MlBrCIUXZcCP
 d2DYGju1vle080TYHQ6KgY86eXOZ+Wpek4naIMX9caRtVcrMXjIQC7v7JA7WSfopebnH
 y1D/jvqyX0OoxZBo2snUMlpM05TnY3zPXbz03xI1XquQ/mq9UGg+sk6s3zn7Vpkr4yYZ
 5ox2Fs/cY+OAlrcM2HZRHUkMYkwAXKakOzKiKajFQKNUGZ9oW/kRRCrIYwLO+wShhWFH
 OnN+eASLttD0I1mUtFTfq9eQR7bbHotluh9wPGt73BLxudD5WF7UxqCLdCR6xCkKC9rN
 KNNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5reo/FkJCaKI88wBWCxoesXIuZwpRrc8d2tKWW2mi5c=;
 b=j3bERYdE7/td3N5hVXb/S6yGMPPs1OBKTj4bpenMZ8odPU6jAWBFd/I36WRSVe8Sv1
 S0IgoMVRDavs9xZbOdtW6aRBbbH2vvZ4PmHuuMVr1XuG57pnWgeogp6eBfPtmg70jzfX
 dyYzv70f1kHnnndxNAPS9OYI2P8OHv/ZcLmNMcXpBWJs0a1HmDsM7qcOc3MmYoTkWhOd
 woCoMCTLIA1nSkK+PSZuPQ4pG1B/6r34dqIx1i17ubYtnWaeF47qkfkbKY+fwSopmsiX
 m3SaArldZVWUEzJsTRVQZaMseGVjA0Ldo5jbg0qt7gavgmLj8MnJ0+Vt67kzIz8JAGGg
 lJag==
X-Gm-Message-State: APjAAAXTxymTk0zcidwBjN8waoMCH3IfK9+YGZC37I27FYl2u3MjuBbU
 oMeblvcsq2FLacq6RUeV25R1/vuY85BFuiHKmAFuSQ==
X-Google-Smtp-Source: APXvYqxVDJX8HVwnOpENwzV/YzfbtXX3QgTs5BGSLpX43DBCKgzA0dYaayJPC3qP2Ig2SieYCMOK5HfO/ccrtOhCxMI=
X-Received: by 2002:a02:2a0f:: with SMTP id w15mr26638978jaw.52.1561131050191; 
 Fri, 21 Jun 2019 08:30:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
 <20190620154154.GB25273@e107155-lin>
 <CANLsYkxSBuqKJZQLqR238TGe1p5y7QPyLHSZTAOF++=uzGUJjg@mail.gmail.com>
 <20190620163426.GC25273@e107155-lin>
 <CANLsYkymTnxRX61StUGvKGeiQV6P6YbCg81PSYeBpXLsX5tpiw@mail.gmail.com>
 <20190620165427.GH20984@e119886-lin.cambridge.arm.com>
 <9adb65af-a898-462b-ecbc-af972d9331a6@arm.com>
 <CANLsYkzdyMczBHfRJtVxR90kMCJW-aHVEFZ0EVUN657g0PV=Rg@mail.gmail.com>
 <20190621092948.GJ20984@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190621092948.GJ20984@e119886-lin.cambridge.arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 21 Jun 2019 09:30:39 -0600
Message-ID: <CANLsYkygS1QzRr_ef783ZCTLn0QL1CV=EGoMhDtK=Nyn9BUy6g@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083052_362398_71A6C29C 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Al Grant <Al.Grant@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Sudeep Holla <Sudeep.Holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Jun 2019 at 03:29, Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Thu, Jun 20, 2019 at 11:10:26AM -0600, Mathieu Poirier wrote:
> > On Thu, 20 Jun 2019 at 11:00, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> > >
> > >
> > >
> > > On 20/06/2019 17:54, Andrew Murray wrote:
> > > > On Thu, Jun 20, 2019 at 10:47:38AM -0600, Mathieu Poirier wrote:
> > > >> On Thu, 20 Jun 2019 at 10:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >>>
> > > >>> On Thu, Jun 20, 2019 at 10:14:04AM -0600, Mathieu Poirier wrote:
> > > >>>> On Thu, 20 Jun 2019 at 09:41, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > ...
> > >
> > > >> Then all we have to do is make the ACPI/DT property that indicate the
> > > >> method used to deal with tracer idling mandatory.  That way people are
> > > >> conscious of the choice they are making.  To be backward compatible
> > > >> with current systems we default to the TRCPDCR.PU method but print a
> > > >> warning message, just like we do for obsolete DT bindings.
> > > >
> > > > I'll respin the series based on this approach. I'll also flip the
> > > > 'disable_pm_save' module option to 'enable_pm_save' - thus allowing any
> > > > one to use software save/restore if they wish.
> > >
> > > If you are going to add a firmware property, please get a consensus on the
> > > name here, before respinning to avoid another churn :-). How about one of :
> > >
> > > "arm,coresight-etm-looses-state"
> > > "arm,coresight-etm-needs-save-restore"
> >
> > "arm,coresight-needs-save-restore"
> >
> > That way we can also use it for CTI.
>
> I have no objections with "arm,coresight-needs-save-restore", however in
> trying to come up with a name that describes the hardware rather than
> something software needs to do, I came up with:
>
>  "arm,coresight-broken-pu"
>  "arm,coresight-no-pu"
>  "arm,coresight-pu-ignored"
>
> Are any of these prefered?

None of the above because 1) the case we are dealing with as been
inaccurately labeled as "broken" and 2) anything referring to "pu" is
exclusively related to ETMs.

>
> Thanks,
>
> Andrew Murray
>
> >
> > >
> > > or something better long the line.
> > >
> > > Cheers
> > > Suzuki
> > >
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
