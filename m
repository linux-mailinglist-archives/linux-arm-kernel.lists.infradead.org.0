Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AD3BF0A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 12:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BLUW2ciTVsoJ1ywRT00je8tHl1qxPbJ2nVx8Ne/0PUM=; b=VIVB+7PAmo3BMK
	13Og1SpaJfaJ2MAEH5cd5C473hplPhJ4jrCoDOdUodJzvgsXXrLJZVQ9HR94dOEF/wYexjrH3UN8A
	tZSa73Jlb+ibpw/3U3O0zAM3vGeQyBeyIkszWEO0JanhYgIpuLXHyeUegoS5VnObOkL8gQPoXofNb
	Z03dCSakiBLyzXrB49ke92LVajrLKhN1wCvbnXh3os6AZ/q8yPy+cFps5juDA09oZhn4iPFrPoaoJ
	eCNRywSYSXB7lEzi3HVcLNQZb+mgwS2lE7+rg2l/SbAxjmzlxalnDRQpByQJp3lAeXnM8eGdSeigE
	0Jml5AvMARU0P4So4WpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRS7-0004Wz-BJ; Thu, 26 Sep 2019 10:56:51 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDROj-0007fB-HJ; Thu, 26 Sep 2019 10:53:23 +0000
Received: by mail-io1-xd44.google.com with SMTP id c25so5206553iot.12;
 Thu, 26 Sep 2019 03:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=07TZjLhLzFQD/d/peiuV+KiApqHJ0vC82cYd9ZCGW3I=;
 b=lIBa6S8No25wVSZ5OCudotLs3QnSkUDyAEFTtWdhBSUVnDRrlkXvLDgFtxtXdNmehK
 dAzU29e+4ePHpmLtLt0IwEaGXkMIyzPU7A698T3pNHzZAWSSYgjwoFL6rsjhY2DJIKDM
 PRVDHjGrpJNvmdprSqaC12xs6qQvoWFnLKRKXm9vdPWLiS9Q4Cx7yWE5EOpecBzXzi+n
 CpkVfEMgEu3JFob6ios7fRsgDRzLhMDxBPgs6Vf+/vqD5gh9mmpetrt0ZXZNKv4Mo9b0
 SvPrUE3Eowl0FKu+rabY1pbjGQ/uGk4fU+zZLVjV4/c+fCaLpzeXzXbliXzUp+7Bh5h3
 eLzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=07TZjLhLzFQD/d/peiuV+KiApqHJ0vC82cYd9ZCGW3I=;
 b=mukhzqdqtik85FpUrKTHcwdJZUMQe2lHVcT0OsNyZ/MmNuoKNVGRnnxfimVfQlQsrc
 pf5SLzKsvwEFbSmBVgniaJOWvxzEALyqYdU6WmqNwQZyvtV/RKd3RHGsmhGmzUSp6ovp
 iduN4v17taOa0hwi8RN7oJsG9dHGtbWhku/RXZkv2T2fva5oUsTRR0lR8ede8L8xB9bY
 KXhfqRTUxGhG9aj+wkTJHI8t5S0HxyiQQ4QHpMMuXpXIGb5obT3riwnZTPI8waS8fNdR
 0RVGONvSwE2BPq5feMK1iMezZChYExxGNHzG0kjdQvO5as+H/7bG7R/HAFCf9iozt1ge
 w2GQ==
X-Gm-Message-State: APjAAAVGRm7QuXjk/bev9xqMGl6XxxkxOMJ+tcZ8O6uy+dzBoq3Rb0R8
 g4Zz5Co9mWb781U95XdnG/4/3FlOsqpwki5HXpE=
X-Google-Smtp-Source: APXvYqxN48IwDqdlkhPJvWfp5fy13UB08I+go8HDZg/Y1UhOHe3uy98kP5lBC01mtdXruP+pH7sTAHjdETKxcLhv7is=
X-Received: by 2002:a6b:fe11:: with SMTP id x17mr2916340ioh.6.1569495200143;
 Thu, 26 Sep 2019 03:53:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190902054935.4899-1-linux.amoon@gmail.com>
 <7ha7asuj6q.fsf@baylibre.com>
In-Reply-To: <7ha7asuj6q.fsf@baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 26 Sep 2019 16:23:08 +0530
Message-ID: <CANAwSgSvPmtzCzbaLC6LOfov9e32V9koUhF=5VAaKO87EHKw8A@mail.gmail.com>
Subject: Re: [PATCHv4-next 0/3] Odroid c2 usb fixs rebase on linux-next
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_035321_610537_AA041631 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin,

On Thu, 26 Sep 2019 at 03:34, Kevin Hilman <khilman@baylibre.com> wrote:
>
> Anand Moon <linux.amoon@gmail.com> writes:
>
> > Some time ago I had tired to enable usb bus 1 for Odroid C2/C1
> > but it's look like some more work is needed to u-boot and
> > usb_phy driver to initialize this port.
> >
> > Below patches tries to address the issue regarding usb bus 2 (4 port)
> > while disable the usb bus 1 on this board.
> >
> > Previous patch
> > [0] https://lkml.org/lkml/2019/1/29/325
> >
> > Re send below series based re based on linux-next-20190830.
> > For review and testing.
> >
> > [1] https://patchwork.kernel.org/cover/11113091/
> >
> > Small changes from previous series.
> > Fix the commit message for patch 1
>
> Queued for v5.5.
>
> I fixed up the typo in patch 2/3 when applying as suggested by Martin.
>
> Kevin

Thanks,

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
