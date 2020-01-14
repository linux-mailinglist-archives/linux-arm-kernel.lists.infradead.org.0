Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1778F13A087
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 06:24:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Abbv6wGFE/BRJiFU0NlrX5t22q+kDxBuLDtruj+Ssaw=; b=h1oSoqUpuxSBgt
	riqFxojbvy2cJqgWHPYfh5totYxbYyE48HpuMEgFlZ3IqPz0PVURtBKMQWgmpbvjg1SDWD2ToAknZ
	VBC7Sn+RtVRnMBmyALKfp0CHImI91+DUoCwZkFoAXKqYVwmrJ5zXMr0LpkK6IVCo00ZFu++IgpB7E
	OWqqKhuE7bGSojcgPi48VixWIHOUstfFEh6kIbim5MNmRyQCNKh8rvycE3dVKq0Dnn2Ct7SMfAoZN
	toyXNixkyot0WrTfa5UdpsHQXug7cG5t5150hre8psQXMgTjeLvuXeNqOP/jwqprOme6G2cxQyT7d
	gXpxTgWjt3bJyTqkuzLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irEgV-00005o-QC; Tue, 14 Jan 2020 05:24:11 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irEgO-0008WB-Vi
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 05:24:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id r19so12828340ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 21:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xOe8cEwY/+ggWSrDf4teIOpCv6NdYHvbvkF1XKTEocs=;
 b=LOtEzdzO4P0gGkSt2/IoHR9VPfhIc06dybg249hC4fdFHKqGeaO8YxYjcto8GZcco6
 HX2osGkURrzyuWIDMmPjKH6D5ziJteWrS8nP6g8cIpsmxO3g6xKeyta0lNcLNXqImGgD
 C61+M2tHogtE/Tl8QJKImmlO9aOGwRqlrM74DKpVkzILRUlW2Xd3NWS6eUv1BHk1+oxv
 6Nz/uoqwbBG4FLBT0+T4Qdp3BXsK2hZReGH8l838Wpi3S4hKpZI+O6PN3yd+BgnhdqGt
 70U3ZQqzxQXRssZfvaI+neH8/KYxh+qMbdUQS85U95UhbJwfqdQbTlh4qpLZ9gE8FNO/
 Mnog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xOe8cEwY/+ggWSrDf4teIOpCv6NdYHvbvkF1XKTEocs=;
 b=uK2/b5UiQmR4SbWPe5ehtDCXlIRdrbd/Cexd8fVOyT0O4EMtJo+t+Pj5AXW0xUfSK8
 jGcK5zkDNzT4YfBcFF/k530Kpl3BNtwlCAmYdrN+3/uwFuUepWxDROEMGsH9DWsdTLk/
 aB3G50rmHasNzmD7GXkOHFerzRIzmkj6hhwG9tQfcqX+htM7n254l343qp1RruaI6WET
 rf70XV5tVBCtam9wdRMDB3fLG+WguJPVFk3b/+doJXhbwPZibRbxSyvvP5AmqbcLNI8P
 LPag9+rqMg61WlA9fQE9eGWt4QXROeQEQbV/fZIfMc5aUKXhYQ70eydLflY1jHcaQ1r/
 KS8A==
X-Gm-Message-State: APjAAAW75s/T2HuYkWWpa/lSrbTH15mPo0Ac//w1w9PqHEAYWP0eDz05
 euXzgu9jqhn8QEreN8jO9O+bkLbq9WHrk9TJgHQ=
X-Google-Smtp-Source: APXvYqwLRjvJGcaSQN7MdhbIG50V/jBBlGzk43plCv5NgKLK461rA5mo+qyywlltVwtQwDPfSOV1dXQ6+y5OCmX7tEU=
X-Received: by 2002:a2e:884d:: with SMTP id z13mr13271564ljj.116.1578979441504; 
 Mon, 13 Jan 2020 21:24:01 -0800 (PST)
MIME-Version: 1.0
References: <a367af4d-7267-2e94-74dc-2a2aac204080@ghiti.fr>
 <20191018105657.4584ec67@canb.auug.org.au>
 <20191028110257.6d6dba6e@canb.auug.org.au>
 <mhng-0daa1a90-2bed-4b2e-833e-02cd9c0aa73f@palmerdabbelt-glaptop>
 <d5d59f54-e391-3659-d4c0-eada50f88187@ghiti.fr>
 <CANXhq0pn+Nq6T5dNyJiB6xvmqTnPSzo8sVfqHhGyWUURY+1ydg@mail.gmail.com>
In-Reply-To: <CANXhq0pn+Nq6T5dNyJiB6xvmqTnPSzo8sVfqHhGyWUURY+1ydg@mail.gmail.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Mon, 13 Jan 2020 21:23:50 -0800
Message-ID: <CAADnVQ+kbxpw7fxRZodTtE7AmEmRDgO9fcmMD8kKRssS8WJizA@mail.gmail.com>
Subject: Re: linux-next: build warning after merge of the bpf-next tree
To: Zong Li <zong.li@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_212405_043946_C1407A5C 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexei.starovoitov[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Alexandre Ghiti <alexandre@ghiti.fr>, Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>, Alexei Starovoitov <ast@kernel.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 ppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 12, 2020 at 8:33 PM Zong Li <zong.li@sifive.com> wrote:
>
> I'm not quite familiar with btf, so I have no idea why there are two
> weak symbols be added in 8580ac9404f6 ("bpf: Process in-kernel BTF")

I can explain what these weak symbols are for, but that won't change
the fact that compiler or linker are buggy. The weak symbols should work
in all cases and compiler should pick correct relocation.
In this case it sounds that compiler picked relative relocation and failed
to reach zero from that address.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
