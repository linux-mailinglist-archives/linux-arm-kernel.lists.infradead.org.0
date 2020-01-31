Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF9214E90D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 08:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S7eMrZQfS8mPrKO87Uk/GnokikJwVdeWJDHMgqXaW+4=; b=Ybb1Z5WHvaMeRD
	KpEeuvSyMRruG1NnK4Z25na4KY76GnVVlhUjORs5Yn1R/68j8fZV5hnSFBypd3LuNmjyNDS8jGW00
	ExUMhaGXeLGnMHDISeYtQH4g+nas5XSn+zArh90I7LjmF3cPRmx44j0+VnqsdG02NC+FKjI+OeRvk
	y/9FoJUvjYth029/RhJEKJ6NMPm50zsyFv9emMzRg3RW6Q1BaXJsHgYlrlZ0sAVUhZ2zf/0Bp0HHC
	LDGumIS4vNBLw0EjlurN7I3d5zjuSEnkGGka/sjgUf0bzoWbTx6/Bp45815242KXT54LO0+HWyjOJ
	L04yO7sX7pPYdwexvHGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixQQU-0000cV-9W; Fri, 31 Jan 2020 07:09:14 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixQQK-0000br-Mw
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 07:09:06 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00V78IS6092043;
 Fri, 31 Jan 2020 07:08:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=f/Rgr4Btt/dvUzQREUmef9cDteWWv4N/UoaunYa5ktY=;
 b=aYqHKz56nl8eZWkf3fSiSUcZBKb8z94tlD7FiSJ3dDMEmVNQ7LUxz+2ISqPAYfOrD629
 5Iq3/V3KZ1gFTPOM8d9L3aIuKep4WUMiGMUnhqLnuvDDlZgdj3E27XCRXnIqAaatPJdG
 aEnGrvKHvoi1HW8d1yIJdUUV0XQQq1kH6gKgSgRXDFHulvdCSGy0+G3RNLTJmiWKaKOI
 dXrixAuiPCCaAiSxR2RRfPESiAZ5YsEJtpdCWMRM2KpgBQ/px3uVRL1fcftQkSnocJeV
 fhuJqeiDw7SEOWs1QLLrz+/cJH4yPyMK+gFuKDZG5UK8glzodjuFSZ6aZYse8kKYXRKd +Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2xrd3urhbb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 Jan 2020 07:08:57 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00V78sak150714;
 Fri, 31 Jan 2020 07:08:57 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2xva6pwx7t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 Jan 2020 07:08:55 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00V78kfE022915;
 Fri, 31 Jan 2020 07:08:46 GMT
Received: from kili.mountain (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 30 Jan 2020 23:08:45 -0800
Date: Fri, 31 Jan 2020 10:08:38 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: grygorii.strashko@ti.com
Subject: [bug report] soc: ti: k3: add navss ringacc driver
Message-ID: <20200131070838.umaillib2nxujzsh@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9516
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=495
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001310063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9516
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=569 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001310063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_230904_892759_0D200AA7 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Grygorii Strashko,

This is a semi-automatic email about new static checker warnings.

The patch 3277e8aa2504: "soc: ti: k3: add navss ringacc driver" from 
Jan 15, 2020, leads to the following Smatch complaint:

    ./drivers/soc/ti/k3-ringacc.c:562 k3_ringacc_ring_cfg()
     warn: variable dereferenced before check 'ring' (see line 559)

./drivers/soc/ti/k3-ringacc.c
   558	{
   559		struct k3_ringacc *ringacc = ring->parent;
                                             ^^^^^^^^^^^^
dereference

   560		int ret = 0;
   561	
   562		if (!ring || !cfg)
                     ^^^^
too late

   563			return -EINVAL;
   564		if (cfg->elm_size > K3_RINGACC_RING_ELSIZE_256 ||

regards,
dan carpenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
