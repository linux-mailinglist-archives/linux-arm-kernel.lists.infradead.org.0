Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BD111BFA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 23:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yxSeW+mb6MYhLgxK3y/wxsUJdHiZAgxqf+QfQ7DMyhY=; b=lE03PDuMwY3Tfm
	r1vqz4RL4j3FKtR+A7ai7K7rVsqs6WYXxW+UXEbiLeAZ4EGS8is9H05d5VGFPVuvevpFqV1QEZHfB
	6R8MJ27aliWQqQhz10aPrCeWWXCX6xwjDq3RVOuMcvKQDdN7cvqsBsWhzx5WIdNsvmlj+L8zOJA8c
	q9r1vhqjQioQuXrw+rhZG4OxelyVaciU4Azje+2UvkHN9kZNpILUPChuzEkP8INJmGEbqAUo+zj/a
	/HSmhjhWC7tCI0TEJqGf14mpa90YeCVkTlaV44sFSw/loVAtzzK/Ekg2lLw+37d6/Tp836H/ih5vX
	n/BlS8Z7nUaOZOoD8tbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifAAn-0001RM-0x; Wed, 11 Dec 2019 22:09:33 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifAAd-0001PU-8v
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 22:09:25 +0000
Received: by mail-qt1-x841.google.com with SMTP id 5so452984qtz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 14:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k7d7WsbP3LoU75+WuemV9UlLvjwYU63WdP9k7hHQzFM=;
 b=S60IcC8q2ZKHlkDtHhETX2BprZm1KILkOpTxAFaysmnH1ZUe5PKiDzDAbQA0+L2aG5
 jGoaV42u5oEaJmjpcsbN+sT+pm6ZJSgih5K4iICnmqQ7Ofcygc/D7shmAAtbrZH8Vanz
 iz2lsJhsiZjz0UfO25zlNcbayx9quiDGiIur4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k7d7WsbP3LoU75+WuemV9UlLvjwYU63WdP9k7hHQzFM=;
 b=o6q35RqV1psjLV3cGKAcS5CshT/OuM73QN0ZmBgFsVLaeW9FV1pZWNcvpuB2VBFpyc
 tVef+xYQvSOGpUR77U3RKQSLsxPiACx2aInctsdPlzDYQ6sQDIm1fOl2uO5YNCC8vk7/
 1beBHBXC1V+XO9d/aqJJ9vPBdKyxI+q4bnMjh44C9dkxU1PmUxz41PP49gwpD8aNtOOT
 7GpCJPx5sNyaVNwxlFmzB74j0pRNqw5a2DJQExH1qw42k5VZb41uSp0V3bZqIHymFfwv
 MSVWsugp8TBJlRudNKhltsX/afXmI2ASSd55neQqRonXiZBa0zguTsEHVWmRlQsHWyu0
 GPRQ==
X-Gm-Message-State: APjAAAXjtCcdhtSOUPZ3icvKJyGx1BC/8m4hoSUsX4tN3tvW1XT6ybf8
 kjRKFBH4yYVTsA5G+Ed5v7NvatTRqK7E1PlQqQmv2A==
X-Google-Smtp-Source: APXvYqzIan/p6MBZBXr7KxGgHZna/XiKYTqTn0jrIbFub78HgMIxWvp4zsQZYS6tItRiacNkgg/lWajfwPljnjTUUZI=
X-Received: by 2002:ac8:3946:: with SMTP id t6mr4934746qtb.278.1576102161712; 
 Wed, 11 Dec 2019 14:09:21 -0800 (PST)
MIME-Version: 1.0
References: <20191121015410.18852-1-bibby.hsieh@mediatek.com>
In-Reply-To: <20191121015410.18852-1-bibby.hsieh@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 11 Dec 2019 14:09:10 -0800
Message-ID: <CANMq1KCTJQL+GFqo8HYM8cEpzXJmebJ=9ju4CzHLwyuQfbZEAA@mail.gmail.com>
Subject: Re: [PATCH v17 0/6] support gce on mt8183 platform
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_140923_340080_186DE788 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, srv_heupstream <srv_heupstream@mediatek.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>, CK HU <ck.hu@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthias,

Quick question, any reason you picked only patches 2+3+6 from this
series, and not the 3 others?

Thanks.

On Wed, Nov 20, 2019 at 5:54 PM Bibby Hsieh <bibby.hsieh@mediatek.com> wrote:
>
> Changes since v16:
>  - naming the poll mask enable bit
>  - add a patch to fiup the input order of write api
>
> Changes since v15:
>  - rebase onto 5.4-rc1
>  - rollback the v14 change
>  - add a patch to fixup the combination of return value
>
> Changes since v14:
>  - change input argument as pointer in append_commend()
>
> Changes since v13:
>  - separate poll function as poll w/ & w/o mask function
>  - directly pass inst into append_command function instead
>    of returns a pointer
>  - fixup coding style
>  - rebase onto 5.3-rc1
>
> [... snip ...]
>
> Bibby Hsieh (6):
>   soc: mediatek: cmdq: fixup wrong input order of write api
>   soc: mediatek: cmdq: remove OR opertaion from err return
>   soc: mediatek: cmdq: define the instruction struct
>   soc: mediatek: cmdq: add polling function
>   soc: mediatek: cmdq: add cmdq_dev_get_client_reg function
>   arm64: dts: add gce node for mt8183
>
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi |  10 ++
>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 147 +++++++++++++++++++----
>  include/linux/mailbox/mtk-cmdq-mailbox.h |  11 ++
>  include/linux/soc/mediatek/mtk-cmdq.h    |  53 ++++++++
>  4 files changed, 195 insertions(+), 26 deletions(-)
>
> --
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
