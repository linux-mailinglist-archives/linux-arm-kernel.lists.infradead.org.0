Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B281DB46B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 07:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:To
	:From:Subject:Mime-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RZFTBCxODhn2z5SaCE48FLFcCcvooM1XkQ1b1okP7Qo=; b=uxSRhGV9LQZGkZ
	W7vOagFQBnfVEkRBXsDWtu9SOXl4vnmF0CyuysxvP0mji+gagqetQi819EX0qVZz+Uo5/RAvoYaxa
	RYcRv0yt6bUr7QbTcaybSRTzFztN54w3ISTx2wRABRaybbLyhxFGkF78/o6qQQMWIV9dQLe8O/MY2
	loCpHbogyUoF+1QXe9vrklctABeDvzBB7oV116Mc1exD0hI7rDTMY2/EjZ4Y7amwSRgNWYI1jMP5v
	+yarx9CtgvoJjNjD9UhZh9b2xSxDInJuKiCHY+250jCf7/lWeQQ20nqmGv0hZ7KyCytDtKXXphtTD
	tYE9z5J0YkUCmBadt8Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA5cg-0007iD-50; Tue, 17 Sep 2019 05:01:54 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA5cU-0007hn-ET
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 05:01:44 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190917050138epoutp031f80a6266f38aede10831d1fceb06e53~FISdwKuXT2072520725epoutp03Y
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 05:01:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190917050138epoutp031f80a6266f38aede10831d1fceb06e53~FISdwKuXT2072520725epoutp03Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568696498;
 bh=6mHbpAUwyj7YTNcs3L/+wtjOe8slMuU1FPj19HPJbhQ=;
 h=Subject:Reply-To:From:To:CC:Date:References:From;
 b=Ff4fkKlUV3X1bSROFkKLGH0SwBMUcy9aSGz8Il41klMpNhvGkkGoVUlk73eyz/kMO
 ge0/ZbMnrfbYZaCdjYYqf1jvdStinD4Dgu8TOAFFyX2UEn0+xWfhZT0P/7UN0vxhYM
 J+4EFjXBSJlWGTIeJiSAbIsqW7i3yLtfvSla3TaA=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190917050138epcas1p2f96d9a83f382257d7793e4c6262fadf3~FISdbEnqQ0681506815epcas1p2C;
 Tue, 17 Sep 2019 05:01:38 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.156]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 46XWDH5b4bzMqYkc; Tue, 17 Sep
 2019 05:01:35 +0000 (GMT)
