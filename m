Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431683747A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nipbNnekOGpfvlPSb6XEEpESd+O1F89OIbCl4pAIFR4=; b=UyOULiEF2uyyFG
	pz9GUPPRGIOTvREeDGGfIo8pl8HgK1GUTkfphmcl/kMnSNBtLEiPb76+8SAkvvJwQdmaF/V2MliA6
	IZmjyN6tXKR2dgjb2FXV7PeuQpodEb42+6peOyhQr+PcKWCCQC2I/TuCWXxKlU8wr6+XJfPKa72Lo
	TRI5PLJAzSnTFyBDwTkjZhUXxzaYPLbRowpI5UCiNUYueKyrJG2a+NUjjkrEwDAj8M6rGHOqUIy0L
	yK3NqtRTOvpxylAxjBgNh8FOTvG4qZv/60cvp3ToFKXfhIwuz4xjUsELkP0OTfdWuXo+FKraEjgRS
	wneo9NI4hvKyfRayXM7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrme-0000eu-DX; Thu, 06 Jun 2019 12:46:20 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYrmY-0000eR-A6
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:46:15 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x56ChqtW003123;
 Thu, 6 Jun 2019 12:45:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=suyPrwakIpx4/GT/1pO6R0rUGM7UxiWyf4SfHp3I1Gg=;
 b=z1VhShHb2i7HnW0uk6ZwccsbeHFgBJW4/hx22fhDyqH28AJ8xAcapEeLDVpLjk9rbrMW
 UisNBRZh0n+QqG1pVdBjtjrz1Mxr/rvvYdsTOEuevBWAk0FoGOSTj6HF8fIVUzRI051K
 mb7wXoROtxyO9AHeQFBky8CcvcAMh+oGHExVMojIgLxKzhneo1dr/j9xe6XwHQmJTEMH
 JLOi6Jjyc56J3HJTAEdiryvLWQKNNw3awF7CGTCPufdE975bApnwDw7SP5clqDMbGYWo
 XO/xt7wN8y+m8aZWAhjmwx7VCtLdFqxZKgJw8lNUag1KkZxTNMpW3JuUh5HLiPVb6e9R jw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2sugstr6hv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Jun 2019 12:45:50 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x56ChtjB099122;
 Thu, 6 Jun 2019 12:45:50 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2swngje01v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Jun 2019 12:45:49 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x56Cjho5021500;
 Thu, 6 Jun 2019 12:45:43 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 06 Jun 2019 05:45:42 -0700
Date: Thu, 6 Jun 2019 15:45:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/7] media: cedrus: Fix decoding for some H264 videos
Message-ID: <20190606124533.GN31203@kadam>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-4-jernej.skrabec@siol.net>
 <20190603115536.j5lan6wtmbxpoe2k@flea>
 <2536664.ljALn0aKaT@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2536664.ljALn0aKaT@jernej-laptop>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9279
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=769
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906060091
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9279
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=802 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906060091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_054614_438953_9DFD6088 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMDU6Mzc6MTdQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IERuZSBwb25lZGVsamVrLCAwMy4ganVuaWogMjAxOSBvYiAxMzo1NTozNiBDRVNU
IGplIE1heGltZSBSaXBhcmQgbmFwaXNhbChhKToKPiA+IGludCBjdXJyZW50ID0gMDsKPiA+IAo+
ID4gd2hpbGUgKGN1cnJlbnQgPCBudW0pIHsKPiA+ICAgICBpbnQgdG1wID0gbWluKG51bSAtIGN1
cnJlbnQsIDMyKTsKPiA+IAo+ID4gICAgIGNlZHJ1c193cml0ZShkZXYsIFZFX0gyNjRfVFJJR0dF
Ul9UWVBFLCAweDMgfCAoY3VycmVudCA8PCA4KSkKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl5eXl4KVGhpcyBzaG91bGQgYmUgInRtcCA8
PCA4IiBpbnN0ZWFkIG9mICJjdXJyZW50IDw8IDgiIHRob3VnaC4KCgo+ID4gICAgIHdoaWxlICgu
Li4pCj4gPiAgICAgICAgLi4uCj4gPiAKPiA+ICAgICBjdXJyZW50ICs9IHRtcDsKPiA+IH0KPiAK
CnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
