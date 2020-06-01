Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D7E1EAC1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 20:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z53SOPms3MnroHVlKqHpUDt4dXp+UIsFBMufdri76gw=; b=E5klOKLKoddr5M
	2K0ybC+8srS6X7lj2K7ZO3qBRnpviFtw90jZLN1+u3pFYLAAxwFFKujQDtSTjMl4bPzy6T2eZAJE1
	mKiTOgYN4FgvVHlqCN6YcY1xJBrl9QMWv3fLg5YSfYR9cgB545HclxR9esnhDWLAB9UA7J0vrT4V1
	f5JutF5RYVtPFRSNTSw2ge4ez3yq3AYO4/R8g4XaDHdPJr62I8kG2ImyitdwCud3vr8IYlvS7q8Gw
	NHDjA+UFoXc/r/IMxN+8ClwhGSFGDzr/1iYWOFtDtX3ZfgTfwF8REltMm/D9EMa8rdez/0Mxbc6k/
	HsMjJkkQHSpP3kVR42CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfpDc-0005ag-JU; Mon, 01 Jun 2020 18:31:28 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfpDX-0005aG-1K
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 18:31:24 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 051IGOkB133702;
 Mon, 1 Jun 2020 18:31:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=klYhvleN5+bHtn61y7WVGwD1VVLVcs1uWE0ZQPZDGoA=;
 b=XpxeXoezca5asoGN6eYmhtqWCb0uWLJ+p24yfEsWCpdUE+jBOyMKCU+0HfW8ABik6+5D
 b/9JkCwWFahi4LJ5zZ8D9LpQcUbeZVtfWaDGSCawUrSVAMyPlrnwo4McWwN2WxLTEH3s
 nvsNw2+qt4H8maj/l24WmychyKJAUJSGR0KDsVSUyDSyYPyXye0j9Kq1UaFu3WAIhpyV
 dIQuYbWKfpTbwQfkLxixpmlAQp9wQVoayGzRRGW8VPww8YOaVK6j1Y9XkQtvocbMs5mu
 20q1gicdQ8F1TqrcBaZzgxslNayWq5KUcYdI/19OB1499ZgF/8GfwGmobQWtzUztoz/l GA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 31bfem05wg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 01 Jun 2020 18:31:14 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 051IDrYw029652;
 Mon, 1 Jun 2020 18:31:13 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 31c25ke6xs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Jun 2020 18:31:13 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 051IVBmD031819;
 Mon, 1 Jun 2020 18:31:11 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 01 Jun 2020 11:31:11 -0700
Date: Mon, 1 Jun 2020 21:31:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()'
 which is unused and broken
Message-ID: <20200601183102.GS30374@kadam>
References: <20200531073716.593343-1-christophe.jaillet@wanadoo.fr>
 <87h7vvb1s3.fsf@belgarion.home>
 <a2e34c9a-676f-d83f-f395-7428af038c16@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2e34c9a-676f-d83f-f395-7428af038c16@wanadoo.fr>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 spamscore=0
 malwarescore=0 bulkscore=1 mlxscore=0 phishscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006010137
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=3 phishscore=0 clxscore=1011
 impostorscore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=3
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006010137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_113123_170395_3B619712 
X-CRM114-Status: GOOD (  19.80  )
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
Cc: linus.walleij@linaro.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, haojian.zhuang@gmail.com,
 linux-gpio@vger.kernel.org, daniel@zonque.org,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 01:31:23PM +0200, Christophe JAILLET wrote:
> Le 01/06/2020 =E0 10:58, Robert Jarzmik a =E9crit=A0:
> > Christophe JAILLET <christophe.jaillet@wanadoo.fr> writes:
> > =

> > > Commit 6d33ee7a0534 ("pinctrl: pxa: Use devm_pinctrl_register() for p=
inctrl registration")
> > > has turned a 'pinctrl_register()' into 'devm_pinctrl_register()' in
> > > 'pxa2xx_pinctrl_init()'.
> > > However, the corresponding 'pinctrl_unregister()' call in
> > > 'pxa2xx_pinctrl_exit()' has not been removed.
> > > =

> > > This is not an issue, because 'pxa2xx_pinctrl_exit()' is unused.
> > > Remove it now to avoid some wondering in the future and save a few Lo=
C.
> > > =

> > > Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> > Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>
> > =

> > Would be even a better patch with a :
> > Fixes: 6d33ee7a0534 ("pinctrl: pxa: Use devm_pinctrl_register() for pin=
ctrl registration")
> =

> I was wondering it was was needed in this case.
> The patch does not really fix anything, as the function is unused. Or it
> fixes things on a theoretical point of view.

There is no concensus...  We should call a vote on this at Kernel
Summit.  :P

regards,
dan carpenter



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
