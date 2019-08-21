Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CE59731C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=81VkD2LEYYogCeaRTBqf/jCrbin7m5ZLduzv8pmv1k0=; b=g+sn37vYY7+QND
	SC6XrDUrMy21JKRT8kWUVLQfBcLhxycNeNihWO2sUfI4Z+xiC0uX3nmOVI8vS3B19KWE25MyrKcBF
	vjRZw0STlBFNh9rgwKGntSK3xvTY9DrDOkt+4Gde4Z7S0JXllNNRXdlAs8pp4LfOnp9f0B8Wl1w8/
	LVBAbtHKxDhNJBunKHr1o5z+K4bgonM3GLFRViGODBBg/KXmfIKJNgluyTpRmgHG4czkGt4owrwDW
	xksJnUct9B+isvhs6/s2JnB+rcDKk8dqzKVpvFm98WXYbPXD1mA+ev6g5tNWTzKG1UfyDggK8GSQq
	ogy1QWEQKH8g0msI2x/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Knu-0005wb-1u; Wed, 21 Aug 2019 07:13:10 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0KnM-0005ts-2Z
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:12:38 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L791mB069845;
 Wed, 21 Aug 2019 07:12:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=UkzdarFDrfhRuiq/OBQbkRXp5JILT+bkLXzw0BylluI=;
 b=VQNuLRZovAi4VjZYkq3VxG6OgsbFoVCTY2ym+hN+ftuMpC6Ru0Hs+tTdrSSOGk2+QViR
 dazEUcCaZslBPvIVZK7jVGJTISuTmmC26cpL/s/CTdD/aIDXsFcoBxl2AmMBUFSMh4Cq
 OtUKy7Fr33zIvLT6kBKRmzdHpf9AICoRgXJG75FPKfGBKanl9WiFLbDTq2q9IoaCtkBy
 FGNE5ZWKwh+tZ8ouuuiyEO5lFMDxXzOdIFWLWinWzVdQVlDqfhPXQHRx9cqZZe9Un3rU
 cRMeS/SQMUf7gh40etFVERoQDs58HblzCxjDL/YoU3exEzwYHvyqpVgahC64d7XWLZES og== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2uea7qucb1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 07:12:35 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7L78Mv6051025;
 Wed, 21 Aug 2019 07:12:34 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2ugj7q418m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 07:12:34 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7L7CXQw020590;
 Wed, 21 Aug 2019 07:12:33 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 21 Aug 2019 00:12:33 -0700
Date: Wed, 21 Aug 2019 10:12:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: dragan.cvetic@xilinx.com
Subject: [bug report] misc: xilinx_sdfec: Add ability to configure LDPC
Message-ID: <20190821071228.GE26957@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908210077
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908210077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_001236_720727_F48A34B4 
X-CRM114-Status: GOOD (  16.87  )
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

	drivers/misc/xilinx_sdfec.c:727 xsdfec_add_ldpc()
	warn: pointer comes from user 'ldpc->la_table'

drivers/misc/xilinx_sdfec.c
   647  static int xsdfec_add_ldpc(struct xsdfec_dev *xsdfec, void __user *arg)
   648  {
   649          struct xsdfec_ldpc_params *ldpc;
   650          int ret, n;
   651  
   652          ldpc = kzalloc(sizeof(*ldpc), GFP_KERNEL);
   653          if (!ldpc)
   654                  return -ENOMEM;
   655  
   656          if (copy_from_user(ldpc, arg, sizeof(*ldpc))) {
                                   ^^^^
ldpc comes from the user.

   657                  ret = -EFAULT;
   658                  goto err_out;
   659          }
   660  
   661          if (xsdfec->config.code == XSDFEC_TURBO_CODE) {
   662                  ret = -EIO;
   663                  goto err_out;
   664          }
   665  
   666          /* Verify Device has not started */
   667          if (xsdfec->state == XSDFEC_STARTED) {
   668                  ret = -EIO;
   669                  goto err_out;
   670          }
   671  
   672          if (xsdfec->config.code_wr_protect) {
   673                  ret = -EIO;
   674                  goto err_out;
   675          }
   676  
   677          /* Write Reg 0 */
   678          ret = xsdfec_reg0_write(xsdfec, ldpc->n, ldpc->k, ldpc->psize,
   679                                  ldpc->code_id);
   680          if (ret)
   681                  goto err_out;
   682  
   683          /* Write Reg 1 */
   684          ret = xsdfec_reg1_write(xsdfec, ldpc->psize, ldpc->no_packing, ldpc->nm,
   685                                  ldpc->code_id);
   686          if (ret)
   687                  goto err_out;
   688  
   689          /* Write Reg 2 */
   690          ret = xsdfec_reg2_write(xsdfec, ldpc->nlayers, ldpc->nmqc,
   691                                  ldpc->norm_type, ldpc->special_qc,
   692                                  ldpc->no_final_parity, ldpc->max_schedule,
   693                                  ldpc->code_id);
   694          if (ret)
   695                  goto err_out;
   696  
   697          /* Write Reg 3 */
   698          ret = xsdfec_reg3_write(xsdfec, ldpc->sc_off, ldpc->la_off,
   699                                  ldpc->qc_off, ldpc->code_id);
   700          if (ret)
   701                  goto err_out;
   702  
   703          /* Write Shared Codes */
   704          n = ldpc->nlayers / 4;
   705          if (ldpc->nlayers % 4)
   706                  n++;
   707  
   708          ret = xsdfec_table_write(xsdfec, ldpc->sc_off, ldpc->sc_table, n,
                                                               ^^^^^^^^^^^^^^
This is not a bug, but it's more like an aesthetic thing.  I feel like
->sc_table should be tagged as a __user pointer, but I'm not sure of
the rules exactly.  Also the comments say it has to be page aligned but
it will I don't think anyone checks and it should work fine either way
because it just gets rounded down.

   709                                   XSDFEC_LDPC_SC_TABLE_ADDR_BASE,
   710                                   XSDFEC_SC_TABLE_DEPTH);
   711          if (ret < 0)
   712                  goto err_out;
   713  
   714          ret = xsdfec_table_write(xsdfec, 4 * ldpc->la_off, ldpc->la_table,
   715                                   ldpc->nlayers, XSDFEC_LDPC_LA_TABLE_ADDR_BASE,
   716                                   XSDFEC_LA_TABLE_DEPTH);
   717          if (ret < 0)
   718                  goto err_out;
   719  
   720          ret = xsdfec_table_write(xsdfec, 4 * ldpc->qc_off, ldpc->qc_table,
   721                                   ldpc->nqc, XSDFEC_LDPC_QC_TABLE_ADDR_BASE,
   722                                   XSDFEC_QC_TABLE_DEPTH);
   723          if (ret > 0)
   724                  ret = 0;
   725  err_out:
   726          kfree(ldpc);
   727          return ret;
   728  }

regards,
dan carpenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
