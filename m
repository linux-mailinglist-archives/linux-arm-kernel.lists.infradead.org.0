Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED623CA8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 13:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CPTGVYzTO/pWOAlNDeNzKimxyOYQcM/ieI3IRbfTYfk=; b=kbieiOV/xpuqOq
	UI4aMzNjW9kTK7u/zFRcJ0URw4Llr9DoCv/V8XcRgEEtbb4FvPt1EhhinjUgWLp+XVWI/F+qcScSQ
	9vQQ1kl0IYwwviJyHaR4ftVYtsWVDvS6H0YHJL1toDVNRj9gUSxhsxKlYAxw1y5pz2uBn4aUFm1Gn
	2ATlDnaKNft9aVhgXKS+Uf1f66HDz/UxsWq3wI4d+XF0Kl0e6myobuKAuuG/o+zXMekw5hCrxpQic
	UcIw0ijnbM76HVdKXIXifxhU1Y9J0e0lSaHvaU71tBWPCRIaTmoZ/EaDyd7CXQxZB4PAmk2a6s6hm
	Gura/4ofdVEkiA1TnbCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafP6-0004gR-Da; Tue, 11 Jun 2019 11:57:28 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafOm-0004fZ-J4
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 11:57:10 +0000
Received: by mail-qt1-f195.google.com with SMTP id a15so14092272qtn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 04:57:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K3Sm1X+d2sov0ITQpzgk6HQiz/Phckwgb6KD7DQ+q/M=;
 b=grbCN0utG5hfbUEScaRzLcrDPOQBaPoNEhdVxTWVq9e/mpe4ak2SKtSHq/OrXKSEr4
 +aH2r0DnIj5A/ZWdAjJYm4W98w0MGhi/EYpO+/7bsZKJAQ9zAR8XaQf/dpFsFp2XkLc8
 WaJKTJ09O5WBjWY/UKDgnq+Gtz2IxRZYO9acmD1kYFQlaifzununQfhHUdssQBicTiFi
 hPG/H9r3BdhcPG+Hc2Dsq8ccMcMgrmXp03X/acqyv8i5ug0LwgE+BsObPQhDlIzMQVi8
 6pZyW7vtKiQHbs9SQ/9XYSUcrYc/vQpdUJ46/najpnZxgx+pQZn3iYbAEdP08Vtitjxn
 jElw==
X-Gm-Message-State: APjAAAXUbuduLBY5eYaBXfQK1jy6aygpUm9FPj8uHgKQVsNpPDwOX14t
 4R8apSPr2HCdGSlW64XqoMUY/cjnboeNWmvKgd0=
X-Google-Smtp-Source: APXvYqwirPrDDDsMco7I6kepiNjDwf87AqZbyPYaRT4gsoLYAygjHsKyh9v3e1zX7J05MHnONK4y+Dh0Ic32yh7e2fg=
X-Received: by 2002:ac8:2dae:: with SMTP id p43mr45188807qta.304.1560254226737; 
 Tue, 11 Jun 2019 04:57:06 -0700 (PDT)
