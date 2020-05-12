Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AF91CEB78
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 05:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9Ly99zFOq7ra2/I+FzTkEHV5kW2cON0cEh/AbbHGCY=; b=e2t2FBMDNbzErx
	G+/Y6xTHdE6H0UIcGWEX+ktus1k9lhqt5RMPfZvCwKJzHcC/c/suOQCcmke/AQYfKQ2eHvyKkVFJx
	m4rAd2P9teA2FF3ZaLnX96Lk2Xp6n/GVyxvQDbEMbeVoj3b+mKznWjL7PQZcAuiOcnY3NiokWgLLn
	lm1jVoLjnjR9UBPRVxOtKkteNBmZvA5rkIUJBwkuRJYJl+D+ofrIG24Y6/CA2dVl9iDnVO8LAGS0F
	j6beN21o/EhEUi/DCC7Z6Nb8ZFZrmC//2neTBSuMHC4rYFn7uVwD8SM5Lp+fyyXvNXbU8hb81HNVh
	+QrdWGs2JrMJLwNGmqrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYLdS-0007ws-2K; Tue, 12 May 2020 03:31:14 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYLdI-0007vg-Sa; Tue, 12 May 2020 03:31:06 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04C3N2vI072886;
 Tue, 12 May 2020 03:30:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=MUBSiWVQtghSeYGKdUfODIsM/8mICmZoZz5eTdHLjdY=;
 b=G4jxhVjRE8F3SYvnsq5Z66JVXSD2YZ80qMzCvufL/wZ/IrGa06NcMCZ4RIRh0WBJGF/F
 ihPe3rHKgljBGso8c1SHumqPoQ+glcm9vjUh608fisY7FK5+dHq+XSMuNjfa4XnEYFoN
 pYvFzuJAQbavg/xPCqqAg6S/miQfiWGwGZQaPXJdjSdsFys5hEkxHB/uyT/bB9+xTqvV
 tM6kAXQ1MyZGDYjvNT1Krp9rrvaK5HkEhDJZ+LScv16Xs4+wG0zYZbvHCdrk26JMjQcf
 6gMXL0LBq9dX4317rUhkZKdblbGGDylQVy6Br6J6G21//4mBMVGfCKZXLq2zHh6cFN1w Ug== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 30x3mbrgj8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 May 2020 03:30:51 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04C3MU8Q016039;
 Tue, 12 May 2020 03:28:50 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 30xbggtm6r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 12 May 2020 03:28:50 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04C3Skk4004003;
 Tue, 12 May 2020 03:28:47 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 11 May 2020 20:28:46 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-scsi@vger.kernel.org, Stanley Chu <stanley.chu@mediatek.com>,
 jejb@linux.ibm.com, alim.akhtar@samsung.com, asutoshd@codeaurora.org,
 avri.altman@wdc.com
Subject: Re: [PATCH v8 0/8] scsi: ufs: support LU Dedicated buffer mode for
 WriteBooster
Date: Mon, 11 May 2020 23:28:32 -0400
Message-Id: <158925392374.17325.4875533206353375605.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200508080115.24233-1-stanley.chu@mediatek.com>
References: <20200508080115.24233-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=889
 spamscore=0 suspectscore=0 phishscore=0 bulkscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005120029
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 impostorscore=0
 mlxscore=0 suspectscore=0 bulkscore=0 mlxlogscore=918 phishscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005120029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_203105_008071_4F513D4E 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 May 2020 16:01:07 +0800, Stanley Chu wrote:

> This patchset adds LU dedicated buffer mode support for WriteBooster.
> In the meanwhile, enable WriteBooster capability on MediaTek UFS platforms.
> 
> v7 -> v8:
>   - In exported funtion ufshcd_fixup_dev_quirks(), add null checking for parameter "fixups" (Avri Altman)
> 
> v6 -> v7:
>   - Add device descriptor length check in ufshcd_wb_probe() back to prevent out-of-boundary access in ufshcd_wb_probe()
>   - Fix the check of device descriptor length (Avri Altman)
>   - Provide a new ufs_fixup_device_setup() function to pack both device fixup methods by general quirk table and vendor-specific way (Avri Altman)
> 
> [...]

Applied to 5.8/scsi-queue, thanks!

[1/8] scsi: ufs: Enable WriteBooster on some pre-3.1 UFS devices
      https://git.kernel.org/mkp/scsi/c/817d7e140283
[2/8] scsi: ufs: Introduce fixup_dev_quirks vops
      https://git.kernel.org/mkp/scsi/c/c28c00ba4f06
[3/8] scsi: ufs: Export ufs_fixup_device_setup() function
      https://git.kernel.org/mkp/scsi/c/8db269a5102e
[4/8] scsi: ufs-mediatek: Add fixup_dev_quirks vops
      https://git.kernel.org/mkp/scsi/c/62c2f503b54c
[5/8] scsi: ufs: Add "index" in parameter list of ufshcd_query_flag()
      https://git.kernel.org/mkp/scsi/c/1f34eedf9bc1
[6/8] scsi: ufs: Add LU Dedicated buffer mode support for WriteBooster
      https://git.kernel.org/mkp/scsi/c/6f8d5a6a78cf
[7/8] scsi: ufs-mediatek: Enable WriteBooster capability
      https://git.kernel.org/mkp/scsi/c/29060a629135
[8/8] scsi: ufs: Cleanup WriteBooster feature
      https://git.kernel.org/mkp/scsi/c/79e3520f82cb

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
