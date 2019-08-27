Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EAD9E8A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJQxidH+vYBSTrSQh4Muj2a/mJOZ2dtfVx9kzB8drxI=; b=dpNSdN3AEQwNVY
	1MJ9WGmoYIzjGaoGSWMOvXQdmEyaPru6jYOnVLr++RWzhCeK0lF/bucDOUSfJ+vCgRkt34/uy1mNv
	MuHZcddDJZYxO6ZLB6OfhEQ7KT0P8gbXlj27WM9SIozTdIDGPmLQnDtTkaSn8wMhqGEgE1RjJxlAf
	uUsY3wyQuJMsXQcOUMqGdbZphkWSEsg13+28rSxQPmHUlgzuoDOaFg0ujAguH8DaF0K+I7DRB/A4C
	Awi3xcECUla2vwwna9F0HcuPbcOteVtEf1a/jXrPaiHf/usSqhL++ETKBFA3tTnfM4CGWIj9hf0hk
	oGjwhOvunkEHld7wfyRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bCF-0006Qe-W5; Tue, 27 Aug 2019 13:07:40 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bBy-0006PX-AP
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:07:23 +0000
Received: by mail-lj1-f193.google.com with SMTP id z17so18431117ljz.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 06:07:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pxkb58lbV3wi+B8lPOx80DhPe0KHCiwso2HrtND1Ksc=;
 b=iCx7FiQDMvclIh1IpeLWDi9KSGBh/XJxVCXQi2GnoNJAX9LLrX1AOXPTi9tlH3Yi98
 mP4PrseQAVDXThtylx4uVlgZ5st20lhnScRwo5TW60+gboUve52iLN/FPpp1RYsb3qEO
 wHleyGU7ZbCcQL2lTUd80pNuAZVQnB+wvWmNDPDYXw3hGjMrqFF1XfTekILWG/12WFak
 yl4X1oDAsUxf0la+sA2ew1Xp+37+C4xuRTe3i8ab7wEv5zlt0I5lGjBBv9Q/XMGbTBtw
 h8VhONzC/ySa4eFmN1hM6tyiBDccm5KWaFt4VpsQTq0CzZFkbZypikPGb+DKhFHqBAW4
 vEpg==
X-Gm-Message-State: APjAAAVfsg3sNHS0/fY8NZCC7aQS3joLGHZamrCowNU6f9M+zXoxkGWL
 y6go/yG2NJwEsshJsHa1R2Cv4qPYUXTuvikM7nM=
X-Google-Smtp-Source: APXvYqyuDMNG0JuiRDkktslqdVFZfaP8JIaCO6DMKJkYpYhz0RvwBbBVLPsf/FkfvNVQBquyZwpFfClR/zyPFor5DoU=
X-Received: by 2002:a2e:9981:: with SMTP id w1mr13032457lji.155.1566911239777; 
 Tue, 27 Aug 2019 06:07:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190814002836.4b6aa14b@canb.auug.org.au>
 <CAK8P3a2q1mShg-EQhiAFUOAET8UEMHfLJV-+HoLTaSQY+M7yBQ@mail.gmail.com>
 <20190814074730.402ec3ec@canb.auug.org.au>
 <f4e0e924-03ea-bf63-85a0-5718874ceb38@st.com>
In-Reply-To: <f4e0e924-03ea-bf63-85a0-5718874ceb38@st.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 27 Aug 2019 15:07:02 +0200
Message-ID: <CAK8P3a1M94LwpVhJe8eLG-JMr+wEuACZZ=_=N3ws5x9yP9SnLg@mail.gmail.com>
Subject: Re: linux-next: Fixes tags need some work in the arm-soc tree
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_060722_357714_81BA3DCF 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 11:44 AM Alexandre Torgue
<alexandre.torgue@st.com> wrote:
> On 8/13/19 11:47 PM, Stephen Rothwell wrote:
> > Hi Arnd,
> >
> > On Tue, 13 Aug 2019 21:35:58 +0200 Arnd Bergmann <arnd@arndb.de> wrote:
> >>
> >> On Tue, Aug 13, 2019 at 4:28 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >>
> >>>
> >>> Please do not split Fixes tags over more than one line.  Also, please
> >>> keep them with the rest of the other tags.
> >>
> >> Thanks for the report. How bad is this? Should I undo the merge and
> >> wait for an updated pull request?
> >
> > Its probably ok to leave as long as lessons are learnt :-)
> >
>
> Sorry for my late answer.
>
> Thanks Stephen for information. I'll take care next time before merging
> patches with "fixes" tag.
>
> Arnd, no need to update the PR ?

No, since it's already pulled, just leave it for this time.

    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
