Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864CE18C2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 16:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekCGqnm0wJuEV1UUsV4hoB/yELH39FDvtX9TOkkK/ro=; b=kITfgo+7MG4jZy
	YAeJsfd4XfbNcv+/JdAO/til1G9YZak8ScfsZ8/k0pyPm2Ysj+W0ZdgLBliG/PI2z8VBNUMgy3Pvk
	FkG+AzUoAtxhwG2hMyvRTu7YfUBsl7+80h6PD7Z70TvpcdB0Ubyi02Tkr+d3hv2B9jl8mb0u34V/c
	igBHtL40LDdanlQtDsFNguNf2FFOT71LBPLoNUJyOtCeNmEQyAoT2EV/AJjNG+tNJt9vycYJARb2Z
	DurMIKQxI3w6OWGjYNr8wo0pTmMlO8KTe9x0q4w4MfWRoGp1w41Mqb3Gcf8bxVWpoZJaNaLUaBg1X
	WhMG0h35ll9m4+B09WGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkFS-0004Gp-1L; Thu, 09 May 2019 14:42:14 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkFK-0004GK-SV; Thu, 09 May 2019 14:42:08 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x49Ecgl2195698;
 Thu, 9 May 2019 14:41:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=oHoNVXLo0KzT+7QLoewEj851rlFBBW83cdM6UjKZD+g=;
 b=mbz+1Y7XpMyQTGne7eS0tih1rqkEUTZzPfvvlBd6L++B1mQxKsKZH1P7QTYieGTumTXQ
 T/FKWwk2x2LURAt8NJHuB0ZDK2sJi3FGhLCTpyul5szJzqC4wELPfzm9hDFaWIFbtMRo
 9iWqVKDEiI4fgQTKSETOT6NxM0tKXr0ooDahNMqeaNvfVqMFI9ZScXO4OSt3mN/h60Iq
 YGaZ0/N36rBEI9u8mttIxGWRz9UCuhvcLJQT+1Yc9wj2zjIxQBqC7udYnRed2lPMRAoa
 gXT1QkBhw2yIfW+OXruYoB7tD20L1syoM7/oBNim31KOzg/Uqpjh+bPuy7UQ7ffxaB1I 5w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2s94bgbb4a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 May 2019 14:41:50 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x49EdwvR035003;
 Thu, 9 May 2019 14:41:50 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2sagyv9fgp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 May 2019 14:41:50 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x49EffaY010615;
 Thu, 9 May 2019 14:41:41 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 09 May 2019 07:41:40 -0700
Date: Thu, 9 May 2019 17:41:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3 4/4] staging: vchiq: stop explicitly comparing with
 zero to catch errors
Message-ID: <20190509144132.GF21059@kadam>
References: <20190509143137.31254-1-nsaenzjulienne@suse.de>
 <20190509143137.31254-5-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509143137.31254-5-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9251
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905090086
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9251
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905090086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_074207_057703_24426536 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devel@driverdev.osuosl.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 04:31:36PM +0200, Nicolas Saenz Julienne wrote:
> The vchiq code tends to follow a coding pattern that's not accepted as
> per the Linux kernel coding style
> 
> We have this:
> 	if (expression != 0)
> 
> We want this:
> 	if (expression)
> 
> We make an exception if the expression refers to a size, in which case
> it's accepted for the sake of clarity.

It's not really Linux kernel style, it's just my style...  I wouldn't
have complained if the original code were consistent one way or the
other.  But since I was encouraging you to pick a style and use it
consistently, then I'm always going to advocate my style...  :P

Anyway, thanks!  Looks good to me.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
