Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A08C9965A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmOGAbIlijcNxPi2H3oB76HnH2aSbQz1xTc65DxqO6Q=; b=hfGm43NNHNltrx
	pWYRR3SdpNTKE5NC+7pNLxgDkcPPYri7S/zhomDMbIF7O5lTzfEfkoiua4JMbQW7U+ipGiOzyPk7N
	eSMm8/jLzo3HmlKdHIP1NPLN30C/xLI/8WTXMtC3aYIvDZBH6ABP6IhsV1+u976vtldkSA4ZZVbZZ
	DlB/+UF7xTHJMnpqS9Kp/ecTkORVONIH3pYd+1uLe1As2VT/CU2UB6m6t3xFTcBZwRsXxfN4rPexn
	FoXIot0WqCrj9EXVLGD0siALSNdQNvfk4hUHYztwX7BrUp6OpL4RxJjUZC13uMNZgKhvSIz8mM0rg
	9qZx9uDSzFo8me3JNPHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0o16-00012L-Gp; Thu, 22 Aug 2019 14:24:44 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0o0u-00011e-DJ
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:24:33 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 13D5142ED0;
 Thu, 22 Aug 2019 14:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-transfer-encoding:mime-version:user-agent:content-type
 :content-type:organization:references:in-reply-to:date:date:from
 :from:subject:subject:message-id:received:received:received; s=
 mta-01; t=1566483869; x=1568298270; bh=1bYRqwEu9883JdGs0AKW2xnM1
 tOirxhg2R2RAn574Yw=; b=WrFYMZ73tDcLaxuzNV0YP82ZaIl/Pp8Edk3uPxpMK
 2ELuiFrr+5kF4vHxMbil5kIVphU9p12SI+Orutc0p05tPpvMSIcSo8OVVvFg3lWf
 ZkErBrZrmQRBminqZyhRsaMlBhrLgDK7zshIKKLd3fkL+v6WWQftTyWtM8wWmBq6
 ls=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pu7N4TeU8Is4; Thu, 22 Aug 2019 17:24:29 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 876BC412D3;
 Thu, 22 Aug 2019 17:24:28 +0300 (MSK)
Received: from localhost.localdomain (172.17.15.69) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Thu, 22 Aug 2019 17:24:28 +0300
Message-ID: <550d98a41f8c36effb8147201d6c5fdc762994ea.camel@yadro.com>
Subject: Re: [PATCH 3/3] watchdog/aspeed: add support for dual boot
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
To: Guenter Roeck <linux@roeck-us.net>
Date: Thu, 22 Aug 2019 17:24:27 +0300
In-Reply-To: <20190822135528.GB8144@roeck-us.net>
References: <1f2cd155057e5ab0cdb20a9a11614bbb09bb49ad.camel@yadro.com>
 <20190821163220.GA11547@roeck-us.net>
 <a022c0590f0fbf22cc8476b5ef3f1c22746429ac.camel@yadro.com>
 <20190822135528.GB8144@roeck-us.net>
Organization: YADRO
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Originating-IP: [172.17.15.69]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_072432_648924_B3E3D107 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Alexander Amelkin <a.amelkin@yadro.com>,
 linux-kernel@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 06:55 -0700, Guenter Roeck wrote:
> On Thu, Aug 22, 2019 at 12:15:20PM +0300, Ivan Mikhaylov wrote:
> > On Wed, 2019-08-21 at 09:32 -0700, Guenter Roeck wrote:
> > > > +	writel(WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION,
> > > > +			wdt->base + WDT_CLEAR_TIMEOUT_STATUS);
> > > > +	wdt->wdd.bootstatus |= WDIOF_EXTERN1;
> > > 
> > > The variable reflects the _boot status_. It should not change after
> > > booting.
> > 
> > Okay, then perhaps may we set 'status' handler for watchdog device and
> > check 
> > 'status' file? Right now 'bootstatus' and 'status' are same because there is
> > no
> > handler for 'status'.
> > 
> 
> You would still have to redefine one of the status bits to mean something
> driver specific. You would also still have two different flags to read
> and control cs0 - to read the status, you would read an ioctl (or the
> status sysfs attribute), to write it you would write into access_cs0.
> 
> I guess I must be missing something. What is the problem with using
> access_cs0 for both ?
> 
> Guenter
> 

There is no problem, I'll do that way, thanks!


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
