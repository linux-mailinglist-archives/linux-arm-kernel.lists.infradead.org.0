Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE2E12F325
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 04:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7CT12vk8aG7i3YDCAytOLCCfgM3y0DtL9qntTpbfzw=; b=WB5ZlNMfamQ34s
	iO4IhLKL+WG9hfDRZs9go1uC4JyhvGnR3nWOvzcaseu8pZNQZOsu8Xq5Ui9a7viZxTIJRNZJqHKFB
	Dh1+ICYlkuM+a1/fbZzKcl9Gtwzwf59+orM0R42AW3KkCrRoiRnsRdrRExZBvYhH7ScC6WHJDZPlR
	AUIMnmQHjRtMxebdDpTVL22tpVbE8TIDeOCinpAnTxJ0DubLvlGRBmLw/0MZQOoikATzQCwLwOJz9
	ExQGGqqIJoRgHcmP24Ocu0RNugwUYa+GatvZknpS2lUksMsRN/6yE3zqeyAOjwCFIA0XJYUGA/f3o
	2ffEnS54s03Yyb/nhYTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inDCF-0007Lj-4P; Fri, 03 Jan 2020 03:00:19 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inDBx-0006iS-Nr; Fri, 03 Jan 2020 03:00:03 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0032xQCD081913;
 Fri, 3 Jan 2020 02:59:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=yQuBYj9lTweXO0mujRhwwsVZL/A5k0NPhbYSVXN9W/I=;
 b=alPFXMvnrCVxVoxo5gOpf3yv2rMI5ol1j5QkovRClw0xhZDZtHokpAXDv5TDG2XpED9B
 nWiN0gUW6+djWEJSWV3s9DiRyZ/ekPMg7BwNjLAKS93gDd1AwjF7qJ+HhqUHT5zgHAmE
 LL9kzjeqD5nPdtHgXaBIQCyiXO7j2XkIp1Gj+QWYCaLGIrMcLRQS+EzKfv5OVsQqJHdv
 UdUxJGZSGrwpjvFjwSqVuDeFFKD1jYuqch2Wc3sQFRv4fWaoVAVLP9n88e8zTlyaQuAf
 xOdlHArwJNTVtZYeuRXkgl9foJr0HqQDhC3JmssRSbXdmajYo6l5gBBZN6d1lpVYTlVW rg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2x5y0ptanx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 02:59:53 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0032xFib182529;
 Fri, 3 Jan 2020 02:59:53 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2x8gjbbbt1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 02:59:53 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0032xpPt012906;
 Fri, 3 Jan 2020 02:59:51 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 02 Jan 2020 18:59:50 -0800
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v2 0/6] scsi: ufs: add MediaTek vendor implementations
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <1577683950-1702-1-git-send-email-stanley.chu@mediatek.com>
Date: Thu, 02 Jan 2020 21:59:46 -0500
In-Reply-To: <1577683950-1702-1-git-send-email-stanley.chu@mediatek.com>
 (Stanley Chu's message of "Mon, 30 Dec 2019 13:32:24 +0800")
Message-ID: <yq11rsh5jod.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001030026
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001030027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_190001_892495_FAF9329A 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: f.fainelli@gmail.com, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, leon.chen@mediatek.com, andy.teng@mediatek.com,
 jejb@linux.ibm.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, beanhuo@micron.com,
 pedrom.sousa@synopsys.com, linux-arm-kernel@lists.infradead.org,
 bvanassche@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Stanley,

> This series provides MediaTek vendor implementations as below,
>
>     - Device reset
>     - Reference clock control
>     - Auto-hibernate enabling with customized timer value
>     - Clk-gating enabling with customized delayed timer value

Applied to 5.6/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
