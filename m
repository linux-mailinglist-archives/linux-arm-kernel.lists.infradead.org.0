Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 722203C5B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7FWC4GqlezBipnfMtUEhVHQKVkWncnun73qbxYJZ10g=; b=NatfWX1Hh0v8m0
	Lm0TfSETrWQ6gZpFnZ/eZOGUMoim3fDtSwM3MohmE3E5tbnEMB9G/PPwqz8dbpjT8LzWI7yDnFmvf
	IajhtMPUlZ3zq5Ta1jGiLGT6nOzrVV+iMpIfQ1gX2ZIBCxTU+20s2JfURdhuw7O2XE5cpetYS+X1j
	BxYVGNySJayV5M7Ym8W4ygm5eh5BDsS5mpEyBOXHuEooRiGhwAG7brtwzO49yRHZEiYKZnsaSAtnf
	iADWjq16FUDTnoX/2bxQOzgtSMznr/iDgK7Q5mvjLfgXRnvaywvzfhi88/LZ69O7Et9t+I0nxku8j
	yHdq2koARQnxnAzQsBWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habv9-0003ka-Nr; Tue, 11 Jun 2019 08:14:19 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habtr-0002to-5e
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:13:00 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1habtd-00061s-L7; Tue, 11 Jun 2019 10:12:45 +0200
Message-ID: <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Johannes Berg <johannes@sipsolutions.net>
To: elder@linaro.org
Date: Tue, 11 Jun 2019 10:12:43 +0200
In-Reply-To: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_011259_209332_D5A73B9F 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 arnd@arndb.de, dcbw@redhat.com, linux-arm-msm@vger.kernel.org,
 abhishek.esse@gmail.com, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 bjorn.andersson@linaro.org, ilias.apalodimas@linaro.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, davem@davemloft.net,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex, all,

> > Exactly correct.  This is what Johannes is discussing in his "cellular
> > modem APIs - take 2" thread about how this should all be organized at
> > the driver level and I think we should figure that out before we commit
> > to IPA-with-a-useless-netdev that requires rmnets to be created on top.
> > That may end up being the solution but let's have that discussion.
> 
> I looked at Johannes' message and the follow-on discussion.

Thanks :-)

Sorry also, Dan had pointed me to this thread and the discussion, but I
was travelling last week and not very reachable.

> As I've
> made clear before, my work on this has been focused on the IPA transport,
> and some of this higher-level LTE architecture is new to me.  But it
> seems pretty clear that an abstracted WWAN subsystem is a good plan,
> because these devices represent a superset of what a "normal" netdev
> implements.

I'm not sure I'd actually call it a superset. By themselves, these
netdevs are actually completely useless to the network stack, AFAICT.
Therefore, the overlap with netdevs you can really use with the network
stack is pretty small?

> HOWEVER I disagree with your suggestion that the IPA code should
> not be committed until after that is all sorted out.  In part it's
> for selfish reasons, but I think there are legitimate reasons to
> commit IPA now *knowing* that it will need to be adapted to fit
> into the generic model that gets defined and developed.  Here
> are some reasons why.

I can't really argue with those, though I would point out that the
converse also holds - if we commit to this now, then we will have to
actually keep the API offered by IPA/rmnet today, so we cannot actually
remove the netdev again, even if we do migrate it to offer support for a
WWAN framework in the future.

> Second, the IPA code has been out for review recently, and has been
> the subject of some detailed discussion in the past few weeks.  Arnd
> especially has invested considerable time in review and discussion.
> Delaying things until after a better generic model is settled on
> (which I'm guessing might be on the order of months)


I dunno if it really has to be months. I think we can cobble something
together relatively quickly that addresses the needs of IPA more
specifically, and then extend later?

But OTOH it may make sense to take a more paced approach and think about
the details more carefully than we have over in the other thread so far.

> Third, having the code upstream actually means the actual requirements
> for rmnet-over-IPA are clear and explicit.  This might not be a huge
> deal, but I think it's better to devise a generic WWAN scheme that
> can refer to actual code than to do so with assumptions about what
> will work with rmnet (and others).  As far as I know, the upstream
> rmnet has no other upstream back end; IPA will make it "real."

Is that really true? I had previously been told that rmnet actually does
have use with a few existing drivers.


If true though, then I think this would be the killer argument *in
favour* of *not* merging this - because that would mean we *don't* have
to actually keep the rmnet API around for all foreseeable future.


> I support the idea of developing a generic WWAN framework, and I
> can assure you I'll be involved enough to perhaps be one of the
> first to implement a new generic scheme.

Thanks!

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
