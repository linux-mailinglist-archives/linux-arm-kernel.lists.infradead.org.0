Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393AE1ADCDB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 14:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VkdPgaQ8k7bH0yKA//4zlBBh6qZRCgWIeK9cYQvSkoQ=; b=tnUWrYRZRafpuQ
	ZAXX1Ymzj4Y6Wll1NR+4OmjGVqjm7DvnfGX6GmwYnhkcTvSN+nh6xyfZUhPrpbcWlHcVyZUsppaOj
	chbll3xqpLT4pVlDTbkj9npq06lByxImEBVGL5utF7SUuriMYArJmMo7ZGkK7XdDySUld7ZyQCzhG
	2/asw7mlhlKrEageQrH92oW74Vj9VIg2btUI5/CRiJmyHseMTdb4BRJk2kKFVAG0GHCZtMLQQxK5g
	481IDkWs35u5x0JIsdUkjKx1Eq1pbwT/CrYUdVHuDocvsVG/ctB5qjUDrzfHwJP6Tsiyct3FYf8ur
	+UNrZjMImcWkp4VPibiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPkH-0007E8-UV; Fri, 17 Apr 2020 12:05:21 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPk8-00065Z-RJ
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:05:15 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200417120505epoutp018f67b5cb079d89cc7f636a7a9a11da26~Gmd-ldBqF1489314893epoutp01a
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 12:05:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200417120505epoutp018f67b5cb079d89cc7f636a7a9a11da26~Gmd-ldBqF1489314893epoutp01a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587125105;
 bh=dJcYkDnyAjd95+ohk9nQ0Dw6y/yaqHsf5/2UJiMepdc=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=BVuAnuM1mQf3WXaoZ/lgtlHItBeqQpkaRSb7gqtpDA5LgsnyyrO/iQ4ihYngX44zg
 qwIa4wu8HLKEW0KBmSvq4vT5D8A/P5CAJ+My0t9PgXWT+EeroHccYADjDDQElbRtS8
 PfNyvRzaeUirAsal6mUpySJthFz4JJ9kKFknujH8=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20200417120505epcas2p42d385e6dc7da6ca2a4b235ca4b4c252f~Gmd-Mrf2n2738827388epcas2p4X;
 Fri, 17 Apr 2020 12:05:05 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.40.188]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 493ZXb130lzMqYlp; Fri, 17 Apr
 2020 12:05:03 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 53.EE.04393.F6B999E5; Fri, 17 Apr 2020 21:05:03 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20200417120502epcas2p2415cf80227a45ac7607c7df3de0058fc~Gmd87Fo9A0201902019epcas2p2A;
 Fri, 17 Apr 2020 12:05:02 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200417120502epsmtrp247085cffd8a424296475f9724ea02ce8~Gmd83jC0w1819518195epsmtrp2F;
 Fri, 17 Apr 2020 12:05:02 +0000 (GMT)
