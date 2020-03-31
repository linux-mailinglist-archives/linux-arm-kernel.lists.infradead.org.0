Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0621719A220
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 00:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfRjRGlSISGI3zbi3KNqghtvSgUyw0TnrGU/BUCRTrw=; b=uGMhPSOGJ320Ku
	NO7WL5cEZGk6yoMn99UQ3eyOIVLs/W2EwRmNfyql4+MrjNi7DIGvnbl3V9p8Coa6oNmeLyI00hZND
	e1f/oiQcq0vQ+C9IqOGeAUANsgIyQBIreBP/kb3ccdJjmFpDXO/3blFVnBwcGRjyDnlP74M3SjsuN
	Y4/GUqqwdchPe73uPWKgbjnhM29vQgbYLJ/t/ONs5pB4T+ZS56a3826rIbvfJBgqU1owQy/2NxI3k
	ncJNaeTxWVvS30GtdwfBPHQk7sLINhL3mwiISrK/tAVyNtrJbVhgWryV8MJa+JOwRpasVxY8/zUhA
	SVVcmGkJt1m8PThbvA1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJPnQ-0001VH-Ow; Tue, 31 Mar 2020 22:55:48 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJPnI-0001Ue-BG
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 22:55:42 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200331225536epoutp01cdc5266b64617bfc6830ba2adee29b78~BhYG7u7lp0043000430epoutp01z
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 22:55:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200331225536epoutp01cdc5266b64617bfc6830ba2adee29b78~BhYG7u7lp0043000430epoutp01z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585695336;
 bh=fG2pvKOs/nfbkCyYfW2IZo12SDvtmU5s5GgX4jeKvvw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=gmE611YxvUH66+j3Bg0WgRa6njp0hdVl8jOX3ujjZZi3JfW/9Zeesd00ipkqDfk8a
 QPOABHMd5Da1Ox38glj4GY1FY8In/vtPp/9Tp9sXr9Gtb2B0n5yKHO+XYtTCD8dkwG
 ekAy19Fgw1kC0CQO7oHOK0kt2TjejyPpmKXcwijQ=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20200331225535epcas1p411c5a4f6ab9d435e8cb472de075aa513~BhYGRPxhG2684726847epcas1p4L;
 Tue, 31 Mar 2020 22:55:35 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.157]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 48sPn11MvBzMqYkV; Tue, 31 Mar
 2020 22:55:33 +0000 (GMT)
Received: from epcas1p2.samsung.com ( [182.195.41.46]) by
 epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 C4.C9.04140.56AC38E5; Wed,  1 Apr 2020 07:55:33 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200331225532epcas1p1561edc072010788f90dc19b0c7f8609e~BhYDRqKpp2015420154epcas1p1J;
 Tue, 31 Mar 2020 22:55:32 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200331225532epsmtrp160bb6e7d4d4eddd38c7da21a71035f87~BhYDQYq1f1153311533epsmtrp1L;
 Tue, 31 Mar 2020 22:55:32 +0000 (GMT)
X-AuditID: b6c32a36-fa3ff7000000102c-c5-5e83ca6559e1
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 72.94.04158.36AC38E5; Wed,  1 Apr 2020 07:55:32 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200331225531epsmtip23f79aa3a8e16d6754388e3972ad3b534~BhYC0Z5pi0816508165epsmtip2Z;
 Tue, 31 Mar 2020 22:55:31 +0000 (GMT)
Subject: Re: [PATCH 2/8] PM / devfreq: Add generic imx bus scaling driver
To: Leonard Crestez <leonard.crestez@nxp.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>, Martin
 Kepplinger <martink@posteo.de>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <781911a0-6139-8e41-cd96-da40fad685fc@samsung.com>