MIME-Version: 1.0
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
In-Reply-To: <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 11 Jun 2019 13:56:49 +0200
Message-ID: <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_045708_628557_8671FD93 
X-CRM114-Status: GOOD (  30.46  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, Dan Williams <dcbw@redhat.com>,
 linux-arm-msm@vger.kernel.org, abhishek.esse@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Networking <netdev@vger.kernel.org>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:12 AM Johannes Berg
<johannes@sipsolutions.net> wrote:

> > As I've made clear before, my work on this has been focused on the IPA transport,
> > and some of this higher-level LTE architecture is new to me.  But it
> > seems pretty clear that an abstracted WWAN subsystem is a good plan,
> > because these devices represent a superset of what a "normal" netdev
> > implements.
>
> I'm not sure I'd actually call it a superset. By themselves, these
> netdevs are actually completely useless to the network stack, AFAICT.
> Therefore, the overlap with netdevs you can really use with the network
> stack is pretty small?

I think Alex meant the concept of having a type of netdev with a generic
user space interface for wwan and similar to a wlan device, as I understood
you had suggested as well, as opposed to a stacked device as in
rmnet or those drivers it seems to be modeled after (vlan, ip tunnel, ...)/.

> > HOWEVER I disagree with your suggestion that the IPA code should
> > not be committed until after that is all sorted out.  In part it's
> > for selfish reasons, but I think there are legitimate reasons to
> > commit IPA now *knowing* that it will need to be adapted to fit
> > into the generic model that gets defined and developed.  Here
> > are some reasons why.
>
> I can't really argue with those, though I would point out that the
> converse also holds - if we commit to this now, then we will have to
> actually keep the API offered by IPA/rmnet today, so we cannot actually
> remove the netdev again, even if we do migrate it to offer support for a
> WWAN framework in the future.

Right. The interface to support rmnet might be simple enough to keep
next to what becomes the generic interface, but it will always continue
to be an annoyance.

> > Second, the IPA code has been out for review recently, and has been
> > the subject of some detailed discussion in the past few weeks.  Arnd
> > especially has invested considerable time in review and discussion.
> > Delaying things until after a better generic model is settled on
> > (which I'm guessing might be on the order of months)
>
>
> I dunno if it really has to be months. I think we can cobble something
> together relatively quickly that addresses the needs of IPA more
> specifically, and then extend later?
>
> But OTOH it may make sense to take a more paced approach and think
> about the details more carefully than we have over in the other thread so far.

I would hope that as soon as we can agree on a general approach, it
would also be possible to merge a minimal implementation into the kernel
along with IPA. Alex already mentioned that IPA in its current state does
not actually support more than one data channel, so the necessary
setup for it becomes even simpler.

At the moment, the rmnet configuration in include/uapi/linux/if_link.h
is almost trivial, with the three pieces of information needed being
an IFLA_LINK to point to the real device (not needed if there is only
one device per channel, instead of two), the IFLA_RMNET_MUX_ID
setting the ID of the muxing channel (not needed if there is only
one channel ?), a way to specify software bridging between channels
(not useful if there is only one channel) and a few flags that I assume
must match the remote end:

#define RMNET_FLAGS_INGRESS_DEAGGREGATION         (1U << 0)
#define RMNET_FLAGS_INGRESS_MAP_COMMANDS          (1U << 1)
#define RMNET_FLAGS_INGRESS_MAP_CKSUMV4           (1U << 2)
#define RMNET_FLAGS_EGRESS_MAP_CKSUMV4            (1U << 3)
enum {
        IFLA_RMNET_UNSPEC,
        IFLA_RMNET_MUX_ID,
        IFLA_RMNET_FLAGS,
        __IFLA_RMNET_MAX,
};
#define IFLA_RMNET_MAX  (__IFLA_RMNET_MAX - 1)
struct ifla_rmnet_flags {
        __u32   flags;
        __u32   mask;
};

> > Third, having the code upstream actually means the actual requirements
> > for rmnet-over-IPA are clear and explicit.  This might not be a huge
> > deal, but I think it's better to devise a generic WWAN scheme that
> > can refer to actual code than to do so with assumptions about what
> > will work with rmnet (and others).  As far as I know, the upstream
> > rmnet has no other upstream back end; IPA will make it "real."
>
> Is that really true? I had previously been told that rmnet actually does
> have use with a few existing drivers.
>
>
> If true though, then I think this would be the killer argument *in
> favour* of *not* merging this - because that would mean we *don't* have
> to actually keep the rmnet API around for all foreseeable future.

I would agree with that. From the code I can see no other driver
including the rmnet protocol header (see the discussion about moving
the header to include/linux in order to merge ipa), and I don't see
any other driver referencing ETH_P_MAP either. My understanding
is that any driver used by rmnet would require both, but they are
all out-of-tree at the moment.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
