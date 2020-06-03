Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285D41EC75D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 04:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SvFdeawnWu2LllIJ+m0vnG1MhK/BoEZRon25Uo49A8I=; b=lJ4toYwoIPU6JH
	g7vkHjXoEsJQOvoMcVceTWKOtNvx8V0wNMWK9eVbX9RERMtuFrzNO8DFgvJKdIcbRFnNMehw99qJV
	P8vwWoaQLvZeEffWSBgaGGcpKuiaTGEulwFSHYMqqL7Z2sA38BkDHI3YT+vr1VC8ZdrlTu3QG45YP
	xv7UDphj7vliAJt+TjBS4Yk/7vnJAFdS9KI0gT4xrXsm7MEe1atnOAY6ipqNxoD4iMJv9Pzznkq15
	TiAsSWGSoCesXPReo4zJ94LjrzcpTUMqe/GGmml8Rl6CJHtIzr+aiOQEwWfYS3zLNKYxV/hj0tew9
	rXb5RnslyZEvO1dGX5XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgJCe-0003IR-Bq; Wed, 03 Jun 2020 02:32:28 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgJCT-0003GR-WF; Wed, 03 Jun 2020 02:32:19 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0532QVmr187569;
 Wed, 3 Jun 2020 02:31:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=cJZJ6Aemad1d2VN1fwzQIoXZHDszWIODTXRnH8VAsQo=;
 b=kcVvjWPAJ4lmtKEbJXD+WlDXIVCFMMHnjWMAO6LbG0h+AsBi+iHosXwow+Ac7fWNgRtH
 LGIDm/tsI3QaGrU+s1pTAZ5BS52SdYDAKtefH2iULK7Y6p/fRRLlhN3KVXiPutLHHbJB
 NxYz37iXvjvQM3qQj90k86lHeKRjQfzdxhm5Zk60uoYZDAFPmoeqpImzq7yXEVarbRI3
 k5/fm4mDP5Am47EXUpBwRh6djaRHjPyf4VxodjkqRbFHOUzQj4sPScyDR+iiPXHFHcWm
 x6L25QNWabEyMA7weqqS/gbiehUR3nyK0F1QBy8wE1sel0BCHaLG3eucBAIXcUylBjUv 0Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 31bfem6s9k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 03 Jun 2020 02:31:50 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0532TQZP164353;
 Wed, 3 Jun 2020 02:31:50 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 31c12q5cuf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Jun 2020 02:31:50 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0532Vlbq032618;
 Wed, 3 Jun 2020 02:31:47 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 19:31:46 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: avri.altman@wdc.com, linux-scsi@vger.kernel.org,
 Stanley Chu <stanley.chu@mediatek.com>, alim.akhtar@samsung.com,
 jejb@linux.ibm.com
Subject: Re: [PATCH] scsi: ufs: Remove redundant urgent_bkop_lvl initialization
Date: Tue,  2 Jun 2020 22:31:36 -0400
Message-Id: <159114947917.26776.10217919465331125285.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200530141200.4616-1-stanley.chu@mediatek.com>
References: <20200530141200.4616-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=0 spamscore=0 bulkscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006030018
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1011
 impostorscore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006030017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_193218_126036_CDF7ECBE 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
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
Cc: bvanassche@acm.org, "Martin K . Petersen" <martin.petersen@oracle.com>,
 andy.teng@mediatek.com, cc.chou@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, peter.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, chaotian.jing@mediatek.com,
 matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 30 May 2020 22:12:00 +0800, Stanley Chu wrote:

> In ufshcd_probe_hba(), all BKOP SW tracking variables can be reset
> together in ufshcd_force_reset_auto_bkops(), thus urgent_bkop_lvl
> initialization in the beginning of ufshcd_probe_hba() can be merged
> into ufshcd_force_reset_auto_bkops().

Applied to 5.8/scsi-queue, thanks!

[1/1] scsi: ufs: Remove redundant urgent_bkop_lvl initialization
      https://git.kernel.org/mkp/scsi/c/7b6668d8b806

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
