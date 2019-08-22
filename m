Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653BE98EFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iwe1yrKSDIlR2UujNz/jJO8LjVjGMHTkYXxJ/dY0qEg=; b=pPGS1jy3C12V5i
	RVPIH8fKyTYPYTPH6uPFXvDcWsI2bGZnwsJJKDg6+7AbsFJv9cRy0k+ymrxwPGkp0DVf+ahCKsvm8
	nnoiYqcwA4znTmdmErdjbEr18zsrMzZ5kX1IsSjjnCb+z1VDgFQMUiT+LuaKgighfVllYQEII2gzz
	JcLfN7KDZUhGAlrf00+3nFcxy0/aYpDFIWv+wZa7A9f0+loXCBkP6shrMaKMu0e+tWjH+spJdFCui
	mb8lS2U3Ss6exv9oHDTEfZsgbV7ZHro6jf9coezUaVll44KLPF9SMaptM/nq8Erf8HCtq0eU1ITc+
	MBDi+nKHqGmgfs43zzSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jC6-0005wn-Bk; Thu, 22 Aug 2019 09:15:46 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jBl-0005vN-3d
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:15:26 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 1EAAA411F9;
 Thu, 22 Aug 2019 09:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-transfer-encoding:mime-version:user-agent:content-type
 :content-type:organization:references:in-reply-to:date:date:from
 :from:subject:subject:message-id:received:received:received; s=
 mta-01; t=1566465322; x=1568279723; bh=xp4rY3o0M1wxzRezMXTNY4/zZ
 Y+MCsy/eXZ7EF9Njsg=; b=Q+bcAN9BSsRThV9GpNDHrHQDoMM1IB3j9QOV2i2sX
 rBBn3ufrgMs7oc2FFll6f/+BoXeUG5KN7w8LxDgEvXgQ1nVAytmlaimve+VXjWpN
 KmozJuWXEWlOsrHz6y0DxBk5hAOmqQYrVHtQCUtAsJ5Cw3excV/RTCIUQKSp9j1d
 FA=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r3TcHeHOiQDd; Thu, 22 Aug 2019 12:15:22 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 4877541240;
 Thu, 22 Aug 2019 12:15:20 +0300 (MSK)
Received: from localhost.localdomain (172.17.15.69) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Thu, 22 Aug 2019 12:15:20 +0300
Message-ID: <a022c0590f0fbf22cc8476b5ef3f1c22746429ac.camel@yadro.com>
Subject: Re: [PATCH 3/3] watchdog/aspeed: add support for dual boot
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
To: Guenter Roeck <linux@roeck-us.net>
Date: Thu, 22 Aug 2019 12:15:20 +0300
In-Reply-To: <20190821163220.GA11547@roeck-us.net>
References: <1f2cd155057e5ab0cdb20a9a11614bbb09bb49ad.camel@yadro.com>
 <20190821163220.GA11547@roeck-us.net>
Organization: YADRO
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Originating-IP: [172.17.15.69]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_021525_527339_602B4DE0 
X-CRM114-Status: GOOD (  16.26  )
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

On Wed, 2019-08-21 at 09:32 -0700, Guenter Roeck wrote:
> 
> > +	writel(WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION,
> > +			wdt->base + WDT_CLEAR_TIMEOUT_STATUS);
> > +	wdt->wdd.bootstatus |= WDIOF_EXTERN1;
> 
> The variable reflects the _boot status_. It should not change after booting.

Okay, then perhaps may we set 'status' handler for watchdog device and check 
'status' file? Right now 'bootstatus' and 'status' are same because there is no
handler for 'status'.

> > +
> > +	return size;
> > +}
> > +static DEVICE_ATTR_WO(access_cs0);
> > +
> > +static struct attribute *bswitch_attrs[] = {
> > +	&dev_attr_access_cs0.attr,
> > +	NULL
> > +};
> > +ATTRIBUTE_GROUPS(bswitch);
> > +
> >  static const struct watchdog_ops aspeed_wdt_ops = {
> >  	.start		= aspeed_wdt_start,
> >  	.stop		= aspeed_wdt_stop,
> > @@ -223,6 +248,9 @@ static int aspeed_wdt_probe(struct platform_device
> > *pdev)
> >  
> >  	wdt->ctrl = WDT_CTRL_1MHZ_CLK;
> >  
> > +	if (of_property_read_bool(np, "aspeed,alt-boot"))
> > +		wdt->wdd.groups = bswitch_groups;
> > +
> Why does this have to be separate to the existing evaluation of
> aspeed,alt-boot, and why does the existing code not work ?
> 
> Also, is it guaranteed that this does not interfer with existing
> support for alt-boot ?

It doesn't, it just provides for ast2400 switch to cs0 at side 1(cs1). Problem
is that only one flash chip(side 1/cs1) is accessible on alternate boot, there
is citation from the documentation in commit body. So if by some reason side 0
is corrupted, need to switch into alternate boot to cs1, do the load from it,
drop that bit to make side 0 accessible and do the flash of first side. On
ast2500/2600 this problem is solved already, in alternate boot there both flash
chips are present. It's additional requirement for alternate boot on ast2400, to
make the possibility to access at all side 0 flash chip after we boot to the
alternate side.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
