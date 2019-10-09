Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E03BD1384
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 18:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H7gdztd77YFL8bqfb81Yy573psAkYiMA1VfRY4ubQzM=; b=czKo4ZUVpjyaD/7+fm7i+44nj
	KjEfJXwyjrdwXYAw9/cVcXgvfKrOG6P+9d0zD8J9QK2+BIylxkesIgdcMlA5iS2MpR7ZbvHMJIvwZ
	UmqMPMxXgR4cm+lWABkzhPmrQC5jKtCIgb70oUz2KXWjKWvEtpRWzV4xiqMduqvS3Uq7Hjn5K30ed
	vlOZH+kMtSgnMG2nmA5SuMdbj5m4yqzak4CspZ1FkVirZwa8ZNLpMbJ8n0ipSGbsvO2IJxZnr8hPg
	F2drGTLAR8zv2UNqMjxEMHArkqKrVbCzEZ2prX28fY9uynWgaJeuGpoLtuzEk74+Q82OjYlROGnbj
	SEkuoxq7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIEQg-00027a-I6; Wed, 09 Oct 2019 16:03:10 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIEQX-00026x-Me
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 16:03:03 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99Fj0MG178749;
 Wed, 9 Oct 2019 16:02:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=5eyqqcNyRkIYJ/KfstQRnTPLVlNRh+PVIx0mtGqGQzI=;
 b=WycN9nMEm1Z1hwXQ6EnSR9nzH8nWxZAiSQQX0AJ/m1db544ssaE+cNclh6kS79KwtPqW
 qkyCY4KWmDxR2QHbMeRKRSas2ynmKu4pCpSiDEIs4uh9i3sE3jUTsO8MJhyolRtylsx9
 1n9MnIKyyis6+RkLF18ox55DJgLzUNhl2YWcmiClaqUJoiXpm2VIx5GhE3QsHpcZAuiW
 vSgqjdjeAMa+IZ+p3ceeyOs22az2yH9LqV0e1PUAzPercLk57ONTVESeFfv7Hos5PNMv
 aJRGAHWYW/0KKLFwHHg3a3tYJsncOnlDBsFxVPuKg3Z3jsfNd1hIYe5lQJdL6NHRo90k OQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2vejkunqy3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 16:02:56 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x99FhBiM184467;
 Wed, 9 Oct 2019 16:02:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2vhhsmudke-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 16:02:55 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x99G2qL5007340;
 Wed, 9 Oct 2019 16:02:53 GMT
Received: from dhcp-10-159-237-174.vpn.oracle.com (/10.159.237.174)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 16:02:52 +0000
Subject: Re: [PATCH v3 00/14] dmaengine/soc: Add Texas Instruments UDMA support
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, vkoul@kernel.org,
 robh+dt@kernel.org, nm@ti.com, ssantosh@kernel.org
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <c567c1a2-2e74-3809-8e0f-4c2049ba4747@oracle.com>
 <7dd18208-1ca5-c902-dc11-edbd4ded51ed@ti.com>
From: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>
Organization: Oracle Corporation
Message-ID: <5b2d27ca-1a1a-6d17-f5d8-62e7eb76c39b@oracle.com>
Date: Wed, 9 Oct 2019 09:02:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7dd18208-1ca5-c902-dc11-edbd4ded51ed@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090144
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_090301_872657_67BDA9F8 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMC84LzE5IDM6MDkgQU0sIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+IEhpIFNhbnRvc2gs
Cj4gCj4gT24gMDQvMTAvMjAxOSAxOS4zNSwgc2FudG9zaC5zaGlsaW1rYXJAb3JhY2xlLmNvbSB3
cm90ZToKPj4gT24gOS8zMC8xOSAxMToxNiBQTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+PiBI
aSwKPj4+Cj4+PiBDaGFuZ2VzIHNpbmNlIHYyCj4+PiApaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wcm9qZWN0L2xpbnV4LWRtYWVuZ2luZS9saXN0Lz9zZXJpZXM9MTUyNjA5JnN0YXRlPSop
Cj4+Pgo+Pj4gLSBCYXNlZCBvbiA1LjQtcmMxCj4+PiAtIFN1cHBvcnQgZm9yIEZsb3cgb25seSBk
YXRhIHRyYW5zZmVyIGZvciB0aGUgZ2x1ZSBsYXllcgo+Pj4KWy4uLl0KCj4+IENhbiB5b3UgcGxl
YXNlIHNwbGl0IHRoaXMgc2VyaWVzIGFuZCBwb3N0IGRyaXZlcnMvc29jLyogYml0cwo+PiBzZXBh
cmF0ZWx5ID/CoCBJZiBpdHMgcmVhZHksIEkgY2FuIGFwcGx5IGszLXJpbmdhY2MuYyBjaGFuZ2Vz
Lgo+IAo+IEknbGwgd2FpdCBjb3VwbGUgb2YgZGF5cyBmb3IgZ3V5cyB0byBjaGVjayB0aGUgc2Vy
aWVzLCB0aGVuIEkgY2FuIHNlbmQKPiB0aGUgc3BsaXQgb3V0IHJpbmdhY2MgcGF0Y2hlcyBzZXBh
cmF0ZWx5Lgo+IApTb3VuZHMgZ29vZCAhIQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
