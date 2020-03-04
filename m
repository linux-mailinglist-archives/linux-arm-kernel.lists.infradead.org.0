Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAB417889B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 03:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLH2PmV7cJWP1Ie0Op1yFDunmidCdoC4Du/W5/qpCGo=; b=qCncOnzK+/JT82
	MuCPX7yMsZqj4DS3n3joegPXYGfv5hABYBNkB6ybeOU0zxcd9Nyd0RKYkC4KyNR4EsgG9j5SJAWB9
	9N126Di7q4sUamYRxwA932LVZ/ACne7UsgrjsG6X4WWcCGkKJYp0ETIpq0hdXKJrCgNKEhRZYoXaH
	det3zruHT8dqMrFLBZTznW4244Y0T3ss1Wn/2U0d1gxqOBofn/dq6QguP3Lo7DrfyoxdqlQ7dQN+g
	LwuX3V5i7zn2t2F99joFtQdgvKguiNHmRLyN7XjCc5RG6lMUITEDLV5Ou7bB8U6R33wmoZFQ3PydF
	JZxdeliGtKheEGdeweKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Jzf-0005O6-Lc; Wed, 04 Mar 2020 02:42:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9JzU-0005Mg-A5; Wed, 04 Mar 2020 02:42:33 +0000
X-UUID: 000a4b193f024cde91221143ad4bcb0f-20200303
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=qqnq9KOHB+4j9iQFNK0jTOehbrSjNlU6HSiLppYdxEQ=; 
 b=HPqHf1hn2UgH3pi+uyUeBtthjBsyM+kwUK6wrB1iWCeomoCRdLKqUTtAgCwLXDspY9ItbHRSLdYEc/zN2e2Rh2EZpVV2yzZQmnFZ55qP3ugM+R3xu9JH4qGICOtxFGnTXXjvTA6kFBOFFPM5WEzBYtHeu9yBbUtV2OYcg3ymMVA=;
X-UUID: 000a4b193f024cde91221143ad4bcb0f-20200303
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 290345009; Tue, 03 Mar 2020 18:42:27 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 18:43:43 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 10:41:15 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Mar 2020 10:43:03 +0800
Message-ID: <1583289743.12083.52.camel@mtkswgap22>
Subject: Re: [PATCH v4] usb: gadget: f_fs: try to fix AIO issue under ARM 64
 bit TAGGED mode
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Evgenii Stepanov <eugenis@google.com>
Date: Wed, 4 Mar 2020 10:42:23 +0800
In-Reply-To: <CAFKCwrj-0aQN_cUxf8=h7AbfS_rLEwxqePZN2kGHZxgWi2=ncw@mail.gmail.com>
References: <1582627315-21123-1-git-send-email-macpaul.lin@mediatek.com>
 <1582718512-28923-1-git-send-email-macpaul.lin@mediatek.com>
 <20200228164848.GH4019108@arrakis.emea.arm.com>
 <1583032843.12083.24.camel@mtkswgap22>
 <20200302161929.GA48767@C02TF0J2HF1T.cambridge.arm.com>
 <CAFKCwrj-0aQN_cUxf8=h7AbfS_rLEwxqePZN2kGHZxgWi2=ncw@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BA309130D7E973DD8EC97C0BA36C398DBC0D6CC09E29C013944033B1EDA201232000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_184232_360428_AF920A1A 
X-CRM114-Status: GOOD (  29.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Peter Chen <peter.chen@nxp.com>,
 Vincent Pelletier <plr.vincent@gmail.com>, CC Hwang <cc.hwang@mediatek.com>,
 Mediatek WSD
 Upstream <wsd_upstream@mediatek.com>, Shen Jing <jingx.shen@intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jerry Zhang <zhangjerry@google.com>,
 Loda Chou <loda.chou@mediatek.com>, LKML <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Miles Chen <miles.chen@mediatek.com>, linux-usb@vger.kernel.org,
 John Stultz <john.stultz@linaro.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Andrey Konovalov <andreyknvl@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-03-03 at 11:19 -0800, Evgenii Stepanov wrote:
> I'm a bit surprised that this is necessary, given that the earlier
> patch that added the (current->flags & PF_KTHREAD) condition was in
> response to this exact problem, and I know for sure that it helped.
> This was the stack trace for the call to __range_ok in that case:
> [   12.886765] c1    271  _copy_to_iter+0xb8/0x5c0
> 
> [   12.891421] c1    271  ffs_user_copy_worker+0xec/0x24c
> [   12.896699] c1    271  process_one_work+0x264/0x450
> [   12.901713] c1    271  worker_thread+0x250/0x484
> [   12.906454] c1    271  kthread+0x11c/0x12c
> [   12.910664] c1    271  ret_from_fork+0x10/0x18

> It would be great to know what changed to require the updated
> condition.

> Adding a prctl call to adb is unlikely to help, because it would not
> stop tagged address generation in malloc.

Sorry for late reply, after carefully check the kerenl update status
in Mediatek's branch. I've found we got this patch (df325e05a682
("arm64: Validate tagged addresses in access_ok() called from kernel
threads")) updated into internal Mediatek's working tree around Feb 23
or 24. However, I'm not sure why that patch cannot work in my own
working tree at that time. I've indeed dumped user space address and
checked the return result in access_ok() and found it was not worked.

In these days I've clean up all my working space and re-test this patch,
I've found to check PF_KTHREAD and TIF_TAGGED_ADDR was enough to solve
this problem. Sorry for bothering I'm not sure what causes that fail in
previous environment.

Moreover, I've tested PF_WQ_WORKER case, if we replaced test flag
PF_KTHREAD by PF_WQ_WORKER, AIO will still be worked, too. Both code

A.
        if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI) &&
		(current->flags & PF_KTHREAD || test_thread_flag(TIF_TAGGED_ADDR)))

or

B.
        if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI) &&
		(current->flags & PF_WQ_WORKER || test_thread_flag(TIF_TAGGED_ADDR)))

