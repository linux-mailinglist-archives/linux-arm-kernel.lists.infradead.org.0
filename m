Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4024852428
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wl2Us2NbJKRJjbduvQMHua82Kj+p75L8APpD6V1Xv9E=; b=AymffmGMDoSNds
	6bREaQQCfZ8Xv1RevzZr3diVBvW2BXjjVaLlVrqRA7Qy5EwxSfBikXPPTaobzlMGJtYGJd1wvabj5
	Gu8uRcgFWljLQXoLZyV1LzTWClx951C1gbMLZqlbXlHpVMn9w3VsIAjN0XB4ogn4fVocz/gQDEMjW
	VrXUAEoxvc/Un6U6vUyd55F88JY4SBgni9SnvkVd4wyhgK76TXpiP3ZGAjb20uwBJgRMKDFmi7S5k
	IKoJm/G6vSxErlVbbTKKaz/xnU8/sJDugVYOE06pZTc3gl5BLckN1NgKQUEhvQcngyL33WfAnfN9q
	7PYd7eYrwYNJ+adKLdoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffgJ-0007Hj-VB; Tue, 25 Jun 2019 07:15:55 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfffw-0007Fy-2k
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:15:33 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5P7E6fe172871;
 Tue, 25 Jun 2019 07:14:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=VCtVIFADiY591Ti848vdlTegsKNuKrSqC2k/Krpp26k=;
 b=DD0xLV84I6n5ZDF5ebW5z589+jSDJbReNSdhgGpo7N2z3w7uEGPwRjb1a7h2PQKx1/1L
 k2hAEwyAlpik9HIjp7i/XMxmw/887gX4qpeyJAhf8Fan/tp76QIEzpf3QQrsfGTSmvmo
 ePlyQiDzj88vxxg30KC5TA/nxCW2SpKy3BCoBgT9D47iJkSG3ZuKF/gFGunJMuH5vM6/
 GyXWTptBwrKyHuC1J0VPWvrV52ZVMx0VHtdfvVyOliWBUXeC+5cSgzWrUNK9MfS3HZe4
 76jh6NIevXpXwhvlRsxx5llxmD0FNT4LZCgSIR7ZaAJMO8ZbNrwHpyl4MCoueQpOykZq Qw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2t9brt2cvc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 07:14:08 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5P7DUmE166958;
 Tue, 25 Jun 2019 07:14:07 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2t9acbxgyg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 07:14:07 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5P7E3pl020338;
 Tue, 25 Jun 2019 07:14:03 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 25 Jun 2019 00:14:02 -0700
Date: Tue, 25 Jun 2019 10:13:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2] drm/mcde: Fix uninitialized variable
Message-ID: <20190625071354.GW18776@kadam>
References: <20190618115245.13915-1-linus.walleij@linaro.org>
 <20190618123045.GF18776@kadam>
 <CACRpkdaqKzF=WaRiDPi6XmV_=30=A2rigWLSjuFw=PdG=cG4OQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdaqKzF=WaRiDPi6XmV_=30=A2rigWLSjuFw=PdG=cG4OQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906250059
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906250059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_001532_429957_19F20784 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 12:09:54AM +0200, Linus Walleij wrote:
> On Tue, Jun 18, 2019 at 2:31 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> 
> > Thanks!
> 
> Recording this as Acked-by: when applying.
> 

That's is an honour for me.  I figured that your Signed-off-by dwarfed
my Ack.  :P

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
