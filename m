Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B37C15EE84
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 18:41:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BUpckAN61hHFK68WFb8QY09tU6AuskjD905wxHSEYs8=; b=knyL9k9bWmeGDLUkORUP7EAEO
	qEvtgxCA+xh2clm+/x1jYhU8fZ4RxhFVxlWf/NLh3AtG1VUfs/VhS7BVoxZJq83ov39jynGkMFygx
	oG5unZjHSFgqApf8cVBveB6mpPckAbuwcI7uvm0Y0etC92wqo+CVlSuQ5ooZiLsdXki+b+PSkb0yn
	5fD5nQCBve1NKxMgIlez13j7SrIv1m0SQPXj4mYzm/oN0ApMkzTjvzkSoVX3L+1IijNMYjgv0EeFz
	8Pp3u932zT6jkF8wi6buv/UOclCEA54/tq7VSyKfgr6NMJT5qIz0Z7OftiDzvW++yoBGM/xq4gMPe
	94AYv9K1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ey5-0003Nu-4c; Fri, 14 Feb 2020 17:41:33 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2exy-0003MP-2t
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 17:41:27 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01EHdOCr069590;
 Fri, 14 Feb 2020 17:41:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=KmIo45/8rqTg+TK1KulK6p+LZsxnvdRAU4LsG4AGcFA=;
 b=yewe0/WD7pxSXUGJYSzccmoQh5jmPWdrnBPN2j2OMmFa1XrlxWAKzUpMdDrgq8Es6qRS
 mIRAS3dyhyMiRtdb0Zl7lqaMNMgIvXcwNc4+/OH1Hl6Tt/vpCj3cx9XUZQ1PPhpb6LCW
 vWBC/SL3ljjb5zcjXEw7d7n0kqk1dRbeCx/Ky67WK3zPD8LK7agSdjsWLeeFn7NaTkyI
 rmTpv1xqDamLAF4+zoDr17fSTtEbRJRY904qqbURjWa/P+dp3JOeE0ZVhvnFHs0FaipU
 vgp5xwHmPMLNM82Yfhkj/dyWGQLBLaTeigtWj9ux1XOk2mxpssdAqs8mxhWlTC8G2GES Lg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2y2p3t2q6h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 14 Feb 2020 17:41:02 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01EHbIHs132568;
 Fri, 14 Feb 2020 17:41:02 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2y4k9mwvdy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 14 Feb 2020 17:41:02 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01EHews6020773;
 Fri, 14 Feb 2020 17:40:58 GMT
Received: from [10.209.227.41] (/10.209.227.41)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 14 Feb 2020 09:40:58 -0800
Subject: Re: [PATCH resend 0/2] dts: keystone-k2g-evm: Display support
To: Jyri Sarha <jsarha@ti.com>, dri-devel@lists.freedesktop.org,
 ssantosh@kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
References: <cover.1581671951.git.jsarha@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <6749076a-cbc1-d8e2-bc35-2e2a9ad80a6d@oracle.com>
Date: Fri, 14 Feb 2020 09:40:55 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <cover.1581671951.git.jsarha@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9531
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 suspectscore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002140133
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9531
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1011
 impostorscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002140133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_094126_166628_CF3FDA02 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, bparrot@ti.com, praneeth@ti.com, robh+dt@kernel.org,
 peter.ujfalusi@ti.com, tomi.valkeinen@ti.com,
 laurent.pinchart@ideasonboard.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/14/20 1:22 AM, Jyri Sarha wrote:
> Resend because the earlier recipient list was wrong.
> 
> Now that drm/tidss is queued for mainline, lets add display support for
> k2g-evm. There is no hurry since tidss is out only in v5.7, but it
> should not harm to have the dts changes in place before that.
> 
> Jyri Sarha (2):
>    ARM: dts: keystone-k2g: Add DSS node
>    ARM: dts: keystone-k2g-evm: add HDMI video support
> 
>   arch/arm/boot/dts/keystone-k2g-evm.dts | 101 +++++++++++++++++++++++++
>   arch/arm/boot/dts/keystone-k2g.dtsi    |  22 ++++++
>   2 files changed, 123 insertions(+)
> 
Ok. Will add this to the next queue.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
