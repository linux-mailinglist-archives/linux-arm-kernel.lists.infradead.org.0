Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FBC199D1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 19:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIXDPFIv/NYpFnqbCqzXeBYSvSG0OlgjfJ5iTZDS244=; b=PNfYLpv96Wtpme
	OJJi+eZFkJuiOYmwpmNwzCeh7yRmtVEZUwICMNvcRRZvIkbB4CHrKpyriP+8FR8LP4Ly4tDY1mKum
	z3UxuMcw2+sWARUrhMSbFpyM6xPSmJbtrhJBxnrEKTHxs5FyrMKXqun7hSjD5W/DSlKCSTmmzp4rP
	euhHi4BbmQjj3EIvyr5lQsgQDvk3sy3WGIFL6ps45lBNfYgOVbv0tMauNgKb8futf0Ju3PTXDuocW
	xqBr7jcSoTD2ZsOj3vUmqbVuI+HFd1enpRfyqLRcFGvwXJzxm6MujM4p7t2TqNU/yO+xcgfHE27TQ
	Z9T0KaldHp/+pPm2Zm9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJKtE-00007u-76; Tue, 31 Mar 2020 17:41:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJKt5-00007b-AJ
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 17:41:20 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C987820BED;
 Tue, 31 Mar 2020 17:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585676478;
 bh=SNoQUVCjCkooeA8cu157MJg11jvVTYE1Wq5nD+SAOt8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l0TzQFv49ZtbVWvHeK30LQ5TJJS1xON3Eh0FdMYTf784spIdbnyxArUevTGYwiRg7
 xDtnBb5qIzwDOhOzngke9jfyWVI8OAvh6FPLLCieOEgn/yjDEbw+v0rDptNNpvWjU4
 RZBYSJkOatgocnrYQMdivvqcQAdw8vl3CtQFuR4c=
Date: Tue, 31 Mar 2020 19:41:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: syzbot <syzbot+a66a7c2e996797bb4acb@syzkaller.appspotmail.com>
Subject: Re: KASAN: use-after-free Read in skb_release_data (2)
Message-ID: <20200331174116.GA1844017@kroah.com>
References: <000000000000da6059059fcfdcf9@google.com>
 <0000000000005b022005a22a0050@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000005b022005a22a0050@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_104119_373565_C27C742A 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: peter.chen@nxp.com, s.hauer@pengutronix.de, johan.hedberg@gmail.com,
 nishadkamdar@gmail.com, grundler@chromium.org, shawnguo@kernel.org,
 marcel@holtmann.org, linux-usb@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, pmalani@chromium.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, hayeswang@realtek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 10:36:01AM -0700, syzbot wrote:
> syzbot suspects this bug was fixed by commit:
> 
> commit d9958306d4be14f4c7466242b38ed3893a7b1386
> Author: Nishad Kamdar <nishadkamdar@gmail.com>
> Date:   Sun Mar 15 10:55:07 2020 +0000
> 
>     USB: chipidea: Use the correct style for SPDX License Identifier
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16d4940be00000
> start commit:   63623fd4 Merge tag 'for-linus' of git://git.kernel.org/pub..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=5d2e033af114153f
> dashboard link: https://syzkaller.appspot.com/bug?extid=a66a7c2e996797bb4acb
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13c25a81e00000
> 
> If the result looks correct, please mark the bug fixed by replying with:
> 
> #syz fix: USB: chipidea: Use the correct style for SPDX License Identifier

I really doubt a comment change fixed a syzbot bug :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
