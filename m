Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D697AABB34
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+pkSBjR2nPBDwoBEZ87PHDlDQ9V7mtgjBT5MIlB8lY=; b=rlP7K2bJz1ihED
	GeWi4Fm/JqTJe3hVa9iLIVW5XFdsApM/hU0gZ+UF0GBMRqIe6sjSQ6SIzOjl/q7k2b9fCbV1F2f2l
	gEcNbBsDZzRWxKMqdlKzKvxG8gTwTGipvUiLPJ37/N+ICw8/udxqUcRyX7w8NdhXFSJNtaoWx2szc
	HLVaeCPW0O6hnlHQiLnhJRTQZSLkIrSbtxIHvXMV4kTLT8d6jx/SnNBOmnX3ms7pWiJJV5avf/9Eh
	ijFD5idlUBqed7tNjLzNAktW838RWVhX+Rh3NwCDaxhxv6f7TPBy52bBYrwq9xbKFSo081rv9P+R0
	uVNFT3Bj8X9QpuEkskcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FQj-0004H3-EQ; Fri, 06 Sep 2019 14:41:41 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FQS-0004GX-8p
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 14:41:29 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x86Ed6m5079684;
 Fri, 6 Sep 2019 14:41:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=y8TtBHLyh9FaXB7YWA2oSVkXqqAPTbDmmbDnNI16F7o=;
 b=DOF557n5O1G3LePDNwr0JmO+vUm1GxrH6KN/LwtR3hkP3O/j3iy8egyMpJJWrEE044Ms
 63u4oumZ8oks/ZQRt7gfi0pK7vIAlULQAqYOtlGhhrRO2AZGGB3aE1kS0SNn+hXG9h2j
 0e2sQGNUvzrsaDZFQ6WFwgwhQrFW5urHG0xRcT9U5UnygFZRpuhg1toZ5VtMpqbhEJdX
 KtuV4y/6mgxs7wmro5Da451nB8UjHcp+oaXbc6Bq5IEq+BnYuuiB0W22oulaN3NFJ5sQ
 nCF9axdCfZyMG1fkwd20WASjft3Kw2kS6qExeFXgNQ6OKHyjfNOrCMLbrU9vRwOEetaz OQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2uus55048m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 06 Sep 2019 14:41:20 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x86Ed28j110378;
 Fri, 6 Sep 2019 14:41:20 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2uum4h555m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 06 Sep 2019 14:41:20 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x86EfIvV032549;
 Fri, 6 Sep 2019 14:41:18 GMT
Received: from char.us.oracle.com (/10.152.32.25)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 06 Sep 2019 07:41:17 -0700
Received: by char.us.oracle.com (Postfix, from userid 1000)
 id BD96F6A00C1; Fri,  6 Sep 2019 10:43:00 -0400 (EDT)
Date: Fri, 6 Sep 2019 10:43:00 -0400
From: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
To: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Subject: Re: [PATCH 09/11] swiotlb-xen: simplify cache maintainance
Message-ID: <20190906144300.GD7824@char.us.oracle.com>
References: <20190905113408.3104-1-hch@lst.de>
 <20190905113408.3104-10-hch@lst.de>
 <e4f9b393-2631-57cd-f42f-3581e75ab9a3@oracle.com>
 <20190906140123.GA9894@lst.de>
 <ca88e7b8-08ca-51b2-0c77-c828d92da0db@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca88e7b8-08ca-51b2-0c77-c828d92da0db@oracle.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9372
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=829
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909060155
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9372
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=893 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909060155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_074128_726059_834FC46C 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 10:19:01AM -0400, Boris Ostrovsky wrote:
> On 9/6/19 10:01 AM, Christoph Hellwig wrote:
> > On Fri, Sep 06, 2019 at 09:52:12AM -0400, Boris Ostrovsky wrote:
> >> We need nop definitions of these two for x86.
> >>
> >> Everything builds now but that's probably because the calls are under
> >> 'if (!dev_is_dma_coherent(dev))' which is always false so compiler
> >> optimized is out. I don't think we should rely on that.
> > That is how a lot of the kernel works.  Provide protypes only for code
> > that is semantically compiled, but can't ever be called due to
> > IS_ENABLED() checks.  It took me a while to get used to it, but it
> > actually is pretty nice as the linker does the work for you to check
> > that it really is never called.  Much better than say a BUILD_BUG_ON().
> 
> 
> (with corrected Juergen's email)
> 
> I know about IS_ENABLED() but I didn't realize that this is allowed for
> compile-time inlines and such as well.
> 
> Anyway, for non-ARM bits
> 
> Reviewed-by: Boris Ostrovsky <boris.ostrovsky@oracle.com>

Acked-by: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>

as well.

Albeit folks have tested this under x86 Xen with 'swiotlb=force' right?

I can test it myself but it will take a couple of days.
> 
> If this goes via Xen tree then the first couple of patches need an ack
> from ARM maintainers.
> 
> -boris

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
