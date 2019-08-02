Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDE07EA90
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 05:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cA/v2zo4KGQ+w0veR7F0GxOzunnVgGjbHGBufAqe+Hg=; b=oWN7BLkIEOwkLa
	lvRupycPdjD1g7A7eZEohARTv7Y0wom2Ok/yfktpHEIg72udkzDCH+LKypUn4whFd/8JFLyGMIj4D
	PJ2re0ocoH14wRYxkBqOJmp3p/7FWscq99/ryQuIZ3O0OyEzfokyU9QF5GnjtjSPYkOKMRCRG3RRK
	xSsF3VRCAzoLa31bkB86LxhN6WSVjqHk+kqDzj5HHnFCKN8yJrv84ADe/1Fl9a1h6cblq9p9K/Nst
	Q4JSm78qmifiVmiykym6hyLxtJgXMkJq76qf0Zs8tMUrlUmyB49uuOUnxrrlYW8wpVfgliz7pFumg
	VriK96RdbLYa8R6oqfhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNqJ-00014t-KH; Fri, 02 Aug 2019 03:02:55 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNq8-000149-M1
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 03:02:45 +0000
Received: by mail-qt1-x844.google.com with SMTP id d17so72387877qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 20:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pMvBx1hh8/G6Czd/FV/OwlwQ8LJ13TfBmKizcKZrRrs=;
 b=HHpUAOqqbJLsZvBpfU4B2ieP1G/ChCo8uBUPMEmCma/20hEezhFd8aoEeR1umSF8st
 7GxteKnxNfdURFGMMp6U/7upsqAq16TOUhW4ynIdOjUInlB+AfUCDBkFzVQKITorXkBw
 D8rvt6E/LHBk1CNSmBCzubB5Ews/Mo/hG3wE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pMvBx1hh8/G6Czd/FV/OwlwQ8LJ13TfBmKizcKZrRrs=;
 b=TFi5WfSnZb0894UCgoot9tioo87yOy6fcDj70cBD6VEM5KRTJR8nabIz2xC66UhCTv
 uqbRMGPbqgkv2b+hGGscx72mRTlYoQKWVEBeqVC5ijh+3tT7+50Tkxe+ghbQSLDfzEP8
 TzRpPTlDsq4qY8P+m7YWwIDcM5FLT1TI2lj6Ti3o9DK/pNEI+FWD3TsUMHRkQv+nHqyH
 F8tKKMxXTwDF85inUzPh8Xkzih7I0jzHPXjLwZvAgGFIZt6lzmJl85k7FPxz80j8CBBP
 el9dWnbGfnpSA6yx7U06HS7ShiBxzHctJsIvwFyeOEiVUy1i9AahGnoH79ab0Lca5YaM
 LwPg==
X-Gm-Message-State: APjAAAVnDM6Ufm/a/siNl1jxznkawbNklfiKa0oJtYmaczNbHa2F6sws
 lEYGECSgbOeCgel37JNMIqhKsQEKg2Z+VFhmw2fIOQ==
X-Google-Smtp-Source: APXvYqz7mHdc8lBlyD3HcADLWRy1k1ur3idhBRDnYpffy7ym+Av1tf5AlRYkmS9IXaNcLXyUw56O4NlOlpWTDVLcclE=
X-Received: by 2002:ac8:2fc8:: with SMTP id m8mr94544340qta.269.1564714962033; 
 Thu, 01 Aug 2019 20:02:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190802010155.489238-1-taoren@fb.com>
In-Reply-To: <20190802010155.489238-1-taoren@fb.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 2 Aug 2019 03:02:30 +0000
Message-ID: <CACPK8XdS4m9+74oxK0-ed3ZLr_QCh--AsFgGcF-OpLw24v9g4Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: aspeed: Add Facebook Wedge100 BMC
To: Tao Ren <taoren@fb.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_200244_764939_D1CC5A3B 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2 Aug 2019 at 01:02, Tao Ren <taoren@fb.com> wrote:
> +
> +       chosen {
> +               stdout-path = &uart3;
> +               bootargs = "debug console=ttyS2,9600n8 root=/dev/ram rw";

Are you sure you want 'debug' in your boot arguments?

The rest lgtm. I can remove debug when applying, or leave it there if
it was intentional.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
