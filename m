Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A749C19EE48
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 23:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nyQqntXkUGVWDhYIYkxW/EtMp35Kijtn96dL5iKRlx4=; b=YlItKGrEY1UnAR
	l3rTmN9s2eIDo6cu4ANEvVegA5KKVPzVh7hCgzJB6u674UtbUuOPMvPz/WB3mqtkAfgoHLPUs5tUo
	/oyTYLtbG59y22l1r3S+mlSRIrz2gJpJbshLlq4oXnabCD3hydfhGr+z20Hte6McbOKTUiTYXAzn7
	sZBjZuO+quxSCY5HFuARPPhGm/cM2tn/pyx3lx/JwAHfD1+GHv45A5rb4FePZEUylEyi6EsXeRyAk
	b4umsFcN9RHdqf5WPnQksiVRLXSg0OBj/yIZOKjyh5j8xnTzjjiU9gHJ0bP3DPtBKOP3QVVi0makC
	+PQfRJehP4eSauJvNHWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLCvz-0000ua-AG; Sun, 05 Apr 2020 21:36:03 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLCvq-0000tT-Nq
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 21:35:56 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200405213549epoutp04b8d8fe68f319d26cd41c7cb6a285255a~DCg4vrA__2344923449epoutp04u
 for <linux-arm-kernel@lists.infradead.org>;
 Sun,  5 Apr 2020 21:35:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200405213549epoutp04b8d8fe68f319d26cd41c7cb6a285255a~DCg4vrA__2344923449epoutp04u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586122549;
 bh=i4vDl0Hq3BadisnXS91ugHfkfG645fsLl4N8xWDFYfA=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=Ar9lKVzNmZCujUDtf3yx5K4/e9BjGxWYv0k1roFUHOH6KKULyl0weqWNJshAvF8KX
 Qu9oklbk17VeQZ1EQYMB/JnhDMSCs+EwkgMT54aIXPB5Gn8NSvt9AyK4x7i4Z3axTf
 9leNGOBechMk0sz3mtET+Nuz4OuejqSeb7JwKyKs=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20200405213549epcas2p4c8154f647d5cca48f32150472daa630e~DCg4SRbg00810308103epcas2p4x;
 Sun,  5 Apr 2020 21:35:49 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.186]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 48wRmg3FBpzMqYkV; Sun,  5 Apr
 2020 21:35:47 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 14.3D.04647.33F4A8E5; Mon,  6 Apr 2020 06:35:47 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
 20200405213546epcas2p33180adeb5ca7a933755e5d290e13cd25~DCg2Dex6i2827528275epcas2p3Y;
 Sun,  5 Apr 2020 21:35:46 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200405213546epsmtrp2dbe549086a478e8ad6b9214d48dc506c~DCg2CzzvC2052320523epsmtrp2F;
 Sun,  5 Apr 2020 21:35:46 +0000 (GMT)
