Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF1352596
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TFbAcTPppSNt1BIA1dsaiIUxaDgNxbuINdQ0Utxtbqk=; b=c6y+rUnGco+xTI
	dE+IqNmIaPZiOO2TjpETvYBg1s5IsFmPkAU3W+afZpMz3YUI9kDFkRhwj3shkHJA++Fb74nlrs3Fm
	hFNOapiS36D2VmZkFYc2BQKAui5WCmAYTgChiFwBMoWhjFgdqG1H0yu+gavkXhDuEZbFaK2otle2M
	tLssoS3SrT7CjIGEzKBcD0BjkG3xbps/nqzMeMr9/lCVorvmJlwb2VMngxLIk1BUL80EIowKPsY2k
	8i2/oEU85fe6DW20gyAmEFyNuENfeXw3iePFbUI6gjG5LqKUb9SZltFdWUmkN8pZe5/sz0bSNfgEd
	CUwNM/cCEXeg1tbf4rTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgKB-0002ID-7S; Tue, 25 Jun 2019 07:57:07 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgJM-0001rP-LO; Tue, 25 Jun 2019 07:56:18 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5P7sOWG008130;
 Tue, 25 Jun 2019 07:56:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=5hPNEEOLEhrLonKXVMBQSK5/DYkRHzR0TDxjO5rF1gg=;
 b=yx6SN5D5OpW+U1sSOBLsx/z+kGMd1Jy3WzcGBdZNSUUPIONIFXRKSa5jA/FLZQs8Vsdj
 h2qFp+7RgdPKOYbh9JEstZAxRTYy1oM3iRw3Ay20n3dIWjWkYalYHC7Whq++2YEfSLjz
 J8JS5QTpX+QFjCPBzejqmSJ15glCWGgb47/KAeei9RCFm+odfWJ4kPfaEYY54Vr7BT6N
 UMFOwPx0bkvm5UzKRoKNpodMfrti044WM05JNGTqa5S02Purd36alP0dXOG4EZtbsiME
 4fEw71+2erJS/dQUJXnZtYAXm+D4nC9f2+CI84jeVspfQV/qd6bgVOZM1Q9PHitGPmgJ hQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2t9brt2jv7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 07:56:08 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5P7tXD6007243;
 Tue, 25 Jun 2019 07:56:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2tat7c3a4g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 07:56:07 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5P7u6hM005590;
 Tue, 25 Jun 2019 07:56:06 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 25 Jun 2019 00:56:06 -0700
Date: Tue, 25 Jun 2019 10:55:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
Message-ID: <20190625075558.GY28859@kadam>
References: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906250065
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906250065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005616_895732_AC8467EA 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 12:13:15AM +0200, Stefan Wahren wrote:
> The commit 52c4dfcead49 ("Staging: vc04_services: Cleanup in
> ctrl_set_bitrate()") changed the return behavior of ctrl_set_bitrate().
> This breaks probing of bcm2835-camera:
> 
>     bcm2835-v4l2: mmal_init: failed to set all camera controls: -3
>     Cleanup: Destroy video encoder
>     Cleanup: Destroy image encoder
>     Cleanup: Destroy video render
>     Cleanup: Destroy camera
>     bcm2835-v4l2: bcm2835_mmal_probe: mmal init failed: -3
>     bcm2835-camera: probe of bcm2835-camera failed with error -3
> 
> So restore the old behavior and fix this issue.
> 
> Fixes: 52c4dfcead49 ("Staging: vc04_services: Cleanup in ctrl_set_bitrate()")
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

I feel like this papers over the issue.  It would be better to figure
out why this is failing and fix it properly.  -3 is -ESRCH and when I
grep for ESRCH I only see it used in the ioctl so that can't be it.

I think it must be -MMAL_MSG_STATUS_EINVAL actually, but it comes from
the firmware or something so we can't grep for it.

Can we do some more digging to find out why it's failing or otherwise
we could add a comment.

	/*
	 * FIXME:  port_parameter_set() sometimes fails with
	 * -MMAL_MSG_STATUS_EINVAL and we don't know why so we're
	 * ignoring those errors for now.
	 *
	 */
	return 0;


regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
