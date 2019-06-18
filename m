Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBF84A2C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOfB5J0KWIpe39mRXzTYx8tEPQ15MgkhnjiV9b02wDU=; b=cUPpsWcSdwsro6
	8wzt0jwGVp/RgQGqB4HEJHziaT1GraMn1kHLy6R3V3Ivlgy6dk7eC9kp3ZTA04zacvilM1swXk3wv
	OOypBlyk+/hzFmVPAK7esvGVIq3OJ9H9DVGyxkFLMmqMoWpqHWQ1Oc4eMGmi4pZOYUUTxHcGb2OpA
	gyMa2benEyGuByc7hR4gxkhRE5vleCOiL1CwO1sY6iWEovEFpgKlTGR7MsXVlKb7YXwQuFXCU/yWt
	DXyEKBosQgv5jEsh3L4lfgT3Fmj4SwIWPiJjjRzPd+1dDUGG32h93gX02rZ4ubm3QUcRMbcS/X2Pl
	2RalXyw162//CUDT1yhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEUC-0006xQ-LU; Tue, 18 Jun 2019 13:49:20 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdETp-0006wv-N4
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:48:59 +0000
Received: by mail-qt1-f193.google.com with SMTP id d17so10375820qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 06:48:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=adlKPrwpF847OzhxpvAIaUJHnKpv+DcgWsB6FU5ma+M=;
 b=jS5Dp3bscm2ti3CWCSo5TR5qshp7DLXQDVFjqkdugzCI6jzbdG8tLF92u6qWJeKYkI
 p5JeBdkjtI3T6FBenUgv8QwNPHaSkrd0SwRgxeBts6NnJEYnFJ26jKX+NyhOPNPj1EzI
 CEjw6BBnhaC9t/aCDiaI8Lu4E2ezH+2qmkMbrXyl3XYJvWlrlaOCMr4upcamAgjD5mrA
 o7FFSld1giigFrRXDQCecOSShwnfhe4RUUytg1+ietlMkEnT3RFUqgffWAIRZdHeF8Rk
 V5JtOeqUi/4jyL6RrSMIid11BzacOVINbfen5YYt5Eq4EE+oMHIGSlnzcGta6Vay5Bij
 TXog==
X-Gm-Message-State: APjAAAVm1pUOcsb4+/K03Np+WUWwnSHi6rvqgEKgqTU61OXyLkHmasB6
 vlLGFl0zBL2Qus32Ou6zX3iAFdy3H7Rm0Jrdsjk=
X-Google-Smtp-Source: APXvYqwe5peIXb0dsyQ2lB/6iiVZYwjfA6+1m0/GVEMvpLamKwpY6BkfJDyFTbULruc/oWfp/h23fC2OdT9a520+YBw=
X-Received: by 2002:a0c:8b49:: with SMTP id d9mr26718089qvc.63.1560865731462; 
 Tue, 18 Jun 2019 06:48:51 -0700 (PDT)
MIME-Version: 1.0
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <066e9b39f937586f0f922abf801351553ec2ba1d.camel@sipsolutions.net>
 <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
In-Reply-To: <b3686626-e2d8-bc9c-6dd0-9ebb137715af@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 18 Jun 2019 15:48:32 +0200
Message-ID: <CAK8P3a0sL+nPmduZd=DNSsntq62e+o3upYsWg=iPNwzvgBp+Mg@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Alex Elder <elder@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_064857_750405_D336D646 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Networking <netdev@vger.kernel.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 3:16 PM Alex Elder <elder@linaro.org> wrote:
> On 6/17/19 6:28 AM, Johannes Berg wrote:
> > On Tue, 2019-06-11 at 13:56 +0200, Arnd Bergmann wrote:
>
> I'm probably missing something, but I think the checksum
> offload could be handled by the IPA driver rather than
> rmnet.  It seems to be an add-on that is completely
> independent of the multiplexing and aggregation capabilities
> that QMAP provides.

My best guess is that it is part of rmnet simply because this can
be done in a generic way for any qmap based back-end, and rmnet
was intended as the abstraction for qmap.

A better implementation of the checksumming might be to split
it out into a library that is in turn used by qmap drivers. Since this
should be transparent to the user interface, it can be moved
there later.

> >>> If true though, then I think this would be the killer argument *in
> >>> favour* of *not* merging this - because that would mean we *don't* have
> >>> to actually keep the rmnet API around for all foreseeable future.
>
> This is because it's a user space API?  If so I now understand
> what you mean.

Yes, I think agreeing on the general user interface is (as usual) the
one thing that has to be done as a prerequisite. I had originally
hoped that by removing the ioctl interface portion of the driver,
this could be avoided, but that was before I had any idea on the
upper layers.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
