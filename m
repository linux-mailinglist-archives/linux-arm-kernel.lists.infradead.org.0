Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5421EB94F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 12:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBuFLflUbJmGOrr4HvZzU8hq7G7NiI31kIIs2Wgzp4w=; b=pxx8sAKgKzxoE1
	jHruDgm3BuHE0QJsl+7/VhFFl3Tmy2AYbebCo9k5+HakfkIbjKGuomxFDdMOMrlojo98qhItIZs/D
	WoGwG92kdYgYdIh009FKdnH0vPs1LMVb9ycGG5dR4kqYt8EcTLd9UC6O8PPzVAv0bHvumrfuGIJhu
	GCv4rco4TP95fTzE6VnKtjUgptRa3v4Wi6gza3hM3tEh1vXHRhZm76Pl3vlxm2rN3HTdDVB1yyOS1
	MJ8dBPCTP5wkpCLYiwfUh473r9DmzBBU7lR4+6aNVXZem0cAtXVvF4iQpO5GGyIIMksdPlQ539rt6
	GU1Uav/Ph4cL40A6/2yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg3w8-0002yG-74; Tue, 02 Jun 2020 10:14:24 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg3w3-0002xu-61
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 10:14:20 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052A6sOo132212;
 Tue, 2 Jun 2020 10:14:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=swcbUaccNJ2ObUZSzDpBo9ZauOSwoJRS6exD6gqCrCU=;
 b=wIe4ALv9/wRGYJcpZd9qqgLHMvSeZcgLTEcm5c3ySgAUN3hceuT676/SBIgCrwO5bf48
 4BEwbgzpQ+dRyHd9kA/vHZvr37YcEcEeMbJAhqgacGLd5JRMzAL0eEqcCwWH6jrYGdO8
 NwCsGSBWLbVWQQjl/7kcUEcFxAuDmMXMAatb2bZrZYklzE8U9I7HmFwcAYKdY/Hf/+6J
 XGm/VoatbZCSE/7UP4E3sKwktbmCArK3Kip9AlqV2csuj2mvJoxtPsDOLtVfXX3g6B5Z
 VMQOWudXp/fgerBR0d3st98G0eNw3LBTCKbIhYA1gC5zNFmnk1hwIlHE/kI88Ye8CObn 7g== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 31bfem36rr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 02 Jun 2020 10:14:00 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052A9Oqo014199;
 Tue, 2 Jun 2020 10:14:00 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 31c12nwney-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jun 2020 10:14:00 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 052ADthu027260;
 Tue, 2 Jun 2020 10:13:55 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 03:13:55 -0700
Date: Tue, 2 Jun 2020 13:13:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] pinctrl: freescale: imx: Fix an error handling path in
 'imx_pinctrl_probe()'
Message-ID: <20200602101346.GW30374@kadam>
References: <20200530204955.588962-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200530204955.588962-1-christophe.jaillet@wanadoo.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=2 spamscore=0 bulkscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006020068
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=2
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1011
 impostorscore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_031419_310670_90F5B4D0 
X-CRM114-Status: GOOD (  15.90  )
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
Cc: aisheng.dong@nxp.com, festevam@gmail.com, linus.walleij@linaro.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, stefan@agner.ch,
 gary.bisson@boundarydevices.com, linux-gpio@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 30, 2020 at 10:49:55PM +0200, Christophe JAILLET wrote:
> 'pinctrl_unregister()' should not be called to undo
> 'devm_pinctrl_register_and_init()', it is already handled by the framework.
> 
> This simplifies the error handling paths of the probe function.
> The 'imx_free_resources()' can be removed as well.
> 
> Fixes: a51c158bf0f7 ("pinctrl: imx: use radix trees for groups and functions")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---

You didn't introduce this but the:

	ipctl->input_sel_base = of_iomap(np, 0);

should be changed to devm_of_iomap().

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
