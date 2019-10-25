Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E41CE4104
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 03:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7GMOCHLmSyK8pwBZ8dTmPRwXZZhfIViyEjKrg0kCKI=; b=mnar8OuGhrAzut
	6ovAaWpww5ul1n2sdZGQn8dY2HY5tFDG0Z3qhLxLYd5OkTDbZsttyFILVPtA9v8Vp4/bafTNOi4o9
	j60Q4jB6IAyVgVJ5l//bRxL/uOEhCtc45Rbhg40nC03KjztWZdrEkBF2932BPmPhdcItuCyFrsAFn
	rzk60lE0dFXJ97eAgprAnMsDRWmdIBW2cr7tUvmmfqPyCIs/cca9cPvCTeSRRAplS1MCOQPk5xAEc
	iEPkdsEHqRgFX3v735loXzBBADF+un1E8vO0sjWm3ABPXYV1i24TXBH+l2qstieY42UtCdp27bbtN
	/AaLs99ewCPUlpmz0I8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNoMg-0004Tr-UN; Fri, 25 Oct 2019 01:26:06 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNoMV-0004Sm-Dx
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 01:25:56 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9P1NqSs122870;
 Fri, 25 Oct 2019 01:23:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=pDOtmOIzPKP2G7G9G+hE9BxI+bSYJYRhJjFcyDJQPTk=;
 b=lWMSUgBweM7AK/8gOrNjukpVOHRPaiR0BpXITDFLyqF2aSqg/Qw9TlnM+qsUhcizbkEP
 LHHleO2wR76JjaP4GQJxz4dSIWxM7PfiCIyEEjju9B9fQDjdaz2hv812kyQDXrFdcGcA
 WpvK7DwprY5bq65//YYxK2FPRQ3as9a94FbPw0T1tenNQbbOQh70A9zqL+E4EUJ+J5nq
 un53IfqqagjuCQde0QGKsaIAtUK1GAJobTSv0aoorVFCVoX2CDNyrqG82RX6XdGjaSIr
 AnQjUP3zAJX5XWCB+xSnc3VvLTFBdQg2mWOpJfauQ2fj6BCqRfGYRSnQj8A1QpjNaHCT Dw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2vqu4r710f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 25 Oct 2019 01:23:55 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9P1Njci011142;
 Fri, 25 Oct 2019 01:23:54 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2vunbk67uj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 25 Oct 2019 01:23:54 +0000
Received: from abhmp0021.oracle.com (abhmp0021.oracle.com [141.146.116.27])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9P1NFIa029230;
 Fri, 25 Oct 2019 01:23:15 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 25 Oct 2019 01:23:15 +0000
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH trivial] scsi: Fix various misspellings of "connect"
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191024152633.30404-1-geert+renesas@glider.be>
Date: Thu, 24 Oct 2019 21:23:12 -0400
In-Reply-To: <20191024152633.30404-1-geert+renesas@glider.be> (Geert
 Uytterhoeven's message of "Thu, 24 Oct 2019 17:26:33 +0200")
Message-ID: <yq14kzxbou7.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9420
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=880
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910250013
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9420
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=982 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910250013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_182555_602125_16011DD4 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
Cc: Jiri Kosina <trivial@kernel.org>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 GOTO Masanori <gotom@debian.or.jp>,
 YOKOTA Hiroshi <yokota@netlab.is.tsukuba.ac.jp>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Geert,

> Fix misspellings of "disonnect", "reconnect", "connection",
> "connected", and "disconnection".

Applied to 5.5/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
