Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62314701F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEp8ifLc+/4ssP1p8Q75lY91Oyj/4FLWOZMjbqjiWVk=; b=URMqMKJfbgy6Y7
	3960613cpzhHJJmr/YvoQUshhQrg3LbYTSRjdp9pmhOzBXkHlBj7raAe2+2JexGqi+3R0NxBUnXw7
	wPPjBavhlwj3Bkf66o3Dvf+tPby1a7Kf8ITtTv2/3TRGthfpxwluD1HOqu8cU6GrPBU6lEcaPFKDX
	Lh3pshoIobcVVLUcWfsvnaMwy4pRU7OCAo3qTvPo8Tw0+/MgZYw9l9oSNrKGQwjWXpPrXNGi9I2cT
	Hu30tikTX2Dl0E6L2xHxGt5vs7vd/bk7UdihBcrlg69PUAASPmKCAWBt95qUybIVxa+eg9jRZh7fX
	l0XhATTKuGmv7rqC01rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZ2w-0000fm-Rs; Mon, 22 Jul 2019 14:12:10 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZ2h-0000eo-D9
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:11:56 +0000
Received: by mail-qt1-x841.google.com with SMTP id h18so38631132qtm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 07:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LtBWSYY5RJyJ5bjGuD8GT1ULGrE6M+cxt5l8yU6kpN0=;
 b=AqJLL2tAQ8qmfza+BbBBA30hBmiEi4pm7Bd30lUGLJdSyVKKuDWuxFlP7RyECIj17b
 XJpeqNQH2wamruofikS+opbhHXR87C/2P4+HHr/txKjdnmmTrCfU3/FvIDauFeGsqdLX
 9N8TDemI/FqJTetBBb+eMeMhgwvnuJ3+QSjcM18BJqZFbPTYbz22jGuEVhjAl1NeRhMe
 gMsST/gm4oj7anPp1NAGwwTiAl7EGdHZhvi9wPgzVP0639DiVRWlp0mKEsh+gaWi/vPE
 9sF4SdwiKYxgei4G8H6O23RQvFqbuu976015rHkp6asEVORyBSYPRzufJqJdiSfpQaVD
 Edlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LtBWSYY5RJyJ5bjGuD8GT1ULGrE6M+cxt5l8yU6kpN0=;
 b=lXnaK/Gn16Pq3+3ywJvbUp39RUXa4sSrM+sFpNACSxBpjhsxonYe41iXXReXxFEzpS
 igcpFmBOhSMmvhCYMKhtvRkv08i2BgsWWsJElXL5+Wo8s6eF4Jftn5k9KJJ3cI4erZf8
 prJz1E3INewD8eyUoEX+tomQF2HXhLzd+cHBPamdaMpW+a25z5Ki3gNKuwX/iHjpgL5h
 owQMZXoDs16zfcBGmMQADzzWL+CaxYtyXpF3FlW0dQGJ03kOyFbQ+dKBHGpe8tny3x+Z
 Iv447cFn5rpQ8yJhxGaYzGP+lJp0Kt9GQsztPhWlVDSpIZwO5hQSl2Bsye5Y6VE2IiUu
 BtDQ==
X-Gm-Message-State: APjAAAV/G7W3A4iKUpIFwJQU9Q8xzuxO0qKkK2eRk5XOC3LpuB5THA9u
 ZXbuwkyGy9GrAmdcdHoKW3TadQ==
X-Google-Smtp-Source: APXvYqzJhWJh0JG/V+RW4LMQbSCenJcJXUz5oFlysoNrpAnk6aDKO1gmwVookMZq2D7vPB1tr+gYAg==
X-Received: by 2002:ac8:3794:: with SMTP id d20mr49622645qtc.392.1563804713889; 
 Mon, 22 Jul 2019 07:11:53 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id x46sm25518922qtx.96.2019.07.22.07.11.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 22 Jul 2019 07:11:53 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hpZ2e-0003yO-Ou; Mon, 22 Jul 2019 11:11:52 -0300
Date: Mon, 22 Jul 2019 11:11:52 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190722141152.GA13711@ziepe.ca>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190721044615-mutt-send-email-mst@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_071155_442071_9A2EB7ED 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mhocko@suse.com, peterz@infradead.org, jasowang@redhat.com,
 ldv@altlinux.org, james.bottomley@hansenpartnership.com, linux-mm@kvack.org,
 namit@vmware.com, mingo@kernel.org, elena.reshetova@intel.com,
 keescook@chromium.org, aarcange@redhat.com, davem@davemloft.net,
 hch@infradead.org, christian@brauner.io,
 syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 21, 2019 at 06:02:52AM -0400, Michael S. Tsirkin wrote:
> On Sat, Jul 20, 2019 at 03:08:00AM -0700, syzbot wrote:
> > syzbot has bisected this bug to:
> > 
> > commit 7f466032dc9e5a61217f22ea34b2df932786bbfc
> > Author: Jason Wang <jasowang@redhat.com>
> > Date:   Fri May 24 08:12:18 2019 +0000
> > 
> >     vhost: access vq metadata through kernel virtual address
> > 
> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=149a8a20600000
> > start commit:   6d21a41b Add linux-next specific files for 20190718
> > git tree:       linux-next
> > final crash:    https://syzkaller.appspot.com/x/report.txt?x=169a8a20600000
> > console output: https://syzkaller.appspot.com/x/log.txt?x=129a8a20600000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=3430a151e1452331
> > dashboard link: https://syzkaller.appspot.com/bug?extid=e58112d71f77113ddb7b
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10139e68600000
> > 
> > Reported-by: syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com
> > Fixes: 7f466032dc9e ("vhost: access vq metadata through kernel virtual
> > address")
> > 
> > For information about bisection process see: https://goo.gl/tpsmEJ#bisection
> 
> 
> OK I poked at this for a bit, I see several things that
> we need to fix, though I'm not yet sure it's the reason for
> the failures:

This stuff looks quite similar to the hmm_mirror use model and other
places in the kernel. I'm still hoping we can share this code a bit more.

There is another bug, this sequence here:

vhost_vring_set_num_addr()
   mmu_notifier_unregister()
   [..]
   mmu_notifier_register()

Which I think is trying to create a lock to protect dev->vqs..

Has the problem that mmu_notifier_unregister() doesn't guarantee that
invalidate_start/end are fully paired.

So after any unregister the code has to clean up any resulting
unbalanced invalidate_count before it can call mmu_notifier_register
again. ie zero the invalidate_count.

It also seems really weird that vhost_map_prefetch() can fail, ie due
to __get_user_pages_fast needing to block, but that just silently
(permanently?) disables the optimization?? At least the usage here
would be better done with a seqcount lock and a normal blocking call
to get_user_pages_fast()...

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