Date: Wed, 1 Apr 2020 08:04:37 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <e32290a36b31fbe922cc8ed48c33e89a5eb08804.1585188174.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Tf0wTdxTft9deD2Pnrcr42m1abj+iJEBLLftCAN3GzJlpxrKwZVvW7gYX
 YP2ZXmuGLhmTFbBxomg3QVGGspXODLiyigohLd1ccYKwWI1oXKxZ2NwgDBCHUddra8Z/n/fe
 5/34vJdHYHKfVEFUme2szcwYKXyZ2D+0PiuTHa7VqWbCGLpx1AnQ/PlhgL4Z/xGgOfcZDEVv
 TAB0qrkMHQuNSFCPb0KMvhrgceR1nxaj0dFuKbqw6y8p8lyfkSA+GpEg12Inhma/CAHUcXlM
 hCKe/RI02x0FaGz4VTTxmQdH340EcNQ658aQcyAkRa7gfRw9iPSI0WRvGuo4HsFQzzy96Rna
 7fIA+uTRk4CevuKU0odrxsR0G++gee9unL4W6cdp34lP6Z6pPhHdeF9FLw6l0nt7vYCe5deU
 yN41FFSyTDlrU7LmMkt5lbmikHrtTf0rem2uSp2pzkMvUkozY2ILqeKtJZmbq4yxpVDK7YzR
 EXOVMBxHZRcV2CwOO6ustHD2Qoq1lhutedYsjjFxDnNFVpnFlK9WqXK0MeIHhsrus2us7fkf
 P4xNUwO+znaBFAKSG2Ab3yBygWWEnOwDcHHP3+KE8Q+AnTO3xAJLTt4B8OGU6lHGwt0AliAN
 ADjMDyaNaQAP3awXCayV5BY4t/cIEAKryBMAhiIL8boY6ZHCOv+38bo4mQEHJ6/gAl5BpsNL
 d6NAwDKyCPYfvC0VsJh8DkZ++TleNZV8C4b9nyc5T8BwszAfQaSQOlh/cafgxsg0ePXWMVEC
 r4W1PxyOTwfJfgK6B/zShIZi+PuuBTyBV8I/z/Um/Qr4R2NdEu+EneEQnkhuALB38KIkEdDA
 wY4DIqExRq6HXWeSm0yHp++1gkTjx+HU/B6JQIGkDDbUyROUZ+Gvv10XJfBqeLx+N74PUC1L
 1LQskdCyRELL/83agNgLnmStnKmC5dTWnKXX5kH8YTJy+0D7yNYgIAlALZcp82t1cgmznas2
 BQEkMGqVDH+9RieXlTPVO1ibRW9zGFkuCLSxZe/HFKllltj7me16tTZHo9GgDepcrVpNpcnc
 l406OVnB2FkDy1pZ26M8EZGiqAFPZT9oSou0brz902OlGQrJv5q30ztXe9GhI8WqtQfhvjd8
 mwNkY+GFU8s/8W4EN1/ecvX89wbt04Hg85dWfNTlW2cI5J1lPoyODHVNk6Zt1f3+0gZ3NnPt
 3rb3mr4MvDA/7vWMO4usL61z6nXNyvaSd6yjk5vC3lKeP9d0oCDl/dIcSsxVMuoMzMYx/wGv
 rirLRgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTUQDHPbt3d9fV8DpfR/OBI6gG+UrqJCb1Ibh9yT71+jBbepmSm2vX
 mRrU1ExdNRW0cD6ymjanhE5LTSV8lVk+q2VZSU3IUitTUSxnzhH47cf5/36c8+GQmLCc60Mm
 KJIZlUKaKCL4+KNuUcDuuP4sSUjBLEATFdkALb7oB6h6tBegheLHGLJOjAPUXBKLbvcMclFD
 4ziObnWYCWQqbsXR0FA9Dw1kzvCQ8eMcF5mtFi7SrtRgaP5GD0BVb0c4yGIs5KL5eitAI/2H
 0XiGkUC1g50EKl8oxlB2Rw8PabtWCWSzNOBoqskLVd2zYKhhkT7oRxdrjYCuq6gD9M+xbB5d
 qhnB6Uqzmjab8gj6g6WdoBsNl+mGHy0cOn81hF7p9qB1TSZAz5v9jwlO8yPjmMSEFEYVHHWG
 H1/f5q+8G5G6ti5rwJ1gLXAmIRUOl5Y7MS3gk0KqDUBbdTnXMXjDmyO96wO5zm6wu5t1OLMA
 1pnvc+yOG3UELujKgJ3dKQOAhs/Rdgmj6ngw05BDOIovAOZNr+F2i6DE8MnUGGFnFyoQvlm2
 btQCKgq2F03z7IxT26HlZd/GDR7UcdhqsHIcjit8XjKJ21/kTElgzvBF+zFG7YB/K0YxB3vB
 95O3OQ4OgFkPS7EC4KbfVOs3JfpNiX5TUglwE/BmlKxcJmdDlWEK5kIQK5WzaoUsKDZJbgYb
 n0YsbgF9fTFdgCKBaKsgMCJLIuRKU9g0eReAJCZyFxDRGolQECdNS2dUSTEqdSLDdoFtJC7y
 EgQkPT0lpGTSZOYcwygZ1f+VQzr7aEBgftr31YJXc888h4tkJq6tsn1fERWldgo37oqvypg4
 20x9gq4yHxBsM/nxdXu8U4MOXLlGL+1fTg//3Vo74+uii/SrfTDqbzO89v2mWP0TdLXwpOl8
 r5M4X/du5eh1919OW76GLSYFWg7p+YWkPjPWU70kGagpyy28lLvzxF5/Ec7GS0PFmIqV/gO4
 +IhXMAMAAA==
