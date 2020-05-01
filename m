Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB411C1F84
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 23:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u8j+R3EvQEOTH1MyN/xbf1CVLowzLGtYbSQMNQf5y2U=; b=KpfcZEyfI+p4cXMAQ+t60eYhu
	oWjNZSf8vd7FAtj5p3VkA5DUor1qKPKM/A7GOx+qSI+pYVJ4KSYhaATrXZJ2XCvE6ObveEwkdG/xp
	1/+vcmFHkgf6T7cuJjTIJcQQp5T99DDdgGWGP9gROFtC1o/K6aYZ5/gCcA2swAIsqC/Vuye53GyXb
	WCgVh8G6UzDqmh2GfetV+X2BzW+rdogtIrX8EMhBy1ZEgHvnHiuIFGxeaOMaucWJ/UB5maKb3ALzC
	EaE31Xvq6zKbD2hQapg838QpzAW9WEl0XlmAM8oDk2WigOyvBDUZvXNBau0coyzE3r6zJvZ27zA0k
	bP88F469w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUdAE-0002be-BL; Fri, 01 May 2020 21:25:42 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUdA7-0002aa-5D
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 21:25:36 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 041LHZ5Q146248;
 Fri, 1 May 2020 21:25:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=zuSzrsLI04zpU7MyjpcOC3GXaiL6gjksE8kpIl6aVSM=;
 b=Do9iIi/vEPgj0bORsh1dUEGAmU61KxPit50mkIOi+hoGT9bJF+14+dgXFQXv22fY14Qy
 Miznh0jHO7jPpbQt5MG0Wz7VOvAnxaNpqrsnisSQo8eZQTtNZ0+s7FBXlp4Z9kwEln1F
 UkrJlOUu3Pw3NxzBrY28zTGP58o/t16Jwp3A1VOYXF2hYyZvxUHwNTObVx47PRrIXrwT
 EOP+i9693VRIaDihuDlI8Dkecdfrw1zp/+jupWS/2o2CChOzF1qPgkrdEODzKlXZpLy1
 88VMNVe6qckU/goNg0Dqe2nEbHiCUcHB5cR+Bjvwt34GTaJBrVCDxJWeHwt+eDLcUEFT AA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 30r7f5v3bg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 May 2020 21:25:22 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 041LH2xC013965;
 Fri, 1 May 2020 21:25:21 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 30r7fc2j3u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 May 2020 21:25:21 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 041LPIvW028588;
 Fri, 1 May 2020 21:25:18 GMT
Received: from [10.159.246.37] (/10.159.246.37)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 01 May 2020 14:25:18 -0700
Subject: Re: [PATCH 0/5] soc: ti: add k3 platforms chipid module driver
To: Grygorii Strashko <grygorii.strashko@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Tero Kristo <t-kristo@ti.com>,
 Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>
References: <20200423180545.13707-1-grygorii.strashko@ti.com>
 <23b3b069-426e-a113-a8bf-816b30f10490@ti.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <8fa7126c-3a26-442c-b239-9969d65d4a19@oracle.com>
Date: Fri, 1 May 2020 14:25:17 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <23b3b069-426e-a113-a8bf-816b30f10490@ti.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9608
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0
 phishscore=0 malwarescore=0 mlxscore=0 spamscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005010152
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9608
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 mlxlogscore=999
 clxscore=1011 phishscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005010152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_142535_285468_4A97989B 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8xLzIwIDE6NTUgUE0sIEdyeWdvcmlpIFN0cmFzaGtvIHdyb3RlOgo+IEhpIFNhbnRvc2gs
