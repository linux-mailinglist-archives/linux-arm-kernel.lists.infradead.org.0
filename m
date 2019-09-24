Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DCDBC930
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 15:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+2fm679vFpU6kFFSIapNvzBQnvdYi2kPWDJ/ctTM0w=; b=YeKT8151s+n+sm
	1t1z/I9hTSxSks7cEXSlBPjWkJCWylBD+NFA4mkK7Peq6dZ47/5xiTl4gx+LkLm9RkeNQ8m4agmcD
	JKDb84GYw15KB5ql+rh5ecpZi8cTAsvknJ1CEF3U7CzA2JUQo2LXUCs6Nq/IUR3s9SlpwU3SAROZr
	qN0keH2Cer92Z5thrsrISOrnNqYOJbVz3qL2RaMDdmMrLVusghQRY0sBt13RtsQg69TYz8QTP3e1x
	/3IJhWxQgFoH4C5yNl5cv1ZaGnJ9p4anopP4MtcuUIZHZRchRoCUetcfc/bTTb/bWiTQ7rvMdt8Wv
	mSh3asAZOFFBuKYdbcjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iClFA-0002tA-9h; Tue, 24 Sep 2019 13:52:40 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]
 helo=mx0b-001ae601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iClEz-0002sp-I0
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 13:52:31 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
 by mx0a-001ae601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8ODYJKo001987; Tue, 24 Sep 2019 08:52:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=3CEdDXJdXhrulpp/9+go2cPzB7WyclrQQOwaa8x/toM=;
 b=pg5hU4PQIR/j8mrOl+auWdemTt4WFqsJqxF66hZg3ppLBM1evP2wNcFqTUWpzQPSy8JI
 /j9LmAMEhysEQM38dBxtIIpR8/ZHy6XsqBFPyvBVuO7h8BT7pHXfCaQshvlrD3t8Reev
 jiW37/e5HURhodIodgQkH3ecYxXDOxzrIig9Pj1djD3R2UAQuSqDqxf+6f9MVK5rYxQL
 zieJ2rpqlFTJGEHSNQFH+a2HEOncBtnyid8u4StDEHyZhrNHJPujmMsH7I00yBGXTWQq
 cYbefIQKjtgMphBy6KugzmN8CTCbzK3tvlk/bpdV6EpZgTHqoVTWPKQrHkavlR687/20 tg== 
Authentication-Results: ppops.net;
 spf=fail smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from ediex02.ad.cirrus.com ([87.246.76.36])
 by mx0a-001ae601.pphosted.com with ESMTP id 2v5h925cdr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Tue, 24 Sep 2019 08:52:21 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Tue, 24 Sep
 2019 14:52:20 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via
 Frontend Transport; Tue, 24 Sep 2019 14:52:20 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id DAF772B3;
 Tue, 24 Sep 2019 13:52:19 +0000 (UTC)
Date: Tue, 24 Sep 2019 13:52:19 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [alsa-devel] Propagating audio properties along the audio path
Message-ID: <20190924135219.GQ10204@ediswmail.ad.cirrus.com>
References: <f7861989-8a2d-ed89-8f1f-68bad7013a34@free.fr>
 <d67b68b9-49c0-6f78-4649-27b3b437a65f@free.fr>
 <878168cb-07e0-cdfd-37e9-9b9fb229155b@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878168cb-07e0-cdfd-37e9-9b9fb229155b@free.fr>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-SPF-Result: fail
X-Proofpoint-SPF-Record: v=spf1 include:spf-001ae601.pphosted.com
 include:spf.protection.outlook.com -all
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 priorityscore=1501
 adultscore=0 mlxlogscore=999 bulkscore=0 phishscore=0 clxscore=1011
 impostorscore=0 spamscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1909240136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_065229_738744_069429DD 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.149.25 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, Takashi Iwai <tiwai@suse.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 12:47:33PM +0200, Marc Gonzalez wrote:
> On 20/09/2019 11:50, Marc Gonzalez wrote:
> 
> > One more concern popped up: if the audio stream changes mid-capture
> > (for example, a different TV program uses different audio settings),
> > then I would detect this in the eARC receiver, but it's not clear
> > (to me) how to propagate the info to the DSP...
> > 
> > I'm not even sure when the HW params actually get applied...
> > Is it for SNDRV_PCM_IOCTL_PREPARE? SNDRV_PCM_IOCTL_START?
> 
> I enabled debug logs in the sound layer:
> echo "file sound/* +fpm" > /sys/kernel/debug/dynamic_debug/control
> 
> and sprinkled dump_stack() in several driver callbacks.
> 
> When I run 'tinycap /tmp/earc.wav -t 10 -r 44100 -b 32'
> I see the open/SyS_openat call and the capture ioctl call
> which together generate calls to
> 1) dpcm_fe_dai_open
> 2) dpcm_fe_dai_hw_params
> 3) dpcm_fe_dai_prepare
> 4) dpcm_fe_dai_trigger
> 
> But everything looks "synchronous", as in "reaction to user-space commands".
> I don't see how "asynchronous" events are dealt with, such as the stream
> params changing while a capture is active?
> 

In general the ALSA framework doesn't really allow for stream
params to change whilst the stream is active. Doing so is
also normally very hard for the types of hardware usually
involved. For example changing the clocks on a running I2S bus,
very difficult to get both ends to pick up those changes at
exactly the correct sample. Some newer buses like soundwire
have more support for things like this were the ends of the
link can synchronise changes but even there that is normally
used for adding/removing streams from the bus, not reconfiguring
a running stream.

In your case above I would imagine the system would probably be
setup where the DSP handles the conversion between the params
requested from the receiver and those requested by user-space.
One of the intentions of DPCM was to allow the backend
(DSP-receiver here) to have different params to the frontend
(DSP-userspace here). Although as you note you still probably
need to add something to propogate those changes to the DSP. What
form does the physical link between the receiver and the DSP
take?

Thanks,
Charles

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
