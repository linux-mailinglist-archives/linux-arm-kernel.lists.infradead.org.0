Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9548EBCA75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 16:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51VtGkAJKjWjRXT417cdrH+nb/0QZG91lzr3UNOpMNo=; b=mj2C1Wb3aOrpoZ
	p8+dsFxgeT/gxFF2TGQvCXUWkD7hN5WhXRVqkrZxIR8VLa2ofCUESCigxraOHiR7tsQlTdqwsURn0
	ZqNLQUZH1mWoPc/e2XgjWaKvnz3f0bCiMHHAnrt5pdVPRN0707V3Qr3nS8YF0rnAa49ZS6LXLWu+D
	L2cchNtE6YWwP991+oCxsFMyqDSWtvcCYUP44TblvIr1R6M1tXy3rU/yQWXVEdwwUz5VHnCEXnFU5
	H+kylVKR9Md9jfFbSWdBuzoN+Wt1h21nqtvpSe26HxHwCHQyImcHVMjELYHnaDVK9QhjcE0SY1QU0
	weOZzlX2hpRhg699QNZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCm2d-00061Q-QZ; Tue, 24 Sep 2019 14:43:48 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCm2H-00060h-9E
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 14:43:26 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
 by mx0b-001ae601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8OET12f022472; Tue, 24 Sep 2019 09:43:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=M+iR1mD79pPbPZbf104VCjun/XmmKkExdoMry0cB9X0=;
 b=Cxj5atKIHUWS+ImvdUchCqd26uIFjh98e4qKxbzV94aeFiYzeA1V66dubVusGhxOeSeT
 RICSqUPXW6EIX2aDhJiUPm9ggjkBquz3OZ7mWCr99J5fqpXn9QVTYI53lTxHjk1AVLeP
 af1qPrgkEs9ahGHwQ/0pC7kRXrfcNLpkEPGCGlK06Lr0fRvzLm0KDa6H1k2ckom+mXTO
 JirifPjqHZrkOWsZDPF7n3ebpKAnW+xvaS0ZpXXQdheaiikjUotRYrYbopzq+/k/W12W
 PtFdX+QyHCnEf1ksBTGyDLTbArfeiAbyLGNFB2RAjYnYu/JOMhWOndmIhU8FMy6U7ci/ fg== 
Authentication-Results: ppops.net;
 spf=fail smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from ediex01.ad.cirrus.com ([87.246.76.36])
 by mx0b-001ae601.pphosted.com with ESMTP id 2v5g9pn9e5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Tue, 24 Sep 2019 09:43:03 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Tue, 24 Sep
 2019 15:42:59 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via
 Frontend Transport; Tue, 24 Sep 2019 15:42:59 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 614792C1;
 Tue, 24 Sep 2019 14:42:59 +0000 (UTC)
Date: Tue, 24 Sep 2019 14:42:59 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [alsa-devel] Propagating audio properties along the audio path
Message-ID: <20190924144259.GR10204@ediswmail.ad.cirrus.com>
References: <f7861989-8a2d-ed89-8f1f-68bad7013a34@free.fr>
 <d67b68b9-49c0-6f78-4649-27b3b437a65f@free.fr>
 <878168cb-07e0-cdfd-37e9-9b9fb229155b@free.fr>
 <20190924135219.GQ10204@ediswmail.ad.cirrus.com>
 <0a1bd89e-c6b7-d9ce-dac2-fa324e42b31d@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a1bd89e-c6b7-d9ce-dac2-fa324e42b31d@free.fr>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-SPF-Result: fail
X-Proofpoint-SPF-Record: v=spf1 include:spf-001ae601.pphosted.com
 include:spf.protection.outlook.com -all
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 mlxlogscore=999
 phishscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1909240143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_074325_450735_CDDC25FB 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.152.168 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>,
 Takashi Iwai <tiwai@suse.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Liam Girdwood <lgirdwood@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 04:26:20PM +0200, Marc Gonzalez wrote:
> On 24/09/2019 15:52, Charles Keepax wrote:
> 
> > In general the ALSA framework doesn't really allow for stream
> > params to change whilst the stream is active. Doing so is
> > also normally very hard for the types of hardware usually
> > involved. For example changing the clocks on a running I2S bus,
> > very difficult to get both ends to pick up those changes at
> > exactly the correct sample. Some newer buses like soundwire
> > have more support for things like this were the ends of the
> > link can synchronise changes but even there that is normally
> > used for adding/removing streams from the bus, not reconfiguring
> > a running stream.
> 
> This jives with what "filt3r" wrote on #alsa-soc
> 
> "at one point we were just closing the stream (somehow) if we detected
> a change in e.g. sample-rate, so the user-space application would fail
> on snd_pcm_readi()"
> 
> 	snd_pcm_stop(p_spdif->capture_stream, SNDRV_PCM_STATE_DISCONNECTED);
> 

Ah ok yeah that seems like a pretty good option to me thus
forcing user-space to re-open at the new params.

> > In your case above I would imagine the system would probably be
> > setup where the DSP handles the conversion between the params
> > requested from the receiver and those requested by user-space.
> > One of the intentions of DPCM was to allow the backend
> > (DSP-receiver here) to have different params to the frontend
> > (DSP-userspace here). Although as you note you still probably
> > need to add something to propagate those changes to the DSP. What
> > form does the physical link between the receiver and the DSP
> > take?
> 
> The setup looks like this:
> 
> A = Some kind of audio source, typically a TV or game console
> B = The arm64 SoC, equipped with some nice speakers
> 
>    HDMI
> A ------> B
> 
> If we look inside B, we actually have
> B1 = an eARC receiver (input = HDMI, output = I2S)
> B2 = an audio DSP (input = I2S, output = speakers)
> 
>     I2S        ?
> B1 -----> B2 -----> speakers
> 
> To answer your question, B1 and B2 are connected via I2S.
> 

As yeah reconfiguring the I2S whilst it is running would be a
terrifying prospect.

Thanks,
Charles

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
