Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C5C1A07C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 08:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJZvwE51Gdalle5ecHkINogvzidg+tjYru3kICcPl3c=; b=N0liTAXFfjBPmW
	IavvcefAggF31A0pcgwoY0NGJBbV04LwcaNemN70M5FZwLcTqOEYmHIVDRNuOukA430EShtT13Jso
	rRPRiFf5FzI/8co+rTc8z7bNcjAo+lwupoRQ+37U4Rx0dMQlbNx3Wn4sTfYvGrNmaUwbNtS5CRk/l
	OR5VqiutRqBijFBo0cPWcC/AnJ+SxPW8VF8JRrV9I/i4Jka1PxzgOazup9lOLN+za6c4sbFdAVsU8
	4wW/p3Q2urREqm8rJyURIA2yD70WlRMMI8okxnP+Ydf2Q+iXNxO73saQ3g9aaXTrbp7tYMLoNLjgS
	YCRWkw/cl5soTTq3mkjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLi7n-0005nV-6i; Tue, 07 Apr 2020 06:54:19 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLi7e-0005n0-TI
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 06:54:12 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200407065407epoutp0281f4dfc4f6b480c60b62535e52c9440e~DdxoShanN0970609706epoutp02U
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Apr 2020 06:54:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200407065407epoutp0281f4dfc4f6b480c60b62535e52c9440e~DdxoShanN0970609706epoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586242447;
 bh=FD6u6gfSfkVoafsxdQNzxjDTpNg+DSItmEjTgsOLtxk=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=Fr9aFOcBoX+ijwXyThPrEYedZA1LFeIUQs3ZbJiiAttqRG3amcBE2ZenidORB6kjb
 Kn0bR0uR8T5bz0kOXu+D1Ai5HcTLYyVKblFzqYQb88Ks5gIKh4IRwk8cC9oVScF87J
 4o4cI9yZPE4/MSvVdpN6P89i1CuWkLJOP2Tvx2rg=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20200407065407epcas2p1c6e02e1a1e1cb8d5a91877e733e5f94d~Ddxn9mXvO1808218082epcas2p1x;
 Tue,  7 Apr 2020 06:54:07 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.181]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 48xJ6P4nNWzMqYkk; Tue,  7 Apr
 2020 06:54:05 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 3B.1D.04647.B832C8E5; Tue,  7 Apr 2020 15:54:03 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
 20200407065403epcas2p37d0990979790e3e14a25149830f5c913~DdxkNzj_k2389123891epcas2p3-;
 Tue,  7 Apr 2020 06:54:03 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200407065403epsmtrp27601e96f08f9701f497a9742ed6ce228~DdxkK9nvC3043630436epsmtrp2c;
 Tue,  7 Apr 2020 06:54:03 +0000 (GMT)
