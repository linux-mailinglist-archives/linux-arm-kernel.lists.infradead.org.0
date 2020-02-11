Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA011591CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:25:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHw2KMM2YuVIBBHDMStT59S5IIfTd4iIJfpwRl9FLJA=; b=Qih1DilOHRfJ/b
	i+1Y/zWoLJjRgS0Fk3wlKWnIvPZxyx5ylTrApiNuurHDvffKE1PsjCy+XSbA7itP+MQNJ7akZ+N65
	OsgvvnTkH7myM0I/W+r9ppe6/Jb6JyCNs4T1T258gnegtHXszNr66h48lleVMf58mldaQKHGASQCZ
	LNI1m4Pgt9QfkkAwWIWWpt5ZeO6MKYcVBHZH9TItLfjp4xveQ+fI52xVEiW9lvVOzF44j8a89XZSv
	lMHgHqevbu4jq1YkcpiBauBUb2DRDaHKZPhPCfd4KbB+APYqgYhVX4Jvs9XY47UaOVlhA+MdLDJty
	UWcH4dSpbVDXyM8LyYkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WTa-0004OI-6U; Tue, 11 Feb 2020 14:25:22 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1WTQ-00046e-FY; Tue, 11 Feb 2020 14:25:13 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01BE8TeY039237;
 Tue, 11 Feb 2020 14:24:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=PpYYwjfoBRikygNpgflbPjeJfJ8t4TVGHGA07sm2hFQ=;
 b=SlWK4bpqL19iHWpiuiq87GCSLAHcSqOGrGwcA5O+frS+zQLvF/B/4Ij2N6vju1Zm1Epg
 gNySD+4SWyjAttwyeafLhsYDh54N43PICK2dGTdM9YakvYNsDoLrOAk8eqccAH9JtncN
 b+d8UI+tY/Tea90BZyjQkwi4TuyXp9IMQpUfCs6+MCn4V97YRxir69ovdUgVMlK6JVSQ
 5P1Wbt2G1197BSRrPQm5QItMNb2qahzD/k29NNm+kK2M/T8wMtQ6A8sJqT9oVqadwyiA
 OuJY7iqP9W30pfuq/WHS7cCCQE20K2qTXdWwb/XWn7xcKBApix13OY+43na3VL0nr9/2 Mg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2y2jx63ugf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Feb 2020 14:24:44 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01BE8Sxt108489;
 Tue, 11 Feb 2020 14:24:44 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2y26sr7vp7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Feb 2020 14:24:44 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01BEOgAu010402;
 Tue, 11 Feb 2020 14:24:42 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 11 Feb 2020 06:24:41 -0800
Date: Tue, 11 Feb 2020 17:24:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] staging: vc04_services: remove set but unused
 variable 'local_entity_uc'
Message-ID: <20200211142433.GG1778@kadam>
References: <20200211134356.59904-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211134356.59904-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 mlxscore=0
 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002110107
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 priorityscore=1501 adultscore=0 phishscore=0 impostorscore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 mlxscore=0 suspectscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002110107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_062512_653588_7C998914 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, marcgonzalez@google.com,
 linux-kernel@vger.kernel.org, nachukannan@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 nishkadg.linux@gmail.com, jamal.k.shareef@gmail.com, nsaenzjulienne@suse.de,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 09:43:56PM +0800, YueHaibing wrote:
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_use_internal:
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2346:16:
>  warning: variable local_entity_uc set but not used [-Wunused-but-set-variable]
> 
> commit bd8aa2850f00 ("staging: vc04_services: Get of even more suspend/resume states")
> left behind this unused variable.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index c456ced..d30d24d 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -2343,7 +2343,7 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>  	enum vchiq_status ret = VCHIQ_SUCCESS;
>  	char entity[16];
>  	int *entity_uc;
> -	int local_uc, local_entity_uc;
> +	int local_uc;
>  
>  	if (!arm_state)
>  		goto out;
> @@ -2367,7 +2367,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>  
>  	write_lock_bh(&arm_state->susp_res_lock);
>  	local_uc = ++arm_state->videocore_use_count;
> -	local_entity_uc = ++(*entity_uc);
                          ^^
This ++ is required.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
