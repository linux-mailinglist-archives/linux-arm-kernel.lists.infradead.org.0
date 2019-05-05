Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91687141B6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 20:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7n6/rGuhG8mqRiH/F2EcMFAOR6YGvlZ3zFXg290Qak=; b=WdlbDtp2xzRBko
	4cvwjNbQX1IdiuU5Q7viFxZHaXTFqBPYyf3sTsAH4Fb4sm6HJ+13Sd95FuTtUXUEvQ02vDcH1MrxJ
	9dD9JHkiumExPeFfCl7U9eMIO9Pm0Wft9B8ve+GI1qZZUp51NEBnJYwH5eNZFQMFa/xJK1rU/+ziL
	e91yBtmUiwuKeqqZVpbh2aQzIWhmlQK65HOOE9ATsc1eOxsvziT2C6bQwtdiOq9KXGET6MFHrZudq
	5Ua0GYDKiPNQL8QBMrrT9a9rvBRY2VQm2Tq3O3Y5V9MO+tBgMkTN7GDpHHD2zCa0J8X3GuwtfSwxS
	imaCBtETFSMcD0B0zOSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNLWc-0000dC-FH; Sun, 05 May 2019 18:06:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNLWU-0000cm-Vt
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 18:06:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id k16so14351212wrn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 May 2019 11:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N8g69TrotyMJ93TmfQM1QRaCDtlTbgGM9P0/S8prlKY=;
 b=N4ppmbOguloFIq3UkVgg289rgjhgRJuR/Pb5ebMzAKtk+IpFE6nP+1KRvQRetlBxmV
 PZxZv+kvtcX5yV8z/TwVwMrFzjwRlpgQqRT4WBVt9efqu3HPDPUO2GUVoWyTReLwnmfb
 e9YWSgL+cHubyBJCWO06r9I48BBOU5aojW2S5nUefx+55AED0U6cUA+91m4V2VSUAJFf
 6eV+s7FXGj82Lx11AhnLzkAMhimLcTOIvK6qsZXX+sg1ik90856vuExeeDaDkDan/QXn
 mjNF/2QeKCdl/qHp5an3BfU2PvLt/XvgmjW1GL1VMYB/8RYf8HxDpeX0VeS55uTeFisD
 U5sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N8g69TrotyMJ93TmfQM1QRaCDtlTbgGM9P0/S8prlKY=;
 b=paYbMN7jjJjwbfCe2HAOuPquROwZ6L2aAD7SCR76D5+oHOBAmK2qCtmg8o7Z3JSaH3
 bIuXCPSCJk/AFTbUeNiTN4AW1th/DmS472p8lDFDYa6dKdYnrIryaDFPxTywDbYGpLXF
 b1H50HSstVQniDuTYbW7cHLDVILHq1ZF6U32O0Gv8YsaGFV9pr3gmb9wJ5GWUCVOmMKE
 rwFwuFHc+Ru3ER0rmQ0UPpujSssBbDRDse0KaG+kM1Qw2ypIyB6MSUz4+tTDHu3zCEiM
 fz3a5TERNmdmnoR6acrtnVzkINPVa2V6yEGtu5ZMk55qxwilM8rz45bmafcDONfe1hID
 oe0w==
X-Gm-Message-State: APjAAAV2fk2VyptfPDaSRrHbhomww17OjgLbXHQLUYvzxOtwTml4rUxL
 yPlW1YnSmDnGbcUE7n9+fhScuus5fbm/EubIKTE=
X-Google-Smtp-Source: APXvYqxo+Wrw5RiAJUYAfK6lr/auyoLQkZoxAyR387ejzTEDruhcdCPR8lsTuKMSDv9CtepCLrrDoxbOVTF7qGrlvrY=
X-Received: by 2002:adf:9cc8:: with SMTP id h8mr9509687wre.308.1557079556148; 
 Sun, 05 May 2019 11:05:56 -0700 (PDT)
