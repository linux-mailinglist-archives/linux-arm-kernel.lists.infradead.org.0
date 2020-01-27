Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB52E14A37E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 13:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmlLV3r5Qxmf2J7bmI+6T/oWEcqyhCfsgY35RSPgSIY=; b=OonisCOKxYQd82
	rQ6DKMAe7RF88NR4Ilay3qdy4/TSCAEZfwJVBVYmruF0A7QV5fLkGPcMeAuYT4UWjLZw4Ms6vRPEk
	paPQQnvtasVdNRH3KFHeGL3BgAzAxgOzGjEtE7zvGLuZ4FtSEVDhGax92aMZcgx0wjD+HvfK9TVP/
	nrUEYyI1lcHWRGy7cKkXC++8ih2GZIm1BBawbE1tdLYmKHOPYoWxNg/M8Ns+Wb1q8sKvvmh/fUs7w
	K2RJ0+Aoas8/uXD0zELFUX1gzYoXdHZSpg0zYP9g3pxa8NURAlIcANrWaE3CtCrepfKThrZV4KcMZ
	FwpwEtuUsWINa0XRoixQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw3AD-00050Y-3N; Mon, 27 Jan 2020 12:06:45 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3A4-00050B-1W
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 12:06:37 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00RBwWka035440;
 Mon, 27 Jan 2020 12:06:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=aCpiRvcuT1SWusCh3YSBSKuWGL7xUj4sNNEyF3C+GSc=;
 b=dQW1ulFpPNxI1R48GdMIaGJz6BAQRc71iwu4zWxezUnY6OsrBJuxWxNnZQW0KejlXfkg
 ucwB3oon3CYcBcd9ML8VbSfHDSZwe643lqZh3nYYzKmUqy0rTHhiCdOUWZ1Q6q8v721z
 lntBkuupp0ajIMZ/ws6rU89g0CiwQokRaSwpIDp5ZZIM6q1QSZj4tUuPHIEQCCTTgG5/
 5OhKxQ/CTd6WxsugkdJyQghKRdUGlTI/rwoc6VM9uKS/kHOtwmT+sIuSzvu2t1UNiCJh
 BWAdNo7m9f8f5O3qL8rPXm5GBdabd32crjNib/v/cqHjjHtQRl13WJ+zN3mtK/8qArCN 2g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2xrd3txxck-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 12:06:27 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00RBwIqV098559;
 Mon, 27 Jan 2020 12:06:27 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2xry4u7p22-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 12:06:26 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00RC6Pmt000832;
 Mon, 27 Jan 2020 12:06:25 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Jan 2020 04:06:24 -0800
Date: Mon, 27 Jan 2020 15:05:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH][next][V2] i2c: xiic: fix indentation issue
Message-ID: <20200127120535.GC1847@kadam>
References: <20200127102303.44133-1-colin.king@canonical.com>
 <2dd84ab2-a7a3-fdd8-6bd6-07f1b3d5cd00@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2dd84ab2-a7a3-fdd8-6bd6-07f1b3d5cd00@xilinx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001270103
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001270103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_040636_219322_C9FDF400 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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
Cc: Colin King <colin.king@canonical.com>, kernel-janitors@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 12:03:02PM +0100, Michal Simek wrote:
> On 27. 01. 20 11:23, Colin King wrote:
> > From: Colin Ian King <colin.king@canonical.com>
> > 
> > There is a statement that is indented one level too deeply, remove
> > the extraneous tab.
> > 
> > Signed-off-by: Colin Ian King <colin.king@canonical.com>
> > ---
> > V2: fix type in commit message
> > ---
> >  drivers/i2c/busses/i2c-xiic.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
> > index b17d30c9ab40..90c1c362394d 100644
> > --- a/drivers/i2c/busses/i2c-xiic.c
> > +++ b/drivers/i2c/busses/i2c-xiic.c
> > @@ -261,7 +261,7 @@ static int xiic_clear_rx_fifo(struct xiic_i2c *i2c)
> >  		xiic_getreg8(i2c, XIIC_DRR_REG_OFFSET);
> >  		if (time_after(jiffies, timeout)) {
> >  			dev_err(i2c->dev, "Failed to clear rx fifo\n");
> > -				return -ETIMEDOUT;
> > +			return -ETIMEDOUT;
> >  		}
> >  	}
> >  
> > 
> 
> As was suggested by Peter you should also add Fixes: <sha1> ("patch
> subject")
> 

It's not really a bugfix, it's just a cleanup.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
