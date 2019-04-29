Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D11E5BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 17:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UC/wSOpq+CKfy1aONa3LJU5SBuEuU+IhRLleNV6NLsU=; b=aFokKFPwBoSAmz
	O27PKDH5pOJd2I/iDaokcuScei99q34s1QQO8KGKgu+WG78WxdcH+JXgISKdNLq3VHVvLq7I/BZyt
	CjZbUuftutk8fllm/0CUKeHlDXn0W91VCqABbVrTxRt4Mis7rcPRWPlAUTqVEtcYGKfdp2fG6dsdV
	LsxmlMJrJqHwaLw5Sk8p/mU3GqvEwjYHR2+iFBpMuILCrD8P444nJu6PGTSWKi0Cz4w5kHqlF82iD
	jTbaom9OZbSzexgpOaBT8x0t4QoPb7yO8bm3FaQ98ecXbZsE5vB0LlqDZm6H6ANkCZ3rqFYOe4fu7
	p9O8Zp1k3YCxkYB1o0VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7pU-0006D8-Ot; Mon, 29 Apr 2019 15:04:28 +0000
Received: from p3plmtsmtp01.prod.phx3.secureserver.net ([184.168.131.12])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7pK-00066x-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 15:04:20 +0000
Received: from n16.mail01.mtsvc.net ([216.70.64.51]) by :MT-SMTP: with ESMTP
 id L7omhRTvD43EUL7omhpIFr; Mon, 29 Apr 2019 08:03:44 -0700
X-SID: L7omhRTvD43EU
Received: from cpe-71-75-202-74.carolina.res.rr.com ([71.75.202.74]:55879
 helo=SBGCLTOFFICE)
 by n16.mail01.mtsvc.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.90_1) (envelope-from <tkrantz@stahurabrenner.com>)
 id 1hL7oc-0001vo-Pf; Mon, 29 Apr 2019 11:03:44 -0400
From: "Timothy Krantz" <tkrantz@stahurabrenner.com>
To: "'Miquel Raynal'" <miquel.raynal@bootlin.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>
 <20190429095727.48de0b7c@xps13>
In-Reply-To: <20190429095727.48de0b7c@xps13>
Subject: RE: espressobin device tree with kernel 5.1 RC
Date: Mon, 29 Apr 2019 11:03:33 -0400
Message-ID: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABFrsjXmIg1Q6VJqGysUaK8AQAAAAA=@stahurabrenner.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHHHNahTQSMuKl1SiqoWXgyzEZ1/QHhLXjKpl/1MnA=
Content-Language: en-us
X-Authenticated-User: 902853 tkrantz@stahurabrenner.com
X-MT-ID: C1A731F58FEDE20B47E8EFF5D29156B2BFE18A53
X-CMAE-Envelope: MS4wfMXNw4NOxMMzBVG+bw4aumBGFwRPecQqjLGLc5S0+8BQmRjPKVFKIYowg+OlQ9POQzdtLzkJQpW4ehm1aEiLg5ngs+OBzyJLbpHk1gyLJesT8r0piscY
 /4uUWfsvc51ORTCL05DOPLT6cb4+wmlRAmhfiE1Csw1tTSICRXSMgxhol/ThHCpy3eyLO9naDwLIpKCMbCJIVPqpNAmb75CyOKvVJ2lY35VhedoFXGWDYd7E
 sLno47oU+10u+/3BKbYazg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_080418_290186_21E39CE5 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [184.168.131.12 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Miquel thanks for the response.

> -----Original Message-----
> From: Miquel Raynal [mailto:miquel.raynal@bootlin.com]
> Sent: Monday, April 29, 2019 3:57 AM
> To: Timothy Krantz <tkrantz@stahurabrenner.com>; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: espressobin device tree with kernel 5.1 RC
> 
> Hi Timothy,
> 
> "Timothy Krantz" <tkrantz@stahurabrenner.com> wrote on Mon, 22 Apr
> 2019
> 15:07:12 -0400:
> 
> > Hi,
> > Please excuse my emailing you directly.  I do not know the proper
> > channels to report my problem.
> >
> 
> For this kind of question I think adding the Linux ARM Kernel Mailing List
> (LAKML) is the right thing to do.

Got it, thanks for the information.

> 
> > I build my own kernels for my 3 espressobins.  Up through kernel 5.0
> > things work fine.
> >
> > In the 5.1 RC kernels I have been unable to boot using the 5.1 RC
> > device tree.  I get :
> >
> > ahci-mvebu d00e0000.sata: couldn't get PHY in node sata: -517
> >
> > then the boot fails waiting for the rootfs on my sata device.
> >
> > If I use a kernel 5.0 device tree with a 5.1 RC kernel it boots fine.
> >
> > I am glad to test anything if that would help.
> 
> Do you have PHY_MVEBU_A3700_COMPHY enabled?

I had it compiled as a modules but am not using an initrd, so I compiled it into the kernel itself (i.e.  not as a modules)
But I still fail to boot.  I do not get the trace above but I just hang at "Waiting for root device /dev/sda2...".
Replacing the 5.1-rc7 device tree with a 5.0 device tree boots fine.

Thanks,
Tim Krantz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