MIME-Version: 1.0
References: <68b71c15f32341468a868f6418e4fcb375bc49ba.camel@gmail.com>
 <20190211105755.GB30880@fuggles.cambridge.arm.com>
 <38d8965a-cd41-17cf-1b95-8dd58c079be4@arm.com>
 <874c702b8af760aa8fae38d478c79e3ecba00515.camel@gmail.com>
 <235d20ef-3054-69d9-975d-25aebf32aad3@arm.com>
 <20190223181254.GC572@tuxbook-pro>
 <86zhqm8i6d.wl-marc.zyngier@arm.com> <20190224035356.GD572@tuxbook-pro>
 <33d765b5-1807-fa6c-1ceb-99f09f7c8d5a@free.fr>
 <8eb4f446-6152-ffb6-9529-77fb0bcc307f@arm.com>
 <7b5e8bb1-d339-07f7-66f6-7f09df2107c4@free.fr>
 <3757fc2d-0587-be46-8f75-6d79906be8bd@arm.com>
 <5b83a4c2-1f0e-337f-a78d-f7d84fe01ab3@free.fr>
 <a6f89d1a-e7bb-bae9-6666-f4d5b263b835@free.fr>
 <b7a3c9d1-6bbc-1f14-956f-ee4dd3bce175@arm.com>
 <bd3d23ed-1e4c-861b-35e6-08c2f7e4a47c@free.fr>
 <CAK7fi1b5PP+ToK5fS6xEvGaNF=43=OtA8=5KhypTcFeryWSr9Q@mail.gmail.com>
In-Reply-To: <CAK7fi1b5PP+ToK5fS6xEvGaNF=43=OtA8=5KhypTcFeryWSr9Q@mail.gmail.com>
From: AngeloGioacchino Del Regno <kholk11@gmail.com>
Date: Sun, 5 May 2019 20:05:44 +0200
Message-ID: <CAK7fi1Y64uawt5VFqec9KzcytxW0bKOHAECv6gQ4yS1=jedg0Q@mail.gmail.com>
Subject: Re: [PATCH] arm64/io: Don't use WZR in writel
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_110603_028770_6F610F84 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kholk11[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (kholk11[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

orry again for the double email, but we've just discovered another
issue with using the zero register for writel.
On the downstream kernel we are observing an entire userspace
crash when closing the camera on * at least * MSM8996, SDM630
and SDM636. We're not sure that the issue is present on MSM8998
and we should probably test MSM8956 as well.

I know, the testing is not really complete, but I thought to urgently
write this to you guys as soon as the thing got discovered.

I'm mostly sure that this is not happening because of the IOMMU again
but instead because of something within the camera drivers, probably
some writel to the ISP or to the VFE is the cause.

Last thing, yes - this was discovered on downstream (kernel 4.9) and
not on mainline, but the IOMMU thing was also discovered there, so
something tells me that it's gonna be affecting the camera drivers that
we currently have on mainline as well, or future developments of it.
Especially if it's another hypervisor crap.

I'm going to do some more research about that camera thing downstream
ASAP and if you want I will keep you informed.

Have a nice day,
Angelo

Il giorno sab 4 mag 2019 alle ore 15:35 AngeloGioacchino Del Regno
<kholk11@gmail.com> ha scritto:
>
> Sorry, I've replied yesterday but I just realized that I did click on the wrong
> button and the email got sent only to Bjorn. My bad.
> Resending to all... this is the original text:
>
> For me, the [1] solution is working fine on qcom SDM630 (Xperia XA2),
> MSM8998 (Xperia XZ Premium) and MSM8996 (Xperia X Performance).
> I couldn't test on others that I have for time reasons, but I think that it's
> not even needed.
>
> By the way, I suggest to clearly document the fact that (from what I
> understand, at least) we can write whatever value we want to that
> register, as the change as it is may confuse some developers around.
>
> In any case... if you want, you can also include my:
>
> Tested-by: AngeloGioacchino Del Regno <kholk11@gmail.com>
>
> Il giorno ven 3 mag 2019 alle ore 15:07 Marc Gonzalez
> <marc.w.gonzalez@free.fr> ha scritto:
> >
> > On 03/05/2019 14:48, Robin Murphy wrote:
> >
> > > Anyway, I'll clean up my patch and post it properly - thanks to you and
> > > Bjorn for testing.
> >
> > Cool. Thanks!
> >
> > AngeloGioacchino, are you still monitoring this thread?
> >
> > On which qcom platform(s) did you run into the issue?
> > (Robin's work-around has been tested on msm8996 and msm8998.)
> >
> > Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