X-AuditID: b6c32a48-8a5ff70000001227-de-5e8a4f337b37
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2B.C3.04024.23F4A8E5; Mon,  6 Apr 2020 06:35:46 +0900 (KST)
Received: from KORCO004660 (unknown [12.36.165.196]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200405213546epsmtip29db29707265742024ff01036a0c82734~DCg105_NF0764407644epsmtip2H;
 Sun,  5 Apr 2020 21:35:46 +0000 (GMT)
From: "Hyunki Koo" <hyunki00.koo@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
In-Reply-To: <20200403115941.GB29484@kozik-lap>
Subject: RE: [PATCH v4] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Date: Mon, 6 Apr 2020 06:35:46 +0900
Message-ID: <000001d60b92$2adaee50$8090caf0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKEs4Y1dkf1SYeuuA/6Ie9wROds5QHXsprVAbJLbnoB5/iuVKbiKywg
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTURzHObvbvVdrcZtWP0aPcQvpgbpZW9fQHlSySEiyoCxcN3dTaS92
 p2T/aFSmQ0lLwraKaj1UJHWWDU2rWUkYrZKiB0Rk62EU5lAyet3rXeR/n/M73+/5/b7nHBJT
 NeBqstDm4pw21kLjsfKO3kX6xKWb3LnaG9eBOehrwZm61mEZc3TwM8aEQq0E4x98pmAGOk/h
 TH2oR8Y88FUTq0mjv6kSN9483UwY2y+UGluuPpUbI/65WYocS1oBx5o5p4az5dnNhbb8dHpj
 tmmtSW/Q6hJ1qcxyWmNjrVw6vS4zKzGj0CKMQmuKWUuRUMpieZ5OXpnmtBe5OE2BnXel05zD
 bHHodI4knrXyRbb8pDy7dYVOq03RC8pdloK2PxcIxxCxr6rrEV6GTuBuFEMCtQx8t6tlbhRL
 qqgAgvbyY9HFCIJfr0aRtBhD0HUlovhn6X/zFpc2uhF8qO+eOEtFfULQWJsgMk4lwoDvnUzk
 eIHbn18mRANGfUfQM/ZQOIkkY6hkGAxuETVx1Gbw1v2c0MupBfB4JCATJUoqFVr6TGJZSU2H
 +yffyUXGqHlw/cspTJpHA+PhSwqpVQZErpVjkiYevJUixwqaCA5u71g08zqo6QkhieNgqO8q
 IbEaIl+7o5pS6CmvJSRzFYLx4XA0/VLwvD+CxOEwahG0dCaLCNR8uPMyOts0qOj9RUhlJVSU
 qyRjAlwZ+yiTeDY0hzuJGkR7JiXzTErmmZTA87/XWSRvQjM5B2/N5/gUx7LJb+1HE790sTGA
 bj3MDCKKRPRUZcPzylyVgi3mS6xBBCRGxyvV1UJJaWZL9nNOu8lZZOH4INIL916LqWfk2YU/
 b3OZdPoUg0Gbqmf0hhSGnqX0T3mxU0Xlsy5uL8c5OOc/n4yMUZehXUk/PHJvxo++8dCSVQPN
 Fzv21MebP4a3Bzbk5hz6drzNOH9b/86Ou9tUel96Wb07OBqzf73XmXd4zpLu/t57A+feXgzs
 Vj06HITzGWfkNYYky4HkWTk7dvviqn5f4+5ScV1DddMaK8LrWeMzf41jz8uchausT15nE9qt
 r2RrRu5oaTlfwOoWY06e/Qs32cncuwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsWy7bCSvK6Rf1ecwe8P+hbNi9ezWUzZ8IHJ
 ov/xa2aL8+c3sFtsenyN1eLyrjlsFjPO72OyOLO4l92Bw2PTqk42j/1z17B7bF5S77F+y1UW
 j8+b5AJYo7hsUlJzMstSi/TtErgyNv5fwl7wir2iZ/cFtgbGaWxdjJwcEgImEqcfPAKzhQR2
 M0rsemELEZeRmPBiCTOELSxxv+UIaxcjF1DNc0aJZ+8eMoIk2AR0JS4vfsIEYosA2ZtvLGcH
 KWIW+Mco0fz2DjNExxNGif37lrB0MXJwcAroSzw+FALSICwQILFoxVGwDSwCKhIXP+1gAinh
 FbCUWH88HiTMKyAocXLmExYQm1lAW+LpzadQtrzE9rdzoI5TkPj5dBkrxA1uEp+3tjFD1IhI
 zO5sY57AKDwLyahZSEbNQjJqFpKWBYwsqxglUwuKc9Nziw0LDPNSy/WKE3OLS/PS9ZLzczcx
 gqNKS3MH4+Ul8YcYBTgYlXh4GW53xgmxJpYVV+YeYpTgYFYS4ZXqBQrxpiRWVqUW5ccXleak
 Fh9ilOZgURLnfZp3LFJIID2xJDU7NbUgtQgmy8TBKdXA6Pv2lsiGFbYqjx9fELUxum+7Z/nS
 BPe7MU67lnm6xF6SPewtHft0Yr3PgSadlx+OLkg+syhG9Uex4bFvZ4JOX1vfepallc3lS++i
 jJ7Aec6BS9SWT5E6dKy1Jjz+k//Ny3sVpJ7WFy7by6C9eUElw0n7qsI6C/n0+ttfrte2nfBl
 /Cli902kQ4mlOCPRUIu5qDgRAM7DlaumAgAA
X-CMS-MailID: 20200405213546epcas2p33180adeb5ca7a933755e5d290e13cd25
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48@epcas2p4.samsung.com>
 <20200403111511.10598-1-hyunki00.koo@samsung.com>
 <20200403115941.GB29484@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_143555_202151_2F4F8341 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, 'Kukjin Kim' <kgene@kernel.org>,
 linux-serial@vger.kernel.org, 'Jiri
 Slaby' <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 9:00: 10PM +0900, Krzysztof Kozlowski wrote:
> On Fri, Apr 03, 2020 at 08:15:10PM +0900, Hyunki Koo wrote:
> > Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> >
> > This is required for some newer SoCs.
> >
> > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> > ---
> > v2:
> > line 954 : change rd_regl to rd_reg in for backward compatibility.
> 
> I did not see any change around line 954 in v1... so what was it?
954  line  is changed like below.
V1 : rd_regb --> rd_regl : we thought, this register need to change to 
V2: rd_regl --> rd_reg : we discuss internally, and 
I decided not to change  to existing devices for backward compatibility.
So we changed to rd_reg.
> 
> Rest looks good for me, although you should address Greg's comments.
> 
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org> Tested on Odroid
> HC1 (Exynos5422):
> Tested-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> Best regards,
> Krzysztof



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
