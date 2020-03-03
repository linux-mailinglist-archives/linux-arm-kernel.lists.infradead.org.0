Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCF01784E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 22:31:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fX0AuZtZVbUQT1s+J+yYPDvZlEm9WL9WV1F/9eQ55uM=; b=QyhgoT3y5nA0iS
	i7hu6WyJo4wSPE7sUjp9wLLVCxLU/2l5MvCQmAcrbVBjig/7dUg5ZorvWjVShss25SJ0swY3loqmr
	UGmdg/OW+Yan79pyvHe4gSJxAfgowarOF9DXMyB+tui64efFVd9e+YH81Zxi76P2HCWU2KJknO/u9
	B7iEkzFyKTOWBmReba5tRVQiwD8jtY5civtOLoPOoVteEZQvwF2cNIClBq6lKJ/J7Q2crpTRPrq4j
	hLzfDMWX/Wl7Ldf5Qz3+B2eEPosUKBNijRmUn0SRba82U8feJ47NSdfVZUZdac7L2DfGHxvTk2xwT
	482mgzo6MmD/swEk4gOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9F8H-0006jV-JE; Tue, 03 Mar 2020 21:31:17 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9F89-0006iu-By
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 21:31:10 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 023LS4SG092617;
 Tue, 3 Mar 2020 21:30:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=yp0/8z5zvQXZIVH4pA65SFCLeNa4/KuEvMX5IX0JbsQ=;
 b=UTGtCeaVWNJitx5qI5IaBY1vXZpQKmAFz1r1sU7m9wjoRGJv3tEdSU2PXc+y78ZxTIxq
 LiM4K0JoULxAL2y3ordRvn4E/mlTFW92NafQSciRwCWh09R2t6jg9zoxiyIpPwmH62p1
 tnns2MVYkro7J/HMsKxiXj1DmR7MTagygsIRUO7dWfXjpdRC5zqlJT9XNQwqxhKyyxMu
 BYfid/DIT3L2ryAVg4nyv2QSawiBpYyHn1XF8hFUbwCHO0SgOYCPfd8klK+KQzsQlVEy
 6ptkLsfsgsZXUFx8LWKaDLzRLPbqZC+3vLndepnLYl2vpdtDp0tCZSAjjtTYsvERT2hI GQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2yffwqt3eb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Mar 2020 21:30:55 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 023LSchb010272;
 Tue, 3 Mar 2020 21:30:55 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2yg1p5g557-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Mar 2020 21:30:55 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 023LUsaQ020178;
 Tue, 3 Mar 2020 21:30:54 GMT
Received: from ca-dmjordan1.us.oracle.com (/10.211.9.48)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 03 Mar 2020 13:30:53 -0800
Date: Tue, 3 Mar 2020 16:31:11 -0500
From: Daniel Jordan <daniel.m.jordan@oracle.com>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200303213111.op2vtxfmwtn7i6db@ca-dmjordan1.us.oracle.com>
References: <20200217204803.GA13479@Red>
 <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
 <20200220090350.GA19858@Red>
 <20200221174223.r3y6tugavp3k5jdl@ca-dmjordan1.us.oracle.com>
 <20200228123311.GE3275@willie-the-truck>
 <20200228153331.uimy62rat2tdxxod@ca-dmjordan1.us.oracle.com>
 <20200301175351.GA11684@Red>
 <20200302172510.fspofleipqjcdxak@ca-dmjordan1.us.oracle.com>
 <20200303074819.GB9935@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303074819.GB9935@Red>
User-Agent: NeoMutt/20180716
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9549
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0
 mlxlogscore=772 mlxscore=0 spamscore=0 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003030136
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9549
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 mlxlogscore=821 mlxscore=0 suspectscore=0
 phishscore=0 clxscore=1011 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003030136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_133109_492890_585EDE08 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, Robin Murphy <robin.murphy@arm.com>,
 jiangshanlai@gmail.com, linux-kernel@vger.kernel.org,
 Daniel Jordan <daniel.m.jordan@oracle.com>, linux-crypto@vger.kernel.org,
 tj@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 08:48:19AM +0100, Corentin Labbe wrote:
> The patch fix the issue. Thanks!

Thanks for trying it!

> So you could add:
> Reported-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> Tested-on: sun50i-h6-pine-h64
> Tested-on: imx8mn-ddr4-evk
> Tested-on: sun50i-a64-bananapi-m64

I definitely will if the patch turns out to be the right fix.

thanks,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
