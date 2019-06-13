Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0A443303
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 08:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ECYj9BmGps+BJ0aQMAN5GZrHfXnDuAKjuFYcBmMmCjI=; b=cegDUbXcKcp73W
	CdK0ba7xQ+6ZBOz5V4pfaJcbliDvrBi6css44PzRABHJG7xI//HH4EpU7xrp17i6+7aN2a6fwFxdY
	93JYoFHzGCZ/vykCjUx2IgTucCOWrqRxWVGaPAh9CeVmKhZnM1/T6byAClYk2Dvni1g00DXszYIys
	YcAQ9P261tuhGywFNnWoZvQWlwon+bW/5ntsXt3L2GUEwZAvUH2YgLl1DzG0LzNyJQ43/W7K4/VOd
	xValFf2ICjOf3yxI6MoaydosxcAjcsHiAVvBw1/u/rs1rfOjYHlXs7tR5Nkha44llaCPX4mk8Vco4
	TE5bkwa7cFW5mDbh0zRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJd8-00047M-T5; Thu, 13 Jun 2019 06:54:38 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJcx-00046s-Fc
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 06:54:28 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5D6sNAx011711;
 Thu, 13 Jun 2019 06:54:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=+p9bNSHm2Ncbv+ASm69GCpznMFNiwtbpe0dw2hqUkkA=;
 b=yHWMPWdZv/XtUu9DlTm5CxgFfps6bAs4TkRabP82B6j8j89SvriCL99WkWUw5S5VKCRX
 LJwfH2REQSETyo6FuM16gyjV2Bj/tFXcOA4XzmZWpRNHjvFpdsMx7+l0wnrazVQkIz5y
 i/ZEAXpiviIIzZKzF4ZRhi9ODUjtRi1PR3T6NPe2bspKL3MbRJ3DrLRDUXeGHJpEGkXc
 +xvSln+ZhEuZBmdAO6E1b5AX9AQ/ZMwTMOWuds2DNFDqPLmWhzn3n+jb/Acw0kF4H090
 ytrFMfyqIoGUpi/rklBewd6MyKcCiIHaOryRExSBnKQsgEZhJqLLDc3GzqNVEWt+mSCW vQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2t04etymwr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 06:54:23 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5D6qqht075123;
 Thu, 13 Jun 2019 06:54:22 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2t1jpjcyut-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 06:54:22 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5D6sHww011651;
 Thu, 13 Jun 2019 06:54:21 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 12 Jun 2019 23:54:17 -0700
Date: Thu, 13 Jun 2019 09:54:10 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: tn@semihalf.com
Subject: [bug report] ACPI: Add new IORT functions to support MSI domain
 handling
Message-ID: <20190613065410.GB16334@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=934
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906130055
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=976 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906130055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_235427_674904_116FB27E 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Tomasz Nowicki,

The patch 4bf2efd26d76: "ACPI: Add new IORT functions to support MSI
domain handling" from Sep 12, 2016, leads to the following static
checker warning:

	drivers/acpi/arm64/iort.c:628 iort_dev_find_its_id()
	warn: array off by one? 'its->identifiers[idx]'

drivers/acpi/arm64/iort.c
   589  /**
   590   * iort_dev_find_its_id() - Find the ITS identifier for a device
   591   * @dev: The device.
   592   * @req_id: Device's requester ID
   593   * @idx: Index of the ITS identifier list.
   594   * @its_id: ITS identifier.
   595   *
   596   * Returns: 0 on success, appropriate error value otherwise
   597   */
   598  static int iort_dev_find_its_id(struct device *dev, u32 req_id,
   599                                  unsigned int idx, int *its_id)
   600  {
   601          struct acpi_iort_its_group *its;
   602          struct acpi_iort_node *node;
   603  
   604          node = iort_find_dev_node(dev);
   605          if (!node)
   606                  return -ENXIO;
   607  
   608          node = iort_node_map_id(node, req_id, NULL, IORT_MSI_TYPE);
   609          if (!node)
   610                  return -ENXIO;
   611  
   612          /* Move to ITS specific data */
   613          its = (struct acpi_iort_its_group *)node->node_data;
   614          if (idx > its->its_count) {
                    ^^^^^^^^^^^^^^^^^^^^
I wasn't able to find any information about how its->its_count is set
but it looks to me that is off by one.

   615                  dev_err(dev, "requested ITS ID index [%d] is greater than available [%d]\n",
   616                          idx, its->its_count);
   617                  return -ENXIO;
   618          }
   619  
   620          *its_id = its->identifiers[idx];
   621          return 0;
   622  }

regards,
dan carpenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
