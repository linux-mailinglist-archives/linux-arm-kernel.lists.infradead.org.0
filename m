Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F461A06F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 08:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZ+j8iifjMnBZdhJc4DYEH1N7pstuCdLH9hHtBv3qn8=; b=ti7niDUvd27QBf
	bgbK8YLXhPSBE+M3AGrubJFoIW2Lbpwf1l6uvUhSyBmouB3ZICMky4e+d+4ilEV6VznaieCN9l6kV
	QuDiLrwZ9y658OCDhryJ6qLKTjj9MFqnx7dWC/yElU20Z/h/LLCsvXaxTdYi23F98cq6xT7NblBan
	4QVtS+AhZNBiw4SszgS2mA0EGE9mjSkox/Xr15FDgnnM8/prju9DjB/Mq5Q4t+jkiE4Xdb/JBMlHA
	sUlYCcr7IV6YAUiw96010/je2YusLGSH4D+dkyPYWm4SjJMDerEolmNXAi+hnCUsBibXWm/6ZN80N
	SCit59YoCQge6NLYK0GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLhKO-0007aR-Ct; Tue, 07 Apr 2020 06:03:16 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLhK9-0007UI-DT
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 06:03:03 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200407060258epoutp04efc0321ee32a037780245a52bf914bc5~DdE9miwpI0594405944epoutp04A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Apr 2020 06:02:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200407060258epoutp04efc0321ee32a037780245a52bf914bc5~DdE9miwpI0594405944epoutp04A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586239378;
 bh=UHJ/xy/UlANgcny0UOh5Ut2QlDZdjfdnSsm1AznPSTE=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=XpwM1Dzveq7gjd55a1CBsNtwtt8QF+bBqsabzFvDCJFZcuPCzQ43UVzV/HeQttWw4
 L7JOODIqauJ7OsLHrBFgnF9FcOXm7nSq2PuO10c2CXEYI4wxe5urnBPE4kLbRSseUy
 A2+f5d2usGEl5tUiMPKVDQAjVQxIlAFfQ+UbMAk4=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200407060257epcas2p372c0452e9eb770b02eb360fd8b216b6e~DdE9a6nfD1451114511epcas2p37;
 Tue,  7 Apr 2020 06:02:57 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.182]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 48xGzM40PjzMqYkg; Tue,  7 Apr
 2020 06:02:55 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 BF.04.04704.E871C8E5; Tue,  7 Apr 2020 15:02:54 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20200407060253epcas2p4a98467e9fdd8c77db2be8c7a8c2e0d1f~DdE5pBu1j0264802648epcas2p4P;
 Tue,  7 Apr 2020 06:02:53 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200407060253epsmtrp246645ee0fa5ad61d407cfbc0c42b653e~DdE5nzJMo0321703217epsmtrp2r;
 Tue,  7 Apr 2020 06:02:53 +0000 (GMT)
