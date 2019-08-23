Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166469B2D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+eLvTv4J+v+VhW8gLEzFWiEnyylXwA6RaDkctzsHQY=; b=GwHXUsSCic8MR0
	FhmM2h/PR+f/7prm7L//M32vKqT0Sm3s3e+7IMptV4LDI9hvdcz8dLHWP2ZWOSCzkDrtkfAAo7ULp
	NarZs6CeVNFjdnagG87e2S+/N63ZbNrnqwRhWJyvKEZJ/3DloBInYYymkbMKflmh4B1TBshH9UcZr
	SAFh8P8Z/K7dhKaNcaMVltH8WE8R4VkkH8vZaub4yQly9clbnxpQF8nI3daCnSufdSky46J/kKZi/
	Sq6WBx+FvT1NDd0c/KzO6oqB+lZ+eDSvGIv9nLV04bbuEQ/vhkvueVgTimJZ2Tm8nbQrUlL3S6f+N
	52eLOxQAWiE1RZL9olBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1B1e-0006K5-KG; Fri, 23 Aug 2019 14:58:50 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1B1R-0006J1-M8
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:58:39 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id B7CB442ECA;
 Fri, 23 Aug 2019 14:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-transfer-encoding:mime-version:user-agent:content-type
 :content-type:organization:references:in-reply-to:date:date:from
 :from:subject:subject:message-id:received:received:received; s=
 mta-01; t=1566572314; x=1568386715; bh=2ywvpDww2A1i+kbuWuDHnXybr
 Ba2cGJLERdeg5sc8R0=; b=lu7OKXSthWV58HC/Hipuf12hDFrQuAuUUj8iMMjHD
 7Ii0aiwZktZCFPATQUBWUKTamtPTy2BlUt7iM+vArJ1PsQUEdCiCZKJzGaXx42/U
 wLOkg63mPxT7odCfSJ7IWL9p1AiVI1/LtFMaNZIBHdNNvfW9WvxDCTSj+fh2G4kn
 n4=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 614TsZo-FET2; Fri, 23 Aug 2019 17:58:34 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 29DF34120B;
 Fri, 23 Aug 2019 17:58:33 +0300 (MSK)
Received: from localhost.localdomain (172.17.15.69) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Fri, 23 Aug 2019 17:58:32 +0300
Message-ID: <8690cbb3e7759f3d8ab2a93db53186bf02fd525a.camel@yadro.com>
Subject: Re: [PATCH v1 3/3] watchdog/aspeed: add support for dual boot
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
To: Guenter Roeck <linux@roeck-us.net>
Date: Fri, 23 Aug 2019 17:58:32 +0300
In-Reply-To: <20190823141930.GA11610@roeck-us.net>
References: <fafd757238e204b2566f216f1d6a4bef4b4906c5.camel@yadro.com>
 <20190823141930.GA11610@roeck-us.net>
Organization: YADRO
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Originating-IP: [172.17.15.69]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_075838_098720_6773A702 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 Alexander Amelkin <a.amelkin@yadro.com>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-08-23 at 07:19 -0700, Guenter Roeck wrote:
> >  
> > +/* access_cs0 shows if cs0 is accessible, hence the reverted bit */
> > +static ssize_t access_cs0_show(struct device *dev,
> > +		struct device_attribute *attr, char *buf)
> > +{
> > +	struct aspeed_wdt *wdt = dev_get_drvdata(dev);
> > +
> 
> Unnecessary empty line.
> 

Ok, will cut.

> > +static ssize_t access_cs0_store(struct device *dev,
> > +			      struct device_attribute *attr,
> > +			      const char *buf, size_t size)
> > +{
> > +	struct aspeed_wdt *wdt = dev_get_drvdata(dev);
> > +	unsigned long val = 0;
> 
> Unnecessary initialization.

So, you're saying 'unsigned long val;' is enough? Will do then.

> 
> So the attribute would only exist if the boot was from the secondary
> flash, and it would exist even if it wasn't needed (ie on ast2500 /
> ast2600)?
Yes, only at secondary flash it will be available.
Also, found out that is for 2600 aspeed completely changed the process of
switch. For 2500 it just swaps chipselects back to make it accordingly as at
first side, on idea it may be helpful.

May be some approach like this will suffice?
if ((of_device_is_compatible(np, "aspeed,ast2400-wdt") or
(of_device_is_compatible(np, "aspeed,ast2500-wdt"))
	wdt->wdd.groups = bswitch_groups;


>  Well, if that is what you want, who am I to argue, but
> you'll have to document it accordingly. When you do so, please also
> document what happens on ast2500 / ast2600 when the attribute exists
> and is written.
> 

Ok, I'll put it in Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
for next patch set.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
