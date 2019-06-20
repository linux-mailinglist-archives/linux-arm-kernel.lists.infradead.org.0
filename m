Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 747E94C4F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 03:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AeSxJsSXwcfGsxgfstZPsIQc4869Iv9m1cie2yEpmEw=; b=GmIWK0N5iG/n+a
	7wrAX8jNpEh5nGWVaz1CdfNigR5SKwwSNvww/Pewlbxoj4n5/wWUsmZa+nNqmkEjFG3V7qMJ+x5OL
	NjF4Pkxf96Z+8C4SFgIJiJ04ZPm5rj1AuU2g7JlGHAOpmen0nOr6IinQ89GHdcVosJsxdV+GOuipm
	M3qmagBIpEBXpUqdZL4mujx9WzsbR9gqQ+sedZzroeJI6biG153k7tEEZuRSuIaGcNDfUy7xHZeIy
	9j3E73gF9zCoynW3LA1GDeJ/l3kU1naPtOJHaJGbPQCtvHVAzyvCgpm9sXJCA3yDoY/NfT/D16i1F
	hyWYVCv7YIKTO7ZwRYJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdlpP-0000eH-Pp; Thu, 20 Jun 2019 01:25:27 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdlpE-0000dx-Eg
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 01:25:17 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C2744307D925;
 Thu, 20 Jun 2019 01:25:15 +0000 (UTC)
Received: from ovpn-112-53.rdu2.redhat.com (ovpn-112-53.rdu2.redhat.com
 [10.10.112.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5B4E81001DD2;
 Thu, 20 Jun 2019 01:25:12 +0000 (UTC)
Message-ID: <7c0e8909cee17623565ef88445b0497d5504fe1c.camel@redhat.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Dan Williams <dcbw@redhat.com>
To: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>, Arnd Bergmann
 <arnd@arndb.de>
Date: Wed, 19 Jun 2019 20:25:11 -0500
In-Reply-To: <2926e45fd7ff62fd7c4af9b338bf0caa@codeaurora.org>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
 <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
 <b23a83c18055470c5308fcd1eed018056371fc1d.camel@sipsolutions.net>
 <CAK8P3a1FeUQR3pgoQxHoRK05JGORyR+TFATVQiijLWtFKTv6OQ@mail.gmail.com>
 <613cdfde488eb23d7207c7ba6258662702d04840.camel@sipsolutions.net>
 <CAK8P3a2onXpxiE4y9PzRwuPM2dh=h_BKz7Eb0=LLPgBbZoK1bQ@mail.gmail.com>
 <6c70950d0c78bc02a3d016918ec3929e@codeaurora.org>
 <CAK8P3a3e+U85yHTeE4dHa4okLVHgBd8Kke9=FytzvMwz+wB0sQ@mail.gmail.com>
 <2926e45fd7ff62fd7c4af9b338bf0caa@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 20 Jun 2019 01:25:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_182516_513345_1E334A8E 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Eric Caruso <ejcaruso@google.com>, David Miller <davem@davemloft.net>,
 linux-arm-msm@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Networking <netdev@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>, Johannes Berg <johannes@sipsolutions.net>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-19 at 12:47 -0600, Subash Abhinov Kasiviswanathan
wrote:
> > > There is a n:1 relationship between rmnet and IPA.
> > > rmnet does the de-muxing to multiple netdevs based on the mux id
> > > in the MAP header for RX packets and vice versa.
> > 
> > Oh, so you mean that even though IPA supports multiple channels
> > and multiple netdev instances for a physical device, all the
> > rmnet devices end up being thrown into a single channel in IPA?
> > 
> > What are the other channels for in IPA? I understand that there
> > is one channel for commands that is separate, while the others
> > are for network devices, but that seems to make no sense if
> > we only use a single channel for rmnet data.
> > 
> 
> AFAIK, the other channels are for use cases like tethering.
> There is only a single channel which is used for RX
> data which is then de-muxed using rmnet.

That seems odd, since tethering is no different than any other data
channel in QMI, just that it may have a different APN and QoS
guarantees.

Dan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
