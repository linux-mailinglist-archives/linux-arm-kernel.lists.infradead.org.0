Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE526C0F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 20:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:
	References:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KOyLAT+QZNIfztTV9RmkTCwfJproo+swuaO8DSig7M=; b=pueiTG/d5D6N+5
	4Ue3TlZ9cejIEwa/26tI451Aj0Kb8VQxUgVunlopmGwuATZA/tw3gYHOWZaJThBV/xZzuzpuEFQ4v
	CQZs3h/5eEAzcfQFho4gctnPfEovOrLrkXoN/1MEiJK6pMJpo5eh01PHQ+XQltjYAtWnB/3qAoIsR
	KXHgw4jgl82SJyfm/McTxypN7GZ4JjyPLQwjlOYKgr7FfbUjwFuwYaqDvlNBEJA0MdYRD2ppCHGSz
	h+uZALBRhSp1frzJXP+yHoTqzexTWyPuCCtmFmKAKq2vcla1tHdYjvTFIdRmfCtGwLtnkXsRszCqn
	h+Pc47Ip7FDyIncDTLlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnoh1-000171-KU; Wed, 17 Jul 2019 18:30:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnogo-0000SB-G2
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 18:30:07 +0000
Subject: Re: [PULL] virtio, vhost: fixes, features, performance
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563388203;
 bh=SsgEQ229BFDzVjWE4Rfd94cxbm2rr6++cJP0jupJNlI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=1OMBw+NNcoYT1euAQa76cEb1EnJLTbURZO01B9VLtWDbz6o2ygQuSEU/k5bwly/JN
 I9WKTyRViJihLBuveQwr15VdePBK/oENdwCbcZIOCueP649B9L4SUwnKWdXebZmJ3r
 0AOCFDDnCBkwuFhQ3rgUh397M2+y0SfUzso6xWjs=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190716113151-mutt-send-email-mst@kernel.org>
References: <20190716113151-mutt-send-email-mst@kernel.org>
X-PR-Tracked-List-Id: <linux-parisc.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190716113151-mutt-send-email-mst@kernel.org>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/mst/vhost.git tags/for_linus
X-PR-Tracked-Commit-Id: 5e663f0410fa2f355042209154029842ba1abd43
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3a1d5384b7decbff6519daa9c65a35665e227323
Message-Id: <156338820366.716.10416228849149522179.pr-tracker-bot@kernel.org>
Date: Wed, 17 Jul 2019 18:30:03 +0000
To: "Michael S. Tsirkin" <mst@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_113006_596820_BD8E6AE1 
X-CRM114-Status: UNSURE (   0.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kvm@vger.kernel.org, gustavo@embeddedor.com, jasowang@redhat.com,
 virtualization@lists.linux-foundation.org,
 James.Bottomley@hansenpartnership.com, linux-mm@kvack.org,
 bharat.bhushan@nxp.com, aarcange@redhat.com, jean-philippe.brucker@arm.com,
 ihor.matushchak@foobox.net, mst@redhat.com, hch@infradead.org,
 eric.auger@redhat.com, jglisse@redhat.com, bhelgaas@google.com,
 natechancellor@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pull request you sent on Tue, 16 Jul 2019 11:31:51 -0400:

> git://git.kernel.org/pub/scm/linux/kernel/git/mst/vhost.git tags/for_linus

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3a1d5384b7decbff6519daa9c65a35665e227323

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
