Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7A5173B74
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:33:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iFklPWOSDFFpe4+GnJmpeRakuFbbaY1zKgO8lzJsL7c=; b=kUx/N+Yp3+ymqu
	7q/pnAGuUFoo5OS0z4tUHb9nU/HNwAikjh8mBfKi6Lmc7tseFXowmSldzTqTTHgV7oQJ3DllBcYxg
	/nqlmiO2aQOD3vCrdlk1JUd0U1GVMOhPUNoXZ1lsB6BE+O0IOuhrWpDcSGv9tSvYIgeU1LW+HnK4V
	30tftFskeVME1oE54G0fm5j+LR90t7KQ3jALvntm2F1RW8aNLO10kds4R8Y4kClai271B5kh8Sc0H
	45Giu41pNPrXGM4x61SGBnrmgsBiLZxJRwAdbKM/WEZU1OEusLYMuRA5RaoISJaJNJcohCRa8KIfe
	KM10pQnEsXZswwtCq+FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hdv-0001ab-Ha; Fri, 28 Feb 2020 15:33:35 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hdm-0001a9-7k
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 15:33:27 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01SFNbpO014854;
 Fri, 28 Feb 2020 15:33:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=UECnQ/oTwdSNKe5Xwj90yZ1hGNYLYSWaAjIgZTEoUHg=;
 b=EZcxPLjYQUuIr1PPWvoGLq8u79eUUlRU43u5TEmqxPhBi58LneZRsmGtX7jN2h7oOgTE
 J6PFnqBvcjuZWqJqgzFrWd7iPEhDmnuvRtQzWBym7/lSpBz64UPxkLreMt+krvxlk6FR
 FoxP+HtsaLrv9ibUQjJpQ8UgA+Cxz6+aNL15PRw1k/QmRrB+dGeCRUK7RMREF8f6AXBA
 z0BjLYFzNtvQW+i/D0/PJ7IHsDq0Wu8JhhdhwMLeuXhOh+rjacsQK+a+gadD6ffQnpK3
 2kl9efrg2X6O5AE/2STjo1Rrp0AhHytXh1aMF3+XDjmgae2gZ1XvC4RPQMbAx3pIFFBR Ng== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2ydcsnun8q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Feb 2020 15:33:18 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01SFWNsH144227;
 Fri, 28 Feb 2020 15:33:17 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2ydcsepxuh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Feb 2020 15:33:17 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01SFXE50018142;
 Fri, 28 Feb 2020 15:33:15 GMT
Received: from ca-dmjordan1.us.oracle.com (/10.211.9.48)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 28 Feb 2020 07:33:14 -0800
Date: Fri, 28 Feb 2020 10:33:31 -0500
From: Daniel Jordan <daniel.m.jordan@oracle.com>
To: Will Deacon <will@kernel.org>
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200228153331.uimy62rat2tdxxod@ca-dmjordan1.us.oracle.com>
References: <20200217204803.GA13479@Red>
 <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
 <20200220090350.GA19858@Red>
 <20200221174223.r3y6tugavp3k5jdl@ca-dmjordan1.us.oracle.com>
 <20200228123311.GE3275@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228123311.GE3275@willie-the-truck>
User-Agent: NeoMutt/20180716
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9545
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 phishscore=0
 mlxlogscore=727 spamscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002280123
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9545
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0 bulkscore=0
 lowpriorityscore=0 mlxlogscore=793 phishscore=0 spamscore=0 adultscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_073326_318012_7ABE2AE5 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, jiangshanlai@gmail.com, linux-kernel@vger.kernel.org,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 tj@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 12:33:12PM +0000, Will Deacon wrote:
> On Fri, Feb 21, 2020 at 12:42:23PM -0500, Daniel Jordan wrote:
> > On Thu, Feb 20, 2020 at 10:03:50AM +0100, Corentin Labbe wrote:
> > > But I got the same with plain next (like yesterday 5.6.0-rc2-next-20200219 and tomorow 5.6.0-rc2-next-20200220) and master got the same issue.
> > 
> > Thanks.  I've been trying to reproduce this on an arm board but it's taking a
> > while to get it setup since I've never used it for kernel work.
> > 
> > Hoping to get it up soon, though someone with a working setup may be in a
> > better position to help with this.
> 
> Any joy with this? It sounded to me like the issue also happens on a
> mainline kernel. If this is the case, have you managed to bisect it?

I managed to get recent mainline (rawhide) booting days ago but wasn't able to
reproduce on a rpi 3b+.

My plan had been to try debug-by-email next, but then something exploded
internally and I haven't had time for it yet.  Still intending to help once the
explosion is contained, provided someone can't get to it sooner.

thanks,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