IFRlcm8KPiAKPiBPbiAyMy8wNC8yMDIwIDIxOjA1LCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90ZToK
Pj4gSGkgQWxsLAo+Pgo+PiBUaGlzIHNlcmllcyBpbnRyb2R1Y2VzIFRJIEszIE11bHRpY29yZSBT
b0MgcGxhdGZvcm1zIGNoaXBpZCBtb2R1bGUgZHJpdmVyCj4+IHdoaWNoIHByb3ZpZGVzIGlkZW50
aWZpY2F0aW9uIHN1cHBvcnQgb2YgdGhlIFRJIEszIFNvQ3MgKGZhbWlseSwgCj4+IHJldmlzaW9u
KQo+PiBhbmQgcmVnaXN0ZXIgdGhpcyBpbmZvcm1hdGlvbiB3aXRoIHRoZSBTb0MgYnVzLiBJdCBp
cyBhdmFpbGFibGUgdW5kZXIKPj4gL3N5cy9kZXZpY2VzL3NvYzAvIGZvciB1c2VyIHNwYWNlLCBh
bmQgY2FuIGJlIGNoZWNrZWQsIHdoZXJlIG5lZWRlZCwKPj4gaW4gS2VybmVsIHVzaW5nIHNvY19k
ZXZpY2VfbWF0Y2goKS4KPj4gSXQgaXMgYWxzbyByZXF1aXJlZCBmb3IgaW50cm9kdWNpbmcgc3Vw
cG9ydCBmb3IgbmV3IHJldmlzaW9ucyBvZgo+PiBLMyBBTTY1eC9KNzIxRSBTb0NzLgo+Pgo+PiBF
eGFtcGxlIEo3MjFFOgo+PiDCoMKgICMgY2F0IC9zeXMvZGV2aWNlcy9zb2MwL3ttYWNoaW5lLGZh
bWlseSxyZXZpc2lvbn0KPj4gwqDCoCBUZXhhcyBJbnN0cnVtZW50cyBLMyBKNzIxRSBTb0MKPj4g
wqDCoCBKNzIxRQo+PiDCoMKgIFNSMS4wCj4+Cj4+IEV4YW1wbGUgQU02NXg6Cj4+IMKgwqAgIyBj
YXQgL3N5cy9kZXZpY2VzL3NvYzAve21hY2hpbmUsZmFtaWx5LHJldmlzaW9ufQo+PiDCoMKgIFRl
eGFzIEluc3RydW1lbnRzIEFNNjU0IEJhc2UgQm9hcmQKPj4gwqDCoCBBTTY1WAo+PiDCoMKgIFNS
MS4wCj4+Cj4+IEdyeWdvcmlpIFN0cmFzaGtvICg1KToKPj4gwqDCoCBkdC1iaW5kaW5nczogc29j
OiB0aTogYWRkIGJpbmRpbmcgZm9yIGszIHBsYXRmb3JtcyBjaGlwaWQgbW9kdWxlCj4+IMKgwqAg
c29jOiB0aTogYWRkIGszIHBsYXRmb3JtcyBjaGlwaWQgbW9kdWxlIGRyaXZlcgo+PiDCoMKgIGFy
bTY0OiBhcmNoX2szOiBlbmFibGUgY2hpcGlkIGRyaXZlcgo+PiDCoMKgIGFybTY0OiBkdHM6IHRp
OiBrMy1hbTY1LXdha2V1cDogYWRkIGszIHBsYXRmb3JtcyBjaGlwaWQgbW9kdWxlIG5vZGUKPj4g
wqDCoCBhcm02NDogZHRzOiB0aTogazMtajcyMWUtbWN1LXdha2V1cDogYWRkIGszIHBsYXRmb3Jt
cyBjaGlwaWQgbW9kdWxlCj4+IMKgwqDCoMKgIG5vZGUKPj4KPj4gwqAgLi4uL2JpbmRpbmdzL3Nv
Yy90aS9rMy1zb2NpbmZvLnlhbWzCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNDAgKysrKysrCj4+
IMKgIGFyY2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoMKgIDEgKwo+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUt
d2FrZXVwLmR0c2nCoMKgwqAgfMKgwqAgNSArCj4+IMKgIC4uLi9ib290L2R0cy90aS9rMy1qNzIx
ZS1tY3Utd2FrZXVwLmR0c2nCoMKgwqDCoMKgIHzCoMKgIDUgKwo+PiDCoCBkcml2ZXJzL3NvYy90
aS9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
wqAgMTAgKysKPj4gwqAgZHJpdmVycy9zb2MvdGkvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxICsKPj4gwqAgZHJpdmVycy9zb2MvdGkv
azMtc29jaW5mby5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTM1ICsr
KysrKysrKysrKysrKysrKwo+PiDCoCA3IGZpbGVzIGNoYW5nZWQsIDE5NyBpbnNlcnRpb25zKCsp
Cj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCAKPj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NvYy90aS9rMy1zb2NpbmZvLnlhbWwKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvc29jL3RpL2szLXNvY2luZm8uYwo+Pgo+IAo+IEFueSBtb3JlIGNvbW1lbnRzPyBJJ20g
Z29pbmcgcmVzZW5kIGl0Lgo+IApJZiB5b3UgaGF2ZSBhY2tzIGZyb20gRFQgbWFpbnRhaW5lcnMs
IHRoZW4gSSBzdWdnZXN0IHlvdSB0byBzcGxpdCB0aGlzIApzZXJpZXMgYW5kIHBvc3QgcGxhdGZv
cm0gYW5kIGRyaXZlcnMgcGF0Y2hlcyBzZXBhcmF0ZWx5LgoKUmVnYXJkcywKU2FudG9zaAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
