Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732A89732F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bb37z9dDhRFay41UUwNGxGxW0p8cBgejrCUeaqwV+SE=; b=AVDzQ+uB1qa3/A
	GqtXZ7/TeRQqMIcLDsJOwJaD8D1Yt5cNpsHfAcIrNvzeVzyzWH8Ue3VEtXYfTe6WiT/eayK642iMP
	pIFzsuq6rhRS+flE3JqbFrxaNL4jR722QGAKbERAbcfy9crslId+/ZqzyanU7TT4Iv6RPEy3HoIub
	1hzpHVbvAqL1sbacJimC7oDaY/WBYeXT8QnrsP4b3x4wXHSLeHgSNW14qTwNdKa/INP19BmPKma85
	uvgakibV6E6eg4rkSiwv+sIIFhpzJlFwcP+TJEcVEUuaCMBY7hHmvgb+Ilw00q0OXE08cEPT+7piV
	nS1sadbJj/Iz0fxZB/gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KrS-00080Z-1h; Wed, 21 Aug 2019 07:16:50 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Kr4-00080E-R2
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:16:29 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L7DmTj074532;
 Wed, 21 Aug 2019 07:16:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=R2YjQrMk6Ryk0i57o5acO6QYBqF7UKwLyz/MeMPJfkA=;
 b=ruk7AMrsSTCDyXc/96XVVIt+7wKiBLwvdQHchknoUxb8B7UePTmJ+9fMYt8iGtyjxBT0
 EEkx+6J7PzB89j3BoBwCvAhYm49DLXF2x4XsP4C1OzmN9GIphc2qcOfzROHG+jbJzNvF
 i78bqKJiwGEoZa98q4FUDWVOxl4atksZQMBkbH8af9VQdalkmjjncqcKXdK8Y8v390Pv
 jU6l9eivPTLG+mPlW65d7wBzhvQhm4VRbJGm3gIebxQAH+tWI0m3c1mUBI3XQ7vpnVzh
 PneF/lfRS/rYKtx9FCZgwTLk4YsoT2xtecmctQo4Kz6sL1pkzr1oAGPpb+OlTK8a97Pk Og== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2uea7qud3g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 07:16:25 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L7DbGg129142;
 Wed, 21 Aug 2019 07:14:25 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2ug269nkf7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 07:14:25 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7L7D8A1016294;
 Wed, 21 Aug 2019 07:13:08 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 21 Aug 2019 00:13:08 -0700
Date: Wed, 21 Aug 2019 10:13:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: dragan.cvetic@xilinx.com
Subject: [bug report] misc: xilinx_sdfec: Add ability to configure LDPC
Message-ID: <20190821071302.GF26957@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=1 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908210078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=1 spamscore=0 clxscore=1015
 lowpriorityscore=1 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908210078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_001627_015162_22DD7E92 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 3.0 BIGNUM_EMAILS          Lots of email addresses/leads
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

Hello Dragan Cvetic,

The patch 20ec628e8007: "misc: xilinx_sdfec: Add ability to configure
LDPC" from Jul 27, 2019, leads to the following static checker
warning:

	drivers/misc/xilinx_sdfec.c:504 xsdfec_reg1_write()
	warn: potential integer overflow from user 'no_packing << (10)'

drivers/misc/xilinx_sdfec.c
   492  static int xsdfec_reg1_write(struct xsdfec_dev *xsdfec, u32 psize,
   493                               u32 no_packing, u32 nm, u32 offset)
   494  {
   495          u32 wdata;
   496  
   497          if (psize < XSDFEC_REG1_PSIZE_MIN || psize > XSDFEC_REG1_PSIZE_MAX) {
   498                  dev_dbg(xsdfec->dev, "Psize is not in range");
   499                  return -EINVAL;
   500          }
   501  
   502          if (no_packing != 0 && no_packing != 1)
   503                  dev_dbg(xsdfec->dev, "No-packing bit register invalid");

Instead of writing invalid data, why not just return -EINVAL?

   504          no_packing = ((no_packing << XSDFEC_REG1_NO_PACKING_LSB) &
                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Otherwise we have an integer overflow.

   505                        XSDFEC_REG1_NO_PACKING_MASK);
   506  
   507          if (nm & ~(XSDFEC_REG1_NM_MASK >> XSDFEC_REG1_NM_LSB))
   508                  dev_dbg(xsdfec->dev, "NM is beyond 10 bits");
   509          nm = (nm << XSDFEC_REG1_NM_LSB) & XSDFEC_REG1_NM_MASK;
   510  
   511          wdata = nm | no_packing | psize;
                             ^^^^^^^^^^
When I'm reviewing integer overflow warnings, I look to see if the
variable is re-used after the overflow, and this one is re-used here.
It's probably harmless but it's sort of a pain to review.

   512          if (XSDFEC_LDPC_CODE_REG1_ADDR_BASE + (offset * XSDFEC_LDPC_REG_JUMP) >
   513              XSDFEC_LDPC_CODE_REG1_ADDR_HIGH) {
   514                  dev_dbg(xsdfec->dev, "Writing outside of LDPC reg1 space 0x%x",
   515                          XSDFEC_LDPC_CODE_REG1_ADDR_BASE +
   516                                  (offset * XSDFEC_LDPC_REG_JUMP));
   517                  return -EINVAL;
   518          }
   519          xsdfec_regwrite(xsdfec,
   520                          XSDFEC_LDPC_CODE_REG1_ADDR_BASE +
   521                                  (offset * XSDFEC_LDPC_REG_JUMP),
   522                          wdata);
   523          return 0;
   524  }

See also:
drivers/misc/xilinx_sdfec.c:504 xsdfec_reg1_write() warn: potential integer overflow from user 'no_packing << (10)'
drivers/misc/xilinx_sdfec.c:509 xsdfec_reg1_write() warn: potential integer overflow from user 'nm << (11)'
drivers/misc/xilinx_sdfec.c:540 xsdfec_reg2_write() warn: potential integer overflow from user 'nmqc << (9)'
drivers/misc/xilinx_sdfec.c:544 xsdfec_reg2_write() warn: potential integer overflow from user 'norm_type << (20)'
drivers/misc/xilinx_sdfec.c:548 xsdfec_reg2_write() warn: potential integer overflow from user 'special_qc << (21)'
drivers/misc/xilinx_sdfec.c:554 xsdfec_reg2_write() warn: potential integer overflow from user 'no_final_parity << (22)'
drivers/misc/xilinx_sdfec.c:559 xsdfec_reg2_write() warn: potential integer overflow from user 'max_schedule << (23)'

regards,
dan carpenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
