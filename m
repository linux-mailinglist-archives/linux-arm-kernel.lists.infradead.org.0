Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F9D16853E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:42:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ys/wV9EQ3lZbhXSNNlWPfvIgI8E1ZiaigD4uYvDao3A=; b=Aupdu8Ma2nekLy
	5UlVKFdqo82gFgWnbvysaeLSspbVTT5wgW2nYHOYuK9zTh0KTCZZO8TSeTVXBLGjvWlyQOLksQ59J
	3A0eHnFNVmEnxZeheTAPobM6QHgLfBhIvNpl46u3NL4LimrgfB+Y94crFa97FOmIJ1c6yXmgpR+cb
	eZ3AH/Z6+vlf3CG0dLeDpRPDFNnyw21WFun4QY6fK2GZ+Vj9MIqXarxgy206XkBbvoHIHgR8OoWsm
	c+JnTnxK3fIB4jh1IJBh22zvd80WCkLVlBZA0e1JEUg/a8LQ00eVaAYecu9eXvM6ChuQLqIBp0OMS
	W/DcR+UKR24CbpoCnhtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CJu-0005WE-FR; Fri, 21 Feb 2020 17:42:34 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CJk-0005V3-3L
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:42:25 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01LHc0FZ028765;
 Fri, 21 Feb 2020 17:42:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=LRYV1bqrtYHpCN4fb7HaSFnbKvEuCaHF8P1aMViUCL8=;
 b=CNH1qLAfUWcxTj/4TRpqWQJXUVpBF4X8aYaQszqoMSUpzvirzAqS37yWwb0iUTcoplQN
 b6wr/qg58nt+sO+jcVnxXWCvze1YjqbuDgbKMuKihn1FzkWkhDAXUm5hkIMSQu63F5IE
 oqjAyTJlwyxfWnUawzRNEpPD4Zghtg+CPOqQO1xggbMmLKMz27O0/bHLWkZuFJ7XPhMW
 ocvO9UmsAaVho1iY5Vfaw9ZcXV7lYHDrKm2sTqGmzmGJ4R/tSqkVcQreYfoSj/VvwWd/
 BpG68kzEUgCozO68PkFrBi2/2HuP2x/HWmRe61+tWnkzFobwZDmOMR5HIN6H2dE04neO Ww== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2y8udksyud-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 21 Feb 2020 17:42:13 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01LHfuMU089895;
 Fri, 21 Feb 2020 17:42:12 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2y8udp6kfx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 21 Feb 2020 17:42:12 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01LHg7Ie013190;
 Fri, 21 Feb 2020 17:42:07 GMT
Received: from ca-dmjordan1.us.oracle.com (/10.211.9.48)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 21 Feb 2020 09:42:06 -0800
Date: Fri, 21 Feb 2020 12:42:23 -0500
From: Daniel Jordan <daniel.m.jordan@oracle.com>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: WARNING: at kernel/workqueue.c:1473 __queue_work+0x3b8/0x3d0
Message-ID: <20200221174223.r3y6tugavp3k5jdl@ca-dmjordan1.us.oracle.com>
References: <20200217204803.GA13479@Red>
 <20200218163504.y5ofvaejleuf5tbh@ca-dmjordan1.us.oracle.com>
 <20200220090350.GA19858@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220090350.GA19858@Red>
User-Agent: NeoMutt/20180716
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9538
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=634
 phishscore=0 suspectscore=0 mlxscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002210134
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9538
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 adultscore=0 mlxscore=0 clxscore=1015
 malwarescore=0 mlxlogscore=693 phishscore=0 impostorscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002210133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_094224_232277_90206FF5 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Daniel Jordan <daniel.m.jordan@oracle.com>, linux-crypto@vger.kernel.org,
 tj@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 10:03:50AM +0100, Corentin Labbe wrote:
> But I got the same with plain next (like yesterday 5.6.0-rc2-next-20200219 and tomorow 5.6.0-rc2-next-20200220) and master got the same issue.

Thanks.  I've been trying to reproduce this on an arm board but it's taking a
while to get it setup since I've never used it for kernel work.

Hoping to get it up soon, though someone with a working setup may be in a
better position to help with this.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
