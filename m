Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D721ED62A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 20:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3y7NSa7Uj1IIegnY3i4GZP6CpF5eECBCt9ASOmFumr8=; b=Qw+UTOouKtz0Uy
	dDg/3YLpbIAuHSZ2TAim5eXIsjTJfovb1LsiiIzaAQC5okCxGecMeqzrjTcMslHWi2tvHcspGwzf9
	F59zjnJkHgVYlZHY8pQLHX0PLm5Bgsw/tJaMMLoUN1YP1GohTnVIPBGg89K5p23zGlT6Gdd05fg6Z
	sGETa7/PtEvrGg5+oRdhwWNV+g/pPhBM1/f781HMTYF2SEFiSrmW1T5SvA12kuz4drF394ZGzx8Ko
	vgXg/oLluRx1t4k/xz5M0AALJhKamLJKYks23evxsNRx+wmZOnBrkkKEReBy4u9pT4c2uC7vOy9vb
	p5JRHLl5eqM7X2/HVjnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgYCH-0002E2-9f; Wed, 03 Jun 2020 18:33:05 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgYCA-0002DC-8y
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 18:32:59 +0000
Received: by mail-il1-x130.google.com with SMTP id p5so3521884ile.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 11:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dl45jHmMxgIYOcAGoeBLy9mbq13KTVnNRYfglexjaaE=;
 b=sxXwEKx+yE5ycmbktRFVRkyspOiSKTBYdrt42Z5TdrxKcSSvFIH361s1G69YU+n8bQ
 ujfYu74W0cDNv2/HVUn2SJL5Bc2tSjTTBv0U82vJ819S6ftPhZzu4m/9+jBuKzPU3UbB
 hkUXIX5ib3KEAK15lR4SFmg705G+ulluROvVRJtNd9IkVB2Kxxbj4eOXQRD3elGKt6f/
 3/E4X55YRd8+XFFLDmMETziBFzcQrshe+Z10j/G4HOYQhG/W9EEaggbeP+4/eeA4tqlt
 Oq2eI4Ch2ZLWpteLW+HARxVKk4q9gQTk82JEyQpb6vr5uXwKXfXJno4Kp/8zY1WEi8vp
 UzUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dl45jHmMxgIYOcAGoeBLy9mbq13KTVnNRYfglexjaaE=;
 b=TXotnaOkFpyjO8JKDzuQgGM+ac+RvmCvFnZV39pkhYZw7zapputMdC+a5hzkV1l4Sf
 DEI5qb4SjWoEracz1T4O22jNJF/+PfO+i+fF8KuxgucUT5ZLxtIagSwIRmTxXEOEksK3
 8sSFCUpVYefjX4OwHL2/FjJYGb5hgGGaqvgyVLvgP9AkojX909uWr1AwAFAVTtzrj1qx
 6t3O+W32kEg4nBya5OiVy7PBlHzXhQUd/Xy5Rs52QoQGP99i/EH/n/ERJWkUlyCC/eMg
 ngqrxxH/J/JgUnXoquDGYyt4KeuQ9uE/XUA20+UKZDGi5VKxNis51NkCNHSyrPxXiHBQ
 tenA==
X-Gm-Message-State: AOAM5312WPjQiu2rgkuH8y19WoVOySjIUFC1hgYC8f7fUMrmF0eDjEbV
 uK16E/ckSNDBP5jIFC1QQlOO4Jq3M+2WGKzKDMM8SQ==
X-Google-Smtp-Source: ABdhPJzkVnkLgrwPfjugAq9hYe7HzuqLCdobQSiGG9ylo5BRV+8Cw2y7ecfxP1pak8MUWB2wjEYMRDNxI/VWlkYFcsU=
X-Received: by 2002:a92:5e52:: with SMTP id s79mr752338ilb.33.1591209173348;
 Wed, 03 Jun 2020 11:32:53 -0700 (PDT)
MIME-Version: 1.0
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus> <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus>
In-Reply-To: <20200603180435.GB23722@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 3 Jun 2020 13:32:42 -0500
Message-ID: <CABb+yY0cW1GZHVmwEr19JRdJTmsAxw9uq83QV_aq-tdPJO5_Fg@mail.gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_113258_317027_A728F2DF 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:130 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Devicetree List <devicetree@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 3, 2020 at 1:04 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Fri, May 29, 2020 at 09:37:58AM +0530, Viresh Kumar wrote:
> > On 28-05-20, 13:20, Rob Herring wrote:
> > > Whether Linux
> > > requires serializing mailbox accesses is a separate issue. On that side,
> > > it seems silly to not allow driving the h/w in the most efficient way
> > > possible.
> >
> > That's exactly what we are trying to say. The hardware allows us to
> > write all 32 bits in parallel, without any hardware issues, why
> > shouldn't we do that ? The delay (which Sudeep will find out, he is
> > facing issues with hardware access because of lockdown right now)
>
> OK, I was able to access the setup today. I couldn't reach a point
> where I can do measurements as the system just became unusable with
> one physical channel instead of 2 virtual channels as in my patches.
>
> My test was simple. Switch to schedutil and read sensors periodically
> via sysfs.
>
>  arm-scmi firmware:scmi: message for 1 is not expected!
>
This sounds like you are not serialising requests on a shared channel.
Can you please also share the patch?

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
