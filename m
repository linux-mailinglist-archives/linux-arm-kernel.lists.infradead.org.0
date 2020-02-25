Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147BB16B6F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 01:56:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnxmlmvEscH5sQriR6kNyr9WCe3taAENkPfYsthpLF8=; b=gPNzkq70E0OzgB
	Ko8G/1lpxZbjIXZmjgTFMg6Vrxga0tWHBHAnQIcsWUoEW2F+FyP4urrJzAk90PuYPFB8ndtG1GOgX
	isyKxfEzZBaxfp/R4uZkDj1uVH0wcb5FN9t2nZhBZ9qXTkSmepF/ocpSRzewq/kfUnh3+1m/F/RrK
	5IqbcUjr1uChP69a8zo3nW10QGFoY8yye98EJp9ajlnaOdq5U+ld6n5fjGIopFoXJVe5oIL+qUuD+
	GUg1tfIWQfQbQN6miI1WNTBkXYap8avI1rmxb22OLVaH9xtlvJfuSAS37aATxbDYOvRjdr1gw6YsO
	5AKl6Cy8KguBzdskNXQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6OW6-0002M5-NP; Tue, 25 Feb 2020 00:56:06 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6OVy-0002Lf-MS
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 00:56:00 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01P0nELF104389;
 Tue, 25 Feb 2020 00:55:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=31MRzhnfvXmHfHuyInzX+kikBMRvqfs+ou3IuqKMLEg=;
 b=fAIIDpEFXGP7aUZmMbxuITAAmMV9SF9AJY+U/9yISYzNWrZqiR16phEQQ+PAvb7NvVPQ
 epEjRTgrLKhP7owrIhI/PBN8pX1Leaq0aH3RCgyJrQLpr/+ndDaKYxuBgbaAEQmu3bPs
 KWsaHuLfYGjmjjtJ9Vh2BKnXWXwA8VxKJbcwUymrhBqjXhfH0Oz3bmQDeEDGBt94rrYj
 dCw+vSo2J4IciQ114D0eXK7j8G0xSk7FTz1Dw6/tZAPIkQcgOsaB2AWrlQZBk1yuJ8mh
 xm8wIbenHF7bPRg4hJfGWlKXk7n/WmuffmQYTqS/rPM3gLgZahqN0DT1RC1Lwrsbrc2k ZQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2ybvr4q858-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Feb 2020 00:55:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01P0lvEP116871;
 Tue, 25 Feb 2020 00:55:55 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2ybe12h2ek-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Feb 2020 00:55:55 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01P0ts12004722;
 Tue, 25 Feb 2020 00:55:54 GMT
Received: from localhost (/10.159.137.222)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 Feb 2020 16:55:53 -0800
Date: Mon, 24 Feb 2020 16:55:53 -0800
From: "Darrick J. Wong" <darrick.wong@oracle.com>
To: Eric Sandeen <sandeen@redhat.com>
Subject: Re: [PATCH] xfs: mark ARM OABI as incompatible in Kconfig
Message-ID: <20200225005553.GD6740@magnolia>
References: <ee78c5dd-5ee4-994c-47e2-209e38a9e986@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ee78c5dd-5ee4-994c-47e2-209e38a9e986@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9541
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0
 suspectscore=0 malwarescore=0 phishscore=0 bulkscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002250003
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9541
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0
 clxscore=1011 adultscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002250003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_165558_822243_A576B2EB 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-xfs <linux-xfs@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 04:49:12PM -0800, Eric Sandeen wrote:
> The old ARM OABI's structure alignment quirks break xfs disk structures,
> let's just move on and disallow it rather than playing whack-a-mole
> for the infrequent times someone selects this old config, which is
> usually during "make randconfig" tests.
> 
> Signed-off-by: Eric Sandeen <sandeen@redhat.com>
> ---
> 
> diff --git a/fs/xfs/Kconfig b/fs/xfs/Kconfig
> index e685299eb3d2..043624bd4ab2 100644
> --- a/fs/xfs/Kconfig
> +++ b/fs/xfs/Kconfig
> @@ -2,6 +2,8 @@
>  config XFS_FS
>  	tristate "XFS filesystem support"
>  	depends on BLOCK
> +	# We don't support OABI structure alignment on ARM

Should this limitation be documented in the help screen?

> +	depends on (!ARM || AEABI)
>  	select EXPORTFS
>  	select LIBCRC32C
>  	select FS_IOMAP
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
