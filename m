Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83366D031D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 23:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjoQ03B2tcrbReuPu8vOUGRJQw+8FiWMX9g59sdCOYk=; b=QHViNkBBnItftx
	I1MWx4lKfOxxE8P1OVEkLzFc53c6+bIu692V25zTKuotHbvXpsIDaPI9NfqUE8+b6UqD+9psJS4XG
	hybt67IBdmlaS+a1dBuKNlnth1D5JmYMUiZiGwwf0hFwHQtrsiB4wkjwezq3n4A0ckeVtrCBADS9O
	gkukIzknvg84x4fRhAkBfCmkud2G1JqZMmxw2jLKzaksolAQRFrhDNfaLHWvTOTtM7OXkKzHFsDO3
	HIaBmPnwbuwzXHoz94QFGUaBIbaZvJYaQT2dhQsCZ01SzQkEB5RWKD4tqTmX9aps1roq2aXOUTyQ8
	L4zvHdEgNl9OHGTs3TeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHxRL-0003jz-CA; Tue, 08 Oct 2019 21:54:43 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHxRE-0003jW-0G
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 21:54:37 +0000
Received: by mail-pg1-x542.google.com with SMTP id z12so14869pgp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 14:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V1+lJqves7ucGJOP/Nkkia3hCPKmcD+/qXX6Owgsp9Y=;
 b=jMmx7myYY7/SnDMBF8ju9UVZHQALm1OwuJ9FChPOq4Vb5YNwgNbqblnumipDlA8sjC
 VGxSI8MJw/wpOZPJQZkPHmIyJDMn/TSZJtD+wNPpzwTk6igGcgC3hIT07DU+et0T0WqQ
 04ICCnAMSPH0bl5+rnoko5GsX0p1DAp1cfNL35R6fxEzfubIjCmks/djSOWtu5QoIt/n
 t4xz9B2AtHRU0akas7NOwuBhOV18XnXAVZlaUD9/ejc+sbksFKfgnbh6rNc3KtFI0g3o
 LVOr/Y3v4esmPZO2zxJSqsGAu3JSs0X7eFKgyjXRVq7sp1olZi2RdOGJ9kr0/oT17cPX
 37nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V1+lJqves7ucGJOP/Nkkia3hCPKmcD+/qXX6Owgsp9Y=;
 b=l+LR84FzldpEeHef87B4zjy2dHFRcFRHnAt7nxH0LojMEJMIhBp/YLbW7jakikp/jX
 g5LI7VhrRBf9c/EYCuXumErfU2BC76fZq/iNWxmuavSV5KrDYg1OQeQOBsvoiqLdNe08
 YG67HxDR3ZSqOCr4kXGl1WAkPpDhGE516bY5iSpPk/a6MVdnVYEYWcc1MtPtUq3AH2WA
 jCOmAYXbAwo5yhMQZCB2RbMVTbg7CqlkGGDS2uKcJx7oVuEZq1wI1YaUvBOvnVY6V+Vb
 A33b3UMZJwYcGvbVNobAOYTb1wvgxEPiPSGpusffwbqF/rgcFgWRPAI4aLhyHjgarp2+
 0/fA==
X-Gm-Message-State: APjAAAVwIi7FGGAoChSx43ON4LfLw7hQe+9YzzwdhEpY5dhTzTaDmXhw
 Hb0bfdAemQMqWpFNa3QC1aNWZKVDiRGuzvzDVcevSw==
X-Google-Smtp-Source: APXvYqwhkBSeIrfZPsL7ZK9LW5v5HqGqG3I9HK6n3n5INpZAPcE00GaqUqIyBYMJT+42oLmz1YYH0DQmqXq2qu0HNgI=
X-Received: by 2002:a62:3387:: with SMTP id z129mr89443pfz.185.1570571674841; 
 Tue, 08 Oct 2019 14:54:34 -0700 (PDT)
MIME-Version: 1.0
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-4-jae.hyun.yoo@linux.intel.com>
 <20191008203157.GA184092@google.com>
 <ac256b3f-2a06-6fa5-72ab-d8f8014d253e@linux.intel.com>
In-Reply-To: <ac256b3f-2a06-6fa5-72ab-d8f8014d253e@linux.intel.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Tue, 8 Oct 2019 14:54:23 -0700
Message-ID: <CAFd5g47vLN6NyZR73+EqOqfOPnM7CkGGsCwEn3udnJt99d8KCg@mail.gmail.com>
Subject: Re: [PATCH 3/5] i2c: aspeed: fix master pending state handling
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, Joel Stanley <joel@jms.id.au>,
 Wolfram Sang <wsa@the-dreams.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_145436_070987_DCC7FEA1 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, Tao Ren <taoren@fb.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 2:13 PM Jae Hyun Yoo
<jae.hyun.yoo@linux.intel.com> wrote:
>
> On 10/8/2019 1:31 PM, Brendan Higgins wrote:
> > On Mon, Oct 07, 2019 at 04:13:11PM -0700, Jae Hyun Yoo wrote:
> >> In case of master pending state, it should not trigger the master
> >> command because this H/W is sharing the same data buffer for slave
> >> and master operations, so this commit fixes the issue with making
> >> the master command triggering happen when the state goes to active
> >> state.
> >
> > nit: Makes sense, but can you explain what might happen without your
> > change?
>
> If we don't use this fix, a master command could corrupt data in the
> shared buffer if H/W is still on processing slave operation at the
> timing.

Right, can you add that to the commit message?

Is this trivially reproducible? We might want to submit this
separately as a bugfix.

Actually yeah, can you send this separately as a bugfix? I think we
might want to include this in 5.4.

Wolfram and Joel, what do you think?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
