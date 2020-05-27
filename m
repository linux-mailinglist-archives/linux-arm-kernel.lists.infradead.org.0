Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6671E3E9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 12:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfLIVc0iiyIfDOajXI5OAQKKQmChUX4o7baFvO0t3hU=; b=eIO0bFMTxT22yE
	gammXEHs3KLhGiju9Rny6rZKEry+Ahlb21Y0+dwHX/vUKhupYLMlrdOm9oH442YOL9n3oad7H9YaP
	UzSvuSefC4R1LIYhL4xnWcgxYGZW08ewHuoPMveMNjwjUzK+nKzHtvhxDkNKor5anKfVhHf4AdaL6
	FUlI1ESQr22kEXh3nUGi6EdpTp1FGAZlmF+0E7wlGYMBOAY8aZrmuJjFYSSY8JMSBDnBQeHLJMHSv
	4jhCzA7lqVdjqBPM16reN83sOMe5i0y4dP8OEc3rjPLtsQFBontj8usJ+7KBCd7WehpzsdgeONKZr
	h7Fbqdsb5qYs8/ortqQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsyf-0003YO-2c; Wed, 27 May 2020 10:08:01 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsyS-0003XN-0D
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 10:07:49 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04RA7bN9029643;
 Wed, 27 May 2020 10:07:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=corp-2020-01-29;
 bh=Jgk+aa3gaSbaEJGRzqmUB4J/D3RcAW2mzmSgXwtDYpI=;
 b=I++iBdw/d6EbbsVc0QonMYtP9GdH7G9gqk7JTiB94+7WbFWe/ILrE7Z3/1Xou2AA/fj0
 XfiW1ia3B13QNes64K8EvFxGTdek2n1b1W/CZkKh0BNspXqu5WHk3CdXeMTM9mLZJxGW
 HOtff/B6xDcXoVujMkSWvLLR+R8xcPpBHqJLZ0kEdQhnfyRw8J6J6VCNosFSIaEu0thm
 Xz1cn4ch5LgZ1tUZIBA3t8NTvbbgSWEt29tV/Ak2G+yNA1HvzCz/bBs7k698p7fC90vO
 0n/SEPzLJEx2JmH8cX0h5LZ95k2fkDoJBgdt9g4Ud68tggcn37DEw46UAI4yWToBi71J Lg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 316u8qxjjc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 27 May 2020 10:07:37 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04R9vY3D160684;
 Wed, 27 May 2020 10:05:35 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 317j5rcya4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 May 2020 10:05:35 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04RA5XM3005085;
 Wed, 27 May 2020 10:05:33 GMT
Received: from dhcp-10-175-217-36.vpn.oracle.com (/10.175.217.36)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 27 May 2020 03:05:33 -0700
Date: Wed, 27 May 2020 11:05:23 +0100 (BST)
From: Alan Maguire <alan.maguire@oracle.com>
X-X-Sender: alan@localhost
To: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Subject: Re: [PATCH v3 3/7] kunit: tests for stats_fs API
In-Reply-To: <20200526110318.69006-4-eesposit@redhat.com>
Message-ID: <alpine.LRH.2.21.2005271054360.24819@localhost>
References: <20200526110318.69006-1-eesposit@redhat.com>
 <20200526110318.69006-4-eesposit@redhat.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 suspectscore=4
 mlxlogscore=999 mlxscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270072
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 priorityscore=1501 spamscore=0 cotscore=-2147483648 suspectscore=4
 phishscore=0 clxscore=1011 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005270073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_030748_176653_74585CA3 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
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
Cc: linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, kunit-dev@googlegroups.com,
 Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>,
 linux-kernel@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Jonathan Adams <jwadams@google.com>, brendanhiggins@google.com,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-kselftest@vger.kernel.org,
 David Rientjes <rientjes@google.com>, linux-fsdevel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, linux-mips@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 26 May 2020, Emanuele Giuseppe Esposito wrote:

> Add kunit tests to extensively test the stats_fs API functionality.
>

I've added in the kunit-related folks.
 
> In order to run them, the kernel .config must set CONFIG_KUNIT=y
> and a new .kunitconfig file must be created with CONFIG_STATS_FS=y
> and CONFIG_STATS_FS_TEST=y
>

It looks like CONFIG_STATS_FS is built-in, but it exports
much of the functionality you are testing.  However could the
tests also be built as a module (i.e. make CONFIG_STATS_FS_TEST
a tristate variable)? To test this you'd need to specify
CONFIG_KUNIT=m and CONFIG_STATS_FS_TEST=m, and testing would
simply be a case of "modprobe"ing the stats fs module and collecting
results in /sys/kernel/debug/kunit/<module_name> (rather 
than running kunit.py). Are you relying on unexported internals in
the the tests that would prevent building them as a module?

Thanks!

Alan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