are worked for this issue.

> On Mon, Mar 2, 2020 at 8:19 AM Catalin Marinas
> <catalin.marinas@arm.com> wrote:
> 
>         On Sun, Mar 01, 2020 at 11:20:43AM +0800, Macpaul Lin wrote:
>         > On Fri, 2020-02-28 at 16:48 +0000, Catalin Marinas wrote:
>         > > On Wed, Feb 26, 2020 at 08:01:52PM +0800, Macpaul Lin
>         wrote:
>         > > > diff --git a/drivers/usb/gadget/function/f_fs.c
>         b/drivers/usb/gadget/function/f_fs.c
>         > > > index ce1d023..192935f 100644
>         > > > --- a/drivers/usb/gadget/function/f_fs.c
>         > > > +++ b/drivers/usb/gadget/function/f_fs.c
>         > > > @@ -715,7 +715,20 @@ static void
>         ffs_epfile_io_complete(struct usb_ep *_ep, struct usb_request
>         *req)
>         > > >  
>         > > >  static ssize_t ffs_copy_to_iter(void *data, int
>         data_len, struct iov_iter *iter)
>         > > >  {
>         > > > - ssize_t ret = copy_to_iter(data, data_len, iter);
>         > > > + ssize_t ret;
>         > > > +
>         > > > +#if defined(CONFIG_ARM64)
>         > > > + /*
>         > > > +  * Replace tagged address passed by user space
>         application before
>         > > > +  * copying.
>         > > > +  */
>         > > > + if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI) &&
>         > > > +         (iter->type == ITER_IOVEC)) {
>         > > > +         *(unsigned long *)&iter->iov->iov_base =
>         > > > +                 (unsigned
>         long)untagged_addr(iter->iov->iov_base);
>         > > > + }
>         > > > +#endif
>         > > > + ret = copy_to_iter(data, data_len, iter);
>         > > >   if (likely(ret == data_len))
>         > > >           return ret;
>         > > 
>         > > I had forgotten that we discussed a similar case already a
>         few months
>         > > ago (thanks to Evgenii for pointing out). Do you have this
>         commit
>         > > applied to your tree: df325e05a682 ("arm64: Validate
>         tagged addresses in
>         > > access_ok() called from kernel threads")?
>         > > 
>         > 
>         > Yes! We have that patch. I've also got Google's reply about
>         referencing
>         > this patch in android kernel tree.
>         >
>         https://android-review.googlesource.com/c/kernel/common/+/1186615
>         > 
>         > However, during my debugging process, I've dumped specific
>         length (e.g.,
>         > 24 bytes for the first request) AIO request buffer address
>         both in adbd
>         > and in __range_ok(). Then I've found __range_ok() still
>         always return
>         > false on address begin with "0x3c". Since untagged_addr()
>         already called
>         > in __range_ok(), to set "TIF_TAGGED_ADDR" with adbd's user
>         space buffer
>         > should be the possible solution. Hence I've send the v3
>         patch.
>         
>         ffs_copy_to_iter() is called from a workqueue
>         (ffs_user_copy_worker()).
>         That's still in a kernel thread context but it doesn't have
>         PF_KTHREAD
>         set, hence __range_ok() rejects the tagged address. Can you
>         try the diff
>         below:
>         
>         diff --git a/arch/arm64/include/asm/uaccess.h
>         b/arch/arm64/include/asm/uaccess.h
>         index 32fc8061aa76..2803143cad1f 100644
>         --- a/arch/arm64/include/asm/uaccess.h
>         +++ b/arch/arm64/include/asm/uaccess.h
>         @@ -68,7 +68,8 @@ static inline unsigned long __range_ok(const
>         void __user *addr, unsigned long si
>                  * the user address before checking.
>                  */
>                 if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI) &&
>         -           (current->flags & PF_KTHREAD ||
>         test_thread_flag(TIF_TAGGED_ADDR)))
>         +           (current->flags & (PF_KTHREAD | PF_WQ_WORKER) ||
>         +            test_thread_flag(TIF_TAGGED_ADDR)))
>                         addr = untagged_addr(addr);
>         
>                 __chk_user_ptr(addr);
>         -

Many thanks to Catalin and Evgenii.

Regards,
Macpaul Lin
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
