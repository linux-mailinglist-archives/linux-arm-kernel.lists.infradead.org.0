Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA9A19BED8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4UjRfyt0VV2accmE9ML4kZ8nEeBbRkNMrBTl5EfcRA=; b=JKrZS9C0lrzXHU
	l0XRhLBgb9fnDgD+yJvHHgWXI64AchhmVcifqpiSt6OAeF2+ERCJ6BG034I5HdeSlPU+QUUyZurSQ
	zPiAQzOSX/aAwLLLiACztp5MLXlFdtTgpyrsS0j69l7vDXbycCpeLnHzR4L2RlblEhHr6LbH/Tjw0
	44BrfQx5hMKGH3AqGdcQ5NseQzcAmZkanioi0u4ypl9Y82X18hn9Hi8YeitkNW3r3WRWhd3f+TvLD
	cWtDfGrDLN5W8euImzJf+4WOAYNh+TQJQcsrTtQbw57iyJ68KY4dWtzv0DXZuJdtImnMa1he53mkL
	L2eunZ4LPhgfX6vOsgFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwPm-0004kn-Nx; Thu, 02 Apr 2020 09:45:34 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwPM-0003E8-7V
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:45:10 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200402094504epoutp01f3d3d4d99ddb8f3d9e3db6f3c0b669ea~B94d1oda51712017120epoutp01u
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 Apr 2020 09:45:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200402094504epoutp01f3d3d4d99ddb8f3d9e3db6f3c0b669ea~B94d1oda51712017120epoutp01u
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585820705;
 bh=EpaEeqrIy/TvLIw7RPtSVT3L0MGSm+6vhhdnmt64iGI=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=Vgw5r2xClabWG3t7GseUEH5CwXIS98x0H78RK/vd7ebN0f6HBUy0ytTquEtXZrvIp
 ufJdUC3XS8iF8fB3sPLAUyZYEQrHmgQL6GYe4heDKsmeiiyvfhrgToSjPx6g5kUs6a
 FxcJ03Fcx1Kwu1Gi5l4hg+OChY0FiZmHAw1KuE68=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200402094504epcas2p3123844323638847f1378465a38096e14~B94dkPpKa1153911539epcas2p3y;
 Thu,  2 Apr 2020 09:45:04 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.40.183]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 48tJ7y0KD6zMqYkg; Thu,  2 Apr
 2020 09:45:02 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 D0.D4.04105.C14B58E5; Thu,  2 Apr 2020 18:45:00 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20200402094459epcas2p1af4cf104eb6d7ea0d602a562fd9c8c8f~B94Ynuvsi2495524955epcas2p19;
 Thu,  2 Apr 2020 09:44:59 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200402094459epsmtrp2290072ed74ede8f4dee0985e7745efe9~B94Ym6D7i1921419214epsmtrp2X;
 Thu,  2 Apr 2020 09:44:59 +0000 (GMT)