X-AuditID: b6c32a39-d03ff70000000ff5-01-5d8068af1cbd
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 E2.B4.04085.FA8608D5; Tue, 17 Sep 2019 14:01:35 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v4 1/6] PM / devfreq: Don't take lock in devfreq_add_device
From: MyungJoo Ham <myungjoo.ham@samsung.com>
To: "leonard.crestez@nxp.com" <leonard.crestez@nxp.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190917050135epcms1p15ba77f52d2a34db0236fd81107dba07f@epcms1p1>
Date: Tue, 17 Sep 2019 14:01:35 +0900
X-CMS-MailID: 20190917050135epcms1p15ba77f52d2a34db0236fd81107dba07f
X-Sendblock-Type: SVC_REQ_APPROVE
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 101P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpmk+LIzCtJLcpLzFFi42LZdljTQHd9RkOswd4FOhYvD2laXP/ynNVi
 xd2PrBabHl9jtfjce4TRgdVj85J6j43vdjB59G1ZxejxeZNcAEtUtk1GamJKapFCal5yfkpm
 XrqtkndwvHO8qZmBoa6hpYW5kkJeYm6qrZKLT4CuW2YO0FYlhbLEnFKgUEBicbGSvp1NUX5p
 SapCRn5xia1SakFKToFlgV5xYm5xaV66XnJ+rpWhgYGRKVBhQnbG+1dtjAULWCta5/xhamDc
 x9LFyMkhIWAi0dmzmhXEFhLYwSjxbhtHFyMHB6+AoMTfHcIgYWGBQIkdny8zQ5QoSTTc3McM
 EdeX6HiwjRHEZhPQldi64S7YSBEBc4m7j+ezdzFycTALbGKU2L7qPhPELl6JGe1PofZKS2xf
 vpURwhaVuLn6LTuM/f7YfKi4iETrvbPMELagxIOfuxlhemdM+Q81p1ri2vTFYMskBFoYJXpX
 T4Eq0pc4M/ckG4jNK+Ar8XTFTrAjWARUJdrOPWGFqHGRuPRsGVicWUBbYtnC18wgzzMLaEqs
 36UPUaIosfP3XEaY+xs2/mZHZzML8Em8+9rDChPfMe8J1L9qEod2L4Gql5E4PX0h1C8eEm3b
 mlgmMCrOQgT1LCRHzEI4YgEj8ypGsdSC4tz01GLDAlPkyN3ECE6AWpY7GI+d8znEKMDBqMTD
 e2NzfawQa2JZcWXuIUYJDmYlEd6AWqAQb0piZVVqUX58UWlOavEhRlNgWExklhJNzgcm57yS
 eENTI2NjYwsTQzNTQ0MlcV6P9IZYIYH0xJLU7NTUgtQimD4mDk6pBsbJzye0tD6oOyUep32M
 U/pv/rTXd2ym7/Ry/XLyj8PL9Ci1f1ebmG8f7/6mr9E2e2WinMmcV4ofgwyXnymNzLg053yQ
 yozeq7cunNoWr9WyZ99cno+mGfdXL9LrVnINfHBZcnJnlPb81d0JJrZlxXc9Jbx/+L7deXPF
 sgfWl56q5LW8P3yo9iy7EktxRqKhFnNRcSIAWFDNf5YDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190917050135epcms1p15ba77f52d2a34db0236fd81107dba07f
References: <CGME20190917050135epcms1p15ba77f52d2a34db0236fd81107dba07f@epcms1p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_220142_826883_1DD264EC 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: myungjoo.ham@samsung.com
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PkEgZGV2aWNlIHVzdWFsbHkgZG9lc24ndCBuZWVkIHRvIGxvY2sgaXRzZWxmIGR1cmluZyBpbml0
aWFsaXphdGlvbgo+YmVjYXVzZSBpdCBpcyBub3QgeWV0IHJlYWNoYWJsZSBmcm9tIG90aGVyIHRo
cmVhZHMuCj4KPlRoaXMgc2ltcGxpZmllcyB0aGUgY29kZSBhbmQgaGVscHMgYXZvaWQgcmVjdXJz
aXZlIGxvY2sgd2FybmluZ3MuCj4KPlNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVv
bmFyZC5jcmVzdGV6QG54cC5jb20+Cj4tLS0KCgoKRnJvbSB0aGUgbGluZSBvZiAKCj4gZXJyID0g
ZGV2aWNlX3JlZ2lzdGVyKCZkZXZmcmVxLT5kZXYpOwoKT3RoZXIgdGhyZWFkcyBtYXkgYWNjZXNz
IHRoZSBwcm90ZWN0ZWQgdmFsdWVzLgpUaHVzLCBpZiB0aGVyZSBhcmUgcmVjdXJzaXZlIGxvY2sg
d2FybmluZ3MsIHdlIG5lZWQgdG8gcmVzb2x2ZSBpdCB3aXRob3V0IGVsaW1pbmF0aW5nIGxvY2sg
dXNhZ2VzLgoKwqANCi0tDQpNeXVuZ0pvbyBIYW0gKO2VqOuqheyjvCksIFBoLkQuDQpPbi1EZXZp
Y2UgTGFiLCBQbGF0Zm9ybSBUZWFtLMKgU2Ftc3VuZyBSZXNlYXJjaC4NCkNlbGw6ICs4Mi0xMC02
NzE0LTI4NTgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