X-AuditID: b6c32a47-667ff70000001129-9f-5e999b6f6c97
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2B.49.04024.E6B999E5; Fri, 17 Apr 2020 21:05:02 +0900 (KST)
Received: from KORCO004660 (unknown [12.36.165.196]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200417120502epsmtip233466db146fde9b7bc8b0ccc287e8101~Gmd8rXXZ01642516425epsmtip2i;
 Fri, 17 Apr 2020 12:05:02 +0000 (GMT)
From: "Hyunki Koo" <hyunki00.koo@samsung.com>
To: "'Greg KH'" <gregkh@linuxfoundation.org>, "'Hyunki Koo'"
 <hyunki00.koo@gmail.com>
In-Reply-To: <20200416135618.GA1295013@kroah.com>
Subject: RE: [PATCH v7 2/2] Support 32-bit access for the TX/RX hold
 registers UTXH and URXH.
Date: Fri, 17 Apr 2020 21:05:02 +0900
Message-ID: <001501d614b0$6cab3ed0$4601bc70$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFi1K+6yj7qBWyiWiQvcgMo5OZtFgIiWQf+Anfu/XipPuQQEA==
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA02TWUwTURSGvZ12ZlCqY2U5VmPquCRg0BZsHVSMK9ZoDOqDxBjqBCZAnC7p
 FBV9UCibijuJMrgCoiEqWgoCCkSoUROFEAVFQ8IixiXuCkEj2HYw8vad5b9nufeSmKoBV5Op
 Fgdnt7A8jY+XVzeHMRHWosIEbWkrwVzwtCgYZ0kFzrRnfsaZgptfZMyxvg8Y09p6k2BcfR0K
 5mndWZw509ogYx6XHCGY7HoPsXyCsVbsIoyu8oO4sfHcNcJYWbrfWOFulxu/u2bE4dv4pSkc
 m8TZNZwl0ZqUakmOoddvMa0y6Q1aXYQumllEayysmYuhV2+Ii4hN5b3t0ZpdLJ/mdcWxgkAv
 WLbUbk1zcJoUq+CIoTlbEm/T6WzzBdYspFmS5ydazYt1Wm2k3pu5g09p+vUV2boC94yM9KID
 aDDgEAoggVoIR347iUNoPKmiahAcvlKskIxvCHpu1cklYwDBYP5n2T9JV0YfJgXqEfzIOimT
 jHcIXt3Pwn1ZOBUBT0te+xVB1Fa4O+z0M0aVyKCqd6aPAygddD9sVPh4CmWC7ILrhI/l1Bz4
 6TztZyUVDd2lbZjEk+FR4Wu5dM48KLv0AZM60sBQf5lCqrUSyls+juYEQdHBHH+nQOUS4D7q
 QZJgNTg78nGJp8D7B25CYjV8/1Q/6t8PDTknCEmcj2DoS79CCkSB+CbXexDprRAGFXULfAjU
 LPC8HK07EfKa/xCSWwl5OSpJOBduDLwdXeJ0uNZfRxxHtDhmMnHMZOKYCcT/tS4ieTkK4WyC
 OZkTIm1RY2/bhfxvN3xtDapu2dCEKBLRgcq8o4UJKgW7S0g3NyEgMTpIeS/W61Imsel7ObvV
 ZE/jOaEJ6b2LP4GpgxOt3p9gcZh0+kiDQRutZ/SGSIYOVbomdG5XUcmsg9vJcTbO/k8nIwPU
 B9CtzW29scNtxt2nTrnPhL6xW8KLK7+lFy/quTrpz+XA4TVFzttxNcYY8ZmHJ5c46rPK7k27
 mJ25Ilc2yMdf2Pjxzt7qaeyz0EcFs1+8ddeOiyfYnOOV69p7nkyFzPP65+PuVtZeHagJUTNV
 /anWPZ3BvzaJ+zpk3RnN65obgy8ZxC20XEhhdeGYXWD/AvbPdJfRAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFIsWRmVeSWpSXmKPExsWy7bCSvG7e7JlxBksXqljMP3KO1aJ58Xo2
 i6tN79kspmz4wGTR//g1s8X58xvYLTY9vsZqcXnXHDaLGef3MVmcWdzLbtG69wi7A7fHzll3
 2T02repk89g/dw27x+Yl9R7rt1xl8fi8SS6ALYrLJiU1J7MstUjfLoErY/vzaewFV3gqzh7r
 ZmxgfMPZxcjJISFgInG38TFzFyMXh5DAbkaJs1cvskMkZCQmvFjCDGELS9xvOcIKUfScUeLz
 tqVgRWwCuhKXFz9hArFFBMIlFpw7BlbELLCaSeL75OVsEB2bGCVOL1/LClLFKWAo8eDEfjBb
 WCBW4uXzNrBuFgFVia/N08Gm8gpYSjxYcpEZwhaUODnzCQuIzSygLdH7sJURxl628DXUeQoS
 P58uY4W4wkli1bm3UPUiErM725gnMArPQjJqFpJRs5CMmoWkZQEjyypGydSC4tz03GLDAsO8
 1HK94sTc4tK8dL3k/NxNjOAY1NLcwXh5SfwhRgEORiUeXoOemXFCrIllxZW5hxglOJiVRHgP
 ugGFeFMSK6tSi/Lji0pzUosPMUpzsCiJ8z7NOxYpJJCeWJKanZpakFoEk2Xi4JRqYIx9d+za
 o8sdStdWZmpt8cnb/8KE1a4uzPVJc/OMlKb5R1fsWZq8QsHXdrfq/fk2DwydZ24rCrz+QUGF
 td5O/sWNReFPc6rCTuQlfkxZNjeU5++OlTHpRQZK5+xae00+MTOICU2ckh/+Y1rmK+2eju0L
 Mjb8K1TQeHbHP+phcFBb1uy48INKvUosxRmJhlrMRcWJAEHlfJ69AgAA
X-CMS-MailID: 20200417120502epcas2p2415cf80227a45ac7607c7df3de0058fc
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200416140255epcas2p2bf81ac129b7471eb1fe40e545dbd796d
References: <20200411123325.30501-1-hyunki00.koo@gmail.com>
 <CGME20200416140255epcas2p2bf81ac129b7471eb1fe40e545dbd796d@epcas2p2.samsung.com>
 <20200416135618.GA1295013@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_050513_416398_BAF5A905 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 'Kukjin Kim' <kgene@kernel.org>, linux-serial@vger.kernel.org,
 'Jiri Slaby' <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 10:56:24PM +0900, Greg KH wrote:
> On Sat, Apr 11, 2020 at 09:33:24PM +0900, Hyunki Koo wrote:
> > From: Hyunki Koo <hyunki00.koo@samsung.com>
> >
> > This is required for some newer SoCs.
> >
> > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> > Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org> Tested on Odroid
> > HC1 (Exynos5422):
> > Tested-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> > v2:
> > line 954 : change rd_regl to rd_reg in for backward compatibility.
> > line 2031: Add init value for ourport->port.iotype  to UPIO_MEM
> > v3:
> > line 2031: remove redundant init value  for ourport->port.iotype
> > v4:
> > correct variable types and change misleading function name
> > v5:
> > add dt-binding and go as first patch in this series.
> > v6:
> > no change in this patch, only chaged in [PATCH v6 1/2]
> > v7:
> > add reviewed by and tested by
> > ---
> 
> Your subject line changed for this and patch 2 :(
> 
> Also, I asked you to split this patch up better in the past, you seem to have
> ignored that :(
> 
> First patch would be to create the new functions and use them, with no
> functional change to the code as-is.  A second patch would add the new
> binding, and a third patch would be to add the new functionality.
> 
> And you need to describe all of this very well in your changelog, the one
> sentence here is not sufficient at all.
> 
> Please fix this all up and resend.
> 
> thanks,
> 
> greg k-h

Sorry I missed your comment in V4, I will split and update the patch and re-send.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
