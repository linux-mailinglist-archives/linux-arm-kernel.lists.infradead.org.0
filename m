Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 580621B9133
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 17:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=StGDKKcE/eXnCABXgfrO0LX7y15msBM269VBxYGnUlY=; b=uxy2hfqOyNlCEe
	DldGbtjNor1XVCXeOP2KmLnU4cCgyhIRw78Zrj+HdWJwHKMIGxConqTpTM0DerMU5vHrmjE3q7Sfj
	k+JT8ERB0nwVVM/PUhS9Tsi+rE/Af5XUpsJMH06TSzMf6C/9GLb2AiSJ3x2MGYIPGeQPfrfkq+vOu
	nDlTU9G7T+3DdnxYS7nJD6ohWTOR5uqyOoDliZXHOwFOhT1U8DvA4Fi8A3QDUvOPmNJBiyZl/sQ17
	UUBGHa4+kqbX5mplyXM2pJyOYh37H0GdjSH2C8LrcYUDPuISeLV0+yEVz4wIAOqNtH9FmXFGDtLhK
	BOewVsmA3sl6iuRlcFDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSjJv-0002Jj-6A; Sun, 26 Apr 2020 15:35:51 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSjJa-0001nc-O3
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 15:35:32 +0000
Received: by mail-lf1-x143.google.com with SMTP id x23so11701708lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 08:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=we74QiB75BtYwlX2vu1/hk6PEpVENj5opPHAohrnsck=;
 b=Odv9VoxY6497vkDTk3+CRrgpuyR/3DNV0ZX8s0CZ9GN4rNPbF0ZAWfH+KZM9MA8Mqj
 lR9kQ0/xxj0SUdi0P3ul3qdJo5Fg0sktrQoC3ayiMfbpbvhfoAV7AELpoFo0TK9CslcN
 S25kQAFoyh7iVFVHblXWMAjwsg3tdzBbYKUYPdygjdmaj5cWt6ohXnQDPgiZddm9MlZB
 g4YLk8AGHQOuQ3xDsRBB7BH7Pvb1RjSpXjTbHsWLOr20iA6s1a8jhb7+PwyTaNqSZdxg
 mypAVWAjp1ICtt7tdNQMoskBTF3XR7JWv3LDOUCyPIpJqqS1L6X6oLRnmIra8zqWztpW
 8GaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=we74QiB75BtYwlX2vu1/hk6PEpVENj5opPHAohrnsck=;
 b=frEd0I0gkFBEtpMyjG35jlibl5+mAG4Ey3ZecVml+bXYgOfW8U23OL8nsillreygey
 l6W56rKareFfH8H0FS/Q8NGVHH72VH+XFG+/KI/xQR2wGPtV/wDigO7gk/OmpKXbSoFL
 V+ofmXtQLzL9KfDP6jFex5NGtrT3T+yfcC/8qehvgCatKUPWXxmCnDUv/AKeNqk9DAAh
 k2naO7KPXw8/Q2luJm6c6/VvYqDwVK7H59212d5v57CyxUMZ53ol2ssICkRSx3GrS78T
 fCn8i4IWWrZCIGNKu1wn7jQeWp7WUow/fPnt6AX8whbBCB8rJP99dhZJ6JaVa9QTFJnh
 VY/Q==
X-Gm-Message-State: AGi0PubUztlCNIDQleyZOXtBae+0r7tFrzyek/IY1B2CAS45KB2UQ0gr
 SF1bBwK18Jzpb/TKAJcmJgQ0zoQPDsg2Mp2aJOMkaTIZUD6+WA==
X-Google-Smtp-Source: APiQypIQlC5Oq9kecdo1sFNy4lS8r1NT6AHD5X6gYOaNU2NmhTi6HZq5fedzF0ehDBll7oigZUvKxEholtvfWonYUMg=
X-Received: by 2002:ac2:43c6:: with SMTP id u6mr12976089lfl.170.1587915327642; 
 Sun, 26 Apr 2020 08:35:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200423064808.10468-1-etienne.carriere@linaro.org>
 <CAL_Jsq+zNyqcQ2xWceGLz4by=3rV=46wPyj=HcFPZ9pQPF17eg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+zNyqcQ2xWceGLz4by=3rV=46wPyj=HcFPZ9pQPF17eg@mail.gmail.com>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Sun, 26 Apr 2020 17:35:16 +0200
Message-ID: <CAN5uoS9qENztJcd1b4uUMW83+o57gkWE9gEpq3Qd2YV0STA1gA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/2] Add examples of secure- prefixed property in
 documentation
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_083530_996185_5E53E996 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 Apr 2020 at 23:59, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Apr 23, 2020 at 1:49 AM Etienne Carriere
> <etienne.carriere@linaro.org> wrote:
> >
> > Hello,
> >
> > This is a proposal for adding a bit of description in the DT bindings
> > documentation of how secure- property prefix can be used for. The
> > changes in this patch series describe that for clocks and resets properties.
> >
> > Documentation file arm/secure.txt already states that secure- prefix can be
> > used for any property hence the description proposed here are not mandated.
> > However it may be useful as explicit examples of such usage.
>
> It may say that, but any new property has to be documented and
> reviewed still. I'm not sure that anything in secure.txt has actually
> gotten used.

Looking at Linux kernel, U-Boot, Qemu, EDK II, that's right :)
I guess that applies to the so-called non-secure world.

>
> You should participate in the System DT discussions in Linaro where
> how to represent different CPUs and CPU execution environments (like
> secure world) is being worked on.

Fair, I'll get information there.
Thank you for your prompt feedback.

In the same scope, I am to post a change in the Linux DTS files.
A change to define a new attribute mostly of interest for the secure
world description.
I will still post it to the LKML to get feedback about it.
Such new bindings should still be discussed in the Linux DT ML, right?

Regards,
Etienne

>
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