X-AuditID: b6c32a46-811ff70000001260-d4-5e8c178ec2ee
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2C.8D.04024.D871C8E5; Tue,  7 Apr 2020 15:02:53 +0900 (KST)
Received: from KORCO004660 (unknown [12.36.165.196]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200407060253epsmtip2b8eb7f5017b9e1a33efbdeb4071fc24c~DdE5aMClM2535825358epsmtip2a;
 Tue,  7 Apr 2020 06:02:53 +0000 (GMT)
From: "Hyunki Koo" <hyunki00.koo@samsung.com>
To: "'Jiri Slaby'" <jslaby@suse.com>, <gregkh@linuxfoundation.org>,
 <krzk@kernel.org>
In-Reply-To: <62a918df-b3ba-21f4-b3ad-9f638ad104ad@suse.com>
Subject: RE: [PATCH v6 2/2] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Date: Tue, 7 Apr 2020 15:02:53 +0900
Message-ID: <000401d60ca2$2d2b3550$87819ff0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKEs4Y1dkf1SYeuuA/6Ie9wROds5QJr8Gf+Ae0ziqcBDq6a2abkmiBQ
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRTut3u3Xa3Fz2V1GFLjJpHVdFtNr6EWVLIoSOhlEdrN3aa0F7vT
 XkSGZWqariJtFSaa9kJrmYkyEzUsMqX3A4vCFpX0UloIWW27Vv73nd/5Ps73nd+hCHmjREFl
 WRyc3cKaaEko2dQZxaiOTC9OUztfRjCVXb1iJq+6QcIcv/JVxJQODBJMX98VKeMeeCJmHrac
 ljAVfW0ipqe6RMoc9HRJl4Tq3RcLJfqbZy5L9ddq9ukbGh+T+mH3jBTxJlNCJscaOLuSs2RY
 DVkWYyK9ck360nRdrFqj0sQzcbTSwpq5RHrZqhRVcpbJb4pW5rCmbP9TCsvzdExSgt2a7eCU
 mVbekUhzNoPJptHYonnWzGdbjNEZVvMijVqt1fmZW0yZA2VdyOYJ2/ljuIHMRcOyIhRCAV4I
 5a67ZBEKpeS4GUF7o1MqFEMI3rS+FguFD4H7UKX0n8TpHWt4EBy930cIxQcEn3p9KMCSYBU8
 rH4rKkIUFY43QGtHToBD4J8I8jxPyAAnBCdA5+D9IJ6C18P1plZRAJM4Ei74eoLTZDgezj3y
 iQUcBndOvg3yCTwPaqsGCcGREka8tUFOOE6GL0f6CYETDqcK84PmAP+WQOWzcpEgWAZlD0pJ
 AU+Bj92NY9EUMPzZIxHwPmjLF5YBuBjByFevWGgsANe7QyiQjMBR0NASE4CAZ0HXizFvk6Gg
 c1QqPMugIF8uCGdDve/9mIMIuOxtkZYh2jUumWtcMte4BK7/s84i8iKaxtl4s5HjtTbt+N92
 o+DFzk1uRjW9qzoQphA9SZYacjhNLmZz+F3mDgQUQYfLFCWFaXKZgd21m7Nb0+3ZJo7vQDr/
 4p2EYmqG1X//Fke6RqeNjVXH6xhdrJahp8vcE59vlmMj6+C2c5yNs//ViagQRS56euz7UsdL
 WnTL82HCVa5qfvmboaTIV/31/KtfG1fmPb69f/Gs2abRgqMnt1WW31DFHdjbHXm+pzQtdU99
 incts/rewbq6wq2iihVPl9s3DY0WNT3aXkfMPHPN2D1tx0hM/+5ow/J113XGSW3fik9M9HRG
 XNpR0n426sXi3KQ4ZiB1jlNBk3wmq5lL2Hn2D4ffaEXHAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsWy7bCSvG6veE+cwcpvuhbzj5xjtWhevJ7N
 YsqGD0wW/Y9fM1ucP7+B3WLT42usFpd3zWGzmHF+H5PFmcW97Bate4+wO3B5bFrVyeaxf+4a
 do/NS+o91m+5yuLxeZNcAGsUl01Kak5mWWqRvl0CV8a+XbUFCwUr9i3rY21gvMzbxcjJISFg
 IjF94lPWLkYuDiGB3YwSS3cfY4NIyEhMeLGEGcIWlrjfcgSq6DmjxKN9C1lBEmwCuhKXFz9h
 6mLk4BARiJTY1ScOUsMs0MQk0XttB1izkMBHRomp26pBbE4BG4nDry+ygNjCAiES65o/gM1h
 EVCRWPntDDuIzStgKbH0yjdWCFtQ4uTMJ2D1zALaEr0PWxlh7GULX0MdpyDx8+kysHoRATeJ
 9313mCFqRCRmd7YxT2AUnoVk1Cwko2YhGTULScsCRpZVjJKpBcW56bnFhgWGeanlesWJucWl
 eel6yfm5mxjBkaaluYPx8pL4Q4wCHIxKPLwM7N1xQqyJZcWVuYcYJTiYlUR4pXo744R4UxIr
 q1KL8uOLSnNSiw8xSnOwKInzPs07FikkkJ5YkpqdmlqQWgSTZeLglGpglFCZ6HHomci8KYvu
 /uB+Uni3YLO+KQ/z7NbKU1E2k9qM9maW2ja92Mh3e1t8r+0uxY0JfNEfld1tXP7pHZ1kxxSx
 5Zr0s/yIe+XP1qa1Ln+Zc7Og9ivX7q0RLlF79EN3rG1zF45ZxJD946h/21IP1VO6v5bsvVH1
 +Fma84u8zAMXUsX5e73+K7EUZyQaajEXFScCAGO85/mwAgAA
X-CMS-MailID: 20200407060253epcas2p4a98467e9fdd8c77db2be8c7a8c2e0d1f
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200406230902epcas2p19a8df6805dac59968d664efb9bc9419b
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200406230902epcas2p19a8df6805dac59968d664efb9bc9419b@epcas2p1.samsung.com>
 <20200406230855.13772-1-hyunki00.koo@samsung.com>
 <62a918df-b3ba-21f4-b3ad-9f638ad104ad@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_230302_008344_2B6593CA 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, 'Rob Herring' <robh+dt@kernel.org>,
 'Kukjin Kim' <kgene@kernel.org>, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07. 04. 20, 1:49, Jiri Slaby wrote:
> On 07. 04. 20, 1:08, Hyunki Koo wrote:
> > Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> >
> > This is required for some newer SoCs.
> >
> > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> ...
> > ---
> >  drivers/tty/serial/samsung_tty.c | 76
> > +++++++++++++++++++++++++++++++++-------
> >  1 file changed, 64 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/tty/serial/samsung_tty.c
> > b/drivers/tty/serial/samsung_tty.c
> > index 73f951d65b93..bdf1d4d12cb1 100644
> > --- a/drivers/tty/serial/samsung_tty.c
> > +++ b/drivers/tty/serial/samsung_tty.c
> > @@ -154,12 +154,47 @@ struct s3c24xx_uart_port {
> ...
> > -#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port,
> > reg))
> > +static void wr_reg(struct uart_port *port, u32 reg, u32 val) {
> > +	switch (port->iotype) {
> > +	case UPIO_MEM:
> > +		writeb_relaxed(val, portaddr(port, reg));
> > +		break;
> > +	case UPIO_MEM32:
> > +		writel_relaxed(val, portaddr(port, reg));
> > +		break;
> > +	}
> > +}
> > +
> >  #define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port,
> > reg))
> >
> > +static void wr_reg_barrier(struct uart_port *port, u32 reg, u32 val)
> 
> You need to explain, why you need this _barrier variant now. This change
> should be done in a separate patch too.
> 
> > +{
> > +	switch (port->iotype) {
> > +	case UPIO_MEM:
> > +		writeb(val, portaddr(port, reg));
> > +		break;
> > +	case UPIO_MEM32:
> > +		writel(val, portaddr(port, reg));
> > +		break;
> > +	}
> > +}
> > +
> >  /* Byte-order aware bit setting/clearing functions. */
> >
> >  static inline void s3c24xx_set_bit(struct uart_port *port, int idx,
> 
> thanks,
> --
> js
> suse labs

The purpose of this patch is to support 32bit access for registers, and it is also working exsisting device.
There are 3 operations what I have to to change which are rd_regb, wr_regb, and writeb.
rd_regb, wr_regb are changed to rd_reg, wr_reg.
and writeb is changed to wr_reg_barrier.
So I make as a one patch.

wr_reg_barrier is not a different patch, itis just replaced from writeb.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
