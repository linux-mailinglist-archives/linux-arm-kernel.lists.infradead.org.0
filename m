Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD15D163BC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 05:03:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWUKP3+nr/FrD9CYMTCA2jGeqJlNfTaPEFZu0ip73ZE=; b=aa3UN5VHgINqCr
	GlxvcrilqfpsFxNUHk4rizDWIsWMUrT3z9z2jAtSiEj+/J/eWz8fn8uO6UKLIEAKERa2l3izTyQpV
	a/q/06rLHKKGYUdAzb2BnmDxWXWAQqKil7CsvLj7Wh6x8MAR1nT+vNepeLzbsYLIope6pb/wGj4Op
	uWryIwr8jBUqnXSFdS/SKY+3zRcyo7RKw0Cal7JC3rGJI8mXIwCsSF7hNACOyCgwoUYUHvzzSgKEE
	wmaxzzVywaQqBptV03/Brx2yF0TcqAb+5nhj0RJSz9luRAoxalFJrV5eE05RKpPDAV2aWy9TNrDxq
	yyjjDsinl4Jh5La91HSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4GaI-0007Fa-01; Wed, 19 Feb 2020 04:03:38 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4GaA-0007EB-Mp; Wed, 19 Feb 2020 04:03:32 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01J43Dro116100;
 Wed, 19 Feb 2020 04:03:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=4a082+unim5sSZcSwTAMdgcw2O0kQMVZyf+PWBOP5+Y=;
 b=ptZwoVIxZwWZK+1uDUkiLEiSYuN7xdBgP2DccB4ZIFHLsQbSYushQ7mdFkhOB3djz5hv
 FMtNsv7JvbGEp9MC0Vt6ojqdpR3Da9DvbnURgb3+aFHh9Tjm3z39YSfLKh9EM26ycF7w
 +fu50BAmCNgOV9xzbHPGsw/AczaaagTUKKSdCE2MS31hs9Y3bvFT2GlzOFdsYQ4K7lQy
 d7RtSiwn44l44MC6QNKlQdHUC+J06bqGfEfnvkgyyEZhE0JisC6WbADmxLxIbGuWZkrs
 tO0DHDmPQ63JPhXyLP782udUWehrHHlZ+dqrnDpFA4ASBTEvPk53rTxZBAl6fiOtUG/t 5Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2y8udd0d6c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2020 04:03:13 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01J42KAJ075792;
 Wed, 19 Feb 2020 04:03:12 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2y8ud9njdy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2020 04:03:12 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01J42tKC019491;
 Wed, 19 Feb 2020 04:02:55 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 Feb 2020 20:02:55 -0800
Date: Wed, 19 Feb 2020 07:02:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH] staging: bcm2835-camera: call function instead of macro
Message-ID: <20200219040244.GI7838@kadam>
References: <20200218160727.GA17010@kaaira-HP-Pavilion-Notebook>
 <20200218183711.GE19641@kadam>
 <20200218191747.GA12782@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218191747.GA12782@kaaira-HP-Pavilion-Notebook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9535
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 suspectscore=9 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002190028
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9535
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 impostorscore=0
 mlxlogscore=999 malwarescore=0 mlxscore=0 suspectscore=9
 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002190028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_200330_832885_0C4319B1 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 12:47:47AM +0530, Kaaira Gupta wrote:
> On Tue, Feb 18, 2020 at 09:37:11PM +0300, Dan Carpenter wrote:
> > On Tue, Feb 18, 2020 at 09:37:28PM +0530, Kaaira Gupta wrote:
> > > Fix checkpatch.pl warning of 'macro argument reuse' in bcm2835-camera.h
> > > by removing the macro and calling the function, written in macro in
> > > bcm2835-camera.h, directly in bcm2835-camera.c
> > > 
> > > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > > ---
> > >  .../bcm2835-camera/bcm2835-camera.c           | 28 +++++++++++++++----
> > >  .../bcm2835-camera/bcm2835-camera.h           | 10 -------
> > >  2 files changed, 22 insertions(+), 16 deletions(-)
> > > 
> > > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > index 1ef31a984741..19b3ba80d0e7 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > @@ -919,9 +919,17 @@ static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
> > >  	else
> > >  		f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
> > >  	f->fmt.pix.priv = 0;
> > > -
> > > -	v4l2_dump_pix_format(1, bcm2835_v4l2_debug, &dev->v4l2_dev, &f->fmt.pix,
> > > -			     __func__);
> > > +	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
> > > +		 "%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n",
> > > +		  __func__,
> > > +		 (&f->fmt.pix)->width,
> > > +		 (&f->fmt.pix)->height,
> > > +		 (&f->fmt.pix)->field,
> > > +		 (&f->fmt.pix)->pixelformat,
> > > +		 (&f->fmt.pix)->bytesperline,
> > > +		 (&f->fmt.pix)->sizeimage,
> > > +		 (&f->fmt.pix)->colorspace,
> > > +		 (&f->fmt.pix)->priv);
> > 
> > This is not as nice to look at as the original.  Just ignore the
> > warning.
> > 
> > regards,
> > dan carpenter
> >
> So, is this warning to be ignored from everywhere in every driver, as it
> doesn't look good? And if yes, then why is it there in the first place?

Obviously the reason for the warning is a good idea.  Do a google
search for the dangers of c macros if you don't understand.

But at the same time uniformity and clean code is nice so it's a matter
of setting priorities.  Checkpatch is just a Perl script and not the
King of The World.  We can ignore it if we want to.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
