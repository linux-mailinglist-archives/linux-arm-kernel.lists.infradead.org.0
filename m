Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E5D1697AE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 14:16:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zo+36G9RTUoR9TIr2SoVFEGjpRJHgf5WVvc+joIhRw=; b=g7KEjYHEwuIbIy
	yNWGFZDSNHYRe4XOsOYInkB3ZHCYckNWOJv9mvakoMmBUFVHE0ZGuHrZHubPBHhYnwnXdIrSPb0TD
	2qpRAzZPZMtSij4YdbBRSxSCXndrLhRbfnAyDwzlb+yf46Y5IlGK/Krq5ZeHoRG5JaZ1rgKPnjNLN
	OTa6jLa7VeboN+g2JpgKZrHXHUCSLn85MDqqVRyoBACAFSVa234QCQtkbAmZ32onGgn6CqSHvwHw3
	TTkkeE2+kwJ3esYhHBzRv8pBvdARaxRkCwy4LvpFPKSj8VoZdd4Jb8EfLf9USnmxRT2jh7FTalINM
	2Ym7VPID4UU5TcussQPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5r7T-0006j7-Pf; Sun, 23 Feb 2020 13:16:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5r6M-0005gL-Tc; Sun, 23 Feb 2020 13:15:21 +0000
X-UUID: 2ebd4369d3ae473390d23de979aea5aa-20200223
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=HUcMinlJztCOhwy6UvhkEzNXlyN6matYqtCW9mEf2tg=; 
 b=cyjb4Jh2uiN5gqUWXcDwNSbbBVQ3VHvCM2Bac0nMvB+TU+UEj1X0VX443+da8woBc78lZX2D00EuYgtDBxqrxzXVnpF/zvaNrtN7oOulBxQJJ5XSmN6RM2SeAzYcvbTPeIwqoYFR2vF7IIKMvWuCsA2LkzSg713ZlOzSXTT6XpQ=;
X-UUID: 2ebd4369d3ae473390d23de979aea5aa-20200223
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 568044871; Sun, 23 Feb 2020 05:15:16 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 23 Feb 2020 05:15:13 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 23 Feb 2020 21:11:02 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 23 Feb 2020 21:14:50 +0800
Message-ID: <1582463706.19053.32.camel@mtkswgap22>
Subject: Re: [PATCH] lib: iov_iter.c: fix a possible calculation error on
 remaining bytes
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Date: Sun, 23 Feb 2020 21:15:06 +0800
In-Reply-To: <20200218124142.GJ23230@ZenIV.linux.org.uk>
References: <1582011672-17189-1-git-send-email-macpaul.lin@mediatek.com>
 <20200218124142.GJ23230@ZenIV.linux.org.uk>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D743D5FFED43F9BC952FE27FF4BE8AE9BAFC6F359885D5FD278658A4DF9A560E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_051519_000657_00CF5B30 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Sasha Levin <sashal@kernel.org>, Shen Jing <jingx.shen@intel.com>,
 CC Hwang <cc.hwang@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Jerry Zhang <zhangjerry@google.com>, linux-usb@vger.kernel.org,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 John Stultz <john.stultz@linaro.org>,
 Vincent Pelletier <plr.vincent@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-02-18 at 12:41 +0000, Al Viro wrote:
> On Tue, Feb 18, 2020 at 03:41:12PM +0800, Macpaul Lin wrote:
> > This issue was found when adbd trying to open functionfs with AIO mode.
> > Usually, we need to set "setprop sys.usb.ffs.aio_compat 0" to enable
> > adbd with AIO mode on Android.
> > 
> > When adbd is opening functionfs, it will try to read 24 bytes at the
> > fisrt read I/O control. If this reading has been failed, adbd will
> > try to send FUNCTIONFS_CLEAR_HALT to functionfs. When adbd is in AIO
> > mode, functionfs will be acted with asyncronized I/O path. After the
> > successful read transfer has been completed by gadget hardware, the
> > following series of functions will be called.
> >   ffs_epfile_async_io_complete() -> ffs_user_copy_worker() ->
> >     copy_to_iter() -> _copy_to_iter() -> copyout() ->
> >     iterate_and_advance() -> iterate_iovec()
> > 
> > Adding debug trace to these functions, it has been found that in
> > iterate_iovec(), the calculation result of n will be turned into zero.
> >    n = wanted - n; /* 0 == n = 24 - 24; */
> > Which causes copyout() won't copy data to userspace since the length
> > to be copied "v.iov_len" will be zero, which isn't correct. This also
> > leads ffs_copy_to_iter() always return -EFAULT. Finally adbd cannot
> > open functionfs and send FUNCTIONFS_CLEAR_HALT.
> > 
> > Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> > ---
> >  lib/iov_iter.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/lib/iov_iter.c b/lib/iov_iter.c
> > index fb29c02c6a3c..f9334144e259 100644
> > --- a/lib/iov_iter.c
> > +++ b/lib/iov_iter.c
> > @@ -36,7 +36,8 @@
> >  		skip = __v.iov_len;			\
> >  		n -= __v.iov_len;			\
> >  	}						\
> > -	n = wanted - n;					\
> > +	if (n != wanted)				\
> > +		n = wanted - n;				\
> >  }
> 
> 	First of all, nothing in that line can possibly *cause*
> copyout() to do anything - it's after the calls of step.  What's
> more, this changes behaviour only when wanted would've been equal to
> n, doesn't it?  Which translates into "no decrements of n have
> happened at all", i.e. "nothing has been copied".  IOW, it's
> a consequence of no copyout, not the cause of such.  You can
> make copy_to_iter() lie and pretend if has copied everything
> when it has copied nothing, but that won't change the underlying
> bug.
> 
> 	So I'm afraid your debugging is not finished - you
> still need to find out what causes the copyout failures and/or
> BS iov_iter padded by caller.

Thanks for your explanation. After these days, I've found this issue
only happened on arm 64-bit system, while arm 32-bit system works well.
After more debugging, it looks like arm 64 tagged ABI related issue.
I've update a new patch here: 
    usb: gadget: f_fs: try to fix AIO issue under ARM 64 bit TAGGED mode
    https://lkml.org/lkml/2020/2/23/16.

Thanks.
Macpaul Lin.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