X-CMS-MailID: 20200331225532epcas1p1561edc072010788f90dc19b0c7f8609e
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200326021637epcas1p26d84c256cf05a97ae1c90bb16ea6fa5d
References: <cover.1585188174.git.leonard.crestez@nxp.com>
 <CGME20200326021637epcas1p26d84c256cf05a97ae1c90bb16ea6fa5d@epcas1p2.samsung.com>
 <e32290a36b31fbe922cc8ed48c33e89a5eb08804.1585188174.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_155540_807583_C18FD4FC 
X-CRM114-Status: GOOD (  35.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpMb29rcyBnb29kIHRvIG1lLiBJIGFkZGVkIHRoZSBjb21tZW50cy4KQnV0LCBpdCBuZWVk
IHRvIGFkZCB0aGUgZHQgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGlzIGRldmljZS4KClRo
ZSBvbGQgZW1haWwgb2YgQXJ0dXIgxZp3aWdvxYQgaXMgbm90IHVzZWQuIE9uIG5leHQgdGltZSwK
dXNlIGZvbGxvd2luZyB0aGUgbmV3IGVtYWlsIGFkZHJlc3MgQmVjYXVzZSB3aGVuIEkgcmVwbHkg
dGhlIG1haWwsCmFsd2F5cyBzaG93IHRoZSBmYWlsIG1lc3NhZ2UgZnJvbSB0aHVuZGVyYmlyZCBk
dWUgdG8gdGhlIEFydHVyJ3Mgb2xkIGVtYWlsLgo8YS5zd2lnb25AcGFydG5ldC5zYW1zdW5nLmNv
bT4gLT4gPGEuc3dpZ29uQHNhbXN1bmcuY29tPgoKT24gMy8yNi8yMCAxMToxNiBBTSwgTGVvbmFy
ZCBDcmVzdGV6IHdyb3RlOgo+IEFkZCBpbml0aWFsIHN1cHBvcnQgZm9yIGR5bmFtaWMgZnJlcXVl
bmN5IHN3aXRjaGluZyBvbiBwaWVjZXMgb2YgdGhlIGlteAo+IGludGVyY29ubmVjdCBmYWJyaWMu
Cj4gCj4gQWxsIHRoaXMgZHJpdmVyIGRvZXMgaXMgc2V0IGEgY2xrIHJhdGUgYmFzZWQgb24gYW4g
b3BwIHRhYmxlLCBpdCBkb2VzCj4gbm90IG1hcCByZWdpc3RlciBhcmVhcy4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2RldmZyZXEvS2NvbmZpZyAgIHwgICA5ICsrKwo+ICBkcml2ZXJzL2RldmZyZXEv
TWFrZWZpbGUgIHwgICAxICsKPiAgZHJpdmVycy9kZXZmcmVxL2lteC1idXMuYyB8IDE0MiArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDE1
MiBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2RldmZyZXEvaW14
LWJ1cy5jCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9LY29uZmlnIGIvZHJpdmVy
cy9kZXZmcmVxL0tjb25maWcKPiBpbmRleCAwYjFkZjEyZTBmMjEuLjQ0ZDI2MTkyZGRjNCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJl
cS9LY29uZmlnCj4gQEAgLTk5LDEwICs5OSwxOSBAQCBjb25maWcgQVJNX0lNWDhNX0REUkNfREVW
RlJFUQo+ICAJc2VsZWN0IERFVkZSRVFfR09WX1VTRVJTUEFDRQo+ICAJaGVscAo+ICAJICBUaGlz
IGFkZHMgdGhlIERFVkZSRVEgZHJpdmVyIGZvciB0aGUgaS5NWDhNIEREUiBDb250cm9sbGVyLiBJ
dCBhbGxvd3MKPiAgCSAgYWRqdXN0aW5nIERSQU0gZnJlcXVlbmN5Lgo+ICAKPiArY29uZmlnIEFS
TV9JTVhfQlVTX0RFVkZSRVEKPiArCXRyaXN0YXRlICJpLk1YIEdlbmVyaWMgQnVzIERFVkZSRVEg
RHJpdmVyIgo+ICsJZGVwZW5kcyBvbiBBUkNIX01YQyB8fCBDT01QSUxFX1RFU1QKPiArCXNlbGVj
dCBERVZGUkVRX0dPVl9QQVNTSVZFCj4gKwlzZWxlY3QgREVWRlJFUV9HT1ZfVVNFUlNQQUNFCgpN
YXliZSwgeW91IHdvdWxkIHVwZGF0ZSBpdCBieSB1c2luZyBwYXNzaXZlIGdvdmVybm9yPwpCdXQs
IGluIHRoaXMgdmVyc2lvbiwgaXQgZG9lc24ndCBoYW5kbGUgdGhlIGFueSBwYXNzaXZlIGdvdmVy
bm9yLgoKPiArCWhlbHAKPiArCSAgVGhpcyBhZGRzIHRoZSBnZW5lcmljIERFVkZSRVEgZHJpdmVy
IGZvciBpLk1YIGludGVyY29ubmVjdHMuIEl0Cj4gKwkgIGFsbG93cyBhZGp1c3RpbmcgTklDL05P
QyBmcmVxdWVuY3kuCj4gKwo+ICBjb25maWcgQVJNX1RFR1JBX0RFVkZSRVEKPiAgCXRyaXN0YXRl
ICJOVklESUEgVGVncmEzMC8xMTQvMTI0LzIxMCBERVZGUkVRIERyaXZlciIKPiAgCWRlcGVuZHMg
b24gQVJDSF9URUdSQV8zeF9TT0MgfHwgQVJDSF9URUdSQV8xMTRfU09DIHx8IFwKPiAgCQlBUkNI
X1RFR1JBXzEzMl9TT0MgfHwgQVJDSF9URUdSQV8xMjRfU09DIHx8IFwKPiAgCQlBUkNIX1RFR1JB
XzIxMF9TT0MgfHwgXAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvTWFrZWZpbGUgYi9k
cml2ZXJzL2RldmZyZXEvTWFrZWZpbGUKPiBpbmRleCAzZWI0ZDVlNjYzNWMuLjNjYTFhZDBlY2I5
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJz
L2RldmZyZXEvTWFrZWZpbGUKPiBAQCAtNywxMCArNywxMSBAQCBvYmotJChDT05GSUdfREVWRlJF
UV9HT1ZfUE9XRVJTQVZFKQkrPSBnb3Zlcm5vcl9wb3dlcnNhdmUubwo+ICBvYmotJChDT05GSUdf
REVWRlJFUV9HT1ZfVVNFUlNQQUNFKQkrPSBnb3Zlcm5vcl91c2Vyc3BhY2Uubwo+ICBvYmotJChD
T05GSUdfREVWRlJFUV9HT1ZfUEFTU0lWRSkJKz0gZ292ZXJub3JfcGFzc2l2ZS5vCj4gIAo+ICAj
IERFVkZSRVEgRHJpdmVycwo+ICBvYmotJChDT05GSUdfQVJNX0VYWU5PU19CVVNfREVWRlJFUSkJ
Kz0gZXh5bm9zLWJ1cy5vCj4gK29iai0kKENPTkZJR19BUk1fSU1YX0JVU19ERVZGUkVRKQkrPSBp
bXgtYnVzLm8KClRoZSBBUk1fSU1YX0JVU19ERVZGUkVRIGNvbmZpZyBpcyB1bmRlciBBUk1fSU1Y
OE1fRERSQ19ERVZGUkVRCmFuZCBpbXgtYnVzLm8gaXMgb3ZlciBpbXg4bS1kZHJjLm8uIE5lZWQg
dG8gZWRpdCB0aGUgc2VxdWVuY2UuCgo+ICBvYmotJChDT05GSUdfQVJNX0lNWDhNX0REUkNfREVW
RlJFUSkJKz0gaW14OG0tZGRyYy5vCj4gIG9iai0kKENPTkZJR19BUk1fUkszMzk5X0RNQ19ERVZG
UkVRKQkrPSByazMzOTlfZG1jLm8KPiAgb2JqLSQoQ09ORklHX0FSTV9URUdSQV9ERVZGUkVRKQkJ
Kz0gdGVncmEzMC1kZXZmcmVxLm8KPiAgb2JqLSQoQ09ORklHX0FSTV9URUdSQTIwX0RFVkZSRVEp
CSs9IHRlZ3JhMjAtZGV2ZnJlcS5vCj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEv
aW14LWJ1cy5jIGIvZHJpdmVycy9kZXZmcmVxL2lteC1idXMuYwo+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4yODVlMGYxYWU2YjEKPiAtLS0gL2Rldi9udWxsCj4g
KysrIGIvZHJpdmVycy9kZXZmcmVxL2lteC1idXMuYwo+IEBAIC0wLDAgKzEsMTQyIEBACj4gKy8v
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gKy8qCj4gKyAqIENvcHlyaWdodCAy
MDE5IE5YUAo+ICsgKi8KPiArCj4gKyNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiArI2luY2x1ZGUg
PGxpbnV4L2RldmZyZXEuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgo+ICsjaW5jbHVk
ZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPiArI2lu
Y2x1ZGUgPGxpbnV4L3BtX29wcC5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNl
Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gKwo+ICtzdHJ1Y3QgaW14X2J1cyB7Cj4g
KwlzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSBwcm9maWxlOwo+ICsJc3RydWN0IGRldmZyZXEg
KmRldmZyZXE7Cj4gKwlzdHJ1Y3QgY2xrICpjbGs7Cj4gKwlzdHJ1Y3QgZGV2ZnJlcV9wYXNzaXZl
X2RhdGEgcGFzc2l2ZV9kYXRhOwoKVGhpcyBwYXRjaCBkb2Vzbid0IHRvdWNoIHRoZSBwYXNzaXZl
X2RhdGEuCgo+ICt9Owo+ICsKPiArc3RhdGljIGludCBpbXhfYnVzX3RhcmdldChzdHJ1Y3QgZGV2
aWNlICpkZXYsCj4gKwkJdW5zaWduZWQgbG9uZyAqZnJlcSwgdTMyIGZsYWdzKQo+ICt7Cj4gKwlz
dHJ1Y3QgaW14X2J1cyAqcHJpdiA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ICsJc3RydWN0IGRl
dl9wbV9vcHAgKm5ld19vcHA7Cj4gKwl1bnNpZ25lZCBsb25nIG5ld19mcmVxOwo+ICsJaW50IHJl
dDsKPiArCj4gKwluZXdfb3BwID0gZGV2ZnJlcV9yZWNvbW1lbmRlZF9vcHAoZGV2LCBmcmVxLCBm
bGFncyk7Cj4gKwlpZiAoSVNfRVJSKG5ld19vcHApKSB7Cj4gKwkJcmV0ID0gUFRSX0VSUihuZXdf
b3BwKTsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBnZXQgcmVjb21tZW5kZWQgb3BwOiAl
ZFxuIiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsJbmV3X2ZyZXEgPSBkZXZfcG1f
b3BwX2dldF9mcmVxKG5ld19vcHApOwoKSXQgZG9lc24ndCBuZWVkLiBCZWNhdXNlIHRoZSBuZXcg
ZnJlcXVlbmN5IGlzIHN0b3JlZCB0byAnZnJlcScKYnkgY2FsbGluZyBkZXZmcmVxX3JlY29tbWVu
ZGVkX29wcCgpLgoKPiArCWRldl9wbV9vcHBfcHV0KG5ld19vcHApOwo+ICsKPiArCXJldHVybiBj
bGtfc2V0X3JhdGUocHJpdi0+Y2xrLCBuZXdfZnJlcSk7CgpuaXRwaWNrLiB5b3UgY2FuIHVzZSBk
ZXZfcG1fb3BwX3NldF9yYXRlKCkuIEJ1dCwgSSdtIG5vdCBmb3JjaW5nIHRvIHVzZSBpdC4KCj4g
K30KPiArCj4gK3N0YXRpYyBpbnQgaW14X2J1c19nZXRfY3VyX2ZyZXEoc3RydWN0IGRldmljZSAq
ZGV2LCB1bnNpZ25lZCBsb25nICpmcmVxKQo+ICt7Cj4gKwlzdHJ1Y3QgaW14X2J1cyAqcHJpdiA9
IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ICsKPiArCSpmcmVxID0gY2xrX2dldF9yYXRlKHByaXYt
PmNsayk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaW14X2J1c19n
ZXRfZGV2X3N0YXR1cyhzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gKwkJc3RydWN0IGRldmZyZXFfZGV2
X3N0YXR1cyAqc3RhdCkKPiArewo+ICsJc3RydWN0IGlteF9idXMgKnByaXYgPSBkZXZfZ2V0X2Ry
dmRhdGEoZGV2KTsKPiArCj4gKwlzdGF0LT5idXN5X3RpbWUgPSAwOwo+ICsJc3RhdC0+dG90YWxf
dGltZSA9IDA7Cj4gKwlzdGF0LT5jdXJyZW50X2ZyZXF1ZW5jeSA9IGNsa19nZXRfcmF0ZShwcml2
LT5jbGspOwo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBpbXhfYnVz
X2V4aXQoc3RydWN0IGRldmljZSAqZGV2KQo+ICt7Cj4gKwlkZXZfcG1fb3BwX29mX3JlbW92ZV90
YWJsZShkZXYpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGlteF9idXNfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiArewo+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYt
PmRldjsKPiArCXN0cnVjdCBpbXhfYnVzICpwcml2Owo+ICsJY29uc3QgY2hhciAqZ292ID0gREVW
RlJFUV9HT1ZfVVNFUlNQQUNFOwo+ICsJaW50IHJldDsKPiArCj4gKwlwcml2ID0gZGV2bV9remFs
bG9jKGRldiwgc2l6ZW9mKCpwcml2KSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIXByaXYpCj4gKwkJ
cmV0dXJuIC1FTk9NRU07Cj4gKwo+ICsJLyoKPiArCSAqIEZldGNoIHRoZSBjbG9jayB0byBhZGp1
c3QgYnV0IGRvbid0IGV4cGxpY3RseSBlbmFibGUuCgpOZWVkIHRvIGZpeCB0eXBvLgpzL2V4cGxp
Y3RseS9leHBsaWNpdGx5Cgo+ICsJICoKPiArCSAqIEZvciBpbXggYnVzIGNsb2NrIGNsa19zZXRf
cmF0ZSBpcyBzYWZlIG5vIG1hdHRlciBpZiB0aGUgY2xvY2sgaXMgb24KPiArCSAqIG9yIG9mZiBh
bmQgc29tZSBwZXJpcGhlcmFsIHNpZGUtYnVzZXMgbWlnaHQgYmUgb2ZmIHVubGVzcyBlbmFibGVk
IGJ5Cj4gKwkgKiBkcml2ZXJzIGZvciBkZXZpY2VzIG9uIHRob3NlIHNwZWNpZmljIGJ1c2VzLgo+
ICsJICoKPiArCSAqIFJhdGUgYWRqdXN0bWVudCBvbiBhIGRpc2FibGVkIGJ1cyBjbG9jayBqdXN0
IHRha2VzIGVmZmVjdCBsYXRlci4KPiArCSAqLwo+ICsJcHJpdi0+Y2xrID0gZGV2bV9jbGtfZ2V0
KGRldiwgTlVMTCk7Cj4gKwlpZiAoSVNfRVJSKHByaXYtPmNsaykpIHsKPiArCQlyZXQgPSBQVFJf
RVJSKHByaXYtPmNsayk7Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZmV0Y2ggY2xrOiAl
ZFxuIiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsJcGxhdGZvcm1fc2V0X2RydmRh
dGEocGRldiwgcHJpdik7Cj4gKwo+ICsJcmV0ID0gZGV2X3BtX29wcF9vZl9hZGRfdGFibGUoZGV2
KTsKPiArCWlmIChyZXQgPCAwKSB7Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IE9Q
UCB0YWJsZVxuIik7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiArCj4gKwlwcml2LT5wcm9maWxl
LnBvbGxpbmdfbXMgPSAxMDAwOwo+ICsJcHJpdi0+cHJvZmlsZS50YXJnZXQgPSBpbXhfYnVzX3Rh
cmdldDsKPiArCXByaXYtPnByb2ZpbGUuZ2V0X2Rldl9zdGF0dXMgPSBpbXhfYnVzX2dldF9kZXZf
c3RhdHVzOwo+ICsJcHJpdi0+cHJvZmlsZS5leGl0ID0gaW14X2J1c19leGl0Owo+ICsJcHJpdi0+
cHJvZmlsZS5nZXRfY3VyX2ZyZXEgPSBpbXhfYnVzX2dldF9jdXJfZnJlcTsKPiArCXByaXYtPnBy
b2ZpbGUuaW5pdGlhbF9mcmVxID0gY2xrX2dldF9yYXRlKHByaXYtPmNsayk7Cj4gKwo+ICsJcHJp
di0+ZGV2ZnJlcSA9IGRldm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRldiwgJnByaXYtPnByb2ZpbGUs
Cj4gKwkJCQkJCWdvdiwgTlVMTCk7Cj4gKwlpZiAoSVNfRVJSKHByaXYtPmRldmZyZXEpKSB7Cj4g
KwkJcmV0ID0gUFRSX0VSUihwcml2LT5kZXZmcmVxKTsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxl
ZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2U6ICVkXG4iLCByZXQpOwo+ICsJCWdvdG8gZXJyOwo+ICsJ
fQo+ICsKPiArCXJldHVybiAwOwo+ICsKPiArZXJyOgo+ICsJZGV2X3BtX29wcF9vZl9yZW1vdmVf
dGFibGUoZGV2KTsKPiArCXJldHVybiByZXQ7Cj4gK30KPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3Qgb2ZfZGV2aWNlX2lkIGlteF9idXNfb2ZfbWF0Y2hbXSA9IHsKPiArCXsgLmNvbXBhdGlibGUg
PSAiZnNsLGlteDhtLW5vYyIsIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4bS1uaWMi
LCB9LAo+ICsJeyAvKiBzZW50aW5lbCAqLyB9LAo+ICt9Owo+ICtNT0RVTEVfREVWSUNFX1RBQkxF
KG9mLCBpbXhfYnVzX29mX21hdGNoKTsKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJp
dmVyIGlteF9idXNfcGxhdGRydiA9IHsKPiArCS5wcm9iZQkJPSBpbXhfYnVzX3Byb2JlLAo+ICsJ
LmRyaXZlciA9IHsKPiArCQkubmFtZQk9ICJpbXgtYnVzLWRldmZyZXEiLAo+ICsJCS5vZl9tYXRj
aF90YWJsZSA9IG9mX21hdGNoX3B0cihpbXhfYnVzX29mX21hdGNoKSwKPiArCX0sCj4gK307Cj4g
K21vZHVsZV9wbGF0Zm9ybV9kcml2ZXIoaW14X2J1c19wbGF0ZHJ2KTsKPiArCj4gK01PRFVMRV9E
RVNDUklQVElPTigiR2VuZXJpYyBpLk1YIGJ1cyBmcmVxdWVuY3kgc2NhbGluZyBkcml2ZXIiKTsK
PiArTU9EVUxFX0FVVEhPUigiTGVvbmFyZCBDcmVzdGV6IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNv
bT4iKTsKPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOwo+IAoKCi0tIApCZXN0IFJlZ2FyZHMs
CkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
