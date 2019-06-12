Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34B641B68
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 06:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i8aFJWTSsxEaRep4TaFCf3rMroz9IEQHw6f6m5DZ0io=; b=al7GWDEUSdSa03QWnJiu/i178
	oWaufSO6WDYVClOMIc2HQnibd7xG74lFmlBBQYL4My4sjNBz8rKRz6m4I/WOR9Dtt5WNfgaJgHzqY
	OMesC2sLtqKApvwPTrnkTYtxUbtEX2KCQzT8UTjJXc5DNUny8r3+3iHyPb4zXFQ9fFBK/L4g4LpYq
	rmHoEG3x8b131uqmg9QOFp8l51aK3yN6Y2MiDxpiPe/OUc7JAgG6w/2qyHo7FFCOi22pXvc0fzpPf
	4AmSIUqtfsAg72XpyGj2jPpvF0EBik4+JfxlwwXNQUhVuCa6fFf+HQwPYrQgy2OHp+5Av/NRmWkNH
	4XhHpGz3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1havKv-0008MQ-FJ; Wed, 12 Jun 2019 04:58:13 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1havKl-0008Ly-3C
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 04:58:04 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5C4nHVR161760;
 Wed, 12 Jun 2019 04:58:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=UPErHzUEHMsvEvWtARLqJhG31D512MGU/FAHAj83lwY=;
 b=gDM8dtkyjTlD5T0h/0J4gfvLcy/u7jI0gSY8EJqOqwo5fnskDG16tq0IGzq6V1/KDYMG
 ZAtYz7LQ4/+SuHEcTEAc0fTHal6IJr0DxaViLDJ0QZuDTGJ3SY81EgXmu+gqqA6rNEZ9
 FutmgBqy8y4ll9XJ60F8SFkzmZk0azmVMBHQBe47utha0ybkE4Vr/wUdlFqchEjnrm0G
 sWEvKQc922/vgkzFJT/4JiuhMAv7zKag+579GuqKqPaGx9A1f8dzRVT8LB0DB4r6UqnM
 Dw54ysEVEpMKRsCTRdwEN4JW/QHn783hnoqyXX6CVfQSs0SntcQYMNzM1JhuRQmaX1GL VA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2t05nqrx7u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 04:58:01 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5C4vSsO058063;
 Wed, 12 Jun 2019 04:58:00 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2t024us6v6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 04:58:00 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5C4vxuH031925;
 Wed, 12 Jun 2019 04:57:59 GMT
Received: from dhcp-10-159-243-244.vpn.oracle.com (/10.159.243.244)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 11 Jun 2019 21:57:59 -0700
Subject: Re: [GIT PULL] firmware: ti-sci: changes for v5.3
To: Tero Kristo <t-kristo@ti.com>
References: <5cfc0d85-a3f7-b96a-7bc6-c7b0250ed54c@ti.com>
From: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>
Organization: Oracle Corporation
Message-ID: <5612704b-d3f4-b51c-b9be-6df75bbe3772@oracle.com>
Date: Tue, 11 Jun 2019 21:57:57 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5cfc0d85-a3f7-b96a-7bc6-c7b0250ed54c@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906120032
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906120032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_215803_271886_A951864F 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>, "Ujfalusi,
 Peter" <peter.ujfalusi@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/11/19 10:42 AM, Tero Kristo wrote:
> Hi Santosh,
> 
> Here's the collection of the TI SCI firmware changes for 5.3.
> 
> This is based on the keystone clock driver pull request [1], which you 
> may want to wait until Stephen has picked it up.
> 
This is really going to be problem since both subsystem can go differently.
Does the compilation breaks with clock patches ? As long as arm-soc tree
doesn't break I don't want to have this clock tree dep.

Can you please clarify ? if there is dependency like that then I will need
an immutable branch from clock tree which I can pull in and then apply
soc patches.

If above is not possible, but am afraid, these patches have to wait till
the clock patches are available in Linus's tree.

Let me know.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
