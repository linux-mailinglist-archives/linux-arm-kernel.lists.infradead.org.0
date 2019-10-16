Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3288D99E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 21:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iniVAeVzseuuzVp9fic/kQWdufZR3QIAFAZe0viUL8w=; b=PoqISmfjL96kJw
	mAumHmVT24CQNAQGCX99RD6xfhS/Mj50ZOO7uRW3YZyUz7Jz0xrNwmTz/9baHip4nsMEwJ3i+WY3L
	Wlv+YV8G16Zib6edanE+QGEeE75Oh53EiI3pSVHkAPs5GAH5yjL6dilj+b2MZMnCt+gS3rWd/oyIU
	WZ/X3q5E1Xd2WejDw/fVPex9yEwKVCZRhDLnVpP4jhv3/1+/TLxzPkCuaMS+7uS2DG2lJhvpFeKwm
	wzkaEtXlcxn4G5qEiTL2TYXFnwAs5b3RFsvt77upk/vuHnWa9j9U54G7/zBU5cpwxhYkfylzK6SMa
	xGBI/59MSJSjO70Aj6EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKoqt-0003gL-Od; Wed, 16 Oct 2019 19:20:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKoqh-0003fe-WF
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 19:20:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id e13so6652966pga.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 12:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nkjcBI/sR0pHQa7Q6ZwYOj6wNZTv9s5BqUzK5l7ttQg=;
 b=rdImgBV5rSX819CWsaELSfHqCFtbKBlCgDcC1RDvmhUH4cxrZllIk9JJ4A3ft2cndE
 VEW0TUE7aluFb5sGutlpLF2zLOxMvSjZwYBpPZtUjPS91c1gOcqbTdlVsLDBKyZzpSWr
 N6IBsIPY8HYN5UsQs0atjxR9M+89To10Rks6ATMcWvWv8du5xxvXx79yxrzCY5rbCd6N
 X1aNnwHNB6nVARAEp7XKbKHn/2myhZkH1jy8CwLaM36qFh9YNuxoOTcz5Dz2QJBILuA3
 p93/vdRHF7+ABcOD8H8+CGE+/YqpYaOxrSkiHdYXsVxtuzBjBdn2WRPevotJpnYSBGeg
 ItaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nkjcBI/sR0pHQa7Q6ZwYOj6wNZTv9s5BqUzK5l7ttQg=;
 b=KHFLxsa+x7NfOSCRIcoy5Rx+355YHRrSXF5FfeMs7GE1XuYSnX5H6LxXwFVmIGb5zu
 Sxkq3QD8hhAXr/mbPhfNveEhpnbBti9AfH8CJWE3yi9Pq7+7PolpYIkFXD+5C6UCQ7Mm
 UU6Z++z1p5ZGYW/YS1YfPchoP5uUtdqccLTzehoF0YOUadXfQI0aE9Zvz/75qoRHRRAR
 jx6w1MRytX5G8eshWLV8YTuETGEpjaeBNqVZiuktWU5CkWfWx9OsjqYTi1bVcLaK8RnK
 VqdTawz1ydi0nCFQDaQIwHFJKaAlv+ZdILRvkWC37882eK61ivJU4hDwBvcl5WhIh0Ea
 34zA==
X-Gm-Message-State: APjAAAVxL61Kn+8dzACGjfS6/at9rNlUHDdJcOy4MJjdY45G8BsW5Wcg
 3/78uYy/WptLVa/39rAFJkMDbPLtTsJjYzf3Dm2MRA==
X-Google-Smtp-Source: APXvYqwoWZoU1NQcYrpdH/oqoCAqIzIKZ/BPjYCIHumscCSMLtnNlqQsKoIXYT9B0G5ZK//ak2ZZhT8vfvalCP74+kc=
X-Received: by 2002:a17:90a:2451:: with SMTP id
 h75mr7096361pje.131.1571253639855; 
 Wed, 16 Oct 2019 12:20:39 -0700 (PDT)
MIME-Version: 1.0
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
 <49244d71-cbc3-f2ae-97ac-74b5f68a4816@fb.com>
 <4ca4083d-23ff-0475-f5fd-ec3745b440b2@linux.intel.com>
In-Reply-To: <4ca4083d-23ff-0475-f5fd-ec3745b440b2@linux.intel.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Wed, 16 Oct 2019 12:20:28 -0700
Message-ID: <CAFd5g47NL79YkVi4nJk63-ZbFXAKW+x1xWFoa26zPpY1+QnUrQ@mail.gmail.com>
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_122044_038978_C9727746 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Wolfram Sang <wsa@the-dreams.de>, Andrew Jeffery <andrew@aj.id.au>,
 Tao Ren <taoren@fb.com>, "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Cedric Le Goater <clg@kaod.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 4:52 PM Jae Hyun Yoo
<jae.hyun.yoo@linux.intel.com> wrote:
>
> On 10/10/2019 4:29 PM, Tao Ren wrote:
> > On 10/9/19 2:20 PM, Jae Hyun Yoo wrote:
> >> In case of master pending state, it should not trigger a master
> >> command, otherwise data could be corrupted because this H/W shares
> >> the same data buffer for slave and master operations. It also means
> >> that H/W command queue handling is unreliable because of the buffer
> >> sharing issue. To fix this issue, it clears command queue if a
> >> master command is queued in pending state to use S/W solution
> >> instead of H/W command queue handling. Also, it refines restarting
> >> mechanism of the pending master command.
> >>
> >> Fixes: 2e57b7cebb98 ("i2c: aspeed: Add multi-master use case support")
> >> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> >
> > Tested-by: Tao Ren <taoren@fb.com>
> >
> > Tested the patch on Facebook Minipack BMC (multi-master i2c-0 environment) and
> > everything looks good to me.

Looks like we got the necessary tested-bys and reviewed-bys. Can we
apply this for next?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
