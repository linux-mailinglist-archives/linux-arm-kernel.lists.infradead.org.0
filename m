Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D18595CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 10:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHNJAXBrSa6Ns3s7t5kCMN017pta1QwZzoJj1k88a6I=; b=GWCesBLeIJbtSA
	UFa75V6asT6P173P/P1X63CKkWjJVfr+6i4m+SGA6DODByMcMlNq4kn1G+L0AZBdHYmMjULuzE01s
	V9ciyW83beXZhOcn1ZE+qM5gqGvgVZc5s9+x7LHihtdaZ20fW1fmSF6KfAwPxFoM7oouFXXn/uWqv
	orPj8r0XTxGMu2dVH2f7LLPROIuxNoe4LlbmGhSqT9Vl4kNN4ZJenloPZxH2xkMHKPUonKFWPpL7f
	4nOGRLWTZs1jgep1Elg3H61NTS54IYH1BZch5JHgUai/SBjyQm5c/QBWs+GBi8zM+INV9vr+UAVth
	r/TePVPRHoV8tcqa+Hrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgm0A-00009y-Px; Fri, 28 Jun 2019 08:12:58 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglzw-000094-0u; Fri, 28 Jun 2019 08:12:45 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5S89BhV010144;
 Fri, 28 Jun 2019 08:12:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=lsoA1UWDq7nPbXKAtv1ZiW/0gagm4KjXwLbq4FZiBPg=;
 b=ASngeDiJjiNNpLJnzZiOLa+t+yJJ7CQq2AVaQ9mGd3Mj5nRe2Z2hl08EcSCHo3lK4BYS
 trnr90J7VJBT0MpGCDqHJv8ILBKKT5izPnxEuggKjrx5a+gBmiGRFyUtsPadP4H0Iv5W
 fbn6+sJd039YGIdMOlikCTWLh3S01R7yBYKE8gnjNlUl0gP1D/M4hxlpH5rWhLml8LK1
 MJU0jP4dwj4bfVh+2J5pCCSLooXdjQaditJ/cO+4k757RLcX2F4aUojh+bbWdhyAnChd
 pLOtxIUdwAW1lkgmzbPY6p5GSZLoxcOhZk1LDO11tHlVG0iELrkfjEQ6o1Ak4x9GIr8Q rg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2t9cyqv6pw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 08:12:33 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5S8ApmK026857;
 Fri, 28 Jun 2019 08:12:32 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2t9p6vs8ky-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 08:12:32 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5S8CSih009339;
 Fri, 28 Jun 2019 08:12:29 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 28 Jun 2019 01:12:28 -0700
Date: Fri, 28 Jun 2019 11:12:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 29/31] staging: bcm2835-camera: Add sanity checks for
 queue_setup/CREATE_BUFS
Message-ID: <20190628081217.GG19015@kadam>
References: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
 <1561669769-2498-3-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561669769-2498-3-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906280095
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906280095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_011244_199357_E845F540 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Hans Verkuil <hverkuil@xs4all.nl>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 11:09:27PM +0200, Stefan Wahren wrote:
> From: Dave Stevenson <dave.stevenson@raspberrypi.org>
> 
> Fixes a v4l2-compliance failure when passed a buffer that is
> too small.
> queue_setup wasn't handling the case where !(*nplanes), as
                                             ^^^^^^^^^^^
This is reversed?  It wasn't handling where *nplanes is non-zero.

> used from CREATE_BUFS and requiring the driver to sanity
> check the provided buffer parameters. It was assuming that
> it was always being used in the REQBUFS case where it provides
> the buffer properties.

These patches look really nice.

regards,
dan carpenter



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
