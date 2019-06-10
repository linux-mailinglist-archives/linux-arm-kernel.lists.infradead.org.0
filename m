Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFF63BAD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 19:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NHq2oifPvN/SWs59abhgHF2+gzklhssqxCFQn9Kp9Lc=; b=nsM+DOfpKqKqzI9DALgP3LNxs
	rRP7T0i9KZfmgpvMATPR01tFch4JpW3p5X9X7y59SyKOg4lopMmAdG7eK3KHP3D4NPj5V3e09pgPu
	NoyDHh/XV3vbF337nKvz3WkoKg4mO0xNln403J6dQLVYhMM3ds9ANBajsPfEACOwsfqJj/7EzONwm
	HU3YL2TZFDD1nCK0nJOodRmH2hlpLy867xmCs/H7TNqzGI8FmpyEyC/QLhwXCAGUangWKRBT0D1SC
	rnZY3T/emlcTQQIUsXIFyAvrr89ci4vs1btNgWfL80DFRV9GRmnb7sBq8ERF/MgeNbnwdGelPhhQq
	L4tySbDxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNvE-00026k-Il; Mon, 10 Jun 2019 17:17:28 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNv6-00026L-6V
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 17:17:21 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5AH9LVu063324;
 Mon, 10 Jun 2019 17:17:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=9FkmUjvyN8H/QH8XIc5IIkwUov+U2wYpeDNQ6ZQm7Iw=;
 b=o5/B+j0mMS1GI8a9zyhd+Ew+CzaKEU+uo65gCuv+P7MYBwqtr4077C4T9TDpZsrTPGaG
 2hPllZdfLnk7X9kEP7PBolZizmOJDzNFEdGbhHPx2bZMee1qe2vgUzxU8JMDW5N2t8zY
 n1G6TJF95I+Mzeh+W/rN51jyTuz38NdirQcZ27xvid634A/MgiuViEOrc+oimCs3BQUS
 vY2/xiZETMX1GfecJYLXgWkBGPrmRC8xImOcjQ0+afcweRDezusuATG2X3OJV1a62HLg
 F+QZouIn0CZx1nZFCS2BegUsbaNCXd2+8wTDBWiiFBJOjI+4NCw0X78ecCXiMokSBV+9 qA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 2t02hegcq4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 10 Jun 2019 17:17:15 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5AHHFoU123791;
 Mon, 10 Jun 2019 17:17:15 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2t024txpmj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 10 Jun 2019 17:17:14 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5AHHC8E000308;
 Mon, 10 Jun 2019 17:17:12 GMT
Received: from [10.209.242.19] (/10.209.242.19)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 10 Jun 2019 10:17:11 -0700
Subject: Re: [GIT PULL] clk: keystone: changes for 5.3
To: Tero Kristo <t-kristo@ti.com>, linux-clk <linux-clk@vger.kernel.org>,
 Stephen Boyd <sboyd@codeaurora.org>, Santosh Shilimkar
 <ssantosh@kernel.org>, Michael Turquette <mturquette@baylibre.com>
References: <3bd8aa21-60a5-f36a-b86f-425ce4f0163e@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <fe1da566-d8f4-8f53-cad7-d3b2a6e2c638@oracle.com>
Date: Mon, 10 Jun 2019 10:17:11 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
 Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <3bd8aa21-60a5-f36a-b86f-425ce4f0163e@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9284
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906100117
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9284
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906100117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_101720_327570_51CE5990 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi8xMC8xOSA1OjEzIEFNLCBUZXJvIEtyaXN0byB3cm90ZToKPiBIaSBTdGVwaGVuLCBNaWtl
LCBTYW50b3NoLAo+IAo+IEhlcmUncyBhIHB1bGwgcmVxdWVzdCBmb3IgdGhlIGNsb2NrIGNoYW5n
ZXMgZm9yIGtleXN0b25lIFNvQyBmb3IgNS4zLiAKPiBUaGUgcGF0Y2hlcyB3ZXJlIGFja2VkIGJ5
IFNhbnRvc2gsIHNvIEkgdG9vayBsaWJlcnR5IHRvIGNyZWF0ZSBhIAo+IHB1bGwtcmVxdWVzdCBm
b3IgdGhlc2UgYWxzby4gSSBzbmlwcGVkIHBhdGNoICM1IG91dCBvZiB0aGUgc2VyaWVzIChpdCBp
cyAKPiBhZ2FpbnN0IGRyaXZlcnMvZmlybXdhcmUpIGFuZCBhbSBwbGFubmluZyB0byBzZW5kIGEg
c2VwYXJhdGUgCj4gcHVsbC1yZXF1ZXN0IGZvciB0aGlzLCBvciBhbHRlcm5hdGl2ZWx5IGFncmVl
IHdpdGggU2FudG9zaCBob3cgdG8gaGFuZGxlIAo+IGl0Lgo+IApbLi4uXQo+IAo+IFRoZSBmb2xs
b3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgCj4gYTE4ODMzOWNhNWEzOTZhY2M1ODhlNTg1MWVk
N2UxOWY2NmIwZWJkOToKPiAKPiAgwqAgTGludXggNS4yLXJjMSAoMjAxOS0wNS0xOSAxNTo0Nzow
OSAtMDcwMCkKPiAKPiBhcmUgYXZhaWxhYmxlIGluIHRoZSBnaXQgcmVwb3NpdG9yeSBhdDoKPiAK
PiAgwqAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2tyaXN0
by9saW51eCAKPiB0YWdzL2tleXN0b25lLWNsay1mb3ItNS4zCj4gCkFtIGFzc3VtaW5nIE1pa2Uv
U3RlcGhlbiB3aWxsIHBpY2sgdGhpcyB1cC4KClJlZ2FyZHMsClNhbnRvc2gKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
