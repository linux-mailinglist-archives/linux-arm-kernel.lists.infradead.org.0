Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858EBD1366
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 18:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=10Zug4OXhXcxlUZD8jO7NW0GG6fDeng7os6wvqG0TvM=; b=L+CsAfA3uYzm1MQLldJbj7rLc
	ey+LZUu3TNPgQn+jP/9kpDsWBjybwY/fZ9cRbmIIpUR9709V4SAi+hs/WeAn6p0bTnoKCL7pwpic3
	cibKzd9jsyZK+GwpfwmarYHHeTqrIrttDJNF/TX+uykaf7p2nocptJMPl4o9MRahb8ypR3M/pOhMu
	JZHgQSZ81pvMmwY/qponI6AAK81P9N2t/s8BiUQkfADIky1WVD+KQjx/LAGOozzKZVZnx3ZncM+/o
	wId8jwje3CEQMOr98urbV0LNPQCw+EswxQfdiEAU2IVfzTItVtJ8RO462DyVMqbQnpjVyA0K2EY1Y
	u3s4QvaRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIENo-0000aK-K7; Wed, 09 Oct 2019 16:00:12 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIENg-00085s-J3
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 16:00:06 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99Fj0WF166043;
 Wed, 9 Oct 2019 15:59:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=6mYjeh1BvbejmJuHCOd/rUIq7PAiU1Dm3NqS1tETj+Q=;
 b=FULtrCUrQfndlQUizOQTKq2+KQN5KY8ZzSFfG4OjFqVPEbku+62mB2xYmBkTMNZ01Deg
 xSqq6qoVVPp3h/eDMpVN5mpHinPu2Ygj8T2R99noEVmi4J7rcX74SyM5WfC1URNFFTmj
 NaOXjpTxJuuEmuWRY8qwtS787LM6udM4xF1KB6OEkQa80V3EaRv84r7eT9v7JHECocP3
 7bDL8i9wVZzaDgXGIcTQjngt29VBjnYobAetk0UP07s7m5epq68aONGtd5waRELfRk/s
 +B1MDbk39p+f5PlEy3E9bHiiQhO4qv3sO9LjNGo9V5+d7R+jCGXkRYHVnbVVyLODVXSQ bQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2vektrnew7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 15:59:48 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99FhUr2114458;
 Wed, 9 Oct 2019 15:59:48 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2vgev1qbem-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 15:59:48 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x99FxjUn004979;
 Wed, 9 Oct 2019 15:59:46 GMT
Received: from dhcp-10-159-237-174.vpn.oracle.com (/10.159.237.174)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 08:59:45 -0700
Subject: Re: [PATCHv8 1/9] dt-bindings: omap: add new binding for PRM instances
To: Tero Kristo <t-kristo@ti.com>, Sebastian Reichel <sre@kernel.org>
References: <20191008125544.20679-1-t-kristo@ti.com>
 <20191008125544.20679-2-t-kristo@ti.com>
 <20191008154655.u34wkbqgmelv3aea@earth.universe>
 <115ab938-e025-98fa-3b9e-0b3ced39307d@ti.com>
From: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>
Organization: Oracle Corporation
Message-ID: <dc2a9659-8593-e5d0-54b2-44d827e76759@oracle.com>
Date: Wed, 9 Oct 2019 08:59:43 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <115ab938-e025-98fa-3b9e-0b3ced39307d@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=4
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=697
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090144
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=4 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=777 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_090004_725494_05FF0804 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, tony@atomide.com, p.zabel@pengutronix.de,
 ssantosh@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/8/19 11:52 PM, Tero Kristo wrote:
> On 08/10/2019 18:46, Sebastian Reichel wrote:
>> Hi,
>>
>> On Tue, Oct 08, 2019 at 03:55:36PM +0300, Tero Kristo wrote:
>>> +Example:
>>> +
>>> +prm_dsp2: prm@1b00 {
>>> +=A0=A0=A0 compatible =3D "ti,omap-prm-inst", "ti,dra7-prm-inst";
>>
>> Nit: compatible values are sorted the other way around (most
>> specific first).
> =

> Hmm right, I would not like to re-post the whole series just for this =

> seeing all the acks are in place already.
> =

> Santosh, do you want to fix this locally or shall we post a separate =

> patch later on to fix this?
> =

No need. I fixed it up. Pls check.

git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git =

for_5.5/driver-soc

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
