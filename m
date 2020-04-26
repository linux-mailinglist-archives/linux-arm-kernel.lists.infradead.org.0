Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A68C1B9158
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 17:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yaFtFLvwZqtisg6sCR7izh9CKaoFr8/M9rjNB0n1CS0=; b=eLb8zEdzte/asP
	jnkddBSnO+FSFYvFT0YvW3+4idtPhA/MCgJJ5XOvGaMGnbkJcYAwAYoCV0MPVMNvB4CtqF0FLtgJL
	QWNYOabb2Pi8saymE3gVNcG+JtsPlPm4xeKIBIGa21AltYRiXbl+XNHAAjq5YWeYpFoXTRV13pUaK
	Lzqb/7rx+4zlqSjCZEvLb/R9sO9bogeIm7nZwQp/g7aAV8HlE3CRiJwHY9+Jn3krTE/pB/WLqrZan
	bvRJICjtrGa1pof4WZcPr23eHt/kweSBqjlykvWsFWOrCK4MvvuFB2vSFSeIXgA9Xk7ImOt532x6q
	wzMDld+B9DsdbJw51EUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSjfT-00077z-EU; Sun, 26 Apr 2020 15:58:07 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSjfL-000771-2q
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 15:58:00 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200426155749epoutp01c08d23e78918f177f9e2ccea87244e69~JacwiaDdd2483124831epoutp011
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 15:57:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200426155749epoutp01c08d23e78918f177f9e2ccea87244e69~JacwiaDdd2483124831epoutp011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587916669;
 bh=trTFp5Ur6qfiEfREXZJnth3cZOnKt8jOp2bjI2S9iaI=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=JeKrG4pE378YAMsTdAwCRiIWiRwDEvFTuBsXS4NkgI+TTcTsOPtmnniB12C9XltMw
 1KmeYTjAHB6WAOb3S/ATocDXCX2Cre9XB9BAtYSrcZEC8/cumDFhWYtie6b7AnmpZR
 G5dIwtBDV7LrQOhjGJAgFzcwdTEcGgjnwJT0d9Xo=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200426155748epcas5p2eee73d1dccf8933d1acaea7659b9b67b~Jacv1f9Fl3173031730epcas5p2B;
 Sun, 26 Apr 2020 15:57:48 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BE.4B.04736.C7FA5AE5; Mon, 27 Apr 2020 00:57:48 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200426155747epcas5p18a5839ee37d56c6aa1dfa319c8df8a31~JacvX3nwp2537425374epcas5p1X;
 Sun, 26 Apr 2020 15:57:47 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200426155747epsmtrp27897ebe2db6314da5c7bdf10014b86c0~JacvXLxL-1929019290epsmtrp2c;
 Sun, 26 Apr 2020 15:57:47 +0000 (GMT)
X-AuditID: b6c32a4b-ae3ff70000001280-c6-5ea5af7c4764
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 17.EB.25866.B7FA5AE5; Mon, 27 Apr 2020 00:57:47 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200426155744epsmtip2783424f39ac89a66da02d6034f69d994~JacsOstWm0566905669epsmtip2s;
 Sun, 26 Apr 2020 15:57:44 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Christoph Hellwig'" <hch@infradead.org>
In-Reply-To: <20200422065541.GL20318@infradead.org>
Subject: RE: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal
 error