X-AuditID: b6c32a47-15bff70000001009-46-5e85b41c927e
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 61.C4.04158.B14B58E5; Thu,  2 Apr 2020 18:44:59 +0900 (KST)
Received: from KORCO004660 (unknown [12.36.165.196]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200402094459epsmtip2514fcb526d9aedcb40e5f5ebdf565563~B94YdOf5n3121331213epsmtip2G;
 Thu,  2 Apr 2020 09:44:59 +0000 (GMT)
From: "Hyunki Koo" <hyunki00.koo@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, "'Greg Kroah-Hartman'"
 <gregkh@linuxfoundation.org>
In-Reply-To: <20200401091952.GA14425@kozik-lap>
Subject: RE: [PATCH] tty: samsung_tty: 32-bit access for TX/RX hold registers
Date: Thu, 2 Apr 2020 18:44:58 +0900
Message-ID: <000001d608d3$5faa8260$1eff8720$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIlrsPG99gFy1AqjplcrZ0ldcCfeQKEs4Y1AmydwKICM8VWpaeNHlJA
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUgTcRjH++1ud5u2uKbV04gYVwga6raanaFhJLko0pCCIlyHu9TaW7tp
 L3+k9LJ0aiZW1HpRMUrEss5lZqXhJAtKKTGy6F3DEmpmWRZF287I/z7P83y/PC+/nwxTNhMq
 WZ7VyTmsrJkmwvAWX/TS2HneQ1ma099o5kBdE8H07/9MMMeu+CVMxbsRjOntvUIywrsnUqav
 7QzBnOxtlzAP6srJFLnhhucFaRAaSghDx9lG0tB8vtDQ5O3HDWPC/Axiszkpl2NNnEPNWbNt
 pjxrTjK9JtO40qhP0GhjtYnMUlptZS1cMp26NiN2VZ45MBStLmDN+YFUBsvzdPzyJIct38mp
 c228M5nm7CazXau1x/Gshc+35sRl2yzLtBqNTh9QbjXnltR9x+xVit3dby5iRWhM7kYyGVBL
 oMPLuJFcpqRaEbhuprhRWIC/ICitqsXFYBxBTdk3LKgKGvxuQSIWbiNoffgGE4MPCCor7oVU
 BBULfXWDkiBHUiZ41DAaEmHUVwRHfncRwYKciocTA30hjqDS4fpwZ8iMUwth6GVZKK+gEuHn
 21pS5Jlw/9QgHmSMWgQXakcmR1LDxNAFqdhsFbQM1kxqIuF0iSvUGKhfBJQ8KEaiIRWE0auT
 HAEfu72kyCoY+3SbELkQ2l2VpGguQzDhH5KKhcXgeX8YBa+HUdHQ1BYvHnIBdD2b7DsDin2/
 STGtgGKXUjRGweXxYYnI86BxqI08imjPlM08UzbzTNnA879XDcIb0GzOzltyOF5nXzz1sQUU
 +rAxaa2opWdtJ6JkiJ6uUG87mKWUsgX8HksnAhlGRypWnDyUpVSY2D17OYfN6Mg3c3wn0gcO
 X4mpZmXbAt/f6jRq9bqEBE2intEn6Bh6jkIIH9iipHJYJ7eD4+yc459PIpOritC54ajM/gJP
 +CjxYyO+SBW1PPJWdfjT5k3vy9cb/DX1j19duvh8mjoei7l7Pw0X2gpd60uthdJZ4y99meXr
 6uemGtO3X9U82tlzROjRlg5k0at3OeU+1/xLFa/vuG9Vy7k/Sq/uofdaWFx96YbEbm+K+vlI
 0cr0aonfsc9XXN9/nMb5XFYbgzl49i/18OSlxgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsWy7bCSvK70ltY4g5trhSyaF69ns7ja9J7N
 YsqGD0wW/Y9fM1ucP7+B3WLT42usFpd3zWGzmHF+H5PFmcW97A6cHjtn3WX32LSqk81j/9w1
 7B6bl9R7rN9ylcXj8ya5ALYoLpuU1JzMstQifbsEroxJi6+wF7zkqZhwcjZrA+NJzi5GTg4J
 AROJD12bmLoYuTiEBHYzSpzdMJcVIiEjMeHFEmYIW1jifssRVoii54wSZ+bOYQJJsAnoSlxe
 /ATMFhFIkfj16QcLSBGzwC9GiWs3NjBCdFxnlFh9+DkLSBWngL7EtJuX2UBsYQFfiaudM8Hi
 LAIqEk/v9YDFeQUsJX49WsgOYQtKnJz5BKyGWUBb4unNp3D2soWvoc5TkPj5dBkrxBVuEtue
 LICqEZGY3dnGPIFReBaSUbOQjJqFZNQsJC0LGFlWMUqmFhTnpucWGxYY5aWW6xUn5haX5qXr
 JefnbmIEx5uW1g7GEyfiDzEKcDAq8fAqpLXECbEmlhVX5h5ilOBgVhLhdZzRGifEm5JYWZVa
 lB9fVJqTWnyIUZqDRUmcVz7/WKSQQHpiSWp2ampBahFMlomDU6qBMUAh/xlz5KWPtbyNDLot
 F+Xu9r0o82bT4hOa/Ji3NVV+/xu/gI9rpe9Kf7j7W1Pb6blJe3X2tYC+xTGuC19ntZWlX/Kr
 /fvppRm/5NPUqIgFfMeDr+9msnz3RDPdtbJj6Z8XtofmHZn+eIZe8qz/PIFb5s5pFL+iZ+v6
 +Pw6g309X6uP9J2XU2Ipzkg01GIuKk4EAJUyQsezAgAA
X-CMS-MailID: 20200402094459epcas2p1af4cf104eb6d7ea0d602a562fd9c8c8f
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200401082749epcas2p2a774da515805bc3f761b6b5a8dc9e3d2
References: <CGME20200401082749epcas2p2a774da515805bc3f761b6b5a8dc9e3d2@epcas2p2.samsung.com>
 <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <20200401085548.GC2026666@kroah.com> <20200401091952.GA14425@kozik-lap>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_024508_571117_F853154E 
X-CRM114-Status: GOOD (  16.89  )
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
Cc: linux-samsung-soc@vger.kernel.org, hyunki00.koo@gmail.com,
 linux-kernel@vger.kernel.org, 'Kukjin	Kim' <kgene@kernel.org>,
 linux-serial@vger.kernel.org, 'Jiri
 Slaby' <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 6:20:20PM +0900, Krzysztof Kozlowski
wrote:
> On Wed, Apr 01, 2020 at 10:55:48AM +0200, Greg Kroah-Hartman
> wrote:
> > On Wed, Apr 01, 2020 at 05:27:20PM +0900, Hyunki Koo wrote:
> > > -	if (np)
> > > +	if (np) {
> > >  		of_property_read_u32(np,
> > >  			"samsung,uart-fifosize", &ourport->port.fifosize);
> > >
> > > +		if (of_property_read_u32(np, "reg-io-width", &prop) ==
> 0) {
> > > +			switch (prop) {
> > > +			case 1:
> > > +				ourport->port.iotype = UPIO_MEM;
> > > +				break;
> > > +			case 4:
> > > +				ourport->port.iotype = UPIO_MEM32;
> > > +				break;
> > > +			default:
> > > +				dev_warn(&pdev->dev, "unsupported
> reg-io-width (%d)\n",
> > > +						prop);
> > > +				ret = -EINVAL;
> > > +				break;
> > > +			}
> > > +		}
> > > +	}
> > > +
> >
> > Does this mean that reg-io-width is now a required property for all
> > samsung uarts?  Does this break older dts files?  Or should you
> > fall-back to the previous operation if the attribute is not there?
> 
> Yes, it looks like silently breaking all boards.  Since
> of_property_read_u32() will return errno, the warning message won't be
> printed and all register reads will fail (return 0).
> 
> This looks like not tested on real HW.
> 
> Best regards,
> Krzysztof

[Hyunki Koo] 
reg-io-width =4 is required for Samsung uart
To do not break older dts files, I will set default value in else of of_property_read_u32 like below.
+		if (of_property_read_u32(np, "reg-io-width", &prop) == 0) {
+ ...
+		} else {
+			ourport->port.iotype = UPIO_MEM;
+		}




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