X-AuditID: b6c32a48-8a5ff70000001227-59-5e8c238bbe98
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1A.42.04024.B832C8E5; Tue,  7 Apr 2020 15:54:03 +0900 (KST)
Received: from KORCO004660 (unknown [12.36.165.196]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200407065402epsmtip21f3515027a661b7686ec8d83ad8aae00~Ddxj6Sdlv2245622456epsmtip2X;
 Tue,  7 Apr 2020 06:54:02 +0000 (GMT)
From: "Hyunki Koo" <hyunki00.koo@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
In-Reply-To: <20200407062655.GC21995@kozik-lap>
Subject: RE: [PATCH v6 2/2] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Date: Tue, 7 Apr 2020 15:54:02 +0900
Message-ID: <000501d60ca9$529b3cc0$f7d1b640$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKEs4Y1dkf1SYeuuA/6Ie9wROds5QJr8Gf+Ae0ziqcAfW/RYKbpNljg
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjm29k5Z1qL07J6GVHjdCENdZttHSujSGVgkGRlWGgHd/LSbu1s
 doMyTPOSZShdppFlpVhMmaU2cTOzQgoVrOhGRWqUUVmC3ZDa8Rj573m/73m+93ne75VhCg+h
 lGVZHJzdwppoIljafCdUF16y8Hiq+rtPy1zo6sGZvJoGgqloHJEwJwc+YkxvbyPJeAae4Ey/
 t4pgzvb6JMzDmlKSyW/vItcGGzz1RYTBf/46aWi6fNjQcOOx1DDqmZ+Ip5hWZ3KskbOrOEu6
 1ZhlyYihE5LS1qfp9GpNuCaaWUGrLKyZi6FjNySGx2eZAqZoVQ5rcgaOElmepyPXrLZbnQ5O
 lWnlHTE0ZzOabBqNLYJnzbzTkhGRbjWv1KjVWl2AudOUeeRlB2nzS/edaCwjctE9rBgFyYBa
 Dn+8r/BiFCxTUK0I+i8VSsXiGwJ37phUYCmoMQTdT/hiJJtQjNZyIqcdQcnRXkIsPiDwuR+R
 goCgwqG/ZlAi4JAAbnpaSwokjPJJoPNsPi68FERFwthggsCZRW2Fm81tE3wptQg++e/jApZT
 0dDXVIKJeCZ0nxucMIRRC6DlU9VkBBX8HLqKi73iobJuHImcEKgsKsCEvkDlkdBV7ZWIglho
 OX+bFPEsGL5/YxIrYfRzOyHiw+ArOEWK4uMIfo4M4eJFFLjeHUNCAIwKhQZvpDiVhdD1fNLb
 DCi8M06Kx3IoLFCIwiXgHns/6WAeXB/ykmWIdk1J5pqSzDUlget/r2okrUdzOBtvzuB4rW35
 1L/2oIl9DTO0oo6eDZ2IkiF6unxbUEmqAmdz+P3mTgQyjA6RK0uLUhVyI7v/AGe3ptmdJo7v
 RLrA4E9hytnp1sD2WxxpGp1Wr1dH6xidXsvQc+Weac92KKgM1sHt5jgbZ/+nk8iClLloY3ze
 657fy65cS/ma3fYcUb+iF+trL5cbIk+7V+mT7751upvWpvQd/FExMn/mSv+Xir4O3P0nzmvd
 8iNJq8tXJj/QNvjiirTMvtTEHev21B2afSam1f9m+OJm1falB1vmvtu0t/sYGs52GNvULyru
 5ZeHbT7UrzEvvXV1+645UQPXRmkpn8lqwjA7z/4FM7y3qcUDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsWy7bCSvG63ck+cwZq/zBbzj5xjtWhevJ7N
 YsqGD0wW/Y9fM1ucP7+B3WLT42usFpd3zWGzmHF+H5PFmcW97Bate4+wO3B5bFrVyeaxf+4a
 do/NS+o91m+5yuLxeZNcAGsUl01Kak5mWWqRvl0CV0bjnQPsBftZKvo2TGBrYDzG3MXIwSEh
 YCLxeXlqFyMXh5DAbkaJx5962bsYOYHiMhITXixhhrCFJe63HGGFKHrOKLHt6wuwBJuArsTl
 xU+YQGwRIHvzjeXsIEXMAseYJG4+/8kC0fGEUeJs10I2kHWcAvoS3554gzQIC4RIrGv+wApi
 swioSLzdfxzM5hWwlLiwuZsZwhaUODnzCQuIzSygLdH7sJURwpaX2P52DtR1ChI/ny5jhTjC
 TWL2ir9QNSISszvbmCcwCs9CMmoWklGzkIyahaRlASPLKkbJ1ILi3PTcYsMCw7zUcr3ixNzi
 0rx0veT83E2M4FjT0tzBeHlJ/CFGAQ5GJR5eBvbuOCHWxLLiytxDjBIczEoivFK9nXFCvCmJ
 lVWpRfnxRaU5qcWHGKU5WJTEeZ/mHYsUEkhPLEnNTk0tSC2CyTJxcEo1MHLvL7U5v0L8rsQ7
 U570MwsnrtB5+ptXMttyd9/Vo1y/srufxvezsRdyKWzV+3G4+WBZ6qSEzE256cbzp2/fL1yy
 63g958dXsuwHNj1e3Bmu3ffn3IaMj4XvgifHr9py9rddI1OItdykJ0eLFSYc8b37/uVX5v4E
 /qZrc+dWf/fK0lVLeFNnfV+JpTgj0VCLuag4EQDbGOyGsQIAAA==
X-CMS-MailID: 20200407065403epcas2p37d0990979790e3e14a25149830f5c913
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200406230902epcas2p19a8df6805dac59968d664efb9bc9419b
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200406230902epcas2p19a8df6805dac59968d664efb9bc9419b@epcas2p1.samsung.com>
 <20200406230855.13772-1-hyunki00.koo@samsung.com>
 <20200407062655.GC21995@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_235411_122447_A3DE7165 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 'Rob Herring' <robh+dt@kernel.org>, 'Kukjin Kim' <kgene@kernel.org>,
 linux-serial@vger.kernel.org, 'Jiri Slaby' <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 3:27 :00PM +0900, Krzysztof Kozlowski wrote:
> On Tue, Apr 07, 2020 at 08:08:49AM +0900, Hyunki Koo wrote:
> > Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> >
> > This is required for some newer SoCs.
> >
> > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> > ---
> 
> Why I am adding these for the third time?
Sorry, I didn't knew that,
I will keep this next time
> 
> Tested-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> Best regards,
> Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
