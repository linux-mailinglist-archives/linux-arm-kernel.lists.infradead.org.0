Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EA598DA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqh3rWsK9iWbHefr3GaUMfLuZzJnc7D0FfrqMtfipiQ=; b=KkI89Dhwwf/lU+
	IxJBbi1ddG10wHFp513EpC4n0l4oePDG/bNAKvVFvYwGvRl/ni7JLfosn9+2P/edUNiYoQM8o0sy0
	b4VuuOQqikPEFOdTbqxJMQjNR4b4VsL4puYDIWg357lHC9mOcWdGfC+G/pOHCRN7pCt/HBczs9yGB
	QhZZqxmVQf0kBqs5sEJJgoPxqMssDZ0HC6Fi8LGZmoJHQeStzRFMguEAKLKy/LKi8/c6HX/WNku//
	lrqkTh7nU4aRsLHEFRsqVTfD9qg+YRsFLGGt9S6GT20Tc56SvUBqERyEfnyzKNGSPqcqMa3vZOPej
	/JNZ+89JNBDtPGRN4c0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iTD-0007xA-Jk; Thu, 22 Aug 2019 08:29:23 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iSy-0007wq-Rn
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:29:10 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7M8T2Ge082986;
 Thu, 22 Aug 2019 08:29:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=ESxl8CBY1GOljdugvc2JxeIFo2luM3a4IAGiMVGl4Xo=;
 b=dU9mhAA/VbEAqBez6N08RYpOTLCHYvwhusgL/cLHEkuZLx1YT7eS3hc+Hx4PIgwcqGK2
 xd+b4h8D3sJg15xC1qElgD2boCaPPMYgdSm3+oI2cuhWwvbSkjgFnStTfk2UEHqtUA7e
 u6LnKxQrobXBuI/LyWIC6wViCLbUwuf2/mWZXDg5G4oG9BXmpNqQwnrc9Lavlc5vvPLv
 IykmyK/Xxks9l34fZ/ur8oj6lTL8z3M8mGmHcwc4St4aVwL7R1fY8JfmCQb915C7IhRG
 pDrA1fCDA0zUThwpYkeALqAQzs7sxeqqWtT0W7O9JcWRWBIvhfnz7jY/bYLlpVuNxciK IA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2ue90tuv3t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Aug 2019 08:29:02 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7M8Sul5103153;
 Thu, 22 Aug 2019 08:29:01 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2uh2q5ma4g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Aug 2019 08:29:01 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7M8Sceb029421;
 Thu, 22 Aug 2019 08:28:38 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 22 Aug 2019 01:28:38 -0700
Date: Thu, 22 Aug 2019 11:28:31 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH 1/4] misc: xilinx_sdfec: Fix a couple small information
 leaks
Message-ID: <20190822082831.GH3964@kadam>
References: <20190821070606.GA26957@mwanda>
 <58e9a151-3d92-c730-eea6-5cfde90934a4@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58e9a151-3d92-c730-eea6-5cfde90934a4@xilinx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=854
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908220093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=913 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908220093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_012908_990424_0AAD47A9 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Derek Kiernan <derek.kiernan@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 10:14:12AM +0200, Michal Simek wrote:
> Hi Dan,
> 
> On 21. 08. 19 9:06, Dan Carpenter wrote:
> > These structs have holes in them so we end up disclosing a few bytes of
> > uninitialized stack data.
> > 
> > drivers/misc/xilinx_sdfec.c:305 xsdfec_get_status() warn: check that 'status' doesn't leak information (struct has a hole after 'activity')
> > drivers/misc/xilinx_sdfec.c:449 xsdfec_get_turbo() warn: check that 'turbo_params' doesn't leak information (struct has a hole after 'scale')
> 
> Who is generating these warnings? Is this any new GCC or different tool?
> I see that 3byte padding but never seen these warnings.

This is a Smatch check.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