Date: Sun, 26 Apr 2020 21:27:42 +0530
Message-ID: <000201d61be3$6e262c90$4a7285b0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJQDPill8kAmUENoj8JBCZ49rLenQIFk/WPAcfxkaoBJkvH+qdwDfUw
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0gUURjFufPaUXZjWgU/lTI3JBWsxKJrRA8oGzKoP7QixNxqUPPJjm+k
 BLO0VVOh0EWs1FURxFrX2jZLM1cRS4M0s6LXtqGm9tCWRNAax8j/znfv+X2Hc7ksqX5De7Hx
 yWmCLlmbqGFcqbtPAgKCcluN0VtbCtbiifkRBv9sbaDxjZ5BGg+U1RJ4aOi2Ao+ZbRQ22V/S
 +IW1msGVQ48IrB+1MLixb5HASx0WBTa2j6G9Kv5FaQnBtzUF8qbmIoZvq7/AX+zvpPgfjtcU
 X2puRvysaT1/uUtPHHU56brrrJAYnyHotuyOcY2bnL7KpLawWaY77Yo8dFFxBbmwwG0DS8EU
 cQW5smruAYLFTgcjDz8R1PyupeVhFoHVbvqLsMtIVcVp+dyKoOCDYQWfQtBjttHSXoYLAkvd
 JUbS7n/1s1vjSDKR3FsCrjm/kdImFy4EnIXxkseNi4BRp4OSNMX5wdi4nZS0iguF9tJ+QtZr
 ob/q87KH5Hzg3nQ1KXfYAPOOBlrOCoP7S8+R7PEA23wxKeUC94GFkfE6Sgb2Q+PCAiFrN5js
 M688hhfMzjxk5JYJUGwNkY9zwVjTu4Luga7hakqykFwAtFq3yFFroGThMyGTKii8pJbdfpA/
 M7JCekO5Xk/LmocbNoOiDPkaVhUzrCpmWFXA8D/sJqKakaeQKibFCuL21JBkIXOzqE0S05Nj
 N59JSTKh5S8XGG5BpsHD3YhjkUapKhTqo9W0NkPMTupGwJIad1VUWm20WnVWm50j6FJO6dIT
 BbEbebOUxkNVQY9EqblYbZqQIAipgu7fLcG6eOUh35idFZ1xYecYqjzy1cyOT8P+6MeEs+kT
 uW5XkVr3kLa1DOSeHz7imZ91gjzSbUzJCbbMt06LynLzsWrfyJfTSp+IfSUOuz+xxO5NNH0M
 vf5U+/0LLle+O1gRPoffPT60aT8mf3m/9+l9XXagIPh45lyHfVBvrBS/xYc58deNGkqM0wYH
 kjpR+wfa13U/bgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAIsWRmVeSWpSXmKPExsWy7bCSvG71+qVxBnPv6Fq8/HmVzeLT+mWs
 FvOPnGO1OD1hEZPF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDav0PLYtKqTzWPzknqPlpP7WTw+Pr3F4tG3ZRWjx+dNch7tB7qZAjij
 uGxSUnMyy1KL9O0SuDJeve1nK1jLUbFp41b2BsYW9i5GDg4JAROJmZOSuhi5OIQEdjBKXHu6
 n6mLkRMoLi1xfeMEdghbWGLlv+fsEEWvGCVOPl7LApJgE9CV2LG4jQ3EFgGyzy58wQhSxCzw
 gkli4pu/TBAdzxglFuxbxASyjlPAWOJbRyaIKSwQJDHtdDhIL4uAqsTNF4+ZQWxeAUuJrX0n
 mSBsQYmTM5+wgJQzC+hJtG1kBAkzC8hLbH87hxniNgWJn0+XsUKc4Cax8/8FqBpxiaM/e5gn
 MArPQjJpFsKkWUgmzULSsYCRZRWjZGpBcW56brFhgVFearlecWJucWleul5yfu4mRnCkamnt
 YNyz6oPeIUYmDsZDjBIczEoivDEli+KEeFMSK6tSi/Lji0pzUosPMUpzsCiJ836dtTBOSCA9
 sSQ1OzW1ILUIJsvEwSnVwNRqstjgxMa2tZ+KlJzOrezklr1/5ePtHz/np6hJZ5gnPbm2J3X1
 N4N6AZOrVlYnMg7ezU41F/J70pn8sjT5XuwRzXthIXlZ/nWfe6OK6xUDt0QuuHjk0fY5Rvu9
 Wr0+mqufPDehVmTjbxGZzBUnlYNdC80d3X7cOr48eZbTf0OWg4t2H+6YVubXsyejV7fBavcT
 na6ObtZdP3JWV7uVtMT9mqefyPFM/MZ/+973fI84u1+dvvvdT/bGt6JJR79xW77iWrCWT+Zh
 fFxawE29ngi5/bWeDJ5H/4YFro1+V2UXVTfv2d5U9/URTo48Z4tPVi42/985ZZLcnilXls2t
 +p+ZYSO7sPY1497IjMK4G0osxRmJhlrMRcWJABNp82pDAwAA
X-CMS-MailID: 20200426155747epcas5p18a5839ee37d56c6aa1dfa319c8df8a31
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08@epcas5p2.samsung.com>
 <20200417175944.47189-6-alim.akhtar@samsung.com>
 <20200422065541.GL20318@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_085759_471790_EC0C1DE5 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Christoph Hellwig <hch@infradead.org>
> Sent: 22 April 2020 12:26
> To: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: robh@kernel.org; devicetree@vger.kernel.org;
linux-scsi@vger.kernel.org;
> krzk@kernel.org; avri.altman@wdc.com; martin.petersen@oracle.com;
> kwmad.kim@samsung.com; stanley.chu@mediatek.com;
> cang@codeaurora.org; linux-samsung-soc@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs
fatal error
> 
> On Fri, Apr 17, 2020 at 11:29:39PM +0530, Alim Akhtar wrote:
> > From: Kiwoong Kim <kwmad.kim@samsung.com>
> >
> > Some architectures determines if fatal error for OCS occurrs to check
> > status in response upiu. This patch is to prevent from reporting
> > command results with that.
> 
> What does "Some architectures" mean?  All this seems to be about error
> propagation to the SCSI midlyaer, so this sounds rather strange.
Ok will update the commit message with more details.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
